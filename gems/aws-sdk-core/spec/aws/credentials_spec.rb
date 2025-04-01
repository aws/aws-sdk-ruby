# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  describe Credentials do

    it 'provides access to the access key id' do
      expect(Credentials.new('akid', 'secret').access_key_id).to eq('akid')
    end

    it 'provides access to the secret access key' do
      expect(Credentials.new('akid', 'secret').secret_access_key).to eq('secret')
    end

    it 'provides access to the session token' do
      creds = Credentials.new('akid', 'secret', 'token')
      expect(creds.session_token).to eq('token')
    end

    it 'defaults the session token to nil' do
      expect(Credentials.new('akid', 'secret').session_token).to be(nil)
    end

    it 'takes extra properties after session token' do
      expect do
        Credentials.new('akid', 'secret', nil, foo: 'bar')
      end.to_not raise_error
    end

    it 'provides access to the account id' do
      creds = Credentials.new('akid', 'secret', account_id: 'account_id')
      expect(creds.account_id).to eq('account_id')
    end

    it 'defaults the account id to nil' do
      expect(Credentials.new('akid', 'secret').account_id).to be(nil)
    end

    it 'defaults the source to code' do
      expect(Credentials.new('akid', 'secret').metrics_source).to eq(:code)
    end

    describe '#set?' do

      it 'returns true when the key and secret are both non nil values' do
        expect(Credentials.new('akid', 'secret').set?).to be(true)
      end

      it 'returns false if the key is nil' do
        expect(Credentials.new(nil, 'secret').set?).to be(false)
      end

      it 'returns false if the secret is nil' do
        expect(Credentials.new('akid', nil).set?).to be(false)
      end

      it 'returns false if the key is an empty string' do
        expect(Credentials.new('', 'secret').set?).to be(false)
      end

      it 'returns false if the secret is an empty string' do
        expect(Credentials.new('akid', '').set?).to be(false)
      end

    end

    describe '#metrics' do

      it 'returns the correct metrics when the source is none' do
        expect(Credentials.new('akid', 'secret').metrics).to eq(['CREDENTIALS_CODE'])
      end

      it 'returns the correct metrics when the source is profile' do
        creds = Credentials.new('akid', 'secret')
        creds.metrics_source = :profile
        expect(creds.metrics).to eq(['CREDENTIALS_PROFILE'])
      end

      it 'returns the correct metrics when the source is env' do
        creds = Credentials.new('akid', 'secret')
        creds.metrics_source = :env
        expect(creds.metrics).to eq(['CREDENTIALS_ENV_VARS'])
      end

      it 'returns no metrics when the source is assume_role_resolution' do
        creds = Credentials.new('akid', 'secret')
        creds.metrics_source = :assume_role_resolution
        expect(creds.metrics).to eq([])
      end
    end
  end
end
