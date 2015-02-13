require 'spec_helper'

module Aws
  describe SharedCredentials do

    before(:each) do
      stub_const('ENV', {})
      allow(Dir).to receive(:home).and_raise(ArgumentError)
    end

    let(:mock_credential_file) {
      File.expand_path(File.join(File.dirname(__FILE__),
        '..', 'fixtures', 'credentials', 'mock_shared_credentials'))
    }

    it 'defaults path to Dir.home/.aws/credentials' do
      expect(Dir).to receive(:home).and_return('HOME')
      credentials = SharedCredentials.new
      expect(credentials.path).to eq(File.join('HOME', '.aws', 'credentials'))
    end

    it 'reads the correct default credentials from a credentials file' do
      creds = SharedCredentials.new(path:mock_credential_file)
      expect(creds.access_key_id).to eq('ACCESS_KEY_0')
      expect(creds.secret_access_key).to eq('SECRET_KEY_0')
      expect(creds.session_token).to eq('TOKEN_0')
      expect(creds.region).to eq('REGION_0')
    end

    it 'supports fetching profiles from ENV' do
      stub_const('ENV', { 'AWS_PROFILE' => 'barprofile' })
      creds = SharedCredentials.new(path:mock_credential_file)
      expect(creds.access_key_id).to eq('ACCESS_KEY_2')
      expect(creds.secret_access_key).to eq('SECRET_KEY_2')
      expect(creds.session_token).to eq('TOKEN_2')
      expect(creds.region).to eq(nil)
    end

    it 'supports a manually specified profile' do
      stub_const('ENV', { 'AWS_PROFILE' => 'barporfile' })
      creds = SharedCredentials.new(
        path: mock_credential_file,
        profile_name: 'fooprofile')
      expect(creds.access_key_id).to eq('ACCESS_KEY_1')
      expect(creds.secret_access_key).to eq('SECRET_KEY_1')
      expect(creds.session_token).to eq('TOKEN_1')
      expect(creds.region).to eq(nil)
    end

    it 'raises when a profile does not exist' do
      msg = /^Profile `bazprofile' not found in .+mock_shared_credentials/
      expect {
        SharedCredentials.new(
          path: mock_credential_file,
          profile_name: 'bazprofile'
        )
      }.to raise_error(Errors::NoSuchProfileError, msg)
    end

    it 'is set when credentails is valid' do
      creds = SharedCredentials.new(path:mock_credential_file)
      expect(creds.set?).to eq(true)
    end

    it 'is not set when key_id or access_key is missing' do
      creds = SharedCredentials.new(path:'/no/file/here')
      expect(creds.set?).to eq(false)
    end

  end
end
