# frozen_string_literal: true

module AwsSdkCodeGenerator
  module Views
    module Features
      class Smoke < View

        # @param [Hash] options
        # @option options [required, Service] :service
        def initialize(options)
          service = options.fetch(:service)
          @custom = service.protocol == 'api-gateway'
          @service = service.name

          # This will only be called if this is defined
          smoke_json = service.smoke_tests
          @client_region = smoke_json["defaultRegion"]
          @client_endpoint = smoke_json["endpoint"]
          @smoke_tests = smoke_json["testCases"].map do |test|
            h = {
              operation: underscore(test["operationName"]),
              smoke_test_tags: "@#{service.identifier} @smoke",
            }
            if test["errorExpectedFromService"]
              h[:error_expectation] = "I expect an error was raised"
              h[:scenario_string] = "Call Aws::#{service.module_name}::Client##{h[:operation]} and expect it to fail"
            else
              h[:error_expectation] = "I expect an error was not raised"
              h[:scenario_string] = "Call #{service.module_name}::Client##{h[:operation]} and expect it to succeed"
            end
            h[:param_hash] = test["input"].inject({}) do |acc, kv|
              raw_key, value = kv
              key = underscore(raw_key)
              acc[key] = value
              acc
            end.to_json
            h
          end
        end

        attr_reader :service, :client_region, :client_endpoint, :smoke_tests

        # @return [String|nil]
        def generated_src_warning
          return if @custom
          GENERATED_SRC_WARNING
        end

      end
    end
  end
end
