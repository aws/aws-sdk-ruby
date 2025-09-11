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
          static_creds = StaticCredentials.new(credentials: creds)
          expect(static_creds.credentials).to be(creds)
        end

        it 'initializes with individual credential options' do
          static_creds = StaticCredentials.new(
            access_key_id: 'akid',
            secret_access_key: 'secret'
          )
          creds = static_creds.credentials
          expect(creds.access_key_id).to eq('akid')
          expect(creds.secret_access_key).to eq('secret')
        end

        describe '#set?' do
          it 'returns true when both access key id and secret access key are set' do
            static_creds = StaticCredentials.new(access_key_id: 'akid', secret_access_key: 'secret')
            expect(static_creds.set?).to be(true)
          end

          it 'returns false when secret access key is nil' do
            static_creds = StaticCredentials.new(access_key_id: 'akid', secret_access_key: nil)
            expect(static_creds.set?).to be(false)
          end

          it 'returns false when access key id is empty' do
            static_creds = StaticCredentials.new(access_key_id: '', secret_access_key: 'secret')
            expect(static_creds.set?).to be(false)
          end

          it 'returns false when access key id is nil' do
            static_creds = StaticCredentials.new(access_key_id: nil, secret_access_key: 'secret')
            expect(static_creds.set?).to be(false)
          end

          it 'returns false when secret access key is empty' do
            static_creds = StaticCredentials.new(access_key_id: 'akid', secret_access_key: '')
            expect(static_creds.set?).to be(false)
          end

          it 'returns false when credentials is not set' do
            creds = Credentials.new(
              access_key_id: '',
              secret_access_key: ''
            )
            static_creds = StaticCredentials.new(credentials: creds)
            expect(static_creds.set?).to be(false)
          end
        end
      end
    end
  end
end
