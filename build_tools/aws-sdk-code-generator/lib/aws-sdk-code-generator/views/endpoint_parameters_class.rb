# frozen_string_literal: true

module AwsSdkCodeGenerator
  module Views
    class EndpointParametersClass < View

      # @option options [required, Service] :service
      def initialize(options)
        @service = options.fetch(:service)
        if (parameters = @service.endpoint_rules['parameters'])
          @parameters = parameters.map do |k,p|
            EndpointParameter.new(k, p)
          end
        end
      end

      # @return [Array<EndpointParameter>]
      attr_reader :parameters

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
