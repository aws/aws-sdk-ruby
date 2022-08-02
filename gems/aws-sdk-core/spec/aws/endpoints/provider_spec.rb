# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Endpoints
    describe Provider do
      Dir.glob(File.expand_path('../valid-rules/*.json', __FILE__)).each do |path|
        file_name = File.basename(path)
        test_cases_path = File.join(
          File.expand_path(File.join(path, '../../test-cases')),
          file_name
        )
        # If similarly named file doesn't exist in test-case, just skip
        next unless File.exist?(test_cases_path)

        test_cases = Aws::Json.load_file(test_cases_path)

        rule_set_json = Aws::Json.load_file(path)

        sample_module = ApiHelper.sample_service(endpoint_rules: rule_set_json)

        rule_set = Aws::Endpoints::RuleSet.new(
          version: rule_set_json['version'],
          service_id: rule_set_json['serviceId'],
          parameters: rule_set_json['parameters'],
          rules: rule_set_json['rules']
        )
        subject { Provider.new(rule_set) }

        test_cases['testCases'].each do |test_case|
          it "passes: '#{test_case['documentation']}' from #{file_name}" do
            expect = test_case['expect']
            if (url = expect['url'])
              params = sample_module.const_get(:EndpointParameters).new(test_case['params'])
              endpoint = subject.resolve_endpoint(params)
              expect(endpoint.url).to eq(url)
              # expect(endpoint.auth_schemes).to eq(ok['authSchemes'])
              # expect(endpoint.auth_params).to eq(ok['authParams'])
              # expect(endpoint.headers).to eq(ok['headers'])
            elsif (error = expect['error'])
              expect do
                subject.resolve_endpoint(test_case['params'])
              end.to raise_error(ArgumentError, error)
            end
          end
        end
      end
    end
  end
end
