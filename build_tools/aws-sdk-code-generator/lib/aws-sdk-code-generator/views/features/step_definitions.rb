# frozen_string_literal: true

module AwsSdkCodeGenerator
  module Views
    module Features
      class StepDefinitions < View

        # @param [Hash] options
        # @option options [required, Service] :service
        def initialize(options)
          service = options.fetch(:service)
          @var_name = service.identifier
          @module_name = service.module_name
          smoke_tests = service.smoke_tests
          if smoke_tests
            @client_region = smoke_tests['defaultRegion']
            @client_endpoint = smoke_tests['defaultEndpoint']
          end
        end

        attr_reader :var_name, :module_name, :client_region, :client_endpoint

      end
    end
  end
end
