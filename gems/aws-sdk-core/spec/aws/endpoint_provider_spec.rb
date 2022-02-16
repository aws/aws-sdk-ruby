# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  describe EndpointMatchers do
    matchers_path = File.expand_path('../endpoint_matchers_tests.json', __FILE__)
    matcher_tests = JSON.load(File.read(matchers_path))

    matcher_tests.each do |blob|
      rule_set = blob['ruleSet']
      rules = rule_set['rules']
      parameters = rule_set['parameters']
      test_cases = blob['testCases']

      provider = Aws::EndpointProvider.new(rules: rules)

      test_cases.each do |test|
        it "passes: #{test['description']}" do
          expect = test['expect']
          if (ok = expect['ok'])
            endpoint = provider.build(test['params'])
            expect(endpoint.url).to eq(ok['url'])
            expect(endpoint.auth_schemes).to eq(ok['authSchemes'])
            expect(endpoint.auth_params).to eq(ok['authParams'])
            expect(endpoint.headers).to eq(ok['headers'])
          elsif (error = expect['error'])
            expect do
              provider.build(test['params'])
            end.to raise_error(ArgumentError)
          end
        end
      end
    end

    arn_path = File.expand_path('../endpoint_arn_tests.json', __FILE__)
    arn_tests = JSON.load(File.read(arn_path))

    arn_tests.each do |blob|
      rule_set = blob['ruleSet']
      rules = rule_set['rules']
      parameters = rule_set['parameters']
      test_cases = blob['testCases']

      provider = Aws::EndpointProvider.new(rules: rules)

      test_cases.each do |test|
        it "passes: #{test['description']}" do
          expect = test['expect']
          if (ok = expect['ok'])
            endpoint = provider.build(test['params'])
            expect(endpoint.url).to eq(ok['url'])
            expect(endpoint.auth_schemes).to eq(ok['authSchemes'])
            expect(endpoint.auth_params).to eq(ok['authParams'])
            expect(endpoint.headers).to eq(ok['headers'])
          elsif (error = expect['error'])
            expect do
              provider.build(test['params'])
            end.to raise_error(ArgumentError)
          end
        end
      end
    end
  end
end
