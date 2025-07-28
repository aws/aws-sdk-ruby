# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module Core
    describe SharedConfig do
      subject { described_class }

      before do
        allow(Kernel).to receive(:warn)
      end

      before(:each) do
        # Unset these environment variables to ensure they don't interfere
        stub_const(
          'ENV',
          {
            'AWS_CONFIG_FILE' => nil,
            'AWS_SHARED_CREDENTIALS_FILE' => nil,
            'HOME' => nil,
            'USERPROFILE' => nil,
            'HOMEDRIVE' => nil,
            'HOMEPATH' => nil
          }
        )
      end

      context '#load' do
        file = File.join(File.dirname(__FILE__),
                         'shared_config_tests.json')
        test_cases = JSON.load_file(file)['tests']

        # Even for Windows paths, ruby uses /
        def normalize_path(path)
          path.gsub('\\', '/')
        end

        def normalize_env_paths(test_env)
          test_env.each_pair do |k, v|
            test_env[k] = normalize_path(v)
          end
        end

        # Simulates what Dir.home already does for Ruby
        def user_home_directory(test_env, language_specific_home)
          if test_env['HOME']
            test_env['HOME']
          elsif language_specific_home != 'ignored'
            language_specific_home
          elsif test_env['USERPROFILE']
            test_env['USERPROFILE']
          elsif test_env['HOMEDRIVE'] && test_env['HOMEPATH']
            test_env['HOMEDRIVE'] + test_env['HOMEPATH']
          end
        end

        test_cases.each do |test_case|
          it "passes: #{test_case['name']}" do
            env = normalize_env_paths(test_case['environment'])
            stub_const('ENV', env)

            language_specific_home = test_case['languageSpecificHome']
            language_specific_home = normalize_path(language_specific_home) if language_specific_home
            home_dir = user_home_directory(env, language_specific_home)
            allow(Dir).to receive(:home).and_return(home_dir)

            readable_file = double(readable?: true, read: '')
            config_file = normalize_path(test_case['configLocation'])
            credentials_file = normalize_path(test_case['credentialsLocation'])
            expect(Pathname)
              .to receive(:new).with(config_file).and_return(readable_file)
            expect(Pathname)
              .to receive(:new).with(credentials_file).and_return(readable_file)

            subject.load
          end
        end
      end
    end
  end
end