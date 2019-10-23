require_relative 'spec_helper'
require 'stringio'
require 'tempfile'

module Aws
  module S3
    describe Client do
      let(:client) { Client.new }

      before(:each) do
        Aws.config[:s3] = {
          region: 'us-east-1',
          credentials: Credentials.new('akid', 'secret'),
          retry_backoff: ->(*args) {}
        }
      end

      after(:each) do
        Aws.config = {}
        S3::BUCKET_REGIONS.clear
      end

      it 'raises an appropriate error when credentials are missing' do
        creds = Credentials.new(nil, nil)
        client = Client.new(credentials: creds)
        expect do
          client.list_buckets
        end.to raise_error(Aws::Errors::MissingCredentialsError)
      end

      it 'supports empty stub with token set to nil' do
        s3 = Client.new(stub_responses: true)
        resp = s3.list_objects(bucket: 'foo')
        expect(resp.next_marker).to be(nil)
      end

      describe 'request ids' do
        it 'populates request id and host id in the response context' do
          s3 = Client.new(stub_responses: true)
          s3.handle(step: :send) do |context|
            context.http_response.signal_done(
              status_code: 200,
              headers: {
                'x-amz-id-2' => 'H0vUEO2f4PyWtNjgcb3TSdyHaie8j4IgnuKIW2'\
                                'rw0nS41rawnLDzkf+PKXmmt/uEi4bzvNMr72o=',
                'x-amz-request-id' => 'BE9C18E622969B17'
              },
              body: ''
            )
            Seahorse::Client::Response.new(context: context)
          end
          resp = s3.list_buckets
          expect(resp.context[:request_id]).to eq('BE9C18E622969B17')
          expect(resp.context[:s3_host_id]).to eq(
            'H0vUEO2f4PyWtNjgcb3TSdyHaie8j4IgnuKIW2'\
            'rw0nS41rawnLDzkf+PKXmmt/uEi4bzvNMr72o='
          )
        end
      end

      describe 'endpoints' do
        it 'preserves custom endpoints' do
          client = Client.new(
            stub_responses: true,
            endpoint: 'http://custom.domain/path/prefix',
            force_path_style: true
          )
          resp = client.put_object(bucket: 'bucket-name', key: 'key/path')
          expect(resp.context.http_request.endpoint.to_s).to eq(
            'http://custom.domain/path/prefix/bucket-name/key/path'
          )
        end

        it 'resolves correctly for gov-cloud' do
          s3 = Client.new(region: 'us-gov-west-1')
          expect(s3.config.endpoint.to_s).to eq(
            'https://s3.us-gov-west-1.amazonaws.com'
          )
        end
      end

      describe 'http errors' do
        {
          304 => Errors::NotModified,
          400 => Errors::BadRequest,
          403 => Errors::Forbidden,
          404 => Errors::NotFound,
          412 => Errors::PreconditionFailed,
          500 => Errors::Http500Error
        }.each_pair do |status_code, error_class|
          it "raises #{error_class} for HTTP #{status_code} responses" do
            client = Client.new(stub_responses: true)
            client.handle(step: :send) do |context|
              context.http_response.signal_done(
                status_code: status_code,
                headers: {},
                body: ''
              )
              Seahorse::Client::Response.new(context: context)
            end
            expect do
              client.head_object(bucket: 'b', key: 'k')
            end.to raise_error(error_class)
          end
        end
      end

      describe 'unlinked tempfiles' do
        it 'can put an unlinked file descriptor' do
          data = '.' * 1024 * 1024
          tmpfile = Tempfile.new('tmp')
          tmpfile.write(data)
          tmpfile.rewind
          tmpfile.unlink
          s3 = Client.new(stub_responses: true)
          resp = s3.put_object(bucket: 'bucket', key: 'key', body: tmpfile)
          expect(resp.context.http_request.body_contents).to eq(data)
        end
      end

      describe 'closed files' do
        it 'accepts closed File objects' do
          closed_file = File.open(__FILE__, 'rb')
          closed_file.close
          client = Client.new(stub_responses: true)
          resp = client.put_object(
            bucket: 'aws-sdk', key: 'key', body: closed_file
          )
          body = resp.context.http_request.body
          expect(body).to be_kind_of(File)
          expect(body.path).to eq(__FILE__)
          expect(body).not_to be(closed_file)
          expect(body.closed?).to be(true)
        end

        it 'accepts closed Tempfile objects' do
          tmpfile = Tempfile.new('tmpfile')
          tmpfile.write('abc')
          tmpfile.close
          client = Client.new(stub_responses: true)
          resp = client.put_object(bucket: 'aws-sdk', key: 'key', body: tmpfile)
          body = resp.context.http_request.body
          expect(body).to be_kind_of(File)
          expect(body.path).to eq(tmpfile.path)
          expect(body).not_to be(tmpfile)
          expect(body.closed?).to be(true)
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
          expect do
            client.head_bucket(bucket: 'aws-sdk')
          end.to raise_error(S3::Errors::Http500Error)
        end
      end

      describe 'signature version' do
        %w[
          us-west-1
          us-west-2
          ap-northeast-1
          ap-southeast-1
          ap-southeast-2
          sa-east-1
          eu-west-1
          us-gov-west-1
          cn-north-1
          eu-central-1
          unknown-region
        ].each do |region|
          it "defaults signature version 4 for #{region}" do
            client = Client.new(stub_responses: true, region: region)
            resp = client.head_object(bucket: 'name', key: 'key')
            expect(resp.context.http_request.headers['authorization']).to match(
              'AWS4-HMAC-SHA256'
            )
          end

          it "forces v4 signing, even for PUT object in #{region}" do
            client = Client.new(stub_responses: true, region: region)
            resp = client.put_object(bucket: 'name', key: 'key', body: 'data')
            expect(resp.context.http_request.headers['authorization']).to match(
              'AWS4-HMAC-SHA256'
            )
          end

          it 'forces v4 signing when aws:kms used for server side encryption' do
            client = Client.new(stub_responses: true, region: region)
            resp = client.put_object(
              bucket: 'name',
              key: 'key',
              server_side_encryption: 'aws:kms',
              body: 'data'
            )
            expect(resp.context.http_request.headers['authorization']).to match(
              'AWS4-HMAC-SHA256'
            )
          end
        end

        it 'uses signature version 4 when aws:kms used for sse' do
          client = Client.new(stub_responses: true, region: 'us-east-1')
          resp = client.put_object(
            bucket: 'name',
            key: 'key',
            server_side_encryption: 'aws:kms',
            body: 'data'
          )
          expect(resp.context.http_request.headers['authorization']).to match(
            'AWS4-HMAC-SHA256'
          )
        end

        it 'raises a runtime error on unsupported signature version' do
          expect do
            Client.new(
              signature_version: 'v2',
              stub_responses: true,
              region: 'us-east-1'
            )
          end.to raise_error(ArgumentError, /unsupported/)
        end
      end

      describe 'https required for sse cpk' do
        it 'raises a runtime error when attempting SSE CPK over HTTP' do
          s3 = Client.new(endpoint: 'http://s3.amazonaws.com')

          # put_object
          expect do
            s3.put_object(
              bucket: 'aws-sdk', key: 'key', sse_customer_key: 'secret'
            )
          end.to raise_error(/HTTPS/)

          # copy_object_source
          expect do
            s3.copy_object(
              bucket: 'aws-sdk',
              key: 'key',
              copy_source: 'bucket#key',
              copy_source_sse_customer_key: 'secret'
            )
          end.to raise_error(/HTTPS/)
        end
      end

      describe 'endpoints' do
        it 'resolves correctly for gov-cloud' do
          s3 = Client.new(region: 'us-gov-west-1')
          expect(s3.config.endpoint.to_s).to eq(
            'https://s3.us-gov-west-1.amazonaws.com'
          )
        end
      end

      describe 'invalid Expires header' do
        %w[get_object head_object].each do |method|
          it "correctly handled invalid Expires header for #{method}" do
            s3 = Client.new
            s3.handle(step: :send) do |context|
              context.http_response.signal_headers(200, 'Expires' => 'abc')
              context.http_response.signal_done
              Seahorse::Client::Response.new(context: context)
            end
            resp = s3.send(method, bucket: 'b', key: 'k')
            expect(resp.expires).to be(nil)
            expect(resp.expires_string).to eq('abc')
          end

          it 'accepts a stubbed Expires header as a Time value' do
            now = Time.at(Time.now.to_i)
            s3 = Client.new(
              stub_responses: {
                method.to_sym => { expires: now }
              }
            )
            resp = s3.send(method, bucket: 'b', key: 'k')
            expect(resp.expires).to eq(now)
            expect(resp.expires_string).to eq(now.httpdate)
          end

          it 'accepts a stubbed Expires header as String value' do
            s3 = Client.new(
              stub_responses: {
                method.to_sym => { expires_string: 'abc' }
              }
            )
            resp = s3.send(method, bucket: 'b', key: 'k')
            expect(resp.expires).to be(nil)
            expect(resp.expires_string).to eq('abc')
          end
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
          expect(
            resp.context.http_request.body_contents.strip
          ).to eq(<<-XML.strip)
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
          expect(
            resp.context.http_request.body_contents.strip
          ).to eq(<<-XML.strip)
            <CreateBucketConfiguration xmlns="http://s3.amazonaws.com/doc/2006-03-01/">
              <LocationConstraint>EU</LocationConstraint>
            </CreateBucketConfiguration>
          XML
        end
      end

      describe '#delete_bucket' do
        it 'correctly unmarshals errors' do
          client = Client.new(stub_responses: true)
          client.handle(step: :send) do |context|
            context.http_response.signal_done(
              status_code: 409,
              headers: {},
              body: <<-XML.strip
                <?xml version="1.0" encoding="UTF-8"?>
                <Error>
                  <Code>BucketNotEmpty</Code>
                  <Message>The bucket you tried to delete is not empty</Message>
                  <BucketName>aws-sdk</BucketName>
                  <RequestId>740BE6AB575EACED</RequestId>
                  <HostId>MQVg1RMI+d93Hps1E8qpIuDb9Gd2TzkDhm0wE40981DjxSHP1UfLBB7qOAlwAqJB</HostId>
                </Error>
              XML
            )
            Seahorse::Client::Response.new(context: context)
          end
          expect do
            client.delete_bucket(bucket: 'name')
          end.to raise_error(
            Errors::BucketNotEmpty,
            'The bucket you tried to delete is not empty'
          )
        end
      end

      describe '#get_bucket_location' do
        it 'can parse the location constraint XML' do
          client = Client.new(stub_responses: true)
          client.handle(step: :send) do |context|
            context.http_response.signal_done(
              status_code: 200,
              headers: {},
              body: <<-XML.strip
                <?xml version="1.0" encoding="UTF-8"?>
                <LocationConstraint xmlns="http://s3.amazonaws.com/doc/2006-03-01/">EU</LocationConstraint>
              XML
            )
            Seahorse::Client::Response.new(context: context)
          end
          resp = client.get_bucket_location(bucket: 'name')
          expect(resp.location_constraint).to eq('EU')
        end

        it 'returns an empty string when no constraint is present' do
          client = Client.new(stub_responses: true)
          client.handle(step: :send) do |context|
            context.http_response.signal_done(
              status_code: 200,
              headers: {},
              body: <<-XML.strip
                <?xml version="1.0" encoding="UTF-8"?>
                <LocationConstraint xmlns="http://s3.amazonaws.com/doc/2006-03-01/"/>
              XML
            )
            Seahorse::Client::Response.new(context: context)
          end
          resp = client.get_bucket_location(bucket: 'name')
          expect(resp.location_constraint).to eq('')
        end
      end

      describe '#head_bucket' do
        it 'uses path style addressing for DNS incompatible bucket names' do
          client = Client.new(stub_responses: true)
          resp = client.head_bucket(bucket: 'Bucket123')
          expect(resp.context.http_request.endpoint.path).to eq('/Bucket123')
        end
      end

      describe '#list_objects' do
        it 'raises an error of the bucket name contains a forward slash' do
          client = Client.new(stub_responses: true)
          expect do
            client.list_objects(bucket: 'bucket-name/key-prefix')
          end.to raise_error(
            ArgumentError, ':bucket option must not contain a forward-slash (/)'
          )
        end

        it 'request url encoded keys and decodes them by default' do
          client.handle(step: :send) do |context|
            context.http_response.signal_done(
              status_code: 200,
              headers: {},
              body: <<-XML.strip)
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
          resp = client.list_objects(bucket: 'aws-sdk')
          expect(
            resp.context.http_request.endpoint.query
          ).to include('encoding-type=url')
          expect(resp.context.params[:encoding_type]).to eq('url')
          expect(resp.data.to_h).to eq(
            prefix: 'a&',
            delimiter: 'b&',
            marker: 'c&',
            next_marker: 'd&',
            contents: [{ key: 'e&' }],
            common_prefixes: [{ prefix: 'f&' }]
          )
        end

        it 'skips url decoding when the user specifies the encoding' do
          client.handle(step: :send) do |context|
            context.http_response.signal_done(
              status_code: 200,
              headers: {},
              body: <<-XML.strip)
            <?xml version="1.0" encoding="UTF-8"?>
            <ListBucketResult xmlns="http://s3.amazonaws.com/doc/2006-03-01/">
              <Contents>
                <Key>a%26</Key>
              </Contents>
            </ListBucketResult>
              XML
            Seahorse::Client::Response.new(context: context)
          end
          resp = client.list_objects(bucket: 'aws-sdk', encoding_type: 'url')
          expect(resp.data.contents.map(&:key)).to eq(['a%26'])
        end
      end

      describe '#list_object_versions' do
        it 'request url encoded keys and decodes them by default' do
          client.handle(step: :send) do |context|
            context.http_response.signal_done(
              status_code: 200,
              headers: {},
              body: <<-XML.strip)
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
          resp = client.list_object_versions(bucket: 'aws-sdk')
          expect(resp.context.params[:encoding_type]).to eq('url')
          expect(resp.data.to_h).to eq(
            prefix: 'a&',
            delimiter: 'b&',
            key_marker: 'c&',
            next_key_marker: 'd&',
            versions: [{ key: 'e&' }],
            delete_markers: [{ key: 'f&' }],
            common_prefixes: [{ prefix: 'g&' }]
          )
        end
      end

      describe '#list_multipart_uploads' do
        it 'request url encoded keys and decodes them by default' do
          client.handle(step: :send) do |context|
            context.http_response.signal_done(
              status_code: 200,
              headers: {},
              body: <<-XML.strip)
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
          resp = client.list_multipart_uploads(bucket: 'aws-sdk')
          expect(resp.context.params[:encoding_type]).to eq('url')
          expect(resp.data.to_h).to eq(
            prefix: 'a&',
            delimiter: 'b&',
            key_marker: 'c&',
            next_key_marker: 'd&',
            uploads: [{ key: 'e&' }],
            common_prefixes: [{ prefix: 'f&' }]
          )
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

      describe '#put_object' do
        it 'populates the content-type header when given' do
          client = Client.new(stub_responses: true)
          resp = client.put_object(
            bucket: 'b',
            key: 'k',
            body: 'test',
            content_type: 'text/plain'
          )
          expect(
            resp.context.http_request.headers['content-type']
          ).to eq('text/plain')
        end
      end

      describe '#put_object_acl' do
        it 'correct decodes url keys' do
          client.handle(step: :send) do |context|
            context.http_response.signal_done(
              status_code: 200,
              headers: {},
              body: <<-XML)
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
          resp = client.list_objects(bucket: 'aws-sdk')
          expect(resp.contents.map(&:key)).to eq(
            [
             'prefix suffix',
             'prefix+suffix',
             'prefix suffix'
            ]
          )
        end
      end

      describe 'truncated body checks' do
        it 'accepts responses where content-length equals bytes received' do
          stub_request(:get, 'https://bucket.s3.amazonaws.com/key')
            .to_return(
              status: 200,
              body: 'data',
              headers: { 'content-length' => '4' }
            )
          expect do
            client.get_object(bucket: 'bucket', key: 'key')
          end.not_to raise_error
        end

        it 'retries requests when fewer than content-length bytes are received' do
          stub_request(:get, 'https://bucket.s3.amazonaws.com/key')
            .to_return(
              status: 200, body: 'dat', headers: { 'content-length' => '4' }
            )
            .to_return(
              status: 200, body: 'data', headers: { 'content-length' => '4' }
            )
          resp = client.get_object(bucket: 'bucket', key: 'key')
          expect(resp.context.retries).to eq(1)
          expect(resp.body.read).to eq('data')
        end

        it 'raises an error if fewer than content-length bytes are received' do
          stub_request(:get, 'https://bucket.s3.amazonaws.com/key')
            .to_return(
              status: 200, body: 'dat', headers: { 'content-length' => '4' }
            )
          msg = 'http response body truncated, expected '\
                '4 bytes, received 3 bytes'
          expect do
            client.get_object(bucket: 'bucket', key: 'key')
          end.to raise_error(Seahorse::Client::NetworkingError, msg)
        end

        it 'does not check content-length when header not present' do
          stub_request(:head, 'https://bucket.s3.amazonaws.com/key')
            .to_return(status: 200, headers: {})
          expect do
            client.head_object(bucket: 'bucket', key: 'key')
          end.not_to raise_error
        end
      end

      describe '#wait_until' do
        it 'returns true when the :bucket_exists waiter receives a 301' do
          stub_request(:head, 'https://bucket.s3.amazonaws.com')
            .to_return(status: 301)
          expect(
            client.wait_until(:bucket_exists, bucket: 'bucket')
          ).not_to be(nil)
        end
      end

      {
        complete_multipart_upload: { upload_id: 'upload-id' },
        copy_object: { copy_source: 'bucket/key' },
        upload_part_copy: {
          upload_id: 'upload-id',
          copy_source: 'bucket/key',
          part_number: 1
        }
      }.each do |operation_name, params|
        it "handles 200 http response errors from ##{operation_name}" do
          client.handlers
            .remove(Seahorse::Client::Plugins::RaiseResponseErrors::Handler)
          client.handle(step: :send) do |context|
            context.http_response.signal_headers(200, {})
            context.http_response.signal_data(<<-XML.strip)
              <?xml version="1.0" encoding="UTF-8"?>
              <Error>
                <Code>InternalError</Code>
                <Message>We encountered an internal error. Please try again.</Message>
                <RequestId>656c76696e6727732072657175657374</RequestId>
                <HostId>Uuag1LuByRx9e6j5Onimru9pO4ZVKnJ2Qz7/C1NPcfTWAtRPfTaOFg==</HostId>
              </Error>
            XML
            context.http_response.signal_done
            Seahorse::Client::Response.new(context: context)
          end
          resp = client.send(operation_name, {
            bucket: 'bucket',
            key: 'key'
          }.merge(params))
          expect(resp.error).to be_kind_of(S3::Errors::InternalError)
          expect(resp.context.retries).to eq(3)
          expect(resp.data).to be(nil)
        end
      end

      context 'metadata stubbing' do
        it 'returns metadata from head operations' do
          stub_client = S3::Client.new(
            stub_responses: {
              head_object: { metadata: { 'custom_key' => 'abc' } }
            }
          )
          resp = stub_client.head_object(bucket: 'b', key: 'k')
          expect(resp.metadata).to eq('custom_key' => 'abc')
        end
      end
    end
  end
end
