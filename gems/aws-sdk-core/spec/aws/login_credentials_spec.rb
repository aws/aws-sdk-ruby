# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  describe LoginCredentials do
    let(:client) { Aws::Signin::Client.new(region: 'us-west-2', stub_responses: true) }
    let(:login_session) { 'login_session' }
    let(:endpoint) { 'https://us-northeast-1.signin.amazon.com/v1/token' }
    let(:expiration) { (Time.now.utc + 900).to_datetime.rfc3339 }
    # Use a hardcoded PEM for testing to avoid BouncyCastle issues with JRuby
    let(:pem) do
      <<~PEM
        -----BEGIN EC PRIVATE KEY-----
        MHcCAQEEIFDZHUzOG1Pzq+6F0mjMlOSp1syN9LRPBuHMoCFXTcXhoAoGCCqGSM49
        AwEHoUQDQgAE9qhj+KtcdHj1kVgwxWWWw++tqoh7H7UHs7oXh8jBbgF47rrYGC+t
        djiIaHK3dBvvdE7MGj5HsepzLm3Kj91bqA==
        -----END EC PRIVATE KEY-----
      PEM
    end
    let(:token_file) { Tempfile.new }
    let(:cached_token) do
      {
        'accessToken' => {
          'accessKeyId' => 'akid',
          'secretAccessKey' => 'secret',
          'sessionToken' => 'token',
          'accountId' => '0123456789012',
          'expiresAt' => expiration
        },
        'tokenType' => 'aws_sigv4',
        'refreshToken' => 'refresh_token',
        'idToken' => 'identity_token',
        'clientId' => 'arn:aws:signin:::devtools/same-device',
        'dpopKey' => pem
      }
    end

    describe '#initialize' do
      it 'constructs an client with passed arguments when not given' do
        expect(Aws::Signin::Client).to receive(:new).with({ credentials: nil }).and_return(client)
        mock_token_file(login_session, cached_token)
        provider = LoginCredentials.new(login_session: login_session)
        expect(provider.client).to be(client)
      end

      it 'sets the client when passed in and does not create a new one' do
        test_client = client # force construction
        expect(Aws::Signin::Client).not_to receive(:new)
        mock_token_file(login_session, cached_token)
        provider = LoginCredentials.new(login_session: login_session, client: client)
        expect(provider.client).to be(test_client)
      end

      it 'raises an argument error when login session is missing' do
        expect { LoginCredentials.new }.to raise_error(ArgumentError, /Missing login_session/)
      end
    end

    describe '#login_cache_file' do
      it 'produces the correct file location for a basic name' do
        allow(Dir).to receive(:home).and_return('HOME')
        login_session = 'arn:aws:iam::0123456789012:user/Admin'
        expect_any_instance_of(LoginCredentials).to receive(:refresh)
        provider = LoginCredentials.new(login_session: login_session, client: client)
        expect(File.basename(provider.send(:login_cache_file)))
          .to eq('36db1d138ff460920374e4c3d8e01f53f9f73537e89c88d639f68393df0e2726.json')
      end

      it 'produces the correct file location when AWS_LOGIN_CACHE_DIRECTORY is set' do
        allow(Dir).to receive(:home).and_return('HOME')
        login_session = 'arn:aws:iam::0123456789012:user/Admin'
        ENV['AWS_LOGIN_CACHE_DIRECTORY'] = '/tmp'
        expect_any_instance_of(LoginCredentials).to receive(:refresh)
        provider = LoginCredentials.new(login_session: login_session, client: client)
        expect(provider.send(:login_cache_file))
          .to eq('/tmp/36db1d138ff460920374e4c3d8e01f53f9f73537e89c88d639f68393df0e2726.json')
      end
    end

    describe '#dpop_proof' do
      it 'generates a valid dpop proof' do
        test_client = client # force construction
        mock_token_file(login_session, cached_token)
        provider = LoginCredentials.new(login_session: login_session, client: test_client)
        dpop_proof = provider.send(:dpop_proof, pem, endpoint)
        verify_dpop(dpop_proof)
      end
    end

    describe '#credentials' do
      context 'valid token' do
        it 'returns credentials from the token file' do
          mock_token_file(login_session, cached_token)
          creds = LoginCredentials.new(login_session: login_session, client: client)
          expect(creds.credentials.access_key_id).to eq('akid')
          expect(creds.credentials.secret_access_key).to eq('secret')
          expect(creds.credentials.session_token).to eq('token')
          expect(creds.credentials.account_id).to eq('0123456789012')
          expect(creds.expiration).to eq(Time.parse(expiration))
        end

        it 'reloads the token from disk first when refreshing' do
          mock_token_file(login_session, cached_token)
          creds = LoginCredentials.new(login_session: login_session, client: client)

          new_expiration = (Time.parse(expiration) + 60 + 900).to_datetime.rfc3339
          allow(Time).to receive(:now).and_return(Time.parse(expiration) + 60)

          new_token = {
            accessToken: {
              accessKeyId: 'new_akid',
              secretAccessKey: 'new_secret',
              sessionToken: 'new_token',
              accountId: '0123456789012',
              expiresAt: new_expiration
            },
            tokenType: 'aws_sigv4',
            refreshToken: 'refresh_token',
            idToken: 'identity_token',
            clientId: 'arn:aws:signin:::devtools/same-device',
            dpopKey: pem
          }
          mock_token_file(login_session, new_token)

          expect(client).to_not receive(:create_o_auth_2_token)
          expect(creds.credentials.access_key_id).to eq('new_akid')
          expect(creds.credentials.secret_access_key).to eq('new_secret')
          expect(creds.credentials.session_token).to eq('new_token')
          expect(creds.credentials.account_id).to eq('0123456789012')
          expect(creds.expiration).to eq(Time.parse(new_expiration))
        end
      end

      context 'expired token with refresh token' do
        let(:old_expiration) { (Time.now.utc + 60).to_datetime.rfc3339 }
        let(:new_expiration) { (Time.now.utc + 900).to_datetime.rfc3339 }

        let(:cached_token) do
          {
            accessToken: {
              accessKeyId: 'akid',
              secretAccessKey: 'secret',
              sessionToken: 'token',
              accountId: '0123456789012',
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
              accountId: '0123456789012',
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
              token_type: "aws_sigv4",
              expires_in: 900,
              refresh_token: "new_refresh_token",
              id_token: 'identity_token'
            }
          }
        end

        before do
          allow_any_instance_of(LoginCredentials).to receive(:warn).with(/WARNING: OpenSSL 3.6.x/)
        end

        it 'refreshes the token' do
          mock_token_file(login_session, cached_token)
          client.stub_responses(:create_o_auth_2_token, signin_resp)
          creds = LoginCredentials.new(login_session: login_session, client: client)
          expect(creds.credentials.access_key_id).to eq('new_akid')
          expect(creds.credentials.secret_access_key).to eq('new_secret')
          expect(creds.credentials.session_token).to eq('new_token')
          expect(creds.credentials.account_id).to eq('0123456789012')
          expect(creds.expiration).to eq(Time.parse(new_expiration))
          expect_token_write_back(expected_token)
        end

        it 'warns when refresh call fails' do
          mock_token_file(login_session, cached_token)
          client.stub_responses(:create_o_auth_2_token, 'InternalError')
          expect_any_instance_of(LoginCredentials).to receive(:warn).with(/Failed to refresh Login token/)
          LoginCredentials.new(login_session: login_session, client: client)
        end

        it 'raises when refresh call fails and token is hard expired' do
          mock_token_file(login_session, cached_token)
          client.stub_responses(:create_o_auth_2_token, 'InternalError')
          expect_any_instance_of(LoginCredentials).to receive(:warn).with(/Failed to refresh Login token/)
          allow(Time).to receive(:now).and_return(Time.parse(old_expiration) + 1)
          expect do
            LoginCredentials.new(login_session: login_session, client: client)
          end.to raise_error(/Login token is invalid and failed to refresh/)
        end
      end

      context 'invalid token' do
        context 'no cache file' do
          it 'raises an error' do
            allow(Dir).to receive(:home).and_return('HOME')
            expect do
              LoginCredentials.new(login_session: login_session, client: client)
            end.to raise_error(/Failed to load a Login token/)
          end
        end

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
              LoginCredentials.new(login_session: login_session, client: client)
            end.to raise_error(/Cached login token is missing required field\(s\)/)
          end
        end

        context 'partial access token' do
          let(:cached_token) do
            {
              accessToken: {
                sessionToken: 'token',
                accountId: '0123456789012',
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
              LoginCredentials.new(login_session: login_session, client: client)
            end.to raise_error(/Access token in cached login token is missing required field\(s\)/)
          end
        end

        context 'missing refresh token' do
          let(:cached_token) do
            {
              accessToken: {
                accessKeyId: 'akid',
                secretAccessKey: 'secret',
                sessionToken: 'token',
                accountId: '0123456789012',
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
              LoginCredentials.new(login_session: login_session, client: client)
            end.to raise_error(/Cached login token is missing required field\(s\)/)
          end
        end

        context 'missing client id' do
          let(:cached_token) do
            {
              accessToken: {
                accessKeyId: 'akid',
                secretAccessKey: 'secret',
                sessionToken: 'token',
                accountId: '0123456789012',
                expiresAt: expiration
              },
              tokenType: 'aws_sigv4',
              refreshToken: 'refresh_token',
              idToken: 'identity_token',
              dpopKey: pem
            }
          end

          it 'raises an error' do
            mock_token_file(login_session, cached_token)
            expect do
              LoginCredentials.new(login_session: login_session, client: client)
            end.to raise_error(/Cached login token is missing required field\(s\)/)
          end
        end

        context 'missing dpop key' do
          let(:cached_token) do
            {
              accessToken: {
                accessKeyId: 'akid',
                secretAccessKey: 'secret',
                sessionToken: 'token',
                accountId: '0123456789012',
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
              LoginCredentials.new(login_session: login_session, client: client)
            end.to raise_error(/Cached login token is missing required field\(s\)/)
          end
        end
      end
    end
  end
end