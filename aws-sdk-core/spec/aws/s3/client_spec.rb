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
          retry_backoff: lambda {|*args| }
        }
      end

      after(:each) do
        Aws.config = {}
        S3::BUCKET_REGIONS.clear
      end

      it 'raises an appropriate error when credentials are missing' do
        creds = Credentials.new(nil, nil)
        client = Client.new(credentials: creds)
        expect {
          client.list_buckets
        }.to raise_error(Aws::Errors::MissingCredentialsError)
      end

      describe 'endpoints' do

        it 'preserves custom endpoints' do
          client = Client.new(
            stub_responses:true,
            endpoint: 'http://custom.domain/path/prefix',
            force_path_style: true,
          )
          resp = client.put_object(bucket:'bucket-name', key:'key/path')
          expect(resp.context.http_request.endpoint.to_s).to eq(
            "http://custom.domain/path/prefix/bucket-name/key/path")
        end

      end

      describe 'empty body error responses' do

        it 'creates an error class from empty body responses' do
          client.handle(step: :send) do |context|
            context.http_response.signal_done(
              status_code: 500,
              headers: {},
              body: ''
            )
            Seahorse::Client::Response.new(context: context)
          end
          expect {
            client.head_bucket(bucket:'aws-sdk')
          }.to raise_error(S3::Errors::Http500Error)
        end

      end

      describe 'signature version' do

        [
          "us-west-1",
          "us-west-2",
          "ap-northeast-1",
          "ap-southeast-1",
          "ap-southeast-2",
          "sa-east-1",
          "eu-west-1",
          "us-gov-west-1",
        ].each do |region|

          it "defaults signature version 4 for #{region}" do
            client = Client.new(stub_responses: true, region: region)
            resp = client.head_object(bucket:'name', key:'key')
            expect(resp.context.http_request.headers['authorization']).to match(
              'AWS4-HMAC-SHA256')
          end

          it "falls back on classic S3 signing for #put_object in #{region}" do
            client = Client.new(stub_responses: true, region: region)
            resp = client.put_object(bucket:'name', key:'key', body:'data')
            expect(resp.context.http_request.headers['authorization']).to match(
              'AWS akid:')
          end

          it "forces v4 signing when aws:kms used for server side encryption" do
            client = Client.new(stub_responses: true, region: region)
            resp = client.put_object(
              bucket: 'name',
              key: 'key',
              server_side_encryption: 'aws:kms',
              body: 'data'
            )
            expect(resp.context.http_request.headers['authorization']).to match(
              'AWS4-HMAC-SHA256')
          end

        end

        [
          "cn-north-1",
          "eu-central-1",
          "unknown-region",
        ].each do |region|

          it "defaults signature version 4 for #{region}" do
            client = Client.new(stub_responses: true, region: region)
            resp = client.head_object(bucket:'name', key:'key')
            expect(resp.context.http_request.headers['authorization']).to match(
              'AWS4-HMAC-SHA256')
          end

          it "forces v4 signing, even for PUT object in #{region}" do
            client = Client.new(stub_responses: true, region: region)
            resp = client.put_object(bucket:'name', key:'key', body:'data')
            expect(resp.context.http_request.headers['authorization']).to match(
              'AWS4-HMAC-SHA256')
          end

          it "forces v4 signing when aws:kms used for server side encryption" do
            client = Client.new(stub_responses: true, region: region)
            resp = client.put_object(
              bucket: 'name',
              key: 'key',
              server_side_encryption: 'aws:kms',
              body: 'data'
            )
            expect(resp.context.http_request.headers['authorization']).to match(
              'AWS4-HMAC-SHA256')
          end
        end

        it "defaults classic s3 signature us-east-1" do
          client = Client.new(stub_responses: true, region: 'us-east-1')
          resp = client.head_object(bucket:'name', key:'key')
          expect(resp.context.http_request.headers['authorization']).to match(
            'AWS akid:')
        end

        it "upgrades to signature version 4 when aws:kms used for sse" do
          client = Client.new(stub_responses: true, region: 'us-east-1')
          resp = client.put_object(
            bucket: 'name',
            key: 'key',
            server_side_encryption: 'aws:kms',
            body: 'data'
          )
          expect(resp.context.http_request.headers['authorization']).to match(
            'AWS4-HMAC-SHA256')
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
            context.http_response.signal_done(
              status_code: 200,
              headers: {},
              body:<<-XML.strip)
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
            context.http_response.signal_done(
              status_code: 200,
              headers: {},
              body:<<-XML.strip)
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
            context.http_response.signal_done(
              status_code: 200,
              headers: {},
              body:<<-XML.strip)
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
            context.http_response.signal_done(
              status_code: 200,
              headers: {},
              body:<<-XML.strip)
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

      describe '#put_object_acl' do

        it 'builds the ACL xml from request params' do
          client = Client.new(stub_responses: true)
          resp = client.put_object_acl(
            bucket: 'bucket',
            key: 'key',
            access_control_policy: {
              grants: [
                {
                  grantee: {
                    display_name: 'name',
                    type: 'CanonicalUser'
                  },
                  permission: 'READ'
                }
              ]
            }
          )
          expect(resp.context.http_request.body_contents).to eq(<<-XML)
