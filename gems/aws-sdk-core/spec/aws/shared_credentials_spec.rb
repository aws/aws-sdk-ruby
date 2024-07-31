# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  describe SharedCredentials do
    before(:each) do
      stub_const('ENV', {})
      allow(Dir).to receive(:home).and_raise(ArgumentError)
    end

    let(:mock_credential_file) do
      File.expand_path(File.join(File.dirname(__FILE__),
                                 '..', 'fixtures', 'credentials', 'mock_shared_credentials'))
    end

    let(:mock_config_file) do
      File.expand_path(File.join(File.dirname(__FILE__),
                                 '..', 'fixtures', 'credentials', 'mock_shared_config'))
    end

    it 'reads the correct default credentials from a credentials file' do
      creds = SharedCredentials.new(path: mock_credential_file).credentials
      expect(creds.access_key_id).to eq('ACCESS_KEY_0')
      expect(creds.secret_access_key).to eq('SECRET_KEY_0')
      expect(creds.session_token).to eq('TOKEN_0')
    end

    it 'supports fetching profiles from ENV' do
      stub_const('ENV', { 'AWS_PROFILE' => 'barprofile' })
      creds = SharedCredentials.new(path: mock_credential_file).credentials
      expect(creds.access_key_id).to eq('ACCESS_KEY_2')
      expect(creds.secret_access_key).to eq('SECRET_KEY_2')
      expect(creds.session_token).to eq('TOKEN_2')
    end

    it 'supports a manually specified profile' do
      stub_const('ENV', { 'AWS_PROFILE' => 'barporfile' })
      creds = SharedCredentials.new(
        path: mock_credential_file,
        profile_name: 'fooprofile'
      ).credentials
      expect(creds.access_key_id).to eq('ACCESS_KEY_1')
      expect(creds.secret_access_key).to eq('SECRET_KEY_1')
      expect(creds.session_token).to eq('TOKEN_1')
    end

    it 'raises when a path does not exist' do
      msg = %r{^Profile `doesnotexist' not found in /no/file/here}
      expect do
        SharedCredentials.new(
          path: '/no/file/here',
          profile_name: 'doesnotexist'
        )
      end.to raise_error(Errors::NoSuchProfileError, msg)
    end

    it 'raises when a profile does not exist' do
      msg = /^Profile `doesnotexist' not found in .+mock_shared_credentials/
      expect do
        SharedCredentials.new(
          path: mock_credential_file,
          profile_name: 'doesnotexist'
        )
      end.to raise_error(Errors::NoSuchProfileError, msg)
    end

    it 'is set when credentials is valid' do
      creds = SharedCredentials.new(path: mock_credential_file)
      expect(creds.set?).to eq(true)
    end

    it 'is not set when key_id or access_key is missing' do
      creds = SharedCredentials.new(
        path: mock_credential_file,
        profile_name: 'no_creds'
      )
      expect(creds.set?).to eq(false)
    end

    it 'supports inline comments with the profile' do
      file = <<~FILE
        [default] # comment
        aws_access_key_id=commented-akid
        aws_secret_access_key=commented-secret
      FILE
      allow(File).to receive(:read).and_return(file)
      creds = SharedCredentials.new(path: mock_credential_file).credentials
      expect(creds.access_key_id).to eq('commented-akid')
      expect(creds.secret_access_key).to eq('commented-secret')
    end

    it 'supports fetching credentials from config' do
      Aws.shared_config.fresh(
        config_enabled: true,
        credentials_path: mock_credential_file,
        config_path: mock_config_file,
        profile_name: 'creds_from_cfg'
      )
      creds = SharedCredentials.new.credentials
      expect(creds.access_key_id).to eq('ACCESS_KEY_SC0')
      expect(creds.secret_access_key).to eq('SECRET_KEY_SC0')
    end

    it 'properly falls back when credentials incomplete' do
      Aws.shared_config.fresh(
        config_enabled: true,
        credentials_path: mock_credential_file,
        config_path: mock_config_file,
        profile_name: 'incomplete_cred'
      )
      creds = SharedCredentials.new.credentials
      expect(creds.access_key_id).to eq('ACCESS_KEY_SC1')
      expect(creds.secret_access_key).to eq('SECRET_KEY_SC1')
    end

    it 'will source from credentials over config' do
      Aws.shared_config.fresh(
        config_enabled: true,
        credentials_path: mock_credential_file,
        config_path: mock_config_file
      )
      creds = SharedCredentials.new.credentials
      expect(creds.access_key_id).to eq('ACCESS_KEY_0')
      expect(creds.secret_access_key).to eq('SECRET_KEY_0')
    end

    it 'will ignore incomplete credentials' do
      Aws.shared_config.fresh(
        config_enabled: true,
        credentials_path: mock_credential_file,
        config_path: mock_config_file,
        profile_name: 'incomplete_cfg'
      )
      creds = SharedCredentials.new.credentials
      expect(creds).to eq(nil)
    end

    # Refreshing credentials tests

    it 'refreshes credentials when near expiration' do
      refresh_interval = 2 # Short interval for testing
      creds = SharedCredentials.new(path: mock_credential_file, refresh_interval: refresh_interval,
                                    enable_refresh: true)

      initial_access_key = creds.credentials.access_key_id
      allow(creds).to receive(:refresh).and_call_original

      # Simulate time passing to near expiration
      sleep(refresh_interval + 1)

      creds.force_refresh_check
      refreshed_access_key = creds.credentials.access_key_id
      expect(creds).to have_received(:refresh).at_least(:once)
      expect(refreshed_access_key).to eq('ACCESS_KEY_0')
    end

    it 'does not refresh credentials if not near expiration' do
      refresh_interval = 10 # Longer interval for testing
      creds = SharedCredentials.new(path: mock_credential_file, refresh_interval: refresh_interval,
                                    enable_refresh: true)

      allow(creds).to receive(:refresh).and_call_original

      # Check credentials before expiration
      initial_access_key = creds.credentials.access_key_id

      sleep(2)

      creds.force_refresh_check

      # Check credentials to ensure they are not refreshed
      refreshed_access_key = creds.credentials.access_key_id

      expect(creds).to have_received(:refresh).once  # Ensure refresh was called only once (during initialization)
      expect(initial_access_key).to eq(refreshed_access_key)
    end
  end
end
