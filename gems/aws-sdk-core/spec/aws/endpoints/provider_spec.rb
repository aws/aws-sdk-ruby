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
              endpoint = subject.resolve_endpoint(test_case['params'])
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


      # matchers_path = File.expand_path('../endpoint_matchers_tests.json', __FILE__)
      # matcher_tests = JSON.load(File.read(matchers_path))
      #
      # matcher_tests.each do |blob|
      #   rule_set = blob['ruleSet']
      #   rules = rule_set['rules']
      #   parameters = rule_set['parameters']
      #   test_cases = blob['testCases']
      #
      #   provider = Aws::EndpointProvider.new(rules: rules)
      #
      #   test_cases.each do |test|
      #     it "passes: #{test['description']}" do
      #       expect = test['expect']
      #       if (ok = expect['ok'])
      #         endpoint = provider.build(test['params'])
      #         expect(endpoint.url).to eq(ok['url'])
      #         expect(endpoint.auth_schemes).to eq(ok['authSchemes'])
      #         expect(endpoint.auth_params).to eq(ok['authParams'])
      #         expect(endpoint.headers).to eq(ok['headers'])
      #       elsif (error = expect['error'])
      #         expect do
      #           provider.build(test['params'])
      #         end.to raise_error(ArgumentError)
      #       end
      #     end
      #   end
      # end
      #
      # arn_path = File.expand_path('../endpoint_arn_tests.json', __FILE__)
      # arn_tests = JSON.load(File.read(arn_path))
      #
      # arn_tests.each do |blob|
      #   rule_set = blob['ruleSet']
      #   rules = rule_set['rules']
      #   parameters = rule_set['parameters']
      #   test_cases = blob['testCases']
      #
      #   provider = Aws::EndpointProvider.new(rules: rules)
      #
      #   test_cases.each do |test|
      #     it "passes: #{test['description']}" do
      #       expect = test['expect']
      #       if (ok = expect['ok'])
      #         endpoint = provider.build(test['params'])
      #         expect(endpoint.url).to eq(ok['url'])
      #         expect(endpoint.auth_schemes).to eq(ok['authSchemes'])
      #         expect(endpoint.auth_params).to eq(ok['authParams'])
      #         expect(endpoint.headers).to eq(ok['headers'])
      #       elsif (error = expect['error'])
      #         expect do
      #           provider.build(test['params'])
      #         end.to raise_error(ArgumentError)
      #       end
      #     end
      #   end
      # end
    end
  end
end
