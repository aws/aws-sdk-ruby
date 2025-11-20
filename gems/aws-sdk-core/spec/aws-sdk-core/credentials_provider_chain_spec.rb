# frozen_string_literal: true

require_relative '../spec_helper'
require_relative '../../lib/aws-sdk-core/plugins/shared_config'
require_relative '../../lib/aws-sdk-core/plugins/sigv4'
require_relative '../../lib/aws-sdk-core/plugins/user_agent'

module Aws
  module Core
    describe CredentialsProviderChain do
      let(:shapes) do
        shapes = ClientHelper.sample_shapes
        shapes['smithy.ruby.tests#SampleClient']['traits']['aws.auth#sigv4'] = { 'name' => 'sample' }
        shapes
      end

      let(:sample_client) { ClientHelper.sample_client(shapes: shapes) }
      let(:client_class) { sample_client.const_get(:Client) }
      let(:client) { client_class.new }

      before { allow(Kernel).to receive(:sleep) }

      context 'providers' do
        let(:mock_instance_creds) { double('InstanceProfileCredentialsProvider', set?: false) }

        describe '#code_static_credentials' do
          it 'resolves static credentials from code' do
            client = client_class.new(
              access_key_id: 'akid_code',
              secret_access_key: 'secret_code',
              session_token: 'token_code',
              account_id: '123456789012'
            )
            creds = client.config.credentials_provider.identity
            expect(creds.access_key_id).to eq('akid_code')
            expect(creds.secret_access_key).to eq('secret_code')
            expect(creds.session_token).to eq('token_code')
            expect(creds.account_id).to eq('123456789012')
          end

          it 'resolves static credentials with minimum inputs required' do
            client = client_class.new(
              access_key_id: 'akid_code',
              secret_access_key: 'secret_code'
            )
            creds = client.config.credentials_provider.identity
            expect(creds.access_key_id).to eq('akid_code')
            expect(creds.secret_access_key).to eq('secret_code')
            expect(creds.session_token).to eq(nil)
            expect(creds.account_id).to eq(nil)
          end

          it 'fails to resolve static credentials when required inputs are missing' do
            expect(InstanceProfileCredentialsProvider).to receive(:new).and_return(mock_instance_creds)
            client = client_class.new(
              session_token: 'token_code',
              account_id: '123456789012'
            )
            expect(client.config.credentials_provider).to be_nil
          end

          it 'tracks the correct feature id' do
            client = client_class.new(
              access_key_id: 'akid_code',
              secret_access_key: 'secret_code',
              session_token: 'token_code',
              account_id: '123456789012',
              stub_responses: true
            )
            provider = client.config.credentials_provider
            expect(provider.features).to eq(%w[CREDENTIALS_CODE])
          end
        end

        describe '#env_static_credentials' do
          it 'resolves static credentials from environment' do
            ENV['AWS_ACCESS_KEY_ID'] = 'akid_env'
            ENV['AWS_SECRET_ACCESS_KEY'] = 'secret_env'
            ENV['AWS_SESSION_TOKEN'] = 'token_env'
            ENV['AWS_ACCOUNT_ID'] = '123456789012'
            creds = client.config.credentials_provider.identity
            expect(creds.access_key_id).to eq('akid_env')
            expect(creds.secret_access_key).to eq('secret_env')
            expect(creds.session_token).to eq('token_env')
            expect(creds.account_id).to eq('123456789012')
          end

          it 'resolves static credentials with minimum inputs required' do
            ENV['AWS_ACCESS_KEY_ID'] = 'akid_env'
            ENV['AWS_SECRET_ACCESS_KEY'] = 'secret_env'
            creds = client.config.credentials_provider.identity
            expect(creds.access_key_id).to eq('akid_env')
            expect(creds.secret_access_key).to eq('secret_env')
            expect(creds.session_token).to eq(nil)
            expect(creds.account_id).to eq(nil)
          end

          it 'fails to resolve static credentials when required inputs are missing' do
            expect(InstanceProfileCredentialsProvider).to receive(:new).and_return(mock_instance_creds)
            ENV['AWS_SESSION_TOKEN'] = 'token_env'
            ENV['AWS_ACCOUNT_ID'] = '123456789012'
            expect(client.config.credentials_provider).to be_nil
          end

          it 'tracks the correct feature id' do
            ENV['AWS_ACCESS_KEY_ID'] = 'akid_env'
            ENV['AWS_SECRET_ACCESS_KEY'] = 'secret_env'
            provider = client.config.credentials_provider
            expect(provider.features).to eq(%w[CREDENTIALS_ENV_VARS])
          end
        end

        describe '#env_assume_role_web_identity_credentials' do
          let(:sts_client) { STS::Client.new(stub_responses: true) }
          let(:token_file) { Tempfile.new('token.jwt') }
          let(:token_file_path) { token_file.path }

          context 'resolves' do
            before do
              expect(STS::Client).to receive(:new).and_return(sts_client)
              sts_client.stub_responses(
                :assume_role_with_web_identity,
                {
                  credentials: {
                    access_key_id: 'akid_web_id_env',
                    secret_access_key: 'secret_web_ib_env',
                    session_token: 'token_web_id_env'
                  }
                }
              )
            end

            it 'resolves assume role web identity credentials from environment' do
              ENV['AWS_WEB_IDENTITY_TOKEN_FILE'] = token_file_path
              ENV['AWS_ROLE_ARN'] = 'role_arn'
              ENV['AWS_ROLE_SESSION_NAME'] = 'role_session_name'
              creds = client.config.credentials_provider.identity
              expect(creds.access_key_id).to eq('akid_web_id_env')
              expect(creds.secret_access_key).to eq('secret_web_ib_env')
              expect(creds.session_token).to eq('token_web_id_env')
            end

            it 'resolves assume role web identity credentials when AWS_ROLE_SESSION_NAME is not set' do
              ENV['AWS_WEB_IDENTITY_TOKEN_FILE'] = token_file_path
              ENV['AWS_ROLE_ARN'] = 'role_arn'
              creds = client.config.credentials_provider.identity
              expect(creds.access_key_id).to eq('akid_web_id_env')
              expect(creds.secret_access_key).to eq('secret_web_ib_env')
              expect(creds.session_token).to eq('token_web_id_env')
            end

            it 'tracks the correct feature id' do
              ENV['AWS_WEB_IDENTITY_TOKEN_FILE'] = token_file_path
              ENV['AWS_ROLE_ARN'] = 'role_arn'
              ENV['AWS_ROLE_SESSION_NAME'] = 'role_session_name'
              provider = client.config.credentials_provider
              expect(provider.features).to eq(
                %w[CREDENTIALS_ENV_VARS_STS_WEB_ID_TOKEN CREDENTIALS_STS_ASSUME_ROLE_WEB_ID]
              )
            end

            it 'tracks the correct feature id for intermediate STS call' do
              ENV['AWS_WEB_IDENTITY_TOKEN_FILE'] = token_file_path
              ENV['AWS_ROLE_ARN'] = 'role_arn'
              ENV['AWS_ROLE_SESSION_NAME'] = 'role_session_name'
              expect_any_instance_of(STS::Client).to receive(:assume_role_with_web_identity)
                .and_wrap_original do |m, *args|
                resp = m.call(*args)
                expect_metrics_from_user_agent_header(resp, ['h'])
                resp
              end
              client
            end
          end

          context 'fails to resolve' do
            it 'fails to resolve assume role web identity credentials when required ENV variables are not set' do
              expect(InstanceProfileCredentialsProvider).to receive(:new).and_return(mock_instance_creds)
              expect(client.config.credentials_provider).to be_nil
            end
          end
        end

        describe '#profile_static_credentials' do
          it 'resolves static credentials from profile' do
            shared_config = <<~CONFIG
              [profile default]
              aws_access_key_id = akid_profile
              aws_secret_access_key = secret_profile
              aws_session_token = token_profile
              aws_account_id = 123456789012
            CONFIG
            mock_shared_config(shared_config)
            creds = client.config.credentials_provider.identity
            expect(creds.access_key_id).to eq('akid_profile')
            expect(creds.secret_access_key).to eq('secret_profile')
            expect(creds.session_token).to eq('token_profile')
            expect(creds.account_id).to eq('123456789012')
          end

          it 'resolves static credentials with minimum inputs required' do
            shared_config = <<~CONFIG
              [profile default]
              aws_access_key_id = akid_profile
              aws_secret_access_key = secret_profile
            CONFIG
            mock_shared_config(shared_config)
            creds = client.config.credentials_provider.identity
            expect(creds.access_key_id).to eq('akid_profile')
            expect(creds.secret_access_key).to eq('secret_profile')
            expect(creds.session_token).to eq(nil)
            expect(creds.account_id).to eq(nil)
          end

          it 'fails to resolve static credentials when required inputs are missing' do
            expect(InstanceProfileCredentialsProvider).to receive(:new).and_return(mock_instance_creds)
            shared_config = <<~CONFIG
              [profile default]
              aws_session_token = token_profile
              aws_account_id = 123456789012
            CONFIG
            mock_shared_config(shared_config)
            expect(client.config.credentials_provider).to be_nil
          end

          it 'fails to resolve static credentials when profile does not exist' do
            expect(InstanceProfileCredentialsProvider).to receive(:new).and_return(mock_instance_creds)
            shared_config = <<~CONFIG
              [profile default]
              aws_access_key_id = akid_profile
              aws_secret_access_key = secret_profile
              aws_session_token = token_profile
              aws_account_id = 123456789012
            CONFIG
            mock_shared_config(shared_config)
            client = client_class.new(profile: 'nonexistent')
            expect(client.config.credentials_provider).to be_nil
          end

          it 'tracks the correct feature id' do
            shared_config = <<~CONFIG
              [profile default]
              aws_access_key_id = akid_profile
              aws_secret_access_key = secret_profile
              aws_session_token = token_profile
              aws_account_id = 123456789012
            CONFIG
            mock_shared_config(shared_config)
            provider = client.config.credentials_provider
            expect(provider.features).to eq(%w[CREDENTIALS_PROFILE])
          end
        end

        describe '#profile_assume_role_credentials' do
          context 'resolves' do
            before do
              mock_shared_config(shared_config)
            end

            context 'source_profile' do
              context 'static' do
                let(:shared_config) do
                  <<~CONFIG
                    [profile default]
                    role_arn = role_arn
                    source_profile = static

                    [profile static]
                    aws_access_key_id = akid_static
                    aws_secret_access_key = secret_static
                    aws_session_token = token_static
                    aws_account_id = 123456789012
                  CONFIG
                end

                let(:source_provider) do
                  StaticCredentialsProvider.new(
                    access_key_id: 'akid_static',
                    secret_access_key: 'secret_static',
                    session_token: 'token_static',
                    account_id: '123456789012'
                  )
                end

                let(:creds) do
                  {
                    access_key_id: 'akid_ar_static',
                    secret_access_key: 'secret_ar_static',
                    session_token: 'token_ar_static'
                  }
                end

                let(:sts_client) { STS::Client.new(stub_responses: true, credentials_provider: source_provider) }

                before do
                  expect(StaticCredentialsProvider).to receive(:new).with(
                    access_key_id: 'akid_static',
                    secret_access_key: 'secret_static',
                    session_token: 'token_static',
                    account_id: '123456789012'
                  ).and_return(source_provider)

                  expect(STS::Client).to receive(:new).with(
                    { profile: 'default', credentials_provider: source_provider }
                  ).and_return(sts_client)
                  sts_client.stub_responses(:assume_role, { credentials: creds })
                end

                it 'resolves assume role credentials from profile with source_profile of static' do
                  creds = client.config.credentials_provider.identity
                  expect(creds.access_key_id).to eq('akid_ar_static')
                  expect(creds.secret_access_key).to eq('secret_ar_static')
                  expect(creds.session_token).to eq('token_ar_static')
                end

                it 'does not resolve static credentials from profile when initial profile contains credentials' do
                  shared_config = <<~CONFIG
                    [profile default]
                    aws_access_key_id = akid_do_not_use
                    aws_secret_access_key = secret_do_not_use
                    role_arn = role_arn
                    source_profile = static

                    [profile static]
                    aws_access_key_id = akid_static
                    aws_secret_access_key = secret_static
                    aws_session_token = token_static
                    aws_account_id = 123456789012
                  CONFIG
                  mock_shared_config(shared_config)
                  creds = client.config.credentials_provider.identity
                  expect(creds.access_key_id).to eq('akid_ar_static')
                  expect(creds.secret_access_key).to eq('secret_ar_static')
                  expect(creds.session_token).to eq('token_ar_static')
                end

                it 'resolves assume role credentials from profile when role session name is provided' do
                  expect(Base64).to_not receive(:strict_encode64)
                  expect(AssumeRoleCredentialsProvider).to receive(:new).with(
                    hash_including(role_session_name: 'role_session_name')
                  ).and_call_original
                  shared_config = <<~CONFIG
                    [profile default]
                    role_arn = role_arn
                    role_session_name = role_session_name
                    source_profile = static

                    [profile static]
                    aws_access_key_id = akid_static
                    aws_secret_access_key = secret_static
                    aws_session_token = token_static
                    aws_account_id = 123456789012
                  CONFIG
                  mock_shared_config(shared_config)
                  creds = client.config.credentials_provider.identity
                  expect(creds.access_key_id).to eq('akid_ar_static')
                  expect(creds.secret_access_key).to eq('secret_ar_static')
                  expect(creds.session_token).to eq('token_ar_static')
                end

                it 'resolves assume role credentials from profile when external id is provided' do
                  expect(AssumeRoleCredentialsProvider).to receive(:new).with(
                    hash_including(external_id: 'external_id')
                  ).and_call_original
                  shared_config = <<~CONFIG
                    [profile default]
                    role_arn = role_arn
                    external_id = external_id
                    source_profile = static

                    [profile static]
                    aws_access_key_id = akid_static
                    aws_secret_access_key = secret_static
                    aws_session_token = token_static
                    aws_account_id = 123456789012
                  CONFIG
                  mock_shared_config(shared_config)
                  creds = client.config.credentials_provider.identity
                  expect(creds.access_key_id).to eq('akid_ar_static')
                  expect(creds.secret_access_key).to eq('secret_ar_static')
                  expect(creds.session_token).to eq('token_ar_static')
                end

                it 'resolves assume role credentials from profile when the profile references itself' do
                  shared_config = <<~CONFIG
                    [profile default]
                    aws_access_key_id = akid_static
                    aws_secret_access_key = secret_static
                    aws_session_token = token_static
                    aws_account_id = 123456789012
                    role_arn = role_arn
                    external_id = external_id
                    source_profile = default
                  CONFIG
                  mock_shared_config(shared_config)
                  creds = client.config.credentials_provider.identity
                  expect(creds.access_key_id).to eq('akid_ar_static')
                  expect(creds.secret_access_key).to eq('secret_ar_static')
                  expect(creds.session_token).to eq('token_ar_static')
                end

                it 'tracks the correct feature id' do
                  provider = client.config.credentials_provider
                  expect(provider.features).to eq(
                    %w[CREDENTIALS_PROFILE_SOURCE_PROFILE CREDENTIALS_PROFILE CREDENTIALS_STS_ASSUME_ROLE]
                  )
                end

                it 'tracks the correct feature id for intermediate STS call' do
                  expect(sts_client).to receive(:assume_role).and_wrap_original do |m, *args|
                    resp = m.call(*args)
                    expect_metrics_from_user_agent_header(resp, %w[o n])
                    resp
                  end
                  client
                end
              end

              context 'assume role' do
                context 'chaining' do
                  let(:shared_config) do
                    <<~CONFIG
                      [profile default]
                      role_arn = role_arn_default
                      source_profile = assume

                      [profile assume]
                      role_arn = role_arn_assume
                      source_profile = static
                      region = us-west-2

                      [profile static]
                      aws_access_key_id = akid_static
                      aws_secret_access_key = secret_static
                      aws_session_token = token_static
                      aws_account_id = 123456789012
                    CONFIG
                  end

                  let(:source_provider_static) do
                    StaticCredentialsProvider.new(
                      access_key_id: 'akid_static',
                      secret_access_key: 'secret_static',
                      session_token: 'token_static',
                      account_id: '123456789012'
                    )
                  end

                  let(:source_provider) do
                    AssumeRoleCredentialsProvider.new(
                      profile: 'assume',
                      credentials_provider: source_provider_static,
                      role_session_name: nil,
                      role_arn: 'role_arn_assume',
                      duration_seconds: nil,
                      external_id: nil,
                      serial_number: nil
                    )
                  end

                  let(:creds_assume) do
                    {
                      access_key_id: 'akid_assume',
                      secret_access_key: 'secret_assume',
                      session_token: 'token_assume'
                    }
                  end

                  let(:creds) do
                    {
                      access_key_id: 'akid_ar_assume',
                      secret_access_key: 'secret_ar_assume',
                      session_token: 'token_ar_assume'
                    }
                  end

                  let(:sts_client_assume) do
                    STS::Client.new(stub_responses: true, credentials_provider: source_provider_static)
                  end
                  let(:sts_client) { STS::Client.new(stub_responses: true, credentials_provider: source_provider) }

                  before do
                    allow(STS::Client).to receive(:new).and_call_original
                    allow(STS::Client).to receive(:new).with(
                      { profile: 'assume', credentials_provider: source_provider_static }
                    ).and_return(sts_client_assume)
                    sts_client_assume.stub_responses(:assume_role, { credentials: creds_assume })

                    allow(AssumeRoleCredentialsProvider).to receive(:new).and_call_original
                    allow(AssumeRoleCredentialsProvider).to receive(:new).with(
                      {
                        profile: 'assume',
                        credentials_provider: source_provider_static,
                        role_session_name: nil,
                        role_arn: 'role_arn_assume',
                        duration_seconds: nil,
                        external_id: nil,
                        serial_number: nil
                      }
                    ).and_return(source_provider)

                    expect(StaticCredentialsProvider).to receive(:new).with(
                      access_key_id: 'akid_static',
                      secret_access_key: 'secret_static',
                      session_token: 'token_static',
                      account_id: '123456789012'
                    ).and_return(source_provider_static)

                    allow(STS::Client).to receive(:new).with(
                      { profile: 'default', credentials_provider: source_provider }
                    ).and_return(sts_client)
                    sts_client.stub_responses(:assume_role, { credentials: creds })
                  end

                  it 'resolves assume role credentials from profile with chained assume role profiles' do
                    creds = client.config.credentials_provider.identity
                    expect(creds.access_key_id).to eq('akid_ar_assume')
                    expect(creds.secret_access_key).to eq('secret_ar_assume')
                    expect(creds.session_token).to eq('token_ar_assume')
                  end

                  it 'tracks the correct feature id' do
                    provider = client.config.credentials_provider
                    expect(provider.features).to eq(
                      %w[CREDENTIALS_PROFILE_SOURCE_PROFILE CREDENTIALS_PROFILE CREDENTIALS_STS_ASSUME_ROLE]
                    )
                  end

                  it 'tracks the correct feature id for intermediate STS call' do
                    expect(sts_client).to receive(:assume_role).and_wrap_original do |m, *args|
                      resp = m.call(*args)
                      expect_metrics_from_user_agent_header(resp, %w[o n])
                      resp
                    end
                    client
                  end
                end

                context 'chaining with static credentials' do
                  let(:shared_config) do
                    <<~CONFIG
                      [profile default]
                      aws_access_key_id = akid_do_not_use
                      aws_secret_access_key = secret_do_not_use
                      aws_session_token = token_do_not_use
                      aws_account_id = 123456789012_do_not_use
                      role_arn = role_arn_default
                      source_profile = assume

                      [profile assume]
                      aws_access_key_id = akid_assume
                      aws_secret_access_key = secret_assume
                      aws_session_token = token_assume
                      aws_account_id = 123456789012
                      role_arn = role_arn_assume
                      source_profile = static
                      region = us-west-2

                      [profile static]
                      aws_access_key_id = akid_static_do_not_use
                      aws_secret_access_key = secret_static_do_not_use
                      aws_session_token = token_static_do_not_use
                      aws_account_id = 123456789012_static_do_not_use
                    CONFIG
                  end

                  let(:source_provider) do
                    StaticCredentialsProvider.new(
                      access_key_id: 'akid_assume',
                      secret_access_key: 'secret_assume',
                      session_token: 'token_assume',
                      account_id: '123456789012'
                    )
                  end

                  let(:creds) do
                    {
                      access_key_id: 'akid_ar_assume',
                      secret_access_key: 'secret_ar_assume',
                      session_token: 'token_ar_assume'
                    }
                  end

                  let(:sts_client) { STS::Client.new(stub_responses: true, credentials_provider: source_provider) }

                  before do
                    expect(StaticCredentialsProvider).to receive(:new).with(
                      access_key_id: 'akid_assume',
                      secret_access_key: 'secret_assume',
                      session_token: 'token_assume',
                      account_id: '123456789012'
                    ).and_return(source_provider)

                    allow(STS::Client).to receive(:new).with(
                      { profile: 'default', credentials_provider: source_provider }
                    ).and_return(sts_client)
                    sts_client.stub_responses(:assume_role, { credentials: creds })
                  end

                  it 'resolves assume role credentials from chained assume role profiles with static credentials' do
                    creds = client.config.credentials_provider.identity
                    expect(creds.access_key_id).to eq('akid_ar_assume')
                    expect(creds.secret_access_key).to eq('secret_ar_assume')
                    expect(creds.session_token).to eq('token_ar_assume')
                  end

                  it 'tracks the correct feature id' do
                    provider = client.config.credentials_provider
                    expect(provider.features).to eq(
                      %w[CREDENTIALS_PROFILE_SOURCE_PROFILE CREDENTIALS_PROFILE CREDENTIALS_STS_ASSUME_ROLE]
                    )
                  end

                  it 'tracks the correct feature id for intermediate STS call' do
                    expect(sts_client).to receive(:assume_role).and_wrap_original do |m, *args|
                      resp = m.call(*args)
                      expect_metrics_from_user_agent_header(resp, %w[o n])
                      resp
                    end
                    client
                  end
                end

                context 'chaining with credential_source' do
                  let(:shared_config) do
                    <<~CONFIG
                      [profile default]
                      role_arn = role_arn_default
                      source_profile = assume

                      [profile assume]
                      role_arn = role_arn_assume
                      credential_source = Environment
                    CONFIG
                  end

                  let(:source_provider_static) do
                    StaticCredentialsProvider.new(
                      access_key_id: 'akid_env',
                      secret_access_key: 'secret_env',
                      session_token: 'token_env',
                      account_id: '123456789012'
                    )
                  end

                  let(:source_provider) do
                    AssumeRoleCredentialsProvider.new(
                      profile: 'assume',
                      credentials_provider: source_provider_static,
                      role_session_name: nil,
                      role_arn: 'role_arn_assume',
                      duration_seconds: nil,
                      external_id: nil,
                      serial_number: nil
                    )
                  end

                  let(:creds_assume) do
                    {
                      access_key_id: 'akid_assume',
                      secret_access_key: 'secret_assume',
                      session_token: 'token_assume'
                    }
                  end

                  let(:creds) do
                    {
                      access_key_id: 'akid_ar_assume',
                      secret_access_key: 'secret_ar_assume',
                      session_token: 'token_ar_assume'
                    }
                  end

                  let(:sts_client_assume) do
                    STS::Client.new(stub_responses: true, credentials_provider: source_provider_static)
                  end
                  let(:sts_client) { STS::Client.new(stub_responses: true, credentials_provider: source_provider) }

                  before do
                    ENV['AWS_ACCESS_KEY_ID'] = 'akid_env'
                    ENV['AWS_SECRET_ACCESS_KEY'] = 'secret_env'
                    ENV['AWS_SESSION_TOKEN'] = 'token_env'
                    ENV['AWS_ACCOUNT_ID'] = '123456789012'
                    allow(STS::Client).to receive(:new).and_call_original
                    allow(STS::Client).to receive(:new).with(
                      { profile: 'assume', credentials_provider: source_provider_static }
                    ).and_return(sts_client_assume)
                    sts_client_assume.stub_responses(:assume_role, { credentials: creds_assume })

                    allow(AssumeRoleCredentialsProvider).to receive(:new).and_call_original
                    allow(AssumeRoleCredentialsProvider).to receive(:new).with(
                      {
                        profile: 'assume',
                        credentials_provider: source_provider_static,
                        role_session_name: nil,
                        role_arn: 'role_arn_assume',
                        duration_seconds: nil,
                        external_id: nil,
                        serial_number: nil
                      }
                    ).and_return(source_provider)

                    expect(StaticCredentialsProvider).to receive(:new).with(
                      access_key_id: 'akid_env',
                      secret_access_key: 'secret_env',
                      session_token: 'token_env',
                      account_id: '123456789012'
                    ).and_return(source_provider_static)

                    allow(STS::Client).to receive(:new).with(
                      { profile: 'default', credentials_provider: source_provider }
                    ).and_return(sts_client)
                    sts_client.stub_responses(:assume_role, { credentials: creds })
                  end

                  it 'resolves assume role credentials from chained assume role profiles with credential_source' do
                    # Profile must be configured explicitly for credential_source = Environment
                    client = client_class.new(profile: 'default')
                    creds = client.config.credentials_provider.identity
                    expect(creds.access_key_id).to eq('akid_ar_assume')
                    expect(creds.secret_access_key).to eq('secret_ar_assume')
                    expect(creds.session_token).to eq('token_ar_assume')
                  end

                  it 'tracks the correct feature id' do
                    # Profile must be configured explicitly for credential_source = Environment
                    client = client_class.new(profile: 'default')
                    provider = client.config.credentials_provider
                    expect(provider.features).to eq(
                      %w[
                        CREDENTIALS_PROFILE_SOURCE_PROFILE
                        CREDENTIALS_PROFILE_NAMED_PROVIDER
                        CREDENTIALS_ENV_VARS
                        CREDENTIALS_STS_ASSUME_ROLE
                        CREDENTIALS_CODE
                      ]
                    )
                  end

                  it 'tracks the correct feature id for intermediate STS call' do
                    expect(sts_client).to receive(:assume_role).and_wrap_original do |m, *args|
                      resp = m.call(*args)
                      expect_metrics_from_user_agent_header(resp, %w[e o p g])
                      resp
                    end
                    # Profile must be configured explicitly for credential_source = Environment
                    client_class.new(profile: 'default')
                  end
                end
              end

              context 'assume role web id' do
                let(:token_file) { Tempfile.new('token.jwt') }
                let(:token_file_path) { token_file.path }
                let(:sts_client_arwid) { STS::Client.new(stub_responses: true) }

                let(:shared_config) do
                  <<~CONFIG
                    [profile default]
                    role_arn = role_arn
                    source_profile = arwid

                    [profile arwid]
                    web_identity_token_file = #{token_file_path}
                    role_arn = role_arn_arwid
                    role_session_name = role_session_name
                    region = us-west-2
                  CONFIG
                end

                let(:source_provider) do
                  AssumeRoleWebIdentityCredentialsProvider.new(
                    profile: 'arwid',
                    web_identity_token_file: token_file_path,
                    role_arn: 'role_arn_arwid',
                    role_session_name: 'role_session_name',
                    client: sts_client_arwid
                  )
                end

                let(:creds) do
                  {
                    access_key_id: 'akid_ar_arwid',
                    secret_access_key: 'secret_ar_arwid',
                    session_token: 'token_ar_arwid'
                  }
                end

                let(:sts_client) { STS::Client.new(stub_responses: true, credentials_provider: source_provider) }

                before do
                  expect(AssumeRoleWebIdentityCredentialsProvider).to receive(:new).with(
                    profile: 'arwid',
                    web_identity_token_file: token_file_path,
                    role_arn: 'role_arn_arwid',
                    role_session_name: 'role_session_name'
                  ).and_return(source_provider)
                  sts_client_arwid.stub_responses(
                    :assume_role_with_web_identity,
                    {
                      credentials: {
                        access_key_id: 'akid_arwid',
                        secret_access_key: 'secret_arwid',
                        session_token: 'token_arwid'
                      }
                    }
                  )

                  expect(STS::Client).to receive(:new).with(
                    { profile: 'default', credentials_provider: source_provider }
                  ).and_return(sts_client)
                  sts_client.stub_responses(:assume_role, { credentials: creds })
                end

                it 'resolves assume role credentials from profile with source_profile of web identity' do
                  creds = client.config.credentials_provider.identity
                  expect(creds.access_key_id).to eq('akid_ar_arwid')
                  expect(creds.secret_access_key).to eq('secret_ar_arwid')
                  expect(creds.session_token).to eq('token_ar_arwid')
                end

                it 'tracks the correct feature id' do
                  provider = client.config.credentials_provider
                  expect(provider.features).to eq(
                    %w[
                      CREDENTIALS_PROFILE_SOURCE_PROFILE
                      CREDENTIALS_PROFILE_STS_WEB_ID_TOKEN
                      CREDENTIALS_STS_ASSUME_ROLE_WEB_ID
                      CREDENTIALS_STS_ASSUME_ROLE
                    ]
                  )
                end

                it 'tracks the correct feature id for intermediate STS call' do
                  expect(sts_client).to receive(:assume_role).and_wrap_original do |m, *args|
                    resp = m.call(*args)
                    expect_metrics_from_user_agent_header(resp, %w[o q k])
                    resp
                  end
                  client
                end
              end

              context 'sso' do
                let(:token) { SSOOIDCToken.new(token: 'token') }
                let(:token_provider) do
                  double(
                    'SSOOIDCTokenProvider',
                    identity: token,
                    set?: true,
                    expiration: nil
                  )
                end
                let(:sso_client) { SSO::Client.new(stub_responses: true) }

                let(:shared_config) do
                  <<~CONFIG
                    [profile default]
                    role_arn = role_arn
                    source_profile = sso

                    [profile sso]
                    sso_session = SSO_SESSION
                    sso_account_id = 123456789012
                    sso_role_name = SSO_ROLE_NAME

                    [sso-session SSO_SESSION]
                    sso_region = us-east-1
                    sso_start_url = SSO_START_URL
                  CONFIG
                end

                let(:source_provider) do
                  SSOCredentialsProvider.new(
                    sso_session: 'SSO_SESSION',
                    sso_account_id: '123456789012',
                    sso_role_name: 'SSO_ROLE_NAME',
                    sso_region: 'us-east-1',
                    client: sso_client
                  )
                end

                let(:creds) do
                  {
                    access_key_id: 'akid_ar_sso',
                    secret_access_key: 'secret_ar_sso',
                    session_token: 'token_ar_sso'
                  }
                end

                let(:sts_client) { STS::Client.new(stub_responses: true, credentials_provider: source_provider) }

                before do
                  allow(SSOOIDCTokenProvider).to receive(:new).with(
                    sso_session: 'SSO_SESSION', sso_region: 'us-east-1'
                  ).and_return(token_provider)
                  expect(SSOCredentialsProvider).to receive(:new).with(
                    sso_session: 'SSO_SESSION',
                    sso_account_id: '123456789012',
                    sso_role_name: 'SSO_ROLE_NAME',
                    sso_region: 'us-east-1'
                  ).and_return(source_provider)
                  sso_client.stub_responses(
                    :get_role_credentials,
                    {
                      role_credentials: {
                        access_key_id: 'akid_sso',
                        secret_access_key: 'secret_sso',
                        session_token: 'token_sso',
                        expiration: (Time.now.round + 3600).to_i * 1000
                      }
                    }
                  )

                  expect(STS::Client).to receive(:new).with(
                    { profile: 'default', credentials_provider: source_provider }
                  ).and_return(sts_client)
                  sts_client.stub_responses(:assume_role, { credentials: creds })
                end

                it 'resolves assume role credentials from profile with source_profile of sso' do
                  creds = client.config.credentials_provider.identity
                  expect(creds.access_key_id).to eq('akid_ar_sso')
                  expect(creds.secret_access_key).to eq('secret_ar_sso')
                  expect(creds.session_token).to eq('token_ar_sso')
                end

                it 'tracks the correct feature id' do
                  provider = client.config.credentials_provider
                  expect(provider.features).to eq(
                    %w[
                      CREDENTIALS_PROFILE_SOURCE_PROFILE
                      CREDENTIALS_PROFILE_SSO
                      CREDENTIALS_SSO
                      CREDENTIALS_STS_ASSUME_ROLE
                    ]
                  )
                end

                it 'tracks the correct feature id for intermediate STS call' do
                  expect(sts_client).to receive(:assume_role).and_wrap_original do |m, *args|
                    resp = m.call(*args)
                    expect_metrics_from_user_agent_header(resp, %w[o r s])
                    resp
                  end
                  client
                end
              end

              context 'process' do
                let(:expiration) { Time.now.round + 3600 }
                let(:creds_json) do
                  {
                    Version: 1,
                    AccessKeyId: 'akid_process',
                    SecretAccessKey: 'secret_process',
                    SessionToken: 'token_process',
                    AccountId: '123456789012',
                    Expiration: expiration.utc.iso8601
                  }.to_json
                end
                let(:process) { ["echo '#{creds_json}'"] }

                let(:shared_config) do
                  <<~CONFIG
                    [profile default]
                    role_arn = role_arn
                    source_profile = process

                    [profile process]
                    credential_process = echo '#{creds_json}'
                  CONFIG
                end

                let(:source_provider) do
                  ProcessCredentialsProvider.new(["echo '#{creds_json}'"])
                end

                let(:creds) do
                  {
                    access_key_id: 'akid_ar_process',
                    secret_access_key: 'secret_ar_process',
                    session_token: 'token_ar_process'
                  }
                end

                let(:sts_client) { STS::Client.new(stub_responses: true, credentials_provider: source_provider) }

                before do
                  expect(ProcessCredentialsProvider).to receive(:new).with(["echo '#{creds_json}'"])
                                                                     .and_return(source_provider)

                  expect(STS::Client).to receive(:new).with(
                    { profile: 'default', credentials_provider: source_provider }
                  ).and_return(sts_client)
                  sts_client.stub_responses(:assume_role, { credentials: creds })
                end

                it 'resolves assume role credentials from profile with source_profile of process' do
                  creds = client.config.credentials_provider.identity
                  expect(creds.access_key_id).to eq('akid_ar_process')
                  expect(creds.secret_access_key).to eq('secret_ar_process')
                  expect(creds.session_token).to eq('token_ar_process')
                end

                it 'tracks the correct feature id' do
                  provider = client.config.credentials_provider
                  expect(provider.features).to eq(
                    %w[
                      CREDENTIALS_PROFILE_SOURCE_PROFILE
                      CREDENTIALS_PROFILE_PROCESS
                      CREDENTIALS_PROCESS
                      CREDENTIALS_STS_ASSUME_ROLE
                    ]
                  )
                end

                it 'tracks the correct feature id for intermediate STS call' do
                  expect(sts_client).to receive(:assume_role).and_wrap_original do |m, *args|
                    resp = m.call(*args)
                    expect_metrics_from_user_agent_header(resp, %w[o v w])
                    resp
                  end
                  client
                end
              end
            end

            context 'credential_source' do
              context 'instance profile' do
                let(:expiration) { Time.now.round + 3600 }
                let(:imds_resp) { <<-JSON.strip }
                  {
                    "Code" : "Success",
                    "LastUpdated" : "2013-11-22T20:03:48Z",
                    "Type" : "AWS-HMAC",
                    "AccessKeyId" : "akid_instance",
                    "SecretAccessKey" : "secret_instance",
                    "Token" : "token_instance",
                    "AccountId" : "123456789012",
                    "Expiration" : "#{expiration.iso8601}"
                  }
                JSON

                let(:shared_config) do
                  <<~CONFIG
                    [profile default]
                    role_arn = role_arn
                    credential_source = Ec2InstanceMetadata
                  CONFIG
                end

                let(:source_provider) do
                  InstanceProfileCredentialsProvider.new
                end

                let(:creds) do
                  {
                    access_key_id: 'akid_ar_instance',
                    secret_access_key: 'secret_ar_instance',
                    session_token: 'token_ar_instance'
                  }
                end

                let(:sts_client) { STS::Client.new(stub_responses: true, credentials_provider: source_provider) }

                before do
                  expect_any_instance_of(InstanceProfileCredentialsProvider).to receive(:retrieve_credentials)
                    .and_return(imds_resp)
                  expect(InstanceProfileCredentialsProvider).to receive(:new).and_return(source_provider)

                  expect(STS::Client).to receive(:new).with(
                    { profile: 'default', credentials_provider: source_provider }
                  ).and_return(sts_client)
                  sts_client.stub_responses(:assume_role, { credentials: creds })
                end

                it 'resolves assume role credentials from profile with credential_source of instance' do
                  creds = client.config.credentials_provider.identity
                  expect(creds.access_key_id).to eq('akid_ar_instance')
                  expect(creds.secret_access_key).to eq('secret_ar_instance')
                  expect(creds.session_token).to eq('token_ar_instance')
                end

                it 'tracks the correct feature id' do
                  provider = client.config.credentials_provider
                  expect(provider.features).to eq(
                    %w[CREDENTIALS_PROFILE_NAMED_PROVIDER CREDENTIALS_IMDS CREDENTIALS_STS_ASSUME_ROLE]
                  )
                end

                it 'tracks the correct feature id for intermediate STS call' do
                  expect(sts_client).to receive(:assume_role).and_wrap_original do |m, *args|
                    resp = m.call(*args)
                    expect_metrics_from_user_agent_header(resp, %w[p 0])
                    resp
                  end
                  client
                end
              end

              context 'container' do
                let(:path) { '/latest/credentials?id=foobarbaz' }
                let(:container_resp) { <<-JSON.strip }
                  {
                    "RoleArn": "arn:aws:iam::123456789012:role/BarFooRole",
                    "AccessKeyId": "akid_container",
                    "SecretAccessKey": "secret_container",
                    "Token": "token_container",
                    "Expiration": "#{(Time.now.utc + 3600).strftime('%Y-%m-%dT%H:%M:%SZ')}"
                  }
                JSON

                let(:shared_config) do
                  <<~CONFIG
                    [profile default]
                    role_arn = role_arn
                    credential_source = EcsContainer
                  CONFIG
                end

                let(:source_provider) do
                  ContainerCredentialsProvider.new
                end

                let(:creds) do
                  {
                    access_key_id: 'akid_ar_container',
                    secret_access_key: 'secret_ar_container',
                    session_token: 'token_ar_container'
                  }
                end

                let(:sts_client) { STS::Client.new(stub_responses: true, credentials_provider: source_provider) }

                before do
                  ENV['AWS_CONTAINER_CREDENTIALS_RELATIVE_URI'] = path
                  stub_request(:get, "http://169.254.170.2#{path}").to_return(status: 200, body: container_resp)
                  expect(ContainerCredentialsProvider).to receive(:new).and_return(source_provider)

                  expect(STS::Client).to receive(:new).with(
                    { profile: 'default', credentials_provider: source_provider }
                  ).and_return(sts_client)
                  sts_client.stub_responses(:assume_role, { credentials: creds })
                end

                it 'resolves assume role credentials from profile with credential_source of container' do
                  creds = client.config.credentials_provider.identity
                  expect(creds.access_key_id).to eq('akid_ar_container')
                  expect(creds.secret_access_key).to eq('secret_ar_container')
                  expect(creds.session_token).to eq('token_ar_container')
                end

                it 'tracks the correct feature id' do
                  provider = client.config.credentials_provider
                  expect(provider.features).to eq(
                    %w[CREDENTIALS_PROFILE_NAMED_PROVIDER CREDENTIALS_HTTP CREDENTIALS_STS_ASSUME_ROLE]
                  )
                end

                it 'tracks the correct feature id for intermediate STS call' do
                  expect(sts_client).to receive(:assume_role).and_wrap_original do |m, *args|
                    resp = m.call(*args)
                    expect_metrics_from_user_agent_header(resp, %w[p z])
                    resp
                  end
                  client
                end
              end

              context 'environment' do
                let(:shared_config) do
                  <<~CONFIG
                    [profile default]
                    role_arn = role_arn
                    credential_source = Environment
                  CONFIG
                end

                let(:source_provider) do
                  StaticCredentialsProvider.new(
                    access_key_id: 'akid_env',
                    secret_access_key: 'secret_env',
                    session_token: 'token_env',
                    account_id: '123456789012'
                  )
                end

                let(:creds) do
                  {
                    access_key_id: 'akid_ar_env',
                    secret_access_key: 'secret_ar_env',
                    session_token: 'token_ar_env'
                  }
                end

                let(:sts_client) { STS::Client.new(stub_responses: true, credentials_provider: source_provider) }

                before do
                  ENV['AWS_ACCESS_KEY_ID'] = 'akid_env'
                  ENV['AWS_SECRET_ACCESS_KEY'] = 'secret_env'
                  ENV['AWS_SESSION_TOKEN'] = 'token_env'
                  ENV['AWS_ACCOUNT_ID'] = '123456789012'
                  expect(StaticCredentialsProvider).to receive(:new).with(
                    access_key_id: 'akid_env',
                    secret_access_key: 'secret_env',
                    session_token: 'token_env',
                    account_id: '123456789012'
                  ).and_return(source_provider)

                  expect(STS::Client).to receive(:new).with(
                    { profile: 'default', credentials_provider: source_provider }
                  ).and_return(sts_client)
                  sts_client.stub_responses(:assume_role, { credentials: creds })
                end

                it 'resolves assume role credentials from profile with credential_source of env' do
                  # Profile must be configured explicitly for credential_source = Environment
                  client = client_class.new(profile: 'default')
                  creds = client.config.credentials_provider.identity
                  expect(creds.access_key_id).to eq('akid_ar_env')
                  expect(creds.secret_access_key).to eq('secret_ar_env')
                  expect(creds.session_token).to eq('token_ar_env')
                end

                it 'tracks the correct feature id' do
                  # Profile must be configured explicitly for credential_source = Environment
                  client = client_class.new(profile: 'default')
                  provider = client.config.credentials_provider
                  expect(provider.features).to eq(
                    %w[
                      CREDENTIALS_PROFILE_NAMED_PROVIDER
                      CREDENTIALS_ENV_VARS
                      CREDENTIALS_STS_ASSUME_ROLE
                      CREDENTIALS_CODE
                    ]
                  )
                end

                it 'tracks the correct feature id for intermediate STS call' do
                  expect(sts_client).to receive(:assume_role).and_wrap_original do |m, *args|
                    resp = m.call(*args)
                    expect_metrics_from_user_agent_header(resp, %w[e p g])
                    resp
                  end
                  # Profile must be configured explicitly for credential_source = Environment
                  client_class.new(profile: 'default')
                end
              end
            end
          end

          context 'fails to resolve' do
            it 'fails to resolve assume role credentials when profile does not exist' do
              expect(InstanceProfileCredentialsProvider).to receive(:new).and_return(mock_instance_creds)
              shared_config = <<~CONFIG
                [profile default]
                role_arn = role_arn
                source_profile = static

                [profile static]
                aws_access_key_id = akid_static
                aws_secret_access_key = secret_static
                aws_session_token = token_static
                aws_account_id = 123456789012
              CONFIG
              mock_shared_config(shared_config)
              client = client_class.new(profile: 'nonexistent')
              expect(client.config.credentials_provider).to be_nil
            end

            it 'raises when no source_profile or credential_source is configured' do
              shared_config = <<~CONFIG
                [profile default]
                role_arn = role_arn
              CONFIG
              mock_shared_config(shared_config)
              expect { client }.to raise_error(/no source_profile or credential_source/)
            end

            it 'raises when both source_profile and credential_source are configured' do
              shared_config = <<~CONFIG
                [profile default]
                role_arn = role_arn
                credential_source = Environment
                source_profile = static

                [profile static]
                aws_access_key_id = akid_static
                aws_secret_access_key = secret_static
                aws_session_token = token_static
                aws_account_id = 123456789012
              CONFIG
              mock_shared_config(shared_config)
              expect { client }.to raise_error(/provide only source_profile or credential_source, not both/)
            end

            it 'raises when source_profile returns partial credentials' do
              shared_config = <<~CONFIG
                [profile default]
                role_arn = role_arn
                source_profile = static

                [profile static]
                aws_access_key_id = akid_static
              CONFIG
              mock_shared_config(shared_config)
              expect { client }.to raise_error(/the source_profile does not provide credentials/)
            end

            it 'raises when source_profile does not exist' do
              shared_config = <<~CONFIG
                [profile default]
                role_arn = role_arn
                source_profile = static
              CONFIG
              mock_shared_config(shared_config)
              expect { client }.to raise_error(/source_profile static does not exist/)
            end

            it 'raises when credential_source does not return credentials' do
              shared_config = <<~CONFIG
                [profile default]
                role_arn = role_arn
                credential_source = Environment
              CONFIG
              mock_shared_config(shared_config)
              expect { client }.to raise_error(/No provider resolved for credential_source/)
            end

            it 'raises when credential_source returns partial credentials' do
              ENV['AWS_ACCESS_KEY_ID'] = 'akid_env'
              shared_config = <<~CONFIG
                [profile default]
                role_arn = role_arn
                credential_source = Environment
              CONFIG
              mock_shared_config(shared_config)
              expect { client }.to raise_error(/No provider resolved for credential_source/)
            end

            it 'raises when credential_source is not supported' do
              ENV['AWS_ACCESS_KEY_ID'] = 'akid_env'
              shared_config = <<~CONFIG
                [profile default]
                role_arn = role_arn
                credential_source = CustomUnsupportedProvider
              CONFIG
              mock_shared_config(shared_config)
              expect { client }.to raise_error(/Unsupported credential_source found in profile/)
            end

            it 'raises when profile references itself without having a full set of static credentials' do
              shared_config = <<~CONFIG
                [profile default]
                role_arn = role_arn_default
                source_profile = default
              CONFIG
              mock_shared_config(shared_config)
              expect { client }.to raise_error(/Circular reference in assume role source profiles/)
            end

            it 'raises when chained assume role profiles loop infinitely' do
              shared_config = <<~CONFIG
                [profile default]
                role_arn = role_arn_default
                source_profile = assume

                [profile assume]
                role_arn = role_arn_assume
                source_profile = default
              CONFIG
              mock_shared_config(shared_config)
              expect { client }.to raise_error(/Circular reference in assume role source profiles/)
            end

            it 'raises when chained assume role profiles loop infinitely with static credentials' do
              shared_config = <<~CONFIG
                [profile default]
                aws_access_key_id = akid_static
                aws_secret_access_key = secret_static
                aws_session_token = token_static
                aws_account_id = 123456789012
                role_arn = role_arn_default
                source_profile = assume

                [profile assume]
                role_arn = role_arn_assume
                source_profile = default
                region = us-west-2
              CONFIG
              mock_shared_config(shared_config)
              expect { client }.to raise_error(/Circular reference in assume role source profiles/)
            end
          end
        end

        describe '#profile_assume_role_web_identity_credentials' do
          let(:sts_client) { STS::Client.new(stub_responses: true) }
          let(:token_file) { Tempfile.new('token.jwt') }
          let(:token_file_path) { token_file.path }

          context 'resolves' do
            before do
              expect(STS::Client).to receive(:new).and_return(sts_client)
              sts_client.stub_responses(
                :assume_role_with_web_identity,
                {
                  credentials: {
                    access_key_id: 'akid_web_id_profile',
                    secret_access_key: 'secret_web_id_profile',
                    session_token: 'token_web_id_profile'
                  }
                }
              )
            end

            it 'resolves assume role web identity credentials from profile' do
              shared_config = <<~CONFIG
                [profile default]
                web_identity_token_file = #{token_file_path}
                role_arn = 'role_arn'
                role_session_name = 'role_session_name'
                region = 'us-west-2'
              CONFIG
              mock_shared_config(shared_config)
              creds = client.config.credentials_provider.identity
              expect(creds.access_key_id).to eq('akid_web_id_profile')
              expect(creds.secret_access_key).to eq('secret_web_id_profile')
              expect(creds.session_token).to eq('token_web_id_profile')
            end

            it 'resolves assume role web identity credentials when role_session_name is not set' do
              shared_config = <<~CONFIG
                [profile default]
                web_identity_token_file = #{token_file_path}
                role_arn = 'role_arn'
                region = 'us-west-2'
              CONFIG
              mock_shared_config(shared_config)
              creds = client.config.credentials_provider.identity
              expect(creds.access_key_id).to eq('akid_web_id_profile')
              expect(creds.secret_access_key).to eq('secret_web_id_profile')
              expect(creds.session_token).to eq('token_web_id_profile')
            end

            it 'tracks the correct feature id' do
              shared_config = <<~CONFIG
                [profile default]
                web_identity_token_file = #{token_file_path}
                role_arn = 'role_arn'
                role_session_name = 'role_session_name'
                region = 'us-west-2'
              CONFIG
              mock_shared_config(shared_config)
              provider = client.config.credentials_provider
              expect(provider.features).to eq(
                %w[CREDENTIALS_PROFILE_STS_WEB_ID_TOKEN CREDENTIALS_STS_ASSUME_ROLE_WEB_ID]
              )
            end

            it 'tracks the correct feature id for intermediate STS call' do
              shared_config = <<~CONFIG
                [profile default]
                web_identity_token_file = #{token_file_path}
                role_arn = 'role_arn'
                role_session_name = 'role_session_name'
                region = 'us-west-2'
              CONFIG
              mock_shared_config(shared_config)
              expect_any_instance_of(STS::Client).to receive(:assume_role_with_web_identity)
                .and_wrap_original do |m, *args|
                resp = m.call(*args)
                expect_metrics_from_user_agent_header(resp, ['q'])
                resp
              end
              client
            end
          end

          context 'fails to resolve' do
            it 'fails to resolve assume role web identity credentials when profile does not exist' do
              expect(InstanceProfileCredentialsProvider).to receive(:new).and_return(mock_instance_creds)
              shared_config = <<~CONFIG
                [profile default]
                web_identity_token_file = #{token_file_path}
                role_arn = 'role_arn'
                role_session_name = 'role_session_name'
              CONFIG
              mock_shared_config(shared_config)
              client = client_class.new(profile: 'nonexistent')
              expect(client.config.credentials_provider).to be_nil
            end

            it 'fails to resolve assume role web identity credentials when required config variables are not set' do
              expect(InstanceProfileCredentialsProvider).to receive(:new).and_return(mock_instance_creds)
              shared_config = <<~CONFIG
                [profile default]
                role_session_name = 'role_session_name'
              CONFIG
              mock_shared_config(shared_config)
              expect(client.config.credentials_provider).to be_nil
            end
          end
        end

        describe '#profile_sso_credentials' do
          context 'resolves' do
            let(:sso_client) { SSO::Client.new(stub_responses: true) }
            let(:token) { SSOOIDCToken.new(token: 'token') }
            let(:token_provider) do
              double(
                'SSOOIDCTokenProvider',
                identity: token,
                set?: true,
                expiration: nil
              )
            end

            before(:each) do
              expect(SSO::Client).to receive(:new).and_return(sso_client)
              expect(SSOOIDCTokenProvider).to receive(:new).and_return(token_provider)
              sso_client.stub_responses(
                :get_role_credentials,
                {
                  role_credentials: {
                    access_key_id: 'akid_sso',
                    secret_access_key: 'secret_sso',
                    session_token: 'token_sso',
                    expiration: (Time.now.round + 3600).to_i * 1000
                  }
                }
              )
            end

            it 'resolves sso credentials from profile' do
              shared_config = <<~CONFIG
                [profile default]
                sso_session = SSO_SESSION
                sso_account_id = 123456789012
                sso_role_name = SSO_ROLE_NAME

                [sso-session SSO_SESSION]
                sso_region = us-east-1
                sso_start_url = SSO_START_URL
              CONFIG
              mock_shared_config(shared_config)
              creds = client.config.credentials_provider.identity
              expect(creds.access_key_id).to eq('akid_sso')
              expect(creds.secret_access_key).to eq('secret_sso')
              expect(creds.session_token).to eq('token_sso')
              expect(creds.account_id).to eq('123456789012')
            end

            it 'resolves sso credentials when sso_region and sso_start_url are set on both profile and session' do
              shared_config = <<~CONFIG
                [profile default]
                sso_session = SSO_SESSION
                sso_account_id = 123456789012
                sso_role_name = SSO_ROLE_NAME
                sso_region = us-east-1
                sso_start_url = SSO_START_URL

                [sso-session SSO_SESSION]
                sso_region = us-east-1
                sso_start_url = SSO_START_URL
              CONFIG
              mock_shared_config(shared_config)
              creds = client.config.credentials_provider.identity
              expect(creds.access_key_id).to eq('akid_sso')
              expect(creds.secret_access_key).to eq('secret_sso')
              expect(creds.session_token).to eq('token_sso')
              expect(creds.account_id).to eq('123456789012')
            end

            it 'tracks the correct feature id' do
              shared_config = <<~CONFIG
                [profile default]
                sso_session = SSO_SESSION
                sso_account_id = 123456789012
                sso_role_name = SSO_ROLE_NAME

                [sso-session SSO_SESSION]
                sso_region = us-east-1
                sso_start_url = SSO_START_URL
              CONFIG
              mock_shared_config(shared_config)
              provider = client.config.credentials_provider
              expect(provider.features).to eq(%w[CREDENTIALS_PROFILE_SSO CREDENTIALS_SSO])
            end

            it 'tracks the correct feature id for intermediate STS call' do
              shared_config = <<~CONFIG
                [profile default]
                sso_session = SSO_SESSION
                sso_account_id = 123456789012
                sso_role_name = SSO_ROLE_NAME

                [sso-session SSO_SESSION]
                sso_region = us-east-1
                sso_start_url = SSO_START_URL
              CONFIG
              mock_shared_config(shared_config)
              expect_any_instance_of(SSO::Client).to receive(:get_role_credentials).and_wrap_original do |m, *args|
                resp = m.call(*args)
                expect_metrics_from_user_agent_header(resp, ['r'])
                resp
              end
              client
            end
          end

          context 'fails to resolve' do
            it 'fails to resolve sso credentials when profile does not exist' do
              expect(InstanceProfileCredentialsProvider).to receive(:new).and_return(mock_instance_creds)
              client = client_class.new(profile: 'nonexistent')
              expect(client.config.credentials_provider).to be_nil
            end

            it 'fails to resolve sso credentials when profile is missing required fields' do
              expect(InstanceProfileCredentialsProvider).to receive(:new).and_return(mock_instance_creds)
              shared_config = <<~CONFIG
                [profile default]
                sso_session = SSO_SESSION

                [sso-session SSO_SESSION]
                sso_region = us-east-1
                sso_start_url = SSO_START_URL
              CONFIG
              mock_shared_config(shared_config)
              expect(client.config.credentials_provider).to be_nil
            end

            it 'raises if sso_region conflicts when set on both profile and session' do
              shared_config = <<~CONFIG
                [profile default]
                sso_session = SSO_SESSION
                sso_account_id = 123456789012
                sso_role_name = SSO_ROLE_NAME
                sso_region = us-west-2

                [sso-session SSO_SESSION]
                sso_region = us-east-1
                sso_start_url = SSO_START_URL
              CONFIG
              mock_shared_config(shared_config)
              expect { client }.to raise_error(/Please remove the SSO region from the profile/)
            end

            it 'raises if sso_start_url conflicts when set on both profile and session' do
              shared_config = <<~CONFIG
                [profile default]
                sso_session = SSO_SESSION
                sso_account_id = 123456789012
                sso_role_name = SSO_ROLE_NAME
                sso_start_url = SSO_START_URL_PROFILE

                [sso-session SSO_SESSION]
                sso_region = us-east-1
                sso_start_url = SSO_START_URL
              CONFIG
              mock_shared_config(shared_config)
              expect { client }.to raise_error(/Please remove the SSO start URL from the profile/)
            end
          end
        end

        describe '#profile_login_credentials' do
          let(:expiration) { (Time.now.utc + 900).to_datetime.rfc3339 }
          let(:cached_token) do
            {
              'accessToken' => {
                'accessKeyId' => 'akid_login',
                'secretAccessKey' => 'secret_login',
                'sessionToken' => 'token_login',
                'accountId' => '123456789012',
                'expiresAt' => expiration
              },
              'tokenType' => 'aws_sigv4',
              'refreshToken' => 'refresh_token',
              'idToken' => 'identity_token',
              'clientId' => 'arn:aws:signin:::devtools/same-device',
              'dpopKey' => OpenSSL::PKey::EC.generate('prime256v1').to_pem
            }
          end

          it 'resolves login credentials from profile' do
            shared_config = <<~CONFIG
              [profile default]
              login_session = arn:aws:iam::0123456789012:user/Admin
            CONFIG
            mock_shared_config(shared_config)
            expect_any_instance_of(LoginCredentialsProvider).to receive(:read_cached_token).and_return(cached_token)
            provider = client.config.credentials_provider
            creds = provider.identity
            expect(creds.access_key_id).to eq('akid_login')
            expect(creds.secret_access_key).to eq('secret_login')
            expect(creds.session_token).to eq('token_login')
            expect(creds.account_id).to eq('123456789012')
            expect(provider.expiration).to eq(Time.parse(expiration))
          end

          it 'fails to resolve login credentials when login_session is missing' do
            expect(InstanceProfileCredentialsProvider).to receive(:new).and_return(mock_instance_creds)
            shared_config = <<~CONFIG
              [profile default]
            CONFIG
            mock_shared_config(shared_config)
            expect(client.config.credentials_provider).to be_nil
          end

          it 'fails to resolve login credentials when profile is not configured' do
            expect(InstanceProfileCredentialsProvider).to receive(:new).and_return(mock_instance_creds)
            shared_config = <<~CONFIG
              [profile not-default]
              login_session = arn:aws:iam::0123456789012:user/Admin
            CONFIG
            mock_shared_config(shared_config)
            expect(client.config.credentials_provider).to be_nil
          end

          it 'tracks the correct feature id' do
            shared_config = <<~CONFIG
              [profile default]
              login_session = arn:aws:iam::0123456789012:user/Admin
            CONFIG
            mock_shared_config(shared_config)
            expect_any_instance_of(LoginCredentialsProvider).to receive(:read_cached_token).and_return(cached_token)
            provider = client.config.credentials_provider
            expect(provider.features).to eq(%w[CREDENTIALS_PROFILE_LOGIN CREDENTIALS_LOGIN])
          end
        end

        describe '#profile_process_credentials' do
          let(:expiration) { Time.now.round + 3600 }
          let(:creds_json) do
            {
              Version: 1,
              AccessKeyId: 'akid_process',
              SecretAccessKey: 'secret_process',
              SessionToken: 'token_process',
              AccountId: '123456789012',
              Expiration: expiration.utc.iso8601
            }.to_json
          end

          it 'resolves process credentials from profile' do
            shared_config = <<~CONFIG
              [profile default]
              credential_process = echo '#{creds_json}'
            CONFIG
            mock_shared_config(shared_config)
            provider = client.config.credentials_provider
            creds = provider.identity
            expect(creds.access_key_id).to eq('akid_process')
            expect(creds.secret_access_key).to eq('secret_process')
            expect(creds.session_token).to eq('token_process')
            expect(creds.account_id).to eq('123456789012')
            expect(provider.expiration).to eq(expiration)
          end

          it 'fails to resolve process credentials when credential_process is missing' do
            expect(InstanceProfileCredentialsProvider).to receive(:new).and_return(mock_instance_creds)
            shared_config = <<~CONFIG
              [profile default]
            CONFIG
            mock_shared_config(shared_config)
            expect(client.config.credentials_provider).to be_nil
          end

          it 'fails to resolve process credentials when profile is not configured' do
            expect(InstanceProfileCredentialsProvider).to receive(:new).and_return(mock_instance_creds)
            shared_config = <<~CONFIG
              [profile not-default]
              credential_process = echo '#{creds_json}'
            CONFIG
            mock_shared_config(shared_config)
            expect(client.config.credentials_provider).to be_nil
          end

          it 'tracks the correct feature id' do
            shared_config = <<~CONFIG
              [profile default]
              credential_process = echo '#{creds_json}'
            CONFIG
            mock_shared_config(shared_config)
            provider = client.config.credentials_provider
            expect(provider.features).to eq(%w[CREDENTIALS_PROFILE_PROCESS CREDENTIALS_PROCESS])
          end
        end

        describe '#container_credentials' do
          it 'resolves container credentials with relative uri' do
            path = '/latest/credentials?id=foobarbaz'
            resp = <<~JSON.strip
              {
                "RoleArn": "arn:aws:iam::123456789012:role/BarFooRole",
                "AccessKeyId": "akid_container",
                "SecretAccessKey": "secret_container",
                "Token": "token_container",
                "AccountId": "123456789012",
                "Expiration": "#{(Time.now.utc + 3600).strftime('%Y-%m-%dT%H:%M:%SZ')}"
              }
            JSON
            ENV['AWS_CONTAINER_CREDENTIALS_RELATIVE_URI'] = path
            stub_request(:get, "http://169.254.170.2#{path}")
              .to_return(status: 200, body: resp)
            creds = client.config.credentials_provider.identity
            expect(creds.access_key_id).to eq('akid_container')
            expect(creds.secret_access_key).to eq('secret_container')
            expect(creds.session_token).to eq('token_container')
            expect(creds.account_id).to eq('123456789012')
          end

          it 'resolves container credentials with full uri' do
            path = 'http://169.254.170.2/latest/credentials?id=foobarbaz'
            resp = <<~JSON.strip
              {
                "RoleArn": "arn:aws:iam::123456789012:role/BarFooRole",
                "AccessKeyId": "akid_container",
                "SecretAccessKey": "secret_container",
                "Token": "token_container",
                "AccountId": "123456789012",
                "Expiration": "#{(Time.now.utc + 3600).strftime('%Y-%m-%dT%H:%M:%SZ')}"
              }
            JSON
            ENV['AWS_CONTAINER_CREDENTIALS_FULL_URI'] = path
            stub_request(:get, path)
              .to_return(status: 200, body: resp)
            creds = client.config.credentials_provider.identity
            expect(creds.access_key_id).to eq('akid_container')
            expect(creds.secret_access_key).to eq('secret_container')
            expect(creds.session_token).to eq('token_container')
            expect(creds.account_id).to eq('123456789012')
          end

          it 'fails to resolve container credentials when neither relative nor full uri is set' do
            expect(InstanceProfileCredentialsProvider).to receive(:new).and_return(mock_instance_creds)
            expect(client.config.credentials_provider).to be_nil
          end

          it 'tracks the correct feature id' do
            path = '/latest/credentials?id=foobarbaz'
            resp = <<~JSON.strip
              {
                "RoleArn": "arn:aws:iam::123456789012:role/BarFooRole",
                "AccessKeyId": "akid_container",
                "SecretAccessKey": "secret_container",
                "Token": "token_container",
                "Expiration": "#{(Time.now.utc + 3600).strftime('%Y-%m-%dT%H:%M:%SZ')}"
              }
            JSON
            ENV['AWS_CONTAINER_CREDENTIALS_RELATIVE_URI'] = path
            stub_request(:get, "http://169.254.170.2#{path}")
              .to_return(status: 200, body: resp)
            provider = client.config.credentials_provider
            expect(provider.features).to eq(%w[CREDENTIALS_HTTP])
          end
        end

        describe '#instance_profile_credentials' do
          let(:expiration) { Time.now.round + 3600 }
          let(:resp) { <<-JSON.strip }
            {
              "Code" : "Success",
              "LastUpdated" : "2013-11-22T20:03:48Z",
              "Type" : "AWS-HMAC",
              "AccessKeyId" : "akid_instance",
              "SecretAccessKey" : "secret_instance",
              "Token" : "token_instance",
              "AccountId" : "123456789012",
              "Expiration" : "#{expiration.iso8601}"
            }
          JSON

          before(:each) do
            # TODO: find a better way to test feature IDs
            allow_any_instance_of(InstanceProfileCredentialsProvider).to receive(:retrieve_credentials).and_return(resp)
          end

          it 'resolves instance profile credentials' do
            creds = client.config.credentials_provider.identity
            expect(creds.access_key_id).to eq('akid_instance')
            expect(creds.secret_access_key).to eq('secret_instance')
            expect(creds.session_token).to eq('token_instance')
            expect(creds.account_id).to eq('123456789012')
          end

          it 'resolves instance profile credentials when AWS_EC2_METADATA_DISABLED is explicitly false' do
            ENV['AWS_EC2_METADATA_DISABLED'] = 'false'
            creds = client.config.credentials_provider.identity
            expect(creds.access_key_id).to eq('akid_instance')
            expect(creds.secret_access_key).to eq('secret_instance')
            expect(creds.session_token).to eq('token_instance')
            expect(creds.account_id).to eq('123456789012')
          end

          it 'fails to resolve instance profile credentials when AWS_EC2_METADATA_DISABLED is true' do
            ENV['AWS_EC2_METADATA_DISABLED'] = 'true'
            expect(client.config.credentials_provider).to be_nil
          end

          it 'tracks the correct feature id' do
            provider = client.config.credentials_provider
            expect(provider.features).to eq(%w[CREDENTIALS_IMDS])
          end

          describe 'endpoint resolution' do
            it 'resolves endpoint from ENV' do
              expect(InstanceProfileCredentialsProvider).to receive(:new).with(
                retries: 0,
                endpoint: 'http://[fd00:ec2::254]',
                endpoint_mode: 'IPv6'
              ).and_return(mock_instance_creds)
              ENV['AWS_EC2_METADATA_SERVICE_ENDPOINT_MODE'] = 'IPv6'
              ENV['AWS_EC2_METADATA_SERVICE_ENDPOINT'] = 'http://[fd00:ec2::254]'
              client
            end

            it 'resolves endpoint from shared config' do
              expect(InstanceProfileCredentialsProvider).to receive(:new).with(
                retries: 0,
                endpoint: 'http://[fd00:ec2::254]',
                endpoint_mode: 'IPv6'
              ).and_return(mock_instance_creds)
              shared_config = <<~CONFIG
                [profile default]
                ec2_metadata_service_endpoint_mode = IPv6
                ec2_metadata_service_endpoint = http://[fd00:ec2::254]
              CONFIG
              mock_shared_config(shared_config)
              client
            end
          end
        end

        describe '#resolve' do
          file = File.join(File.dirname(__FILE__), 'credentials_provider_chain_tests.json')
          test_cases = JSON.load_file(file)

          def credentials(values)
            Credentials.new(
              access_key_id: values['accessKeyId'],
              secret_access_key: values['secretAccessKey'],
              session_token: values['sessionToken'],
              account_id: values['accountId']
            )
          end

          def mock_input(test_case, config)
            test_case['input'].each do |input, values|
              case input
              when 'code'
                config[:access_key_id] = values['accessKeyId']
                config[:secret_access_key] = values['secretAccessKey']
                config[:session_token] = values['sessionToken']
                config[:account_id] = values['accountId']
              when 'jvmSystemProperties'
                # ignore
              when 'env'
                stub_const('ENV', values)
              when 'configFiles'
                mock_shared_config(values['aws']) if values['aws']
              when 'stsResponse'
                assume_role_provider = double(
                  'AssumeRoleCredentialsProvider',
                  identity: credentials(values),
                  set?: true
                )
                assume_role_web_identity_provider = double(
                  'AssumeRoleWebIdentityCredentialsProvider',
                  identity: credentials(values),
                  set?: true
                )
                allow(AssumeRoleCredentialsProvider)
                  .to receive(:new).and_return(assume_role_provider)
                allow(assume_role_provider).to receive(:features=)
                allow(AssumeRoleWebIdentityCredentialsProvider)
                  .to receive(:new).and_return(assume_role_web_identity_provider)
                allow(assume_role_web_identity_provider).to receive(:features=)
              when 'ssoResponse'
                sso_provider = double(
                  'SSOCredentialsProvider',
                  identity: credentials(values),
                  set?: true
                )
                allow(SSOCredentialsProvider)
                  .to receive(:new).and_return(sso_provider)
                allow(sso_provider).to receive(:features=)
              when 'loginToken'
                login_provider = double(
                  'LoginCredentialsProvider',
                  identity: credentials(values),
                  set?: true
                )
                allow(LoginCredentialsProvider)
                  .to receive(:new).and_return(login_provider)
                allow(login_provider).to receive(:features=)
              when 'processResponse'
                process_provider = double(
                  'ProcessCredentialsProvider',
                  identity: credentials(values),
                  set?: true
                )
                allow(ProcessCredentialsProvider)
                  .to receive(:new).and_return(process_provider)
                allow(process_provider).to receive(:features=)
              when 'httpResponse'
                container_provider = double(
                  'ContainerCredentialsProvider',
                  identity: credentials(values),
                  set?: true
                )
                allow(ContainerCredentialsProvider)
                  .to receive(:new).and_return(container_provider)
              when 'imdsResponse'
                # Error case is handled transparently since instance profile credentials
                # will rescue from StandardError and return empty credentials.
                instance_provider = double(
                  'InstanceProfileCredentialsProvider',
                  identity: credentials(values),
                  set?: true
                )
                allow(InstanceProfileCredentialsProvider)
                  .to receive(:new).and_return(instance_provider)
                allow(instance_provider).to receive(:features).and_return(['CREDENTIALS_IMDS'])
              else
                raise 'Unknown input type'
              end
            end
          end

          test_cases.each do |test_case|
            skippable = {
              '2' => 'JVM is not used',
              '10' => 'Legacy SSO is not supported',
              '12' => 'Boto 2 config file is not supported',
              '13' => 'Windows AWS SDK store is not supported'
            }

            it "passes: #{test_case['documentation']}" do
              skip(skippable[test_case['id']]) if skippable.key?(test_case['id'])

              config = {}
              mock_input(test_case, config)

              expected = credentials(test_case['expected'] || {})
              client = client_class.new(config)
              actual = client.config.credentials_provider.identity

              expect(actual.access_key_id).to eq(expected.access_key_id)
              expect(actual.secret_access_key).to eq(expected.secret_access_key)
              expect(actual.session_token).to eq(expected.session_token)
              expect(actual.account_id).to eq(expected.account_id)
            end
          end
        end
      end
    end
  end
end
