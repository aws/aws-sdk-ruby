# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module Core
    describe CognitoIdentityCredentialsProvider do
      let(:client) { CognitoIdentity::Client.new(stub_responses: true) }
      let(:expiration) { Time.now + (60 * 60) }

      let(:credentials) do
        {
          access_key_id: 'akid',
          secret_key: 'secret',
          session_token: 'token',
          expiration: expiration
        }
      end

      let(:identity_id) { 'identity_id' }
      let(:identity_pool_id) { 'pool_id' }
      let(:logins) { { 'login_provider' => 'login_token' } }
      let(:identity_id_resp) { { identity_id: identity_id } }
      let(:credentials_resp) { { credentials: credentials } }

      it 'raises if aws-sdk-cognitoidentity is not required' do
        hide_const('Aws::CognitoIdentity')
        expect do
          CognitoIdentityCredentialsProvider.new(identity_id: identity_id)
        end.to raise_error(/aws-sdk-cognitoidentity gem must be required/)
      end

      describe '#initialize' do
        it 'constructs a client with passed arguments when not given' do
          expect(CognitoIdentity::Client).to receive(:new).with(
            { region: 'us-east-1', credentials_provider: nil }
          ).and_return(client)
          provider = CognitoIdentityCredentialsProvider.new(identity_id: identity_id, region: 'us-east-1')
          expect(provider.client).to be(client)
        end

        it 'excludes before_refresh from client construction' do
          expect(CognitoIdentity::Client).to receive(:new).with(
            { region: 'us-east-1', credentials_provider: nil }
          ).and_return(client)
          provider = CognitoIdentityCredentialsProvider.new(
            identity_id: identity_id,
            region: 'us-east-1',
            before_refresh: proc {}
          )
          expect(provider.client).to be(client)
        end

        it 'constructs a client with region set to Cognito pool region when provided' do
          expect(CognitoIdentity::Client).to receive(:new).with(
            { region: 'us-east-1', credentials_provider: nil }
          ).and_return(client)
          provider = CognitoIdentityCredentialsProvider.new(
            identity_pool_id: identity_pool_id,
            identity_pool_region: 'us-east-1'
          )
          expect(provider.client).to be(client)
        end

        it 'constructs a client with region set to AWS_REGION when Cognito pool region is not provided' do
          ENV['AWS_REGION'] = 'us-east-1'
          expect(CognitoIdentity::Client).to receive(:new).with(
            { region: 'us-east-1', credentials_provider: nil }
          ).and_return(client)
          provider = CognitoIdentityCredentialsProvider.new(
            identity_pool_id: identity_pool_id
          )
          expect(provider.client).to be(client)
        end

        it 'sets the client when passed in and does not create a new one' do
          test_client = client
          expect(CognitoIdentity::Client).not_to receive(:new)
          provider = CognitoIdentityCredentialsProvider.new(
            identity_id: identity_id,
            client: test_client
          )
          expect(provider.client).to be(client)
        end

        it 'raises an argument error when identity_pool_id and identity_id are missing' do
          expect { CognitoIdentityCredentialsProvider.new }.to raise_error(ArgumentError)
        end
      end

      describe '#identity_id' do
        it 'uses the identity_id when passed' do
          expect(client).not_to receive(:get_id)
          provider = CognitoIdentityCredentialsProvider.new(client: client, identity_id: identity_id)
          expect(provider.identity_id).to eq(identity_id)
        end

        it 'gets identity_id from the identity_pool_id' do
          client.stub_responses(:get_id, identity_id_resp)
          provider = CognitoIdentityCredentialsProvider.new(
            client: client,
            identity_pool_id: identity_pool_id,
            logins: logins
          )
          expect(provider.identity_id).to eq(identity_id)
        end

        it 'retrieves new identity_id when logins are updated' do
          client.stub_responses(:get_id, identity_id_resp)
          expect(client).to receive(:get_id).twice.and_call_original
          provider = CognitoIdentityCredentialsProvider.new(
            client: client,
            identity_pool_id: identity_pool_id,
            logins: logins
          )
          expect(provider.identity_id).to eq(identity_id)
          provider.logins['new_login_provider'] = 'new_login_token'
          expect(provider.identity_id).to eq(identity_id)
        end

        it 'does not retrieve new identity_id when logins remain unchanged' do
          client.stub_responses(:get_id, identity_id_resp)
          expect(client).to receive(:get_id).once.and_call_original
          provider = CognitoIdentityCredentialsProvider.new(
            client: client,
            identity_pool_id: identity_pool_id,
            logins: logins
          )
          expect(provider.identity_id).to eq(identity_id)
          expect(provider.identity_id).to eq(identity_id)
        end
      end

      describe '#refresh' do
        before do
          client.stub_responses(:get_credentials_for_identity, credentials_resp)
        end

        it 'extracts credentials and expiration from the response' do
          expect(client).to receive(:get_credentials_for_identity).with(
            { identity_id: identity_id, logins: {} }
          ).and_call_original
          provider = CognitoIdentityCredentialsProvider.new(client: client, identity_id: identity_id)
          creds = provider.identity
          expect(creds.access_key_id).to eq('akid')
          expect(creds.secret_access_key).to eq('secret')
          expect(creds.session_token).to eq('token')
          expect(provider.expiration).to be_within(0.001).of(expiration)
        end

        it 'calls before_refresh with self' do
          before_refresh_called = false
          before_refresh = proc do |cred_provider|
            before_refresh_called = true
            expect(cred_provider).to be_instance_of(CognitoIdentityCredentialsProvider)
          end
          CognitoIdentityCredentialsProvider.new(
            client: client,
            identity_id: identity_id,
            before_refresh: before_refresh
          )
          expect(before_refresh_called).to be(true)
        end

        it 'passes logins to the credentials' do
          expect(client).to receive(:get_credentials_for_identity).with(
            { identity_id: identity_id, logins: logins }
          ).and_call_original
          provider = CognitoIdentityCredentialsProvider.new(
            client: client,
            identity_id: identity_id,
            logins: logins
          )
          expect(provider.logins).to eq(logins)
        end

        context 'expired credentials' do
          let(:expiration) { Time.now - (60 * 60) }
          let(:credentials_expired) do
            {
              access_key_id: 'akid_expired',
              secret_key: 'secret_expired',
              session_token: 'token_expired',
              expiration: expiration
            }
          end
          let(:credentials_resp_expired) do
            { credentials: credentials_expired }
          end

          before do
            client.stub_responses(:get_credentials_for_identity, credentials_resp_expired, credentials_resp)
          end

          it 'retrieves new credentials' do
            expect(client).to receive(:get_credentials_for_identity).with(
              { identity_id: identity_id, logins: {} }
            ).twice.and_call_original
            provider = CognitoIdentityCredentialsProvider.new(client: client, identity_id: identity_id)
            creds = provider.identity
            expect(creds.access_key_id).to eq('akid')
            expect(creds.secret_access_key).to eq('secret')
            expect(creds.session_token).to eq('token')
            expect(provider.expiration).to be_within(0.001).of(expiration)
          end
        end
      end
    end
  end
end
