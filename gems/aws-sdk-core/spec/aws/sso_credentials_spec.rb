# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  describe SSOCredentials do

    let(:client) do
      SSO::Client.new(
        region: 'us-west-2',
        stub_responses: true
      )
    end

    let(:time) { Time.at(Time.now.to_i) }
    let(:in_one_hour) { time + 60 * 60 }
    let(:one_hour_ago) { time - 60 * 60 }
    let(:expiration) { in_one_hour }

    let(:sso_resp) do
      {
        role_credentials: {
          access_key_id: 'akid',
          secret_access_key: 'secret',
          session_token: 'session',
          expiration: expiration.to_i * 1000
        }
      }
    end

    let(:token_provider_token) { 'token_provider_token' }
    let(:legacy_token) { 'legacy_token' }
    let(:sso_role_name) { 'role' }
    let(:sso_region) { 'us-west-2' }
    let(:sso_account_id) { '12345' }

    def mock_token_file(start_url, cached_token)
      start_url_sha1 = OpenSSL::Digest::SHA1.hexdigest(start_url.encode('utf-8'))
      allow(Dir).to receive(:home).and_return('HOME')
      path = File.join(Dir.home, '.aws', 'sso', 'cache', "#{start_url_sha1}.json")

      allow(File).to receive(:read).with(path).and_return(
        JSON.dump(cached_token)
      )
    end

    context 'profile with sso_session' do
      let(:sso_session) { 'sso-session' }
      let(:sso_opts) do
        {
          sso_session: sso_session,
          sso_region: sso_region,
          sso_role_name: sso_role_name,
          sso_account_id: sso_account_id
        }
      end
      let(:token) { Token.new(token_provider_token, expiration) }
      let(:token_provider) { double('token_provider', token: token) }

      before do
        allow(Aws::SSOTokenProvider).to receive(:new).and_return(token_provider)
        allow(SSO::Client).to receive(:new).and_return(client)
        client.stub_responses(:get_role_credentials, sso_resp)
      end

      describe '#initialize' do
        it 'constructs an client with passed arguments when not given' do
          expect(SSO::Client).to receive(:new)
                                   .with({region: sso_region, credentials: nil})
                                   .and_return(client)

          creds = SSOCredentials.new(sso_opts)
          expect(creds.client).to be(client)
        end

        it 'excludes before_refresh from client construction' do
          expect(SSO::Client).to receive(:new)
                                   .with({region: sso_region, credentials: nil})
                                   .and_return(client)

          creds = SSOCredentials.new(sso_opts.merge(before_refresh: proc {}))
          expect(creds.client).to be(client)
        end

        it 'raises an argument error when arguments are unset' do
          expect do
            SSOCredentials.new(sso_opts.merge(sso_region: nil))
          end.to raise_error(ArgumentError, /Missing required keys/)
        end

        it 'sets the client when passed in and does not create a new one' do
          test_client = client # force construction
          expect(SSO::Client).not_to receive(:new)

          creds = SSOCredentials.new(sso_opts.merge(client: test_client))
          expect(creds.client).to be(test_client)
        end

        it 'does not set client on the SSOTokenProvider' do
          test_client = client # force construction
          expect(Aws::SSOTokenProvider)
            .to receive(:new)
            .with(hash_not_including(:client))
            .and_return(token_provider)
          creds = SSOCredentials.new(sso_opts.merge(client: test_client))
          expect(creds.client).to be(test_client)
        end
      end

      describe '#credentials' do
        it 'uses the token from TokenProvider when calling SSO' do
          expect(token_provider).to receive(:token).and_return(token)
          expect(client).to receive(:get_role_credentials).with(
              account_id: sso_account_id,
              role_name: sso_role_name,
              access_token: token_provider_token
          ).and_call_original
          sso_creds = SSOCredentials.new(sso_opts)
          expect(sso_creds.credentials.access_key_id).to eq('akid')
        end

        it 'calls the TokenProvider to get a new token for each refresh' do
          sso_creds = SSOCredentials.new(sso_opts)

          allow(Time).to receive(:now).and_return(expiration + 60)

          new_token = Token.new('new_token')

          expect(token_provider).to receive(:token).and_return(new_token)
          expect(client).to receive(:get_role_credentials).with(
            account_id: sso_account_id,
            role_name: sso_role_name,
            access_token: 'new_token'
          ).and_call_original

          sso_creds.credentials
        end
      end

      describe '#expiration' do
        it 'parses expiration as Time' do
          sso_creds = SSOCredentials.new(sso_opts)
          expect(sso_creds.expiration).to be_a(Time)
          expect(sso_creds.expiration).to eq(expiration)
        end
      end
    end

    context 'legacy profile' do
      let(:sso_start_url) { 'start_url' }
      let(:sso_opts) do
        {
          sso_start_url: sso_start_url,
          sso_region: sso_region,
          sso_role_name: sso_role_name,
          sso_account_id: sso_account_id
        }
      end
      let(:cached_token) do
        {
          'accessToken' =>  legacy_token,
          'expiresAt' => expiration
        }
      end

      describe '#initialize' do

        it 'constructs an client with passed arguments when not given' do
          expect(SSO::Client).to receive(:new)
                                   .with({region: sso_region, credentials: nil})
                                   .and_return(client)

          mock_token_file(sso_start_url, cached_token)

          creds = SSOCredentials.new(sso_opts)
          expect(creds.client).to be(client)
        end

        it 'excludes before_refresh from client construction' do
          expect(SSO::Client).to receive(:new)
                                   .with({region: sso_region, credentials: nil})
                                   .and_return(client)

          mock_token_file(sso_start_url, cached_token)

          creds = SSOCredentials.new(sso_opts.merge(before_refresh: proc {}))
          expect(creds.client).to be(client)
        end

        it 'raises an argument error when arguments are missing' do
          expect { SSOCredentials.new }.to raise_error(
                                             ArgumentError, /Missing required keys/
                                           )
        end

        it 'raises an argument error when arguments are unset' do
          expect do
            SSOCredentials.new(sso_opts.merge(sso_region: nil))
          end.to raise_error(ArgumentError, /Missing required keys/)
        end

        it 'raises an InvalidSSOCredentials error when  token file is missing' do
          start_url_sha1 = OpenSSL::Digest::SHA1.hexdigest(sso_start_url.encode('utf-8'))
          allow(Dir).to receive(:home).and_return('HOME')
          path = File.join(Dir.home, '.aws', 'sso', 'cache', "#{start_url_sha1}.json")

          allow(File).to receive(:read).with(path).and_raise(Errno::ENOENT)

          expect do
            SSOCredentials.new(sso_opts)
          end.to raise_error(Aws::Errors::InvalidSSOCredentials)
        end
        it 'raises an InvalidSSOCredentials error when  token file is missing fields' do
          mock_token_file(sso_start_url, {'accessToken' =>  legacy_token})

          expect do
            SSOCredentials.new(sso_opts)
          end.to raise_error(Aws::Errors::InvalidSSOCredentials)
        end

        it 'raises an InvalidSSOCredentials error when token is expired' do
          mock_token_file(sso_start_url,
                          {
                            'accessToken' =>  legacy_token,
                            'expiresAt' => one_hour_ago
                          }
          )

          expect do
            SSOCredentials.new(sso_opts)
          end.to raise_error(Aws::Errors::InvalidSSOCredentials)
        end

        it 'sets the client when passed in and does not create a new one' do
          test_client = client # force construction
          expect(SSO::Client).not_to receive(:new)

          mock_token_file(sso_start_url, cached_token)

          creds = SSOCredentials.new(sso_opts.merge(client: test_client))
          expect(creds.client).to be(test_client)
        end
      end

      describe '#credentials' do

        before do
          allow(SSO::Client).to receive(:new).and_return(client)
          client.stub_responses(:get_role_credentials, sso_resp)
        end

        it 'uses the token from the token file when calling SSO' do
          expect(Aws::SSOTokenProvider).not_to receive(:new)
          mock_token_file(sso_start_url, cached_token)
          expect(client).to receive(:get_role_credentials).with(
            account_id: sso_account_id,
            role_name: sso_role_name,
            access_token: legacy_token
          ).and_call_original
          sso_creds = SSOCredentials.new(sso_opts)
          expect(sso_creds.credentials.access_key_id).to eq('akid')
        end

        it 'reads a new token from disc for each refresh' do
          mock_token_file(sso_start_url, cached_token)
          sso_creds = SSOCredentials.new(sso_opts)

          allow(Time).to receive(:now).and_return(expiration + 60)

          new_token = {
            'accessToken' =>  'new_token',
            'expiresAt' => expiration + 60*60
          }
          mock_token_file(sso_start_url, new_token)

          expect(client).to receive(:get_role_credentials).with(
            account_id: sso_account_id,
            role_name: sso_role_name,
            access_token: 'new_token'
          ).and_call_original

          sso_creds.credentials
        end
      end
    end
  end
end
