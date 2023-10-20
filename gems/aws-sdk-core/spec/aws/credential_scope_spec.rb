# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  describe 'credential scope' do
    file = File.expand_path('credential_scope_tests.json', __dir__)
    test_cases = Aws::Json.load_file(file)['testCases']

    def setup_env(env)
      env.each do |k, v|
        ENV[k] = v
      end
    end

    def setup_profile(profile)
      # can't mock file because of how sample api is loaded
      shared_credentials = double(
        'SharedCredentials',
        credentials: Credentials.new(
          profile['aws_access_key_id'],
          profile['aws_secret_access_key'],
          credential_scope: profile['aws_credential_scope']
        ),
        set?: true
      )
      allow(Aws::SharedCredentials)
        .to receive(:new).and_return(shared_credentials)
    end

    def setup_client(client_config)
      config_map = {
        'region' => :region,
        'credentialScope' => :credential_scope,
        'accessKeyId' => :access_key_id,
        'secretAccessKey' => :secret_access_key
      }
      config = {}
      client_config.each do |k, v|
        config[config_map[k]] = v
      end
      ApiHelper.sample_service::Client.new(**config)
    end

    test_cases.each do |test_case|
      it "passes test case: #{test_case['documentation']}" do
        setup_env(test_case['environmentVariables'])
        setup_profile(test_case['profileVariables'])
        client = setup_client(test_case['programmaticConfigVariables'])
        expect = test_case['expect']

        if expect.key?('credentialScope')
          expected_scope = expect['credentialScope']
          expect(client.config.credentials.credentials.credential_scope)
            .to eq(expected_scope)
        else
          raise 'Unhandled expectation in credential_scope_spec'
        end
      end
    end
  end
end
