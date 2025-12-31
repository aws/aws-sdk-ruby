# frozen_string_literal: true

module AwsSdkCodeGenerator
  module Views
    module Features
      class StepDefinitions < View

        # @param [Hash] options
        # @option options [required, Service] :service
        def initialize(options)
          @service = options.fetch(:service)
          @var_name = service.identifier
          @module_name = service.module_name
        end

        attr_reader :var_name, :module_name, :service
      end
    end
  end
end
