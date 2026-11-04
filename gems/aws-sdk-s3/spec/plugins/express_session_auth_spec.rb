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

        def express_client(akid, **options)
          c = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-east-1',
            credentials: Aws::Credentials.new(akid, 'secret'),
            **options
          )
          c.stub_responses(:create_session, lambda do |ctx|
            caller_akid = (ctx[:sigv4_credentials] || ctx.config.credentials).credentials.access_key_id
            { credentials: {
              access_key_id: "s3-#{caller_akid}",
              secret_access_key: 's3-secret',
              session_token: "s3-session-#{caller_akid}",
              expiration: Time.now + 300
            } }
          end)
          c
        end

        def session_token(client)
          resp = client.get_object(bucket: 'bucket--use1-az2--x-s3', key: 'key')
          resp.context.http_request.headers['x-amz-s3session-token']
        end

        it 'uses separate sessions for clients with different credentials' do
          tokens = %w[akid-a akid-b].map { |a| session_token(express_client(a)) }
          expect(tokens).to eq(%w[s3-session-akid-a s3-session-akid-b])
        end

        it 'uses separate sessions for clients sharing a provider' do
          provider = Aws::S3::ExpressCredentialsProvider.new
          clients = %w[akid-a akid-b].map do |a|
            express_client(a, express_credentials_provider: provider)
          end
          expect(clients.map { |c| session_token(c) })
            .to eq(%w[s3-session-akid-a s3-session-akid-b])
        end

        it 'uses the requesting client over the provider client' do
          other = express_client('akid-a')
          provider = Aws::S3::ExpressCredentialsProvider.new(client: other)
          client = express_client('akid-b', express_credentials_provider: provider)
          expect(session_token(client)).to eq('s3-session-akid-b')
        end

        it 'refreshes sessions with the credentials they were created with' do
          provider = Aws::S3::ExpressCredentialsProvider.new
          a = express_client('akid-a', express_credentials_provider: provider)
          b = express_client('akid-b', express_credentials_provider: provider)
          session_token(a)
          credentials = provider.express_credentials_for('bucket--use1-az2--x-s3', b)
          allow(b.config).to receive(:credentials).and_return(Aws::Credentials.new('akid-c', 'secret'))
          credentials.refresh!
          expect(credentials.credentials.session_token).to eq('s3-session-akid-b')
        end

        it 'supports custom providers that only accept a bucket' do
          creds = Aws::Credentials.new('custom-akid', 'secret', 'custom-session')
          provider = Class.new do
            define_method(:express_credentials_for) { |_bucket| creds }
            attr_accessor :client
          end.new
          client = express_client('akid-a', express_credentials_provider: provider)
          expect(session_token(client)).to eq('custom-session')
        end

        it 'reports the credentials provider metrics when creating sessions' do
          credentials_provider = Class.new do
            include Aws::CredentialProvider

            def initialize
              @metrics = ['CREDENTIALS_STS_ASSUME_ROLE']
            end

            def credentials
              Aws::Credentials.new('akid-a', 'secret')
            end
          end.new
          client = Aws::S3::Client.new(stub_responses: true, region: 'us-east-1', credentials: credentials_provider)
          user_agent = nil
          client.stub_responses(:create_session, lambda do |ctx|
            user_agent = ctx.http_request.headers['User-Agent']
            { credentials: { access_key_id: 's', secret_access_key: 's', session_token: 't', expiration: Time.now + 300 } }
          end)
          client.get_object(bucket: 'bucket--use1-az2--x-s3', key: 'key')
          expect(user_agent[%r{m/(\S+)}, 1].split(',')).to include('i')
        end

        it 'calls custom providers with only the bucket' do
          creds = Aws::Credentials.new('custom-akid', 'secret', 'custom-session')
          impls = [->(_bucket, **opts) { creds if opts.empty? }, ->(_bucket, opts = {}) { creds if opts == {} }]
          impls.each do |impl|
            provider = Class.new do
              define_method(:express_credentials_for, &impl)
              attr_accessor :client
            end.new
            client = express_client('akid-a', express_credentials_provider: provider)
            expect(session_token(client)).to eq('custom-session')
          end
        end

        it 'supports subclasses that override the provider' do
          subclasses = [
            Class.new(Aws::S3::ExpressCredentialsProvider) do
              def express_credentials_for(bucket)
                super
              end
            end,
            Class.new(Aws::S3::ExpressCredentialsProvider) do
              def express_credentials_for(bucket, client = nil)
                super
              end
            end
          ]
          subclasses.each do |subclass|
            provider = subclass.new
            clients = %w[akid-a akid-b].map do |a|
              express_client(a, express_credentials_provider: provider)
            end
            expect(clients.map { |c| session_token(c) })
              .to eq(%w[s3-session-akid-a s3-session-akid-b])
          end
        end

        it 'restores the requesting client after resolving credentials' do
          provider = Aws::S3::ExpressCredentialsProvider.new
          allow(provider).to receive(:express_credentials_for).and_raise('error')
          client = express_client('akid-a', express_credentials_provider: provider)
          expect { session_token(client) }.to raise_error('error')
          expect(Thread.current[:aws_sdk_s3_express_client]).to be_nil
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
          expect(resp.context.http_request.headers['x-amz-sdk-checksum-algorithm']).to eq('CRC32')
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
