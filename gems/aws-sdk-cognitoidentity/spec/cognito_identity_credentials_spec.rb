
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

      let(:credentials) {
        double('credentials',
               access_key_id: 'akid',
               secret_access_key: 'secret',
               session_token: 'session',
               expiration: expiration,
               )
      }

      let(:identity_id) { 'identity_id' }
      let(:identity_pool_id) { 'pool_id' }

      let(:resp) { double('client-resp', credentials: credentials) }

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

      it 'raises an error' do

      end

      it 'accepts client options' do

      end

    end
  end
end
