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

    let(:in_one_hour) { Time.now + 60 * 60 }
    let(:one_hour_ago) { Time.now - 60 * 60 }

    let(:expiration) { in_one_hour }

    let(:sso_creds) do
      double(
        'credentials',
        access_key_id: 'akid',
        secret_key: 'secret',
        session_token: 'session',
        expiration: expiration
      )
    end

    let(:access_token) { 'token' }

    let(:cached_token) do
      {
        'accessToken' =>  access_token,
        'expiresAt' => expiration
      }
    end

    let(:sso_role_name) { 'role' }
    let(:sso_start_url) { 'start_url' }
    let(:sso_region) { 'us-west-2' }
    let(:sso_account_id) { '12345' }

    let(:sso_opts) do
      {
        sso_start_url: sso_start_url,
        sso_region: sso_region,
        sso_role_name: sso_role_name,
        sso_account_id: sso_account_id
      }
    end

    let(:resp) { double('client-resp', credentials: sso_creds) }

    def mock_token_file(start_url, cached_token)
      start_url_sha1 = OpenSSL::Digest::SHA1.hexdigest(start_url.encode('utf-8'))
      allow(Dir).to receive(:home).and_return('HOME')
      path = File.join(Dir.home, '.aws', 'sso', 'cache', "#{start_url_sha1}.json")

      allow(File).to receive(:read).with(path).and_return(
        JSON.dump(cached_token)
      )
    end

    describe '#initialize' do

      it 'constructs an client with passed arguments when not given' do
        expect(SSO::Client).to receive(:new)
           .with(region: sso_region, credentials: nil)
           .and_return(client)

        mock_token_file(sso_start_url, cached_token)

        creds = SSOCredentials.new(sso_opts)
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
        mock_token_file(sso_start_url, {'accessToken' =>  access_token})

        expect do
          SSOCredentials.new(sso_opts)
        end.to raise_error(Aws::Errors::InvalidSSOCredentials)
      end

      it 'raises an InvalidSSOCredentials error when token is expired' do
        mock_token_file(sso_start_url,
          {
            'accessToken' =>  access_token,
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
  end
end
