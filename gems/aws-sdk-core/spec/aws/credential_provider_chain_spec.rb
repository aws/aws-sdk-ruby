# frozen_string_literal: true

require_relative '../spec_helper'
require 'securerandom'

module Aws
  describe CredentialProviderChain do
    def random_creds
      {
        access_key_id: SecureRandom.hex,
        secret_access_key: SecureRandom.hex,
        session_token: SecureRandom.hex,
        account_id: SecureRandom.hex
      }
    end

    def with_shared_credentials(profile_name = SecureRandom.hex, credentials_file = nil)
      path = File.expand_path(
        File.join('HOME', '.aws', 'credentials'))
      creds = random_creds
      credentials_file ||= <<~CREDS
        [#{profile_name}]
        aws_access_key_id = #{creds[:access_key_id]}
        aws_secret_access_key = #{creds[:secret_access_key]}
        aws_session_token = #{creds[:session_token]}
        aws_account_id = #{creds[:account_id]}
      CREDS
      allow(Dir).to receive(:home).and_return('HOME')
      allow(File).to receive(:exist?).with(path).and_return(true)
      allow(File).to receive(:readable?).with(path).and_return(true)
      allow(File).to receive(:read).with(path).and_return(credentials_file)
      creds.merge(profile_name: profile_name)
    end

    def with_env_credentials
      creds = random_creds
      ENV['AWS_ACCESS_KEY_ID'] = creds[:access_key_id]
      ENV['AWS_SECRET_ACCESS_KEY'] = creds[:secret_access_key]
      ENV['AWS_SESSION_TOKEN'] = creds[:session_token]
      ENV['AWS_ACCOUNT_ID'] = creds[:account_id]
      creds
    end

    def with_config_credentials
      creds = random_creds
      allow(config).to receive(:access_key_id).and_return(creds[:access_key_id])
      allow(config).to receive(:secret_access_key).and_return(creds[:secret_access_key])
      allow(config).to receive(:session_token).and_return(creds[:session_token])
      allow(config).to receive(:account_id).and_return(creds[:account_id])
      creds
    end

    def validate_credentials(expected_creds)
      expect(credentials.set?).to be(true)
      creds = credentials.credentials
      expect(creds.access_key_id).to eq(expected_creds[:access_key_id])
      expect(creds.secret_access_key).to eq(expected_creds[:secret_access_key])
      expect(creds.session_token).to eq(expected_creds[:session_token])
      expect(creds.account_id).to eq(expected_creds[:account_id])
    end

    def validate_metrics(*expected_metrics)
      expect(credentials.metrics).to eq(expected_metrics)
    end

    let(:config) do
      double(
        'config',
        access_key_id: nil,
        secret_access_key: nil,
        session_token: nil,
        account_id: nil,
        profile: nil,
        region: nil,
        instance_profile_credentials_timeout: 1,
        instance_profile_credentials_retries: 0
      )
    end

    let(:mock_instance_creds) { double('InstanceProfileCredentials', set?: false) }

    let(:chain) { CredentialProviderChain.new(config) }

    let(:credentials) { chain.resolve }

    before(:each) do
      allow(InstanceProfileCredentials).to receive(:new).and_return(mock_instance_creds)
      allow(mock_instance_creds).to receive(:metrics).and_return(['CREDENTIALS_IMDS'])
    end

    it 'hydrates credentials from config options' do
      expected_creds = with_config_credentials
      validate_credentials(expected_creds)
      validate_metrics('CREDENTIALS_PROFILE')
    end

    it 'hydrates credentials from ENV with prefix AWS_' do
      expected_creds = random_creds
      ENV['AWS_ACCESS_KEY_ID'] = expected_creds[:access_key_id]
      ENV['AWS_SECRET_ACCESS_KEY'] = expected_creds[:secret_access_key]
      ENV['AWS_SESSION_TOKEN'] = expected_creds[:session_token]
      ENV['AWS_ACCOUNT_ID'] = expected_creds[:account_id]
      validate_credentials(expected_creds)
      validate_metrics('CREDENTIALS_ENV_VARS')
    end

    it 'hydrates credentials from ENV with prefix AMAZON_' do
      expected_creds = random_creds.merge(account_id: nil)
      ENV['AMAZON_ACCESS_KEY_ID'] = expected_creds[:access_key_id]
      ENV['AMAZON_SECRET_ACCESS_KEY'] = expected_creds[:secret_access_key]
      ENV['AMAZON_SESSION_TOKEN'] = expected_creds[:session_token]
      validate_credentials(expected_creds)
      validate_metrics('CREDENTIALS_ENV_VARS')
    end

    it 'hydrates credentials from ENV at AWS_ACCESS_KEY & AWS_SECRET_KEY' do
      expected_creds = random_creds.merge(session_token: nil, account_id: nil)
      ENV['AWS_ACCESS_KEY'] = expected_creds[:access_key_id]
      ENV['AWS_SECRET_KEY'] = expected_creds[:secret_access_key]
      validate_credentials(expected_creds)
      validate_metrics('CREDENTIALS_ENV_VARS')
    end

    it 'hydrates credentials from ENV at AWS_ACCESS_KEY_ID & AWS_SECRET_KEY' do
      expected_creds = random_creds.merge(session_token: nil, account_id: nil)
      ENV['AWS_ACCESS_KEY_ID'] = expected_creds[:access_key_id]
      ENV['AWS_SECRET_KEY'] = expected_creds[:secret_access_key]
      validate_credentials(expected_creds)
      validate_metrics('CREDENTIALS_ENV_VARS')
    end

    it 'hydrates credentials from the instance profile service' do
      expect(mock_instance_creds).to receive(:set?).and_return(true)
      expect(credentials).to be(mock_instance_creds)
      validate_metrics('CREDENTIALS_IMDS')
    end

    it 'skips instance profile service when AWS_EC2_METADATA_DISABLED is true' do
      ENV['AWS_EC2_METADATA_DISABLED'] = 'true'
      expect(InstanceProfileCredentials).not_to receive(:new)
      expect(credentials).to be(nil)
    end

    it 'AWS_EC2_METADATA_DISABLED is not case sensitive' do
      ENV['AWS_EC2_METADATA_DISABLED'] = 'TrUe'
      expect(InstanceProfileCredentials).not_to receive(:new)
      expect(credentials).to be(nil)
    end

    it 'hydrates credentials from ECS when AWS_CONTAINER_CREDENTIALS_RELATIVE_URI is set' do
      ENV['AWS_CONTAINER_CREDENTIALS_RELATIVE_URI'] = 'test_uri'
      mock_ecs_creds = double('ECSCredentials', metrics: ['CREDENTIALS_HTTP'], set?: true)
      expect(ECSCredentials).to receive(:new).and_return(mock_ecs_creds)
      expect(credentials).to be(mock_ecs_creds)
      validate_metrics('CREDENTIALS_HTTP')
    end

    it 'hydrates credentials from ECS when AWS_CONTAINER_CREDENTIALS_FULL_URI is set' do
      ENV['AWS_CONTAINER_CREDENTIALS_FULL_URI'] = 'test_uri'
      mock_ecs_creds = double('ECSCredentials', metrics: ['CREDENTIALS_HTTP'], set?: true)
      expect(ECSCredentials).to receive(:new).and_return(mock_ecs_creds)
      expect(credentials).to be(mock_ecs_creds)
      validate_metrics('CREDENTIALS_HTTP')
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
        validate_metrics('CREDENTIALS_PROFILE')
      end

      it 'returns credentials from proper profile when config is set' do
        expected_creds = with_shared_credentials('test')
        allow(config).to receive(:profile).and_return(expected_creds[:profile_name])
        ENV['AWS_DEFAULT_PROFILE'] = 'BAD_PROFILE'
        validate_credentials(expected_creds)
        validate_metrics('CREDENTIALS_PROFILE')
      end
    end

    describe 'with multiple sources of credentials' do
      it 'hydrates credentials from ENV over shared' do
        shared_creds = with_shared_credentials
        ENV['AWS_DEFAULT_PROFILE'] = shared_creds[:profile_name]
        expected_creds = with_env_credentials
        validate_credentials(expected_creds)
        validate_metrics('CREDENTIALS_ENV_VARS')
      end

      it 'hydrates credentials from config over ENV' do
        with_env_credentials
        expected_creds = with_config_credentials
        validate_credentials(expected_creds)
        validate_metrics('CREDENTIALS_PROFILE')
      end

      it 'hydrates credentials from profile when config set over ENV' do
        expected_creds = with_shared_credentials
        allow(config).to receive(:profile).and_return(expected_creds[:profile_name])
        with_env_credentials
        validate_credentials(expected_creds)
        validate_metrics('CREDENTIALS_PROFILE')
      end
    end
  end
end
