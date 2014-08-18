require 'spec_helper'
require 'stringio'

module Aws
  module S3
    describe Client do

      let(:client) { Client.new }

      before(:each) do
        Aws.config[:s3] = {
          region: 'us-east-1',
          credentials: Credentials.new('akid', 'secret'),
          retry_limit: 0
        }
      end

      after(:each) do
        Aws.config = {}
      end

      describe 'empty body error responses' do

        it 'creates an error class from empty body responses' do
          client.handle(step: :send) do |context|
            context.http_response.status_code = 500
            context.http_response.body = StringIO.new('')
            Seahorse::Client::Response.new(context: context)
          end
          expect {
            client.head_bucket(bucket:'aws-sdk')
          }.to raise_error(S3::Errors::Http500Error)
        end

      end

      describe 'signature version' do

        [
          "us-east-1",
          "us-west-1",
          "us-west-2",
          "ap-northeast-1",
          "ap-southeast-1",
          "ap-southeast-2",
          "sa-east-1",
          "eu-west-1",
          "us-gov-west-1",
        ].each do |region|
          it "defaults signature_version to 'v3' for '#{region}'" do
            client = Client.new(region: region)
            expect(client.config.signature_version).to eq('s3')
          end
        end

        [
          "cn-north-1",
          "brand-new-region",
        ].each do |region|
          it "defaults signature_version to 'v4' for '#{region}'" do
            client = Client.new(region: region)
            expect(client.config.signature_version).to eq('v4')
          end
        end

      end

      describe 'https required for sse cpk' do

        it 'raises a runtime error when attempting SSE CPK over HTTP' do
          s3 = Client.new(endpoint: 'http://s3.amazonaws.com')

          # put_object
          expect {
            s3.put_object(bucket:'aws-sdk', key:'key', sse_customer_key:'secret')
          }.to raise_error(/HTTPS/)

          # copy_object_source
          expect {
            s3.copy_object(
              bucket:'aws-sdk',
              key:'key',
              copy_source: 'bucket#key',
              copy_source_sse_customer_key: 'secret')
          }.to raise_error(/HTTPS/)
        end

      end

      describe 'endpoints' do

        it 'resolves correctly for gov-cloud' do
          s3 = Client.new(region: 'us-gov-west-1')
          expect(s3.config.endpoint.to_s).to eq('https://s3-us-gov-west-1.amazonaws.com')
        end

      end

      describe '#create_bucket' do

        it 'omits location constraint for the classic region' do
          s3 = Client.new(region: 'us-east-1')
          s3.handle(step: :send) do |context|
            context.http_response.status_code = 200
            Seahorse::Client::Response.new(context: context)
          end
          resp = s3.create_bucket(bucket: 'aws-sdk')
          expect(resp.context.http_request.body_contents).to eq('')
        end

        it 'populates the bucket location constraint for non-classic regions' do
          s3 = Client.new(region: 'us-west-2')
          s3.handle(step: :send) do |context|
            context.http_response.status_code = 200
            Seahorse::Client::Response.new(context: context)
          end
          resp = s3.create_bucket(bucket: 'aws-sdk')
          expect(resp.context.http_request.body_contents.strip).to eq(<<-XML.strip)
<CreateBucketConfiguration xmlns="http://s3.amazonaws.com/doc/2006-03-01/">
  <LocationConstraint>us-west-2</LocationConstraint>
</CreateBucketConfiguration>
          XML
        end

        it 'does not overide bucket location constraint params' do
          s3 = Client.new(region: 'eu-west-1')
          s3.handle(step: :send) do |context|
            context.http_response.status_code = 200
            Seahorse::Client::Response.new(context: context)
          end
          resp = s3.create_bucket(
            bucket: 'aws-sdk',
            create_bucket_configuration: {
              location_constraint: 'EU'
            }
          )
          expect(resp.context.http_request.body_contents.strip).to eq(<<-XML.strip)
<CreateBucketConfiguration xmlns="http://s3.amazonaws.com/doc/2006-03-01/">
  <LocationConstraint>EU</LocationConstraint>
