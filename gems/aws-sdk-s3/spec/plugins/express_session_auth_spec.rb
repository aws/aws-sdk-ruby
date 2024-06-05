require_relative '../spec_helper'

module Aws
  module S3
    describe Client do
      describe 'disable_s3_express_session_auth' do
        it 'is configured to use express auth by default' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          expect(client.config.disable_s3_express_session_auth).to be false
        end

        it 'can be configured using shared config' do
          allow_any_instance_of(Aws::SharedConfig)
            .to receive(:s3_disable_express_session_auth).and_return('true')
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          expect(client.config.disable_s3_express_session_auth).to be true
        end

        it 'can be configured using ENV with precedence over shared config' do
          allow_any_instance_of(Aws::SharedConfig)
            .to receive(:s3_disable_express_session_auth).and_return('false')
          ENV['AWS_S3_DISABLE_EXPRESS_SESSION_AUTH'] = 'true'
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          expect(client.config.disable_s3_express_session_auth).to be true
        end

        it 'raises when it is not true or false' do
          ENV['AWS_S3_DISABLE_EXPRESS_SESSION_AUTH'] = 'peccy'

          expect do
            Aws::S3::Client.new(
              stub_responses: true,
              region: 'us-west-2'
            )
          end.to raise_error(ArgumentError)
        end
      end
      
      describe 'express_credentials_provider' do
        it 'is configured to use the default provider by default' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          expect(client.config.express_credentials_provider)
            .to be_a(Aws::S3::ExpressCredentialsProvider)
        end

        it 'can use a configured provider' do
          provider = Aws::S3::ExpressCredentialsProvider.new
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2',
            express_credentials_provider: provider
          )
          expect(client.config.express_credentials_provider)
            .to be(provider)
        end
      end

      it 'sets the client as the client to create sessions' do
        client = Aws::S3::Client.new(
          stub_responses: true,
          region: 'us-west-2'
        )
        provider = client.config.express_credentials_provider
        expect(provider.client).to eq(client)
      end

      let(:client) do
        Aws::S3::Client.new(
          stub_responses: true,
          region: 'us-east-1'
        )
      end

      before do
        client.stub_responses(:create_session, credentials: {
          access_key_id: 's3-akid',
          secret_access_key: 's3-secret',
          session_token: 's3-session',
          expiration: Time.now + 60 * 5
        })
      end

      after do
        Aws::S3.express_credentials_cache.clear
      end

      describe 's3 express auth' do
        it 'does not use express auth when disabled' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-east-1',
            disable_s3_express_session_auth: true
          )
          provider = client.config.express_credentials_provider
          expect(provider).not_to receive(:express_credentials_for)
          client.get_object(
            bucket: 'bucket--use1-az2--x-s3',
            key: 'key'
          )
        end

        it 'uses express auth when enabled' do
          bucket = 'bucket--use1-az2--x-s3'
          provider = client.config.express_credentials_provider

          expect_auth({"name"=>"sigv4", "signingName"=>"s3express"})
          # tests that credentials are used in the subsequent call
          allow(provider).to receive(:express_credentials_for).with(bucket)
           .and_wrap_original do |m, *args|
            credentials = m.call(*args)
            expect_auth(
              {"name"=>"sigv4-s3express", "signingName"=>"s3express"},
              credentials: credentials
            )
            credentials
          end
          client.get_object(bucket: bucket, key: 'key')
        end

        it 'sets user-agent metric' do
          resp = client.get_object(bucket: 'bucket--use1-az2--x-s3', key: 'key')
          metric = Aws::Plugins::UserAgent::METRICS['S3_EXPRESS_BUCKET']
          expect(resp.context.http_request.headers['User-Agent'])
            .to include("m/#{metric}")
        end
      end

      # does not have http checksum trait, but requires a checksum (md5)
      describe '#put_object' do
        it 'disables md5 for express endpoints' do
          resp = client.put_object(
            bucket: 'bucket--use1-az2--x-s3',
            key: 'key',
            body: 'body'
          )
          expect(resp.context.http_request.headers['content-md5']).to be_nil
        end

        it 'defaults to crc32' do
          resp = client.put_object(
            bucket: 'bucket--use1-az2--x-s3',
            key: 'key',
            body: 'body'
          )
          expect(resp.context.http_request.headers['x-amz-checksum-crc32']).to_not be_nil
        end
      end

      # has checksum required
      describe '#delete_objects' do
        it 'disables md5 for express endpoints' do
          resp = client.delete_objects(
            bucket: 'bucket--use1-az2--x-s3',
            delete: { objects: [{ key: 'key' }] }
          )
          expect(resp.context.http_request.headers['content-md5']).to be_nil
        end

        it 'defaults to crc32' do
          resp = client.delete_objects(
            bucket: 'bucket--use1-az2--x-s3',
            delete: { objects: [{ key: 'key' }] }
          )
          expect(resp.context.http_request.headers['x-amz-checksum-crc32']).to_not be_nil
        end
      end

      # does not have a checksum trait
      describe '#delete_object' do
        it 'disables md5 for express endpoints' do
          resp = client.delete_object(
            bucket: 'bucket--use1-az2--x-s3',
            key: 'key'
          )
          expect(resp.context.http_request.headers['content-md5']).to be_nil
        end

        it 'does not default to crc32' do
          resp = client.delete_object(
            bucket: 'bucket--use1-az2--x-s3',
            key: 'key'
          )
          expect(resp.context.http_request.headers['x-amz-checksum-crc32']).to be_nil
        end
      end
    end
  end
end
