# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module Core
    describe SSOCredentialsProvider do
      let(:client) { SSO::Client.new(stub_responses: true) }

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

      let(:expiration) { Time.now.round + (60 * 60) }

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
        allow(SSOOIDCTokenProvider).to receive(:new).and_return(token_provider)
        client.stub_responses(:get_role_credentials, sso_resp)
      end

      it 'raises if aws-sdk-sso is not required' do
        hide_const('Aws::SSO')
        expect do
          SSOCredentialsProvider.new(provider_options)
        end.to raise_error(/aws-sdk-sso gem must be required/)
      end

      it 'constructs a client if not provided' do
        expect(SSO::Client).to receive(:new).with(region: sso_region, credentials_provider: nil).and_return(client)
        provider = SSOCredentialsProvider.new(provider_options)
        expect(provider.client).to be(client)
      end

      it 'uses a provided client' do
        expect(SSO::Client).not_to receive(:new)
        provider = SSOCredentialsProvider.new(provider_options.merge(client: client))
        expect(provider.client).to be(client)
      end

      it 'excludes before_refresh from client construction' do
        options = provider_options.merge(before_refresh: proc {})
        expect(SSO::Client).to receive(:new).with(
          { credentials_provider: nil, region: provider_options[:sso_region] }
        ).and_return(client)
        provider = SSOCredentialsProvider.new(options)
        expect(provider.client).to be(client)
      end

      it 'uses the token from SSOOIDCToken when calling SSO to return credentials' do
        expect(SSO::Client).to receive(:new).with(region: sso_region, credentials_provider: nil).and_return(client)
        expect(token_provider).to receive(:identity).and_return(token)
        expect(client).to receive(:get_role_credentials).with(
          account_id: sso_account_id,
          role_name: sso_role_name,
          access_token: 'token'
        ).and_call_original
        provider = SSOCredentialsProvider.new(provider_options)
        creds = provider.identity
        expect(creds.access_key_id).to eq('akid')
        expect(creds.secret_access_key).to eq('secret')
        expect(creds.session_token).to eq('session')
        expect(creds.account_id).to eq(sso_account_id)
        expect(provider.expiration).to eq(expiration)
      end

      it 'calls the SSOOIDCToken to get a new token for each refresh' do
        expect(SSO::Client).to receive(:new).with(region: sso_region, credentials_provider: nil).and_return(client)
        new_token = double('Token', token: 'new_token')
        expect(token_provider).to receive(:identity).and_return(token, new_token)
        provider = SSOCredentialsProvider.new(provider_options)
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
        expect(Aws::SSO::Client).to receive(:new).with(region: sso_region, credentials_provider: nil).and_return(client)
        expect(token_provider).to receive(:identity).and_return(token)
        provider = SSOCredentialsProvider.new(provider_options)
        expect(provider.expiration).to be_a(Time)
        expect(provider.expiration).to eq(expiration)
      end

      it 'calls before_refresh with self' do
        before_refresh_called = false
        before_refresh = proc do |provider|
          before_refresh_called = true
          expect(provider).to be_instance_of(SSOCredentialsProvider)
        end
        SSOCredentialsProvider.new(provider_options.merge(client: client, before_refresh: before_refresh))
        expect(before_refresh_called).to be(true)
      end
    end
  end
end