<AccessControlPolicy xmlns="http://s3.amazonaws.com/doc/2006-03-01/">
  <AccessControlList>
    <Grant>
      <Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CanonicalUser">
        <DisplayName>name</DisplayName>
      </Grantee>
      <Permission>READ</Permission>
    </Grant>
  </AccessControlList>
</AccessControlPolicy>
          XML
        end

      end

      describe '#put_object_acl' do

        it 'correct decodes url keys' do
          client.handle(step: :send) do |context|
            context.http_response.signal_done(
              status_code: 200,
              headers: {},
              body:<<-XML)
<?xml version="1.0" encoding="UTF-8"?>
<ListBucketResult xmlns="http://s3.amazonaws.com/doc/2006-03-01/">
  <Contents>
    <Key>prefix+suffix</Key>
  </Contents>
  <Contents>
    <Key>prefix%2Bsuffix</Key>
  </Contents>
  <Contents>
    <Key>prefix%20suffix</Key>
  </Contents>
</ListBucketResult>
            XML
            Seahorse::Client::Response.new(context: context)
          end
          resp = client.list_objects(bucket:'aws-sdk')
          expect(resp.contents.map(&:key)).to eq([
            'prefix+suffix',
            'prefix+suffix',
            'prefix suffix',
          ])
        end

      end

      describe 'truncated body checks' do

        it 'accepts responses where content-length equals bytes received' do
          stub_request(:get, "https://bucket.s3.amazonaws.com/key").
            to_return(:status => 200, :body => 'data', :headers => {'content-length' => '4'})
          expect {
            client.get_object(bucket:'bucket', key:'key')
          }.not_to raise_error
        end

        it 'retries requests when fewer than content-length bytes are received' do
          stub_request(:get, "https://bucket.s3.amazonaws.com/key").
            to_return(:status => 200, :body => 'dat', :headers => {'content-length' => '4'}).
            to_return(:status => 200, :body => 'data', :headers => {'content-length' => '4'})
          resp = client.get_object(bucket:'bucket', key:'key')
          expect(resp.context.retries).to eq(1)
          expect(resp.body.read).to eq('data')
        end

        it 'raises an error if fewer than content-length bytes are received' do
          stub_request(:get, "https://bucket.s3.amazonaws.com/key").
            to_return(:status => 200, :body => 'dat', :headers => {'content-length' => '4'})
          msg = 'http response body truncated, expected 4 bytes, received 3 bytes'
          expect {
            client.get_object(bucket:'bucket', key:'key')
          }.to raise_error(Seahorse::Client::NetworkingError, msg)
        end

        it 'does not check content-length when header not present' do
          stub_request(:head, "https://bucket.s3.amazonaws.com/key").
            to_return(:status => 200, headers:{})
          expect {
            client.head_object(bucket:'bucket', key:'key')
          }.not_to raise_error
        end

      end

      describe '#wait_until' do

        it 'returns true when the :bucket_exists waiter receives a 301' do
          stub_request(:head, "https://bucket.s3.amazonaws.com").
            to_return(:status => 301)
          expect(client.wait_until(:bucket_exists, bucket:'bucket')).to be_truthy
        end

      end
    end
  end
end
