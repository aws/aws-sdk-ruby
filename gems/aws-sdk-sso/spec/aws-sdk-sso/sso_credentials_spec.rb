# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module SSO
    describe SSOCredentials do
      let(:client) { Client.new(stub_responses: true) }

      let(:sso_role_name) { 'role' }
      let(:sso_region) { 'us-west-2' }
      let(:sso_account_id) { '12345' }
      let(:sso_session) { 'sso-session' }
      let(:provider_options) do
        {
          sso_session: sso_session,
          sso_region: sso_region,
          sso_role_name: sso_role_name,
          sso_account_id: sso_account_id
        }
      end

      let(:token) { double('Token', token: 'token') }
      let(:token_provider) { double('SSOOIDCToken', identity: token) }

      let(:expiration) { Time.now.round + 60 * 60 }

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

      before(:each) do
        stub_const('Aws::SSOOIDC::SSOOIDCToken', Class.new)
        allow(Aws::SSOOIDC::SSOOIDCToken).to receive(:new).and_return(token_provider)
        client.stub_responses(:get_role_credentials, sso_resp)
      end

      it 'constructs a client if not provided' do
        expect(Client).to receive(:new).with(region: sso_region).and_return(client)
        provider = SSOCredentials.new(**provider_options)
        expect(provider.client).to be(client)
      end

      it 'uses a provided client' do
        expect(Client).not_to receive(:new)
        provider = SSOCredentials.new(**provider_options.merge(client: client))
        expect(provider.client).to be(client)
      end

      it 'uses the token from SSOOIDCToken when calling SSO to return credentials' do
        expect(Client).to receive(:new).with(region: sso_region).and_return(client)
        expect(token_provider).to receive(:identity).and_return(token)
        expect(client).to receive(:get_role_credentials).with(
          account_id: sso_account_id,
          role_name: sso_role_name,
          access_token: 'token'
        ).and_call_original
        creds = SSOCredentials.new(**provider_options).identity
        expect(creds.access_key_id).to eq('akid')
        expect(creds.secret_access_key).to eq('secret')
        expect(creds.session_token).to eq('session')
        expect(creds.account_id).to eq(sso_account_id)
        expect(creds.expiration).to eq(expiration)
      end

      it 'calls the SSOOIDCToken to get a new token for each refresh' do
        expect(Client).to receive(:new).with(region: sso_region).and_return(client)
        new_token = double('Token', token: 'new_token')
        expect(token_provider).to receive(:identity).and_return(token, new_token)
        provider = SSOCredentials.new(**provider_options)
        provider.identity

        allow(Time).to receive(:now).and_return(expiration + 60)

        expect(client).to receive(:get_role_credentials).with(
          account_id: sso_account_id,
          role_name: sso_role_name,
          access_token: 'new_token'
        ).and_call_original
        provider.identity
      end

      it 'parses expiration as Time' do
        expect(Client).to receive(:new).with(region: sso_region).and_return(client)
        expect(token_provider).to receive(:identity).and_return(token)
        creds = SSOCredentials.new(**provider_options).identity
        expect(creds.expiration).to be_a(Time)
        expect(creds.expiration).to eq(expiration)
      end
    end
  end
end
