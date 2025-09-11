# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module SigV4
    describe Credentials do
      describe '#initialize' do
        it 'requires :access_key_id and :secret_access_key' do
          expect do
            Credentials.new(secret_access_key: 'secret')
          end.to raise_error(KeyError, /:access_key_id/)

          expect do
            Credentials.new(access_key_id: 'akid')
          end.to raise_error(KeyError, /:secret_access_key/)
        end

        describe 'attributes' do
          it 'gets values' do
            expiration = Time.now
            creds = Credentials.new(
              access_key_id: 'akid',
              secret_access_key: 'secret',
              session_token: 'token',
              account_id: '123456789012',
              expiration: expiration
            )
            expect(creds.access_key_id).to eq('akid')
            expect(creds.secret_access_key).to eq('secret')
            expect(creds.session_token).to eq('token')
            expect(creds.account_id).to eq('123456789012')
            expect(creds.expiration).to eq(expiration)
          end
        end

        describe '#set?' do
          it 'returns true when both access key id and secret access key are set' do
            creds = Credentials.new(access_key_id: 'akid', secret_access_key: 'secret')
            expect(creds.set?).to be(true)
          end

          it 'returns false when access key id is nil' do
            creds = Credentials.new(access_key_id: nil, secret_access_key: 'secret')
            expect(creds.set?).to be(false)
          end

          it 'returns false when access key id is empty' do
            creds = Credentials.new(access_key_id: '', secret_access_key: 'secret')
            expect(creds.set?).to be(false)
          end

          it 'returns false when secret access key is nil' do
            creds = Credentials.new(access_key_id: 'akid', secret_access_key: nil)
            expect(creds.set?).to be(false)
          end

          it 'returns false when secret access key is empty' do
            creds = Credentials.new(access_key_id: 'akid', secret_access_key: '')
            expect(creds.set?).to be(false)
          end
        end

        describe '#inspect' do
          it 'filters sensitive information' do
            creds = Credentials.new(
              access_key_id: 'akid',
              secret_access_key: 'secret',
              session_token: 'token',
              account_id: '123456789012',
              expiration: Time.now
            )
            inspected = creds.inspect
            expect(inspected).to include('@access_key_id="akid"')
            expect(inspected).to include('@secret_access_key=[FILTERED]')
            expect(inspected).to include('@session_token=[FILTERED]')
            expect(inspected).to include('@account_id="123456789012"')
            expect(inspected).to match(/@expiration=.+>/)
          end
        end
      end
    end
  end
end
