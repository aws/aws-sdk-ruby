# frozen_string_literal: true

require_relative '../spec_helper'
require 'securerandom'
require 'timeout'

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

      it 'defaults to nil when config is enabled' do
        Aws.shared_config.fresh(config_enabled: true)
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
        validate_metrics('CREDENTIALS_CODE', 'CREDENTIALS_PROFILE')
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
        validate_metrics('CREDENTIALS_CODE', 'CREDENTIALS_PROFILE')
      end
    end
  end

  describe CredentialProviderChain, 'with a credential daemon' do
    let(:dir) { Dir.mktmpdir('cdchain') }
    let(:config_path) { File.join(dir, 'config') }
    let(:credentials_path) { File.join(dir, 'credentials') }
    let(:config_file) { "[profile dev]\ndaemon_credential = dev\n" }
    let(:credentials_file) { '' }
    let(:profile) { nil }
    let(:config) do
      double(
        'config',
        access_key_id: nil,
        secret_access_key: nil,
        session_token: nil,
        account_id: nil,
        profile: profile,
        region: nil,
        instance_profile_credentials_timeout: 1,
        instance_profile_credentials_retries: 0
      )
    end

    let!(:daemon) { start_credential_daemon }

    around(:each) do |example|
      Timeout.timeout(10) { example.run }
    end

    before(:each) do
      allow(InstanceProfileCredentials).to receive(:new).and_return(double(set?: false))
      File.write(config_path, config_file)
      File.write(credentials_path, credentials_file)
      ENV['AWS_PROFILE'] = 'dev'
      ENV['AWS_CREDENTIAL_DAEMON_SOCKET'] = daemon.path
      Aws.shared_config.fresh(
        config_enabled: true,
        config_path: config_path,
        credentials_path: credentials_path
      )
    end

    after(:each) do
      stop_credential_daemons
      FileUtils.rm_rf(dir)
    end

    def resolve
      CredentialProviderChain.new(config).resolve
    end

    def expect_bearer_signer_error(profile, message)
      signer = Plugins::Sign::Bearer.new(double('config', token_provider: nil, profile: profile))
      context = Seahorse::Client::RequestContext.new
      context.http_request.endpoint = URI('https://example.com')
      expect { signer.sign(context) }.to raise_error(Errors::MissingBearerTokenError, message)
    end

    context 'with the profile client option' do
      let(:profile) { 'dev' }

      it 'resolves from the daemon ahead of env credentials' do
        ENV.delete('AWS_PROFILE')
        ENV['AWS_ACCESS_KEY_ID'] = 'AKID_ENV'
        ENV['AWS_SECRET_ACCESS_KEY'] = 'SECRET_ENV'
        provider = resolve
        expect(provider.credentials.access_key_id).to eq('ASIADAEMON')
        expect(provider.metrics).to eq(%w[CREDENTIAL_DAEMON CREDENTIALS_CODE])
      end
    end

    it 'reads the timeouts from a client config' do
      client = ApiHelper.sample_rest_xml::Client.new(
        region: 'us-east-1',
        credential_daemon_connect_timeout: 0.4,
        credential_daemon_timeout: 0.9
      )
      expect(CredentialDaemonCredentials).to receive(:new)
        .with(hash_including(connect_timeout: 0.4, call_timeout: 0.9))
        .and_call_original
      expect(CredentialProviderChain.new(client.config).resolve.credentials.access_key_id).to eq('ASIADAEMON')
    end

    it 'is not used when the shared config is disabled' do
      Aws.shared_config.fresh(config_enabled: false, config_path: config_path, credentials_path: credentials_path)
      expect(resolve).to be_nil
      expect(daemon.requests).to be_empty
    end

    context 'with role_arn in the credentials file profile' do
      let(:credentials_file) { "[dev]\nrole_arn = arn:aws:iam::123456789012:role/foo\n" }

      it 'raises INVALID_CONFIG' do
        expect { resolve }.to raise_error(Errors::CredentialDaemonError, /INVALID_CONFIG: .*source_profile/)
        expect(daemon.requests).to be_empty
      end
    end

    context 'with an SSO profile' do
      let(:config_file) do
        <<~CONFIG
          [profile dev]
          daemon_credential = dev
          sso_session = my-sso
          sso_account_id = 123456789012
          sso_role_name = Admin

          [sso-session my-sso]
          sso_region = us-east-1
          sso_start_url = https://example.awsapps.com/start
        CONFIG
      end

      it 'resolves no SSO token provider' do
        expect(SSOTokenProvider).not_to receive(:new)
        expect(TokenProviderChain.new(config).resolve).to be_nil
      end

      it 'explains a missing bearer token in the signer' do
        expect_bearer_signer_error('dev', /profile 'dev' keeps its SSO session in the credential daemon/)
      end

      it 'explains a missing bearer token in the bearer handler' do
        handler = Plugins::BearerAuthorization::Handler.new(double('handler'))
        context = Seahorse::Client::RequestContext.new(config: double('config', token_provider: nil, profile: nil))
        context.http_request.endpoint = URI('https://example.com')
        expect { handler.call(context) }.to raise_error(Errors::MissingBearerTokenError, /credential daemon/)
      end
    end

    it 'keeps the default missing bearer token message for other profiles' do
      expect_bearer_signer_error('dev', 'unable to sign request without token set')
    end
  end
end
