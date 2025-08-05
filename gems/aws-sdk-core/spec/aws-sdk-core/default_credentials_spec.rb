# frozen_string_literal: true

require_relative '../spec_helper'
require_relative '../../lib/aws-sdk-core/plugins/shared_config'
require_relative '../../lib/aws-sdk-core/plugins/sigv4'
require_relative '../../lib/aws-sdk-core/plugins/user_agent'

module Aws
  module Core
    describe DefaultCredentials do
      def metrics_from_user_agent_header(resp)
        header = resp.context.http_request.headers['User-Agent']
        # Parse list of metrics from User-Agent header
        header.match(%r{ m/([A-Za-z0-9+-,]+)})[1].split(',')
      end

      let(:shapes) do
        shapes = ClientHelper.sample_shapes
        shapes['smithy.ruby.tests#SampleClient']['traits']['aws.auth#sigv4'] = { 'name' => 'sample client' }
        shapes
      end

      let(:sample_client) { ClientHelper.sample_client(shapes: shapes) }

      let(:client_class) { sample_client.const_get(:Client) }

      let(:client) { client_class.new }

      describe '#code_static_credentials' do
        it 'resolves static credentials from code' do
          client = client_class.new(
            access_key_id: 'akid',
            secret_access_key: 'secret',
            session_token: 'session',
            account_id: '123456789012'
          )
          creds = client.config.credentials.identity
          expect(creds.access_key_id).to eq('akid')
          expect(creds.secret_access_key).to eq('secret')
          expect(creds.session_token).to eq('session')
          expect(creds.account_id).to eq('123456789012')
        end

        it 'resolves static credentials with minimum inputs required' do
          client = client_class.new(
            access_key_id: 'akid',
            secret_access_key: 'secret',
            session_token: nil,
            account_id: nil
          )
          creds = client.config.credentials.identity
          expect(creds.access_key_id).to eq('akid')
          expect(creds.secret_access_key).to eq('secret')
          expect(creds.session_token).to eq(nil)
          expect(creds.account_id).to eq(nil)
        end

        it 'fails to resolve static credentials when there are no inputs' do
          client = client_class.new(
            access_key_id: nil,
            secret_access_key: nil,
            session_token: nil,
            account_id: nil
          )
          expect(client.config.credentials.identity).to be_nil
        end

        it 'fails to resolve static credentials when required inputs are missing' do
          client = client_class.new(
            access_key_id: nil,
            secret_access_key: nil,
            session_token: 'session',
            account_id: '123456789012'
          )
          expect(client.config.credentials.identity).to be_nil
        end

        it 'fails to resolve static credentials when access key id is missing' do
          client = client_class.new(
            access_key_id: nil,
            secret_access_key: 'secret',
            session_token: 'session',
            account_id: '123456789012'
          )
          expect(client.config.credentials.identity).to be_nil
        end

        it 'fails to resolve static credentials when secret access key is missing' do
          client = client_class.new(
            access_key_id: 'akid',
            secret_access_key: nil,
            session_token: 'session',
            account_id: '123456789012'
          )
          expect(client.config.credentials.identity).to be_nil
        end

        it 'tracks the correct feature id' do
          client = client_class.new(
            access_key_id: 'akid',
            secret_access_key: 'secret',
            session_token: 'session',
            account_id: '123456789012',
            stub_responses: true
          )
          expect(metrics_from_user_agent_header(client.operation)).to include('e')
        end
      end

      describe '#env_static_credentials' do
        it 'resolves static credentials from environment' do
          ENV['AWS_ACCESS_KEY_ID'] = 'akid'
          ENV['AWS_SECRET_ACCESS_KEY'] = 'secret'
          ENV['AWS_SESSION_TOKEN'] = 'session'
          ENV['AWS_ACCOUNT_ID'] = '123456789012'
          creds = client.config.credentials.identity
          expect(creds.access_key_id).to eq('akid')
          expect(creds.secret_access_key).to eq('secret')
          expect(creds.session_token).to eq('session')
          expect(creds.account_id).to eq('123456789012')
        end

        it 'resolves static credentials with minimum inputs required' do
          ENV['AWS_ACCESS_KEY_ID'] = 'akid'
          ENV['AWS_SECRET_ACCESS_KEY'] = 'secret'
          creds = client.config.credentials.identity
          expect(creds.access_key_id).to eq('akid')
          expect(creds.secret_access_key).to eq('secret')
          expect(creds.session_token).to eq(nil)
          expect(creds.account_id).to eq(nil)
        end

        it 'fails to resolve static credentials when there are no inputs' do
          stub_const('ENV', {})
          expect(client.config.credentials.identity).to be_nil
        end

        it 'fails to resolve static credentials when required inputs are missing' do
          ENV['AWS_SESSION_TOKEN'] = 'session'
          ENV['AWS_ACCOUNT_ID'] = '123456789012'
          expect(client.config.credentials.identity).to be_nil
        end

        it 'fails to resolve static credentials when access key id is missing' do
          ENV['AWS_SECRET_ACCESS_KEY'] = 'secret'
          ENV['AWS_SESSION_TOKEN'] = 'session'
          ENV['AWS_ACCOUNT_ID'] = '123456789012'
          expect(client.config.credentials.identity).to be_nil
        end

        it 'fails to resolve static credentials when secret access key is missing' do
          ENV['AWS_ACCESS_KEY_ID'] = 'akid'
          ENV['AWS_SESSION_TOKEN'] = 'session'
          ENV['AWS_ACCOUNT_ID'] = '123456789012'
          expect(client.config.credentials.identity).to be_nil
        end

        it 'tracks the correct feature id' do
          ENV['AWS_ACCESS_KEY_ID'] = 'akid'
          ENV['AWS_SECRET_ACCESS_KEY'] = 'secret'
          ENV['AWS_SESSION_TOKEN'] = 'session'
          ENV['AWS_ACCOUNT_ID'] = '123456789012'
          client = client_class.new(
            access_key_id: nil,
            secret_access_key: nil,
            stub_responses: true
          )
          expect(metrics_from_user_agent_header(client.operation)).to include('g')
        end
      end

      describe '#profile_static_credentials' do
        it 'resolves static credentials from profile' do
          shared_config = <<~CONFIG
            [profile default]
            aws_access_key_id = ACCESS_KEY_PROFILE
            aws_secret_access_key = SECRET_KEY_PROFILE
            aws_session_token = TOKEN_PROFILE
            aws_account_id = 123456789012
          CONFIG
          mock_shared_config(shared_config)
          client = client_class.new
          creds = client.config.credentials.identity
          expect(creds.access_key_id).to eq('ACCESS_KEY_PROFILE')
          expect(creds.secret_access_key).to eq('SECRET_KEY_PROFILE')
          expect(creds.session_token).to eq('TOKEN_PROFILE')
        end

        it 'resolves static credentials with minimum inputs required' do
          shared_config = <<~CONFIG
            [profile default]
            aws_access_key_id = ACCESS_KEY_PROFILE
            aws_secret_access_key = SECRET_KEY_PROFILE
          CONFIG
          mock_shared_config(shared_config)
          creds = client.config.credentials.identity
          expect(creds.access_key_id).to eq('ACCESS_KEY_PROFILE')
          expect(creds.secret_access_key).to eq('SECRET_KEY_PROFILE')
          expect(creds.session_token).to eq(nil)
          expect(creds.account_id).to eq(nil)
        end

        it 'fails to resolve static credentials when there are no inputs' do
          shared_config = <<~CONFIG
            [profile default]
          CONFIG
          mock_shared_config(shared_config)
          expect(client.config.credentials.identity).to be_nil
        end

        it 'fails to resolve static credentials when required inputs are missing' do
          shared_config = <<~CONFIG
            [profile default]
            aws_session_token = TOKEN_PROFILE
            aws_account_id = 123456789012
          CONFIG
          mock_shared_config(shared_config)
          expect(client.config.credentials.identity).to be_nil
        end

        it 'fails to resolve static credentials when access key id is missing' do
          shared_config = <<~CONFIG
            [profile default]
            aws_secret_access_key = SECRET_KEY_PROFILE
            aws_session_token = TOKEN_PROFILE
            aws_account_id = 123456789012
          CONFIG
          mock_shared_config(shared_config)
          expect(client.config.credentials.identity).to be_nil
        end

        it 'fails to resolve static credentials when secret access key is missing' do
          shared_config = <<~CONFIG
            [profile default]
            aws_access_key_id = ACCESS_KEY_PROFILE
            aws_session_token = TOKEN_PROFILE
            aws_account_id = 123456789012
          CONFIG
          mock_shared_config(shared_config)
          expect(client.config.credentials.identity).to be_nil
        end

        it 'fails to resolve static credentials when profile does not exist' do
          shared_config = <<~CONFIG
            [profile default]
            aws_access_key_id = ACCESS_KEY_PROFILE
            aws_secret_access_key = SECRET_KEY_PROFILE
            aws_session_token = TOKEN_PROFILE
            aws_account_id = 123456789012
          CONFIG
          mock_shared_config(shared_config)
          client = client_class.new(profile: 'nonexistent')
          expect(client.config.credentials.identity).to be_nil
        end

        it 'tracks the correct feature id' do
          shared_config = <<~CONFIG
            [profile default]
            aws_access_key_id = ACCESS_KEY_PROFILE
            aws_secret_access_key = SECRET_KEY_PROFILE
            aws_session_token = TOKEN_PROFILE
            aws_account_id = 123456789012
          CONFIG
          mock_shared_config(shared_config)
          client = client_class.new(
            access_key_id: nil,
            secret_access_key: nil,
            stub_responses: true
          )
          expect(metrics_from_user_agent_header(client.operation)).to include('n')
        end
      end

      describe '#profile_process_credentials' do
        it 'resolves process credentials from profile' do
          shared_config = <<~CONFIG
            [profile default]
            credential_process = echo '{ "Version": 1, "AccessKeyId": "AK_PROC", "SecretAccessKey": "SECRET_AK_PROC", "SessionToken": "TOKEN_PROC" }'
          CONFIG
          mock_shared_config(shared_config)
          client = client_class.new
          creds = client.config.credentials.identity
          expect(creds.access_key_id).to eq('AK_PROC')
          expect(creds.secret_access_key).to eq('SECRET_AK_PROC')
          expect(creds.session_token).to eq('TOKEN_PROC')
        end

        it 'fails to resolve process credentials when credential_process is missing' do
          shared_config = <<~CONFIG
            [profile default]
          CONFIG
          mock_shared_config(shared_config)
          expect(client.config.credentials.identity).to be_nil
        end

        it 'fails to resolve process credentials when profile does not exist' do
          shared_config = <<~CONFIG
            [profile default]
            credential_process = echo '{ "Version": 1, "AccessKeyId": "AK_PROC", "SecretAccessKey": "SECRET_AK_PROC", "SessionToken": "TOKEN_PROC" }'
          CONFIG
          mock_shared_config(shared_config)
          client = client_class.new(profile: 'nonexistent')
          expect(client.config.credentials.identity).to be_nil
        end

        it 'tracks the correct feature id' do
          shared_config = <<~CONFIG
            [profile default]
            credential_process = echo '{ "Version": 1, "AccessKeyId": "AK_PROC", "SecretAccessKey": "SECRET_AK_PROC", "SessionToken": "TOKEN_PROC" }'
          CONFIG
          mock_shared_config(shared_config)
          client = client_class.new(
            access_key_id: nil,
            secret_access_key: nil,
            stub_responses: true
          )
          expect(metrics_from_user_agent_header(client.operation)).to include('v', 'w')
        end
      end

      describe '#container_credentials' do
        it 'resolves container credentials with relative uri' do
          path = '/latest/credentials?id=foobarbaz'
          resp = <<~JSON.strip
            {
              "RoleArn": "arn:aws:iam::123456789012:role/BarFooRole",
              "AccessKeyId": "ACCESS_KEY_CONTAINER",
              "SecretAccessKey": "SECRET_AK_CONTAINER",
              "Token": "TOKEN_CONTAINER",
              "Expiration": "#{(Time.now.utc + 3600).strftime('%Y-%m-%dT%H:%M:%SZ')}"
            }
          JSON
          ENV['AWS_CONTAINER_CREDENTIALS_RELATIVE_URI'] = path
          stub_request(:get, "http://169.254.170.2#{path}")
            .to_return(status: 200, body: resp)
          client = client_class.new
          creds = client.config.credentials.identity
          expect(creds.access_key_id).to eq('ACCESS_KEY_CONTAINER')
          expect(creds.secret_access_key).to eq('SECRET_AK_CONTAINER')
          expect(creds.session_token).to eq('TOKEN_CONTAINER')
        end

        it 'resolves container credentials with full uri' do
          path = 'http://169.254.170.2/latest/credentials?id=foobarbaz'
          resp = <<~JSON.strip
            {
              "RoleArn": "arn:aws:iam::123456789012:role/BarFooRole",
              "AccessKeyId": "ACCESS_KEY_CONTAINER",
              "SecretAccessKey": "SECRET_AK_CONTAINER",
              "Token": "TOKEN_CONTAINER",
              "Expiration": "#{(Time.now.utc + 3600).strftime('%Y-%m-%dT%H:%M:%SZ')}"
            }
          JSON
          ENV['AWS_CONTAINER_CREDENTIALS_FULL_URI'] = path
          stub_request(:get, path)
            .to_return(status: 200, body: resp)
          client = client_class.new
          creds = client.config.credentials.identity
          expect(creds.access_key_id).to eq('ACCESS_KEY_CONTAINER')
          expect(creds.secret_access_key).to eq('SECRET_AK_CONTAINER')
          expect(creds.session_token).to eq('TOKEN_CONTAINER')
        end

        it 'fails to resolve container credentials when neither relative nor full uri is set' do
          stub_const('ENV', {})
          expect(client.config.credentials.identity).to be_nil
        end

        it 'tracks the correct feature id' do
          path = '/latest/credentials?id=foobarbaz'
          resp = <<~JSON.strip
            {
              "RoleArn": "arn:aws:iam::123456789012:role/BarFooRole",
              "AccessKeyId": "ACCESS_KEY_CONTAINER",
              "SecretAccessKey": "SECRET_AK_CONTAINER",
              "Token": "TOKEN_CONTAINER",
              "Expiration": "#{(Time.now.utc + 3600).strftime('%Y-%m-%dT%H:%M:%SZ')}"
            }
          JSON
          ENV['AWS_CONTAINER_CREDENTIALS_RELATIVE_URI'] = path
          stub_request(:get, "http://169.254.170.2#{path}")
            .to_return(status: 200, body: resp)
          client = client_class.new(
            access_key_id: nil,
            secret_access_key: nil,
            stub_responses: true
          )
          expect(metrics_from_user_agent_header(client.operation)).to include('z')
        end
      end

      describe '#identity' do
        file = File.join(File.dirname(__FILE__),
                         'default_credentials_tests.json')
        test_cases = JSON.load_file(file)

        def credentials(values)
          Identities::Credentials.new(
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
            when 'processResponse'
              process_provider = double(
                'ProcessCredentials',
                identity: credentials(values)
              )
              allow(ProcessCredentials)
                .to receive(:new).and_return(process_provider)
              allow(process_provider).to receive(:features=)
            when 'httpResponse'
              container_provider = double(
                'ContainerCredentials',
                identity: credentials(values)
              )
              allow(ContainerCredentials)
                .to receive(:new).and_return(container_provider)
            when 'stsResponse', 'ssoResponse', 'imdsResponse'
              # Not implemented yet
              next
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
            '13' => 'Windows AWS SDK store is not supported',
            '4' => 'ENV WebID: Not implemented',
            '6' => 'Source Profile: Not implemented',
            '7' => 'Credential Source: Not implemented',
            '8' => 'WebID: Not implemented',
            '9' => 'SSO: Not implemented',
            '15' => 'IMDS: Not implemented',
            '16' => 'No credentials: Logic uses IMDS, not implemented'
          }

          it "passes: #{test_case['documentation']}" do
            skip(skippable[test_case['id']]) if skippable.key?(test_case['id'])

            config = { profile: 'default' }
            mock_input(test_case, config)

            expected = credentials(test_case['expected'] || {})
            client = client_class.new(config)
            actual = client.config.credentials.identity

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
