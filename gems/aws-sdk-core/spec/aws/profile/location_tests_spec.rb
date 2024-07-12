# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  describe ProfileFileFactory do
    subject { described_class }

    context '#create' do
      file = File.join(File.dirname(__FILE__),'config-file-location-tests.json')
      test_cases = JSON.load_file(file)['tests']

      def with_env(env, &block)
        env.each do |key, value|
          ENV[key] = value
        end
        block.call
        env.each do |key, _|
          ENV.delete(key)
        end
      end

      test_cases.each do |test_case|
        it "passes: #{test_case['name']}" do
          allow(Dir).to receive(:home).and_return(test_case['languageSpecificHome'])
          expect(Pathname).to receive(:new).with(test_case['configLocation']).and_return(double(readable?: true, read: ''))
          expect(Pathname).to receive(:new).with(test_case['credentialsLocation']).and_return(double(readable?: true, read: ''))
          factory = subject.new
          with_env(test_case['environment']) do
            factory.create
          end
        end
      end
    end
  end
end