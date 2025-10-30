# frozen_string_literal: true

require_relative '../spec_helper'
require_relative 'login_credentials_provider_helper'

module Aws
  module Core
    describe LoginCredentialsProvider do
      let(:client) { Aws::Signin::Client.new(region: 'us-west-2', stub_responses: true) }
      let(:login_session) { 'login_session' }
      let(:endpoint) { 'https://ap-northeast-1.aws-signin-testing.amazon.com/v1/token' }
      let(:time) { Time.now }
      let(:expiration) { (time.utc + 900).to_datetime.rfc3339 }
      let(:private_key) { OpenSSL::PKey::EC.generate('prime256v1') }
      let(:pem) { private_key.to_pem }

      let(:cached_token) do
        {
          'accessToken' => {
            'accessKeyId' => 'akid',
            'secretAccessKey' => 'secret',
            'sessionToken' => 'token',
            'accountId' => '123456789012',
            'expiresAt' => expiration
          },
          'tokenType' => 'aws_sigv4',
          'refreshToken' => 'refresh_token',
          'idToken' => 'identity_token',
          'clientId' => 'arn:aws:signin:::devtools/same-device',
          'dpopKey' => pem
        }
      end

      def mock_token_file(login_session, cached_token)
        login_session_sha = OpenSSL::Digest::SHA256.hexdigest(login_session.strip.encode('utf-8'))
        allow(Dir).to receive(:home).and_return('HOME')
        directory = ENV['AWS_LOGIN_CACHE_DIRECTORY'] || File.join(Dir.home, '.aws', 'login', 'cache')
        path = File.join(directory, "#{login_session_sha}.json")
        allow(File).to receive(:read).and_call_original
        allow(File).to receive(:read).with(path, encoding: Encoding::UTF_8).and_return(JSON.dump(cached_token))
      end

      def expect_token_write_back(login_session, expected_token)
        login_session_sha = OpenSSL::Digest::SHA256.hexdigest(login_session.strip.encode('utf-8'))
        allow(Dir).to receive(:home).and_return('HOME')
        directory = ENV['AWS_LOGIN_CACHE_DIRECTORY'] || File.join(Dir.home, '.aws', 'login', 'cache')
        path = File.join(directory, "#{login_session_sha}.json")

        expect(File).to receive(:write) do |arg1, arg2|
          expect(arg1).to eq(path)
          expect(arg2).to eq(JSON.dump(expected_token))
        end
      end

      describe '#initialize' do
        it 'constructs an client with passed arguments when not given' do
          expect(Aws::Signin::Client).to receive(:new).with({ credentials_provider: nil }).and_return(client)
          mock_token_file(login_session, cached_token)
          provider = LoginCredentialsProvider.new(login_session: login_session)
          expect(provider.client).to be(client)
        end

        it 'sets the client when passed in and does not create a new one' do
          test_client = client
          expect(Aws::Signin::Client).not_to receive(:new)
          mock_token_file(login_session, cached_token)
          provider = LoginCredentialsProvider.new(login_session: login_session, client: test_client)
          expect(provider.client).to be(test_client)
        end

        it 'raises an argument error when login session is missing' do
          expect { LoginCredentialsProvider.new }.to raise_error(ArgumentError, /Missing login_session/)
        end
      end

      describe '#login_cache_file' do
        it 'produces the correct file location for a basic name' do
          test_client = client
          login_session = 'arn:aws:iam::123456789012:user/Admin'
          mock_token_file(login_session, cached_token)
          provider = LoginCredentialsProvider.new(login_session: login_session, client: test_client)
          expect(File.basename(provider.send(:login_cache_file)))
            .to eq('10cabd19777b6651ac57333b55c7c10a1242b1c2337f40e674926d7324698347.json')
        end

        it 'produces the correct file location when AWS_LOGIN_CACHE_DIRECTORY is set' do
          test_client = client
          login_session = 'arn:aws:iam::123456789012:user/Admin'
          ENV['AWS_LOGIN_CACHE_DIRECTORY'] = '/tmp'
          mock_token_file(login_session, cached_token)
          provider = LoginCredentialsProvider.new(login_session: login_session, client: test_client)
          expect(provider.send(:login_cache_file))
            .to eq('/tmp/10cabd19777b6651ac57333b55c7c10a1242b1c2337f40e674926d7324698347.json')
        end
      end

      describe '#dpop_proof' do
        it 'generates a valid dpop proof' do
          test_client = client
          mock_token_file(login_session, cached_token)
          provider = LoginCredentialsProvider.new(login_session: login_session, client: test_client)
          dpop_proof = provider.send(:dpop_proof, pem, endpoint)
          verify_dpop(dpop_proof)
        end
      end

      describe '#credentials' do
        context 'valid token' do
          it 'returns credentials from the token file' do
            mock_token_file(login_session, cached_token)
            provider = LoginCredentialsProvider.new(login_session: login_session, client: client)
            creds = provider.identity
            expect(creds.access_key_id).to eq('akid')
            expect(creds.secret_access_key).to eq('secret')
            expect(creds.session_token).to eq('token')
            expect(creds.account_id).to eq('123456789012')
            expect(provider.expiration).to eq(Time.parse(expiration))
          end

          it 'reloads the token from disk first when refreshing' do
            mock_token_file(login_session, cached_token)
            provider = LoginCredentialsProvider.new(login_session: login_session, client: client)

            new_expiration = (Time.parse(expiration) + 60 + 900).to_datetime.rfc3339
            allow(Time).to receive(:now).and_return(Time.parse(expiration) + 60)

            new_token = {
              accessToken: {
                accessKeyId: 'new_akid',
                secretAccessKey: 'new_secret',
                sessionToken: 'new_token',
                accountId: '123456789012',
                expiresAt: new_expiration
              },
              tokenType: 'aws_sigv4',
              refreshToken: 'refresh_token',
              idToken: 'identity_token',
              clientId: 'arn:aws:signin:::devtools/same-device',
              dpopKey: pem
            }
            mock_token_file(login_session, new_token)

            creds = provider.identity
            expect(client).to_not receive(:create_o_auth2_token)
            expect(creds.access_key_id).to eq('new_akid')
            expect(creds.secret_access_key).to eq('new_secret')
            expect(creds.session_token).to eq('new_token')
            expect(creds.account_id).to eq('123456789012')
            expect(provider.expiration).to eq(Time.parse(new_expiration))
          end
        end

        context 'expired token with refresh token' do
          let(:old_expiration) { (time.utc + 60).to_datetime.rfc3339 }
          let(:new_expiration) { (time.utc + 900).to_datetime.rfc3339 }

          let(:cached_token) do
            {
              accessToken: {
                accessKeyId: 'akid',
                secretAccessKey: 'secret',
                sessionToken: 'token',
                accountId: '123456789012',
                expiresAt: old_expiration
              },
              tokenType: 'aws_sigv4',
              refreshToken: 'refresh_token',
              idToken: 'identity_token',
              clientId: 'arn:aws:signin:::devtools/same-device',
              dpopKey: pem
            }
          end

          let(:expected_token) do
            {
              accessToken: {
                accessKeyId: 'new_akid',
                secretAccessKey: 'new_secret',
                sessionToken: 'new_token',
                accountId: '123456789012',
                expiresAt: new_expiration
              },
              tokenType: 'aws_sigv4',
              refreshToken: 'new_refresh_token',
              idToken: 'identity_token',
              clientId: 'arn:aws:signin:::devtools/same-device',
              dpopKey: pem
            }
          end

          let(:signin_resp) do
            {
              token_output: {
                access_token: {
                  access_key_id: 'new_akid',
                  secret_access_key: 'new_secret',
                  session_token: 'new_token'
                },
                token_type: 'aws_sigv4',
                expires_in: 900,
                refresh_token: 'new_refresh_token',
                id_token: 'identity_token'
              }
            }
          end

          it 'refreshes the token' do
            mock_token_file(login_session, cached_token)
            client.stub_responses(:create_o_auth2_token, signin_resp)
            expect_token_write_back(login_session, expected_token)
            provider = LoginCredentialsProvider.new(login_session: login_session, client: client)
            creds = provider.identity
            expect(creds.access_key_id).to eq('new_akid')
            expect(creds.secret_access_key).to eq('new_secret')
            expect(creds.session_token).to eq('new_token')
            expect(creds.account_id).to eq('123456789012')
            expect(provider.expiration).to eq(Time.parse(new_expiration))
          end
        end

        context 'invalid token' do
          context 'missing access token' do
            let(:cached_token) do
              {
                tokenType: 'aws_sigv4',
                refreshToken: 'refresh_token',
                idToken: 'identity_token',
                clientId: 'arn:aws:signin:::devtools/same-device',
                dpopKey: pem
              }
            end

            it 'raises an error' do
              mock_token_file(login_session, cached_token)
              expect do
                LoginCredentialsProvider.new(login_session: login_session, client: client)
              end.to raise_error(/Missing required field: accessToken/)
            end
          end

          context 'partial access token' do
            let(:cached_token) do
              {
                accessToken: {
                  sessionToken: 'token',
                  accountId: '123456789012',
                  expiresAt: expiration
                },
                tokenType: 'aws_sigv4',
                refreshToken: 'refresh_token',
                idToken: 'identity_token',
                clientId: 'arn:aws:signin:::devtools/same-device',
                dpopKey: pem
              }
            end

            it 'raises an error' do
              mock_token_file(login_session, cached_token)
              expect do
                LoginCredentialsProvider.new(login_session: login_session, client: client)
              end.to raise_error(/Missing required field\(s\)/)
            end
          end

          context 'missing refresh token' do
            let(:cached_token) do
              {
                accessToken: {
                  accessKeyId: 'akid',
                  secretAccessKey: 'secret',
                  sessionToken: 'token',
                  accountId: '123456789012',
                  expiresAt: expiration
                },
                tokenType: 'aws_sigv4',
                idToken: 'identity_token',
                clientId: 'arn:aws:signin:::devtools/same-device',
                dpopKey: pem
              }
            end

            it 'raises an error' do
              mock_token_file(login_session, cached_token)
              expect do
                LoginCredentialsProvider.new(login_session: login_session, client: client)
              end.to raise_error(/Missing required field\(s\)/)
            end
          end

          context 'missing dpop key' do
            let(:cached_token) do
              {
                accessToken: {
                  accessKeyId: 'akid',
                  secretAccessKey: 'secret',
                  sessionToken: 'token',
                  accountId: '123456789012',
                  expiresAt: expiration
                },
                tokenType: 'aws_sigv4',
                refreshToken: 'refresh_token',
                idToken: 'identity_token',
                clientId: 'arn:aws:signin:::devtools/same-device'
              }
            end

            it 'raises an error' do
              mock_token_file(login_session, cached_token)
              expect do
                LoginCredentialsProvider.new(login_session: login_session, client: client)
              end.to raise_error(/Missing required field\(s\)/)
            end
          end
        end
      end
    end
  end
end
