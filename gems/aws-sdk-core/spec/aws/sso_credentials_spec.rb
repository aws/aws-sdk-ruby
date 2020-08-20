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
        'accessToken':  access_token,
        'expiresAt': expiration
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
      path = File.expand_path "~/.aws/sso/cache/#{start_url_sha1}.json"

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
        expect { SSOCredentials.new }.to raise_error(ArgumentError)
      end

      it 'sets the client when passed in and does not create a new one' do
        test_client = client # force construction
        expect(SSO::Client).not_to receive(:new)

        mock_token_file(sso_start_url, cached_token)

        creds = SSOCredentials.new(sso_opts.merge(client: test_client))
        expect(creds.client).to be(test_client)
      end
    end

    # describe '#identity_id' do
    #
    #   it 'uses the identity_id when passed' do
    #     expect(client).not_to receive(:get_id)
    #
    #     creds = CognitoIdentityCredentials.new(
    #       client: client, identity_id: identity_id
    #     )
    #     expect(creds.identity_id).to eq(identity_id)
    #   end
    #
    #   it 'gets identity_id from the identity_pool_id' do
    #     expect(client).to receive(:get_id)
    #                         .with(identity_pool_id: identity_pool_id)
    #                         .and_return(double("getid", identity_id: identity_id))
    #
    #     creds = CognitoIdentityCredentials.new(
    #       client: client, identity_pool_id: identity_pool_id
    #     )
    #
    #     expect(creds.identity_id).to eq(identity_id)
    #   end
    # end
    #
    # describe '#refresh' do
    #   it 'extracts credentials and expiration from the response' do
    #     expect(client).to receive(:get_credentials_for_identity)
    #                         .with(identity_id: identity_id, custom_role_arn: nil)
    #                         .and_return(resp)
    #
    #     creds = CognitoIdentityCredentials.new(
    #       client: client, identity_id: identity_id
    #     )
    #
    #     expect(creds.credentials.access_key_id)
    #       .to eq(cognito_creds.access_key_id)
    #
    #     expect(creds.credentials.secret_access_key)
    #       .to eq(cognito_creds.secret_key)
    #
    #     expect(creds.expiration)
    #       .to eq(cognito_creds.expiration)
    #   end
    #
    #   it 'calls before_refresh with self' do
    #     before_refresh_called = false
    #     before_refresh = proc do |cred_provider|
    #       before_refresh_called = true
    #       expect(cred_provider).to be_instance_of(CognitoIdentityCredentials)
    #     end
    #
    #     CognitoIdentityCredentials.new(
    #       client: client,
    #       identity_id: identity_id,
    #       before_refresh: before_refresh
    #     )
    #
    #     expect(before_refresh_called).to be(true)
    #   end
    # end

  end
end
