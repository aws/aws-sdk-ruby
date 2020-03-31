
require_relative 'spec_helper'

module Aws
  module CognitoIdentity
    describe CognitoIdentityCredentials do

      let(:client) {
        CognitoIdentity::Client.new(
          region: 'us-west-2',
          stub_responses: true
        )
      }

      let(:in_one_hour) { Time.now + 60 * 60 }

      let(:expiration) { in_one_hour }

      let(:cognito_creds) {
        double('credentials',
               access_key_id: 'akid',
               secret_key: 'secret',
               session_token: 'session',
               expiration: expiration
               )
      }

      let(:identity_id) { 'identity_id' }
      let(:identity_pool_id) { 'pool_id' }

      let(:resp) { double('client-resp', credentials: cognito_creds) }

      describe '#initialize' do

        it 'constructs a client with passed arguments when not given' do
          expect(CognitoIdentity::Client).to receive(:new)
            .with(region: 'us-east-1', credentials: false)
            .and_return(client)

          creds = CognitoIdentityCredentials.new(
            identity_id: identity_id,
            region: 'us-east-1'
          )
          expect(creds.client).to be(client)
        end

        it 'raises an argument error when identity_pool_id and identity_id are missing' do
          expect { CognitoIdentityCredentials.new }.to raise_error(ArgumentError)
        end

        it 'sets the client when passed in and does not create a new one' do
          test_client = client # force construction
          expect(CognitoIdentity::Client).not_to receive(:new)

          creds = CognitoIdentityCredentials.new(
            identity_id: identity_id,
            client: test_client
          )
          expect(creds.client).to be(client)
        end
      end

      describe '#identity_id' do

        it 'uses the identity_id when passed' do
          expect(client).not_to receive(:get_id)

          creds = CognitoIdentityCredentials.new(
            client: client, identity_id: identity_id
          )
          expect(creds.identity_id).to eq(identity_id)
        end

        it 'gets identity_id from the identity_pool_id' do
          expect(client).to receive(:get_id)
            .with(identity_pool_id: identity_pool_id)
            .and_return(double("getid", identity_id: identity_id))
          
          creds = CognitoIdentityCredentials.new(
            client: client, identity_pool_id: identity_pool_id
          )

          expect(creds.identity_id).to eq(identity_id)
        end
      end

      describe '#refresh' do
        it 'extracts credentials and expiration from the response' do
          expect(client).to receive(:get_credentials_for_identity)
            .with(identity_id: identity_id, custom_role_arn: nil)
            .and_return(resp)

          creds = CognitoIdentityCredentials.new(
            client: client, identity_id: identity_id
          )

          expect(creds.credentials.access_key_id)
            .to eq(cognito_creds.access_key_id)

          expect(creds.credentials.secret_access_key)
            .to eq(cognito_creds.secret_key)

          expect(creds.expiration)
            .to eq(cognito_creds.expiration)
        end

        it 'calls before_refresh with self' do
          before_refresh_called = false
          before_refresh = proc do |cred_provider|
            before_refresh_called = true
            expect(cred_provider).to be_instance_of(CognitoIdentityCredentials)
          end
          
          creds = CognitoIdentityCredentials.new(
            client: client,
            identity_id: identity_id,
            before_refresh: before_refresh
          )

          expect(before_refresh_called).to be(true)
        end
      end

    end
  end
end
