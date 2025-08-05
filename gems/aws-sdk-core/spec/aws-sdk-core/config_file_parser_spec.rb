# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module Core
    describe ConfigFileParser do
      before do
        allow(Kernel).to receive(:warn)
      end

      def parse(input)
        test_config_file = input['configFile']
        test_credentials_file = input['credentialsFile']
        if test_config_file
          config_profiles, sso_sessions = ConfigFileStandardizer.new(
            ConfigFileParser.new(test_config_file).parse,
            :config
          ).standardize
        end
        if test_credentials_file
          credentials_profiles = ConfigFileStandardizer.new(
            ConfigFileParser.new(test_credentials_file).parse,
            :credentials
          ).standardize
        end
        ConfigFile.new(
          config_profiles: config_profiles || {},
          credentials_profiles: credentials_profiles || {},
          sso_sessions: sso_sessions || {}
        )
      end

      context '#parse' do
        file = File.join(File.dirname(__FILE__), 'config_file_parser_tests.json')
        test_cases = JSON.load_file(file)['tests']

        test_cases.each do |test_case|
          it "passes: #{test_case['name']}" do
            expected = test_case['output']

            if expected.key?('errorContaining')
              error = expected['errorContaining']
              expect { parse(test_case['input']) }
                .to raise_error(InvalidSharedConfigError, include(error))
            else
              parsed = parse(test_case['input'])
              expect(parsed.profiles).to eq(expected['profiles']) if expected.key?('profiles')
              expect(parsed.sso_sessions).to eq(expected['ssoSessions']) if expected.key?('ssoSessions')
            end
          end
        end
      end
    end
  end
end
