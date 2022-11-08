# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  describe SSOTokenProvider do

    let(:client) do
      SSOOIDC::Client.new(
        region: 'us-west-2',
        stub_responses: true
      )
    end

    let(:now) { Time.now }
    let(:in_one_hour) { now + 60 * 60 }
    let(:one_hour_ago) { now - 60 * 60 }

    let(:expiration) { in_one_hour }

    let(:access_token) { 'token' }

    let(:cached_token) do
      {
        'accessToken' =>  access_token,
        'expiresAt' => expiration
      }
    end

    let(:sso_session) { 'session' }
    let(:sso_region) { 'us-west-2' }

    let(:sso_opts) do
      {
        sso_session: sso_session,
        sso_region: sso_region,
      }
    end

    def mock_token_file(sso_session, cached_token)
      sso_session_sha1 = OpenSSL::Digest::SHA1.hexdigest(sso_session.encode('utf-8'))
      allow(Dir).to receive(:home).and_return('HOME')
      path = File.join(Dir.home, '.aws', 'sso', 'cache', "#{sso_session_sha1}.json")

      allow(File).to receive(:read).with(path).and_return(
        JSON.dump(cached_token)
      )
    end

    def expect_token_write_back(sso_session, expected_token)
      sso_session_sha1 = OpenSSL::Digest::SHA1.hexdigest(sso_session.encode('utf-8'))
      allow(Dir).to receive(:home).and_return('HOME')
      path = File.join(Dir.home, '.aws', 'sso', 'cache', "#{sso_session_sha1}.json")

      expect(File).to receive(:write) do |arg1, arg2|
        expect(arg1).to eq(path)
        expect(Json.load(arg2)).to eq(expected_token)
      end
    end

    describe '#initialize' do

      it 'constructs an client with passed arguments when not given' do
        expect(SSOOIDC::Client).to receive(:new)
                                 .with({region: sso_region, credentials: nil})
                                 .and_return(client)

        mock_token_file(sso_session, cached_token)

        provider = SSOTokenProvider.new(sso_opts)
        expect(provider.client).to be(client)
      end

      it 'raises an argument error when arguments are missing' do
        expect { SSOTokenProvider.new }.to raise_error(
                                           ArgumentError, /Missing required keys/
                                         )
      end

      it 'raises an InvalidSSOToken error when  token file is missing' do
        expect(SSOOIDC::Client).to receive(:new)
                                     .with({region: sso_region, credentials: nil})
                                     .and_return(client)

        sso_session_sha1 = OpenSSL::Digest::SHA1.hexdigest(sso_session.encode('utf-8'))
        allow(Dir).to receive(:home).and_return('HOME')
        path = File.join(Dir.home, '.aws', 'sso', 'cache', "#{sso_session_sha1}.json")

        allow(File).to receive(:read).with(path).and_raise(Errno::ENOENT)

        expect do
          SSOTokenProvider.new(sso_opts)
        end.to raise_error(Aws::Errors::InvalidSSOToken)
      end

      it 'raises an InvalidSSOCredentials error when  token file is missing fields' do
        mock_token_file(sso_session, {'accessToken' =>  access_token})

        expect do
          SSOTokenProvider.new(sso_opts)
        end.to raise_error(Aws::Errors::InvalidSSOToken)
      end


      it 'sets the client when passed in and does not create a new one' do
        test_client = client # force construction
        expect(SSOOIDC::Client).not_to receive(:new)

        mock_token_file(sso_session, cached_token)

        provider = SSOTokenProvider.new(sso_opts.merge(client: test_client))
        expect(provider.client).to be(test_client)
      end
    end

    describe '#sso_cache_file' do
      it 'produces the correct file location for a basic name' do
        test_client = client # force construction
        sso_session = 'admin'
        mock_token_file(sso_session, cached_token)
        provider = SSOTokenProvider.new(sso_opts.merge(sso_session: sso_session, client: test_client))
        expect(File.basename(provider.send(:sso_cache_file))).to eq('d033e22ae348aeb5660fc2140aec35850c4da997.json')
      end

      it 'produces the correct file location for a session with a dash' do
        test_client = client # force construction
        sso_session = 'dev-scopes'
        mock_token_file(sso_session, cached_token)
        provider = SSOTokenProvider.new(sso_opts.merge(sso_session: sso_session, client: test_client))
        expect(File.basename(provider.send(:sso_cache_file))).to eq('75e4d41276d8bd17f85986fc6cccef29fd725ce3.json')
      end
    end

    describe '#refresh' do
      let(:sso_session) { 'session' }
      let(:sso_region) { 'us-west-2' }

      let(:sso_opts) do
        {
          sso_session: sso_session,
          sso_region: sso_region,
          client: client
        }
      end

      let(:now) { Time.parse('2021-12-25T13:30:00Z') }

      before do
        allow(Time).to receive(:now).and_return(now)
        sso_opts # force initialization of client to avoid File read of partitions.json
      end

      context 'valid token with all fields' do
        let(:cached_token) do
          Json.load(<<~JSON)
            {
                "startUrl": "https://d-123.awsapps.com/start",
                "region": "us-west-2",
                "accessToken": "cachedtoken",
                "expiresAt": "2021-12-25T21:30:00Z",
                "clientId": "clientid",
                "clientSecret": "YSBzZWNyZXQ=",
                "registrationExpiresAt": "2022-12-25T13:30:00Z",
                "refreshToken": "cachedrefreshtoken"
            }
          JSON
        end

        it 'returns the token' do
          mock_token_file(sso_session, cached_token)
          provider = SSOTokenProvider.new(sso_opts)
          expect(provider.token.token).to eq('cachedtoken')
          expect(provider.token.expiration).to eq(Time.parse('2021-12-25T21:30:00Z'))
        end
      end

      context 'minimal valid cached token' do
        let(:cached_token) do
          Json.load(<<~JSON)
            {
                "accessToken": "cachedtoken",
                "expiresAt": "2021-12-25T21:30:00Z"
            }
          JSON
        end

        it 'returns the token' do
          mock_token_file(sso_session, cached_token)
          provider = SSOTokenProvider.new(sso_opts)
          expect(provider.token.token).to eq('cachedtoken')
          expect(provider.token.expiration).to eq(Time.parse('2021-12-25T21:30:00Z'))
        end
      end

      context 'minimal expired cached token' do
        let(:cached_token) do
          Json.load(<<~JSON)
            {
                "accessToken": "cachedtoken",
                "expiresAt": "2021-12-25T13:00:00Z"
            }
          JSON
        end

        it 'raises an exception' do
          mock_token_file(sso_session, cached_token)

          expect do
            SSOTokenProvider.new(sso_opts)
          end.to raise_error(Aws::Errors::InvalidSSOToken)
        end
      end

      context 'Token missing the expiresAt field' do
        let(:cached_token) do
          Json.load(<<~JSON)
            {
                "accessToken": "cachedtoken"
            }
          JSON
        end

        it 'raises an exception' do
          mock_token_file(sso_session, cached_token)

          expect do
            SSOTokenProvider.new(sso_opts)
          end.to raise_error(Aws::Errors::InvalidSSOToken)
        end
      end

      context 'Token missing the accessToken field' do
        let(:cached_token) do
          Json.load(<<~JSON)
            {
                "expiresAt": "2021-12-25T21:30:00Z"
            }
          JSON
        end

        it 'raises an exception' do
          mock_token_file(sso_session, cached_token)

          expect do
            SSOTokenProvider.new(sso_opts)
          end.to raise_error(Aws::Errors::InvalidSSOToken)
        end
      end

      context 'Expired token refresh with refresh token' do
        let(:cached_token) do
          Json.load(<<~JSON)
            {
                "startUrl": "https://d-123.awsapps.com/start",
                "region": "us-west-2",
                "accessToken": "cachedtoken",
                "expiresAt": "2021-12-25T13:00:00Z",
                "clientId": "clientid",
                "clientSecret": "YSBzZWNyZXQ=",
                "registrationExpiresAt": "2022-12-25T13:30:00Z",
                "refreshToken": "cachedrefreshtoken"
            }
          JSON
        end

        let(:execpted_token_write_back) do
          Json.load(<<~JSON)
            {
                "startUrl": "https://d-123.awsapps.com/start",
                "region": "us-west-2",
                "accessToken": "newtoken",
                "expiresAt": "2021-12-25T21:30:00Z",
                "clientId": "clientid",
                "clientSecret": "YSBzZWNyZXQ=",
                "registrationExpiresAt": "2022-12-25T13:30:00Z",
                "refreshToken": "newrefreshtoken"
            }
          JSON
        end

        it 'refreshes the token' do
          mock_token_file(sso_session, cached_token)
          expect(client).to receive(:create_token).with(
            grant_type: 'refresh_token',
            client_id: cached_token['clientId'],
            client_secret: cached_token['clientSecret'],
            refresh_token: cached_token['refreshToken']
          ).and_return(double('Response', token_type: 'Bearer',
                              access_token: 'newtoken', expires_in: 28800,
                              refresh_token: 'newrefreshtoken'))

          expect_token_write_back(sso_session, execpted_token_write_back)

          provider = SSOTokenProvider.new(sso_opts)

          expect(provider.token.token).to eq('newtoken')
          expect(provider.token.expiration).to eq(Time.parse('2021-12-25T21:30:00Z'))
        end
      end

      context 'Expired token refresh without new refresh token' do
        let(:cached_token) do
          Json.load(<<~JSON)
            {
                "startUrl": "https://d-123.awsapps.com/start",
                "region": "us-west-2",
                "accessToken": "cachedtoken",
                "expiresAt": "2021-12-25T13:00:00Z",
                "clientId": "clientid",
                "clientSecret": "YSBzZWNyZXQ=",
                "registrationExpiresAt": "2022-12-25T13:30:00Z",
                "refreshToken": "cachedrefreshtoken"
            }
          JSON
        end

        let(:execpted_token_write_back) do
          Json.load(<<~JSON)
            {
                "startUrl": "https://d-123.awsapps.com/start",
                "region": "us-west-2",
                "accessToken": "newtoken",
                "expiresAt": "2021-12-25T21:30:00Z",
                "clientId": "clientid",
                "clientSecret": "YSBzZWNyZXQ=",
                "registrationExpiresAt": "2022-12-25T13:30:00Z"
            }
          JSON
        end

        it 'refreshes the token' do
          mock_token_file(sso_session, cached_token)
          expect(client).to receive(:create_token).with(
            grant_type: 'refresh_token',
            client_id: cached_token['clientId'],
            client_secret: cached_token['clientSecret'],
            refresh_token: cached_token['refreshToken']
          ).and_return(double('Response', token_type: 'Bearer',
                              access_token: 'newtoken', expires_in: 28800, refresh_token: nil))

          expect_token_write_back(sso_session, execpted_token_write_back)

          provider = SSOTokenProvider.new(sso_opts)

          expect(provider.token.token).to eq('newtoken')
          expect(provider.token.expiration).to eq(Time.parse('2021-12-25T21:30:00Z'))
        end
      end

      context 'Expired token and expired client registration' do
        let(:cached_token) do
          Json.load(<<~JSON)
            {
                "startUrl": "https://d-123.awsapps.com/start",
                "region": "us-west-2",
                "accessToken": "cachedtoken",
                "expiresAt": "2021-10-25T13:00:00Z",
                "clientId": "clientid",
                "clientSecret": "YSBzZWNyZXQ=",
                "registrationExpiresAt": "2021-11-25T13:30:00Z",
                "refreshToken": "cachedrefreshtoken"
            }
          JSON
        end

        it 'raises an exception' do
          mock_token_file(sso_session, cached_token)
          expect(client).not_to receive(:create_token)

          expect do
            SSOTokenProvider.new(sso_opts)
          end.to raise_error(Aws::Errors::InvalidSSOToken)
        end
      end
    end
  end
end
