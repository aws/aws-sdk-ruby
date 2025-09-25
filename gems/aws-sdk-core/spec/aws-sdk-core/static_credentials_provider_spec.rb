# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module Core
    describe StaticCredentialsProvider do
      describe '#identity' do
        it 'delegates using a credentials object' do
          creds = Credentials.new(
            access_key_id: 'akid',
            secret_access_key: 'secret',
            session_token: 'token',
            account_id: '123456789012'
          )
          provider = StaticCredentialsProvider.new(credentials: creds)
          identity = provider.identity
          expect(identity).to be(creds)
          expect(identity.access_key_id).to eq('akid')
          expect(identity.secret_access_key).to eq('secret')
          expect(identity.session_token).to eq('token')
          expect(identity.account_id).to eq('123456789012')
          expect(provider.expiration).to be_nil
        end

        it 'delegates using individual credential options' do
          provider = StaticCredentialsProvider.new(
            access_key_id: 'akid',
            secret_access_key: 'secret',
            session_token: 'token',
            account_id: '123456789012'
          )
          identity = provider.identity
          expect(identity).to be_a(Credentials)
          expect(identity.access_key_id).to eq('akid')
          expect(identity.secret_access_key).to eq('secret')
          expect(identity.session_token).to eq('token')
          expect(identity.account_id).to eq('123456789012')
          expect(provider.expiration).to be_nil
        end
      end

      describe '#expiration' do
        it 'always returns nil' do
          provider = StaticCredentialsProvider.new(access_key_id: 'akid', secret_access_key: 'secret')
          expect(provider.expiration).to be_nil
        end
      end

      describe '#set?' do
        it 'returns true when credentials are set' do
          provider = StaticCredentialsProvider.new(access_key_id: 'akid', secret_access_key: 'secret')
          expect(provider.set?).to be(true)
        end

        it 'returns false when credentials are not set' do
          provider = StaticCredentialsProvider.new(access_key_id: nil, secret_access_key: 'secret')
          expect(provider.set?).to be(false)
          provider = StaticCredentialsProvider.new(access_key_id: '', secret_access_key: 'secret')
          expect(provider.set?).to be(false)
          provider = StaticCredentialsProvider.new(access_key_id: 'akid', secret_access_key: nil)
          expect(provider.set?).to be(false)
          provider = StaticCredentialsProvider.new(access_key_id: 'akid', secret_access_key: '')
          expect(provider.set?).to be(false)
          provider = StaticCredentialsProvider.new(access_key_id: nil, secret_access_key: nil)
          expect(provider.set?).to be(false)
          provider = StaticCredentialsProvider.new
          expect(provider.set?).to be(false)
        end
      end

      describe '#features' do
        it 'defaults to no feature ids' do
          provider = StaticCredentialsProvider.new(
            access_key_id: 'akid',
            secret_access_key: 'secret'
          )
          expect(provider.features).to eq([])
        end
      end
    end
  end
end
