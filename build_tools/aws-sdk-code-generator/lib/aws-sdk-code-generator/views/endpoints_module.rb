# frozen_string_literal: true

module AwsSdkCodeGenerator
  module Views
    class EndpointsModule < View

      # @option options [required, Service] :service
      def initialize(options)
        @service = options.fetch(:service)
      end

      # @return [String|nil]
      def generated_src_warning
        return if @service.protocol == 'api-gateway'
        GENERATED_SRC_WARNING
      end

      def module_name
        @service.module_name
      end

    end
  end
end
