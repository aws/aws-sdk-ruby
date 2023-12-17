# frozen_string_literal: true

module AwsSdkCodeGenerator
  module Views
    module RBS
      class ErrorsModule < View
        attr_reader :errors

        def initialize(service:)
          @service = service
          @errors = AwsSdkCodeGenerator::RBS::ErrorList.new(
            api: service.api,
            module_name: service.module_name
          ).to_a
        end

        # @return [String|nil]
        def generated_src_warning
          GENERATED_SRC_WARNING
        end

        def service_name
          @service.name
        end
      end
    end
  end
end
