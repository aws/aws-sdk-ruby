require_relative '../spec_helper'

module Aws
  describe Credentials do

    it 'provides access to the access key id' do
      expect(Credentials.new('akid', 'secret').access_key_id).to eq('akid')
    end

    it 'provides access to the secret access key' do
      expect(Credentials.new('akid', 'secret').secret_access_key).to eq('secret')
    end

    it 'provides access to the session tokey' do
      creds = Credentials.new('akid', 'secret', 'token')
      expect(creds.session_token).to eq('token')
    end

    it 'defaults the session token to nil' do
      expect(Credentials.new('akid', 'secret').session_token).to be(nil)
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
  end
end
