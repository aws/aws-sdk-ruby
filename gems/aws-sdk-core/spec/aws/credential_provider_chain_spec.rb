require_relative '../spec_helper'
require 'securerandom'

module Aws
  describe CredentialProviderChain do

    def random_creds
      { access_key_id: SecureRandom.hex,
          secret_access_key: SecureRandom.hex, session_token: SecureRandom.hex }
    end

    def with_shared_credentials(profile_name=SecureRandom.hex, credentials_file=nil)
      path = File.join('HOME', '.aws', 'credentials')
      creds = random_creds
      credentials_file ||= <<-CREDS
[#{profile_name}]
aws_access_key_id = #{creds[:access_key_id]}
aws_secret_access_key = #{creds[:secret_access_key]}
aws_session_token = #{creds[:session_token]}
CREDS
      allow(File).to receive(:exist?).with(path).and_return(true)
      allow(File).to receive(:readable?).with(path).and_return(true)
      allow(Dir).to receive(:home).and_return('HOME')
      allow(File).to receive(:read).with(path).and_return(credentials_file)
      creds.merge(profile_name: profile_name)
    end

    def with_env_credentials
      creds = random_creds
      env['AWS_ACCESS_KEY_ID'] = creds[:access_key_id]
      env['AWS_SECRET_ACCESS_KEY'] = creds[:secret_access_key]
      env['AWS_SESSION_TOKEN'] = creds[:session_token]
      creds
    end

    def with_config_credentials
      creds = random_creds
      allow(config).to receive(:access_key_id).and_return(creds[:access_key_id])
      allow(config).to receive(:secret_access_key).and_return(creds[:secret_access_key])
      allow(config).to receive(:session_token).and_return(creds[:session_token])
      creds
    end

    def validate_credentials(expected_creds)
      expect(credentials.set?).to be(true)
      creds = credentials.credentials
      expect(creds.access_key_id).to eq(expected_creds[:access_key_id])
      expect(creds.secret_access_key).to eq(expected_creds[:secret_access_key])
      expect(creds.session_token).to eq(expected_creds[:session_token])
    end

    let(:env) {{}}

    let(:config) {
      double('config',
        access_key_id: nil,
        secret_access_key: nil,
        session_token: nil,
        profile: nil,
        instance_profile_credentials_timeout: 1,
        instance_profile_credentials_retries: 0,
      )
    }

    let(:chain) { CredentialProviderChain.new(config) }

    let(:credentials) { chain.resolve }

    before(:each) do
      stub_const('ENV', env)
    end

    it 'defaults to nil when credentials not set' do
      expect(credentials).to be(nil)
    end

    it 'hydrates credentials from config options' do
      expected_creds = with_config_credentials
      validate_credentials(expected_creds)
    end

    it 'hydrates credentials from ENV with prefix AWS_' do
      expected_creds = random_creds
      env['AWS_ACCESS_KEY_ID'] = expected_creds[:access_key_id]
      env['AWS_SECRET_ACCESS_KEY'] = expected_creds[:secret_access_key]
      env['AWS_SESSION_TOKEN'] = expected_creds[:session_token]
      validate_credentials(expected_creds)
    end

    it 'hydrates credentials from ENV with prefix AMAZON_' do
      expected_creds = random_creds
      env['AMAZON_ACCESS_KEY_ID'] = expected_creds[:access_key_id]
      env['AMAZON_SECRET_ACCESS_KEY'] = expected_creds[:secret_access_key]
      env['AMAZON_SESSION_TOKEN'] = expected_creds[:session_token]
      validate_credentials(expected_creds)
    end

    it 'hydrates credentials from ENV at AWS_ACCESS_KEY & AWS_SECRET_KEY' do
      expected_creds = random_creds.merge(session_token: nil)
      env['AWS_ACCESS_KEY'] = expected_creds[:access_key_id]
      env['AWS_SECRET_KEY'] = expected_creds[:secret_access_key]
      validate_credentials(expected_creds)
    end

    it 'hydrates credentials from ENV at AWS_ACCESS_KEY_ID & AWS_SECRET_KEY' do
      expected_creds = random_creds.merge(session_token: nil)
      env['AWS_ACCESS_KEY_ID'] = expected_creds[:access_key_id]
      env['AWS_SECRET_KEY'] = expected_creds[:secret_access_key]
      validate_credentials(expected_creds)
    end


    it 'hydrates credentials from the instance profile service' do
      mock_instance_creds = double('InstanceProfileCredentials')
      expect(InstanceProfileCredentials).to receive(:new).and_return(mock_instance_creds)
      expect(mock_instance_creds).to receive(:set?).and_return(true)
      expect(credentials).to be(mock_instance_creds)
    end

    it 'hydrates credentials from ECS when AWS_CONTAINER_CREDENTIALS_RELATIVE_URI is set' do
      ENV['AWS_CONTAINER_CREDENTIALS_RELATIVE_URI'] = 'test_uri'
      mock_ecs_creds = double('ECSCredentials')
      expect(ECSCredentials).to receive(:new).and_return(mock_ecs_creds)
      expect(mock_ecs_creds).to receive(:set?).and_return(true)
      expect(credentials).to be(mock_ecs_creds)
    end

    describe 'with config set to nil' do
      let(:config) { nil }

      it 'defaults to nil' do
        expect(credentials).to be(nil)
      end

    end

    describe 'with shared credentials' do

      it 'returns no credentials when the shared file is empty' do
        with_shared_credentials(credentials_file: ' ')
        expect(chain.resolve).to be(nil)
      end

      it 'returns no credentials when the shared file profile is missing' do
        with_shared_credentials
        expect(credentials).to be(nil)
      end

      it 'returns credentials from proper profile when AWS_DEFAULT_PROFILE is used' do
        expected_creds = with_shared_credentials('test')
        ENV['AWS_DEFAULT_PROFILE'] = expected_creds[:profile_name]
        validate_credentials(expected_creds)
      end

      it 'returns credentials from proper profile when config is set' do
        expected_creds = with_shared_credentials('test')
        allow(config).to receive(:profile).and_return(expected_creds[:profile_name])
        ENV['AWS_DEFAULT_PROFILE'] = 'BAD_PROFILE'
        validate_credentials(expected_creds)
      end
    end

    describe 'with multiple sources of credentials' do
      it 'hydrates credentials from ENV over shared' do
        shared_creds = with_shared_credentials
        ENV['AWS_DEFAULT_PROFILE'] = shared_creds[:profile_name]
        expected_creds = with_env_credentials
        validate_credentials(expected_creds)
      end

      it 'hydrates credentials from config over ENV' do
        env_creds = with_env_credentials
        expected_creds = with_config_credentials
        validate_credentials(expected_creds)
      end

      it 'hydrates credentials from profile when config set over ENV' do
        expected_creds = with_shared_credentials
        allow(config).to receive(:profile).and_return(expected_creds[:profile_name])
        env_creds = with_env_credentials
        validate_credentials(expected_creds)
      end

    end

  end


end