</CreateBucketConfiguration>
          XML
        end

      end

      describe '#list_objects' do

        it 'request url encoded keys and decodes them by default' do
          client.handle(step: :send) do |context|
            context.http_response.status_code = 200
            context.http_response.body = <<-XML.strip
            <?xml version="1.0" encoding="UTF-8"?>
            <ListBucketResult xmlns="http://s3.amazonaws.com/doc/2006-03-01/">
              <Prefix>a%26</Prefix>
              <Delimiter>b%26</Delimiter>
              <Marker>c%26</Marker>
              <NextMarker>d%26</NextMarker>
              <Contents>
                <Key>e%26</Key>
              </Contents>
              <CommonPrefixes>
                <Prefix>f%26</Prefix>
              </CommonPrefixes>
            </ListBucketResult>
            XML
            Seahorse::Client::Response.new(context: context)
          end
          resp = client.list_objects(bucket:'aws-sdk')
          expect(resp.context.params[:encoding_type]).to eq('url')
          expect(resp.data.to_h).to eq({
            prefix: 'a&',
            delimiter: 'b&',
            marker: 'c&',
            next_marker: 'd&',
            contents: [{ key: 'e&' }],
            common_prefixes: [{ prefix: 'f&' }],
          })
        end

        it 'skips url decoding when the user specifies the encoding' do
          client.handle(step: :send) do |context|
            context.http_response.status_code = 200
            context.http_response.body = <<-XML.strip
            <?xml version="1.0" encoding="UTF-8"?>
            <ListBucketResult xmlns="http://s3.amazonaws.com/doc/2006-03-01/">
              <Contents>
                <Key>a%26</Key>
              </Contents>
            </ListBucketResult>
            XML
            Seahorse::Client::Response.new(context: context)
          end
          resp = client.list_objects(bucket:'aws-sdk', encoding_type: 'url')
          expect(resp.data.contents.map(&:key)).to eq(['a%26'])
        end

      end

      describe '#list_object_versions' do

        it 'request url encoded keys and decodes them by default' do
          client.handle(step: :send) do |context|
            context.http_response.status_code = 200
            context.http_response.body = <<-XML.strip
            <?xml version="1.0" encoding="UTF-8"?>
            <ListVersionsResult xmlns="http://s3.amazonaws.com/doc/2006-03-01">
              <Prefix>a%26</Prefix>
              <Delimiter>b%26</Delimiter>
              <KeyMarker>c%26</KeyMarker>
              <NextKeyMarker>d%26</NextKeyMarker>
              <Version>
                <Key>e%26</Key>
              </Version>
              <DeleteMarker>
                <Key>f%26</Key>
              </DeleteMarker>
              <CommonPrefixes>
                <Prefix>g%26</Prefix>
              </CommonPrefixes>
            </ListVersionsResult>
            XML
            Seahorse::Client::Response.new(context: context)
          end
          resp = client.list_object_versions(bucket:'aws-sdk')
          expect(resp.context.params[:encoding_type]).to eq('url')
          expect(resp.data.to_h).to eq({
            prefix: 'a&',
            delimiter: 'b&',
            key_marker: 'c&',
            next_key_marker: 'd&',
            versions: [{ key: 'e&' }],
            delete_markers: [{ key: 'f&' }],
            common_prefixes: [{ prefix: 'g&' }],
          })
        end

      end

      describe '#list_multipart_uploads' do

        it 'request url encoded keys and decodes them by default' do
          client.handle(step: :send) do |context|
            context.http_response.status_code = 200
            context.http_response.body = <<-XML.strip
            <?xml version="1.0" encoding="UTF-8"?>
            <ListVersionsResult xmlns="http://s3.amazonaws.com/doc/2006-03-01">
              <Prefix>a%26</Prefix>
              <Delimiter>b%26</Delimiter>
              <KeyMarker>c%26</KeyMarker>
              <NextKeyMarker>d%26</NextKeyMarker>
              <Upload>
                <Key>e%26</Key>
              </Upload>
              <CommonPrefixes>
                <Prefix>f%26</Prefix>
              </CommonPrefixes>
            </ListVersionsResult>
            XML
            Seahorse::Client::Response.new(context: context)
          end
          resp = client.list_multipart_uploads(bucket:'aws-sdk')
          expect(resp.context.params[:encoding_type]).to eq('url')
          expect(resp.data.to_h).to eq({
            prefix: 'a&',
            delimiter: 'b&',
            key_marker: 'c&',
            next_key_marker: 'd&',
            uploads: [{ key: 'e&' }],
            common_prefixes: [{ prefix: 'f&' }],
          })
        end

      end
    end
  end
end
