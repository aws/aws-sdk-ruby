require 'spec_helper'

module Aws
  describe SharedCredentials do
    let(:mock_credential_file) {
      File.expand_path(File.join(File.dirname(__FILE__),
        '..', 'fixtures', 'credentials', 'mock_shared_credentials'))
    }

    it 'reads the correct default credentials from a credentials file' do
      provider = SharedCredentials.new(mock_credential_file)
      expect(provider.access_key_id).to eq('ACCESS_KEY_0')
      expect(provider.secret_access_key).to eq('SECRET_KEY_0')
      expect(provider.session_token).to eq('TOKEN_0')
    end

    it 'supports fetching profiles from ENV' do
      allow(ENV).to receive(:[]).with('AWS_PROFILE').and_return('barprofile')
      provider = SharedCredentials.new(mock_credential_file)
      expect(provider.access_key_id).to eq('ACCESS_KEY_2')
      expect(provider.secret_access_key).to eq('SECRET_KEY_2')
      expect(provider.session_token).to eq('TOKEN_2')
    end

    it 'supports a manually specified profile' do
      allow(ENV).to receive(:[]).with('AWS_PROFILE').and_return('barprofile')
      provider = SharedCredentials.new(mock_credential_file,
                                       'fooprofile')
      expect(provider.access_key_id).to eq('ACCESS_KEY_1')
      expect(provider.secret_access_key).to eq('SECRET_KEY_1')
      expect(provider.session_token).to eq('TOKEN_1')
    end

    it 'raises when a profile does not exist' do
      expect { SharedCredentials.new(mock_credential_file,
                                     'bazprofile')
      }.to raise_error(Errors::NoSuchProfileError,
                       "No such credential profile: bazprofile")
    end

    it 'is set when credentails is valid' do
      provider = SharedCredentials.new(mock_credential_file)
      expect(provider.set?).to eq(true)
    end

    it 'is not set when key_id or access_key is missing' do
      provider = SharedCredentials.new('/no/file/here')
      expect(provider.set?).to eq(false)
    end
  end
end
