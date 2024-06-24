# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Endpoints
    describe RulesProvider do
      Dir.glob(File.expand_path('../test-cases/*.json', __FILE__)).each do |path|
        file_name = File.basename(path)

        valid_rules_path = File.join(
          File.expand_path(File.join(path, '../../valid-rules')),
          file_name
        )
        # If similarly named file doesn't exist in valid-rules, just skip
        next unless File.exist?(valid_rules_path)

        rule_set_json = JSON.load_file(valid_rules_path)
        sample_module = ApiHelper.sample_service(endpoint_rules: rule_set_json)

        provider_class = sample_module.const_get(:EndpointProvider)
        subject = provider_class.new

        params_class = sample_module.const_get(:EndpointParameters)

        test_cases = JSON.load_file(path)
        test_cases['testCases'].each do |test_case|
          it "passes: '#{test_case['documentation']}' from #{file_name}" do
            # convert params to symbol keys and values
            params_hash = test_case['params'].map do |k, v|
              [AwsSdkCodeGenerator::Underscore.underscore(k).to_sym, v]
            end.to_h
            # create Endpoint Parameters struct
            params = params_class.new(**params_hash)

            expect = test_case['expect']
            if expect['url']
              endpoint = subject.resolve_endpoint(params)
              expect(endpoint.url).to eq(expect['url'])
              expect(endpoint.headers).to eq(expect['headers'])
              expect(endpoint.properties).to eq(expect['properties'])
            elsif expect['error']
              expect do
                subject.resolve_endpoint(params)
              end.to raise_error(ArgumentError, expect['error'])
            end
          end
        end
      end
    end
  end
end
