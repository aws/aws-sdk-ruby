# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  describe ProfileFile do
    subject { described_class }

    context '#profiles' do
      file = File.join(File.dirname(__FILE__),'config-file-parser-tests.json')
      test_cases = JSON.load_file(file)['tests']

      def parse(input)
        config_file = input['configFile']
        credentials_file = input['credentialsFile']
        if config_file
          raw_config_file = ProfileFileParser.new(config_file).parse
          standardized_config_file = ProfileFileStandardizer.new(raw_config_file, :config).standardize
        end
        if credentials_file
          raw_credentials_file = ProfileFileParser.new(credentials_file).parse
          standardized_credentials_file = ProfileFileStandardizer.new(raw_credentials_file, :credentials).standardize
        end
        subject.new(standardized_config_file || {}, standardized_credentials_file || {}).profiles
      end

      test_cases.each do |test_case|
        it "passes: #{test_case['name']}" do
          expected = test_case['output']

          if expected.key?('profiles')
            actual = parse(test_case['input'])
            expect(actual).to eq(expected['profiles'])
          elsif expected.key?('errorContaining')
            expect { parse(test_case['input']) }
              .to raise_error(
                ArgumentError, include(expected['errorContaining'])
              )
          end
        end
      end
    end
  end
end