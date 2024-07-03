# frozen_string_literal: true

require_relative '../spec_helper'

# TODO: could move this to a helper module if needed
def test_cases
  dir = File.expand_path('../../test-cases', __FILE__)
  file = JSON.load_file("#{dir}/config-file-parser-tests.json")
  file['tests']
end

module Aws
  describe IniParser do
    subject { described_class }

    context '.ini_parse' do
      test_cases.each do |test_case|
        it(test_case['name']) do
          input_file = test_case['input']['configFile']
          expected_output = test_case['output']
          output = subject.ini_parse(input_file)

          if (expected_profiles = expected_output['profiles'])
            # covering empty files
            if expected_profiles.empty?
              expect(output).to be_empty
            else
              expected_profiles.each do |profile, properties|
                # handle empty profiles
                if profile.empty?
                  expect(output[profile]).to be_nil
                else
                  properties.each do |k, v|
                    expect(output[profile][k]).to eql(v)
                  end
                end
              end
            end
          elsif (expected_error = expected_output['errorContaining'])
            # TODO: need to ensure this error type makes sense
            expect(output).to raise_error(ArgumentError, expected_error)
          end
        end
      end
    end
  end
end
