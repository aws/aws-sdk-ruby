# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module SigV4
    describe StaticCredentials do
      describe '#initialize' do
        it 'initializes with a credentials object' do
          creds = Credentials.new(
            access_key_id: 'akid',
            secret_access_key: 'secret'
          )
          StaticCredentials.new(credentials: creds)
        end

        it 'initializes with individual credential options' do
          StaticCredentials.new(
            access_key_id: 'akid',
            secret_access_key: 'secret'
          )
        end
      end

      describe '#credentials' do
        it 'always returns the same credentials object' do
          static_creds = StaticCredentials.new(
            access_key_id: 'akid',
            secret_access_key: 'secret'
          )
          creds = static_creds.credentials
          expect(creds).to be_a(Credentials)
          expect(creds.access_key_id).to eq('akid')
          expect(creds.secret_access_key).to eq('secret')
        end
      end
    end
  end
end
