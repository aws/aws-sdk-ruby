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
        end

        attr_reader :var_name
        attr_reader :module_name

      end
    end
  end
end
