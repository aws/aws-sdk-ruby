# frozen_string_literal: true

module AwsSdkCodeGenerator
  module Views
    class EndpointsModule < View
      # @option options [required, Service] :service
      def initialize(options)
        @service = options.fetch(:service)

        @parameters = @service.endpoint_rules.fetch('parameters', {})

        @endpoint_classes = @service.api['operations'].map do
          |name, op|
          EndpointClass.new(
            name: name,
            parameters: endpoint_parameters_for_operation(op)
          )
        end.reject { |ec| ec.parameters.empty? }
      end

      # @return [Array<EndpointClass>]
      attr_reader :endpoint_classes

      # @return [String|nil]
      def generated_src_warning
        return if @service.protocol == 'api-gateway'
        GENERATED_SRC_WARNING
      end

      def module_name
        @service.module_name
      end

      class EndpointClass
        def initialize(options)
          @name = options[:name]
          @operation = Underscore.underscore(@name)
          @parameters = options[:parameters]
        end

        # @return [String]
        attr_reader :name

        # @return [String]
        attr_reader :operation

        # @return [Array<EndpointParameter>]
        attr_reader :parameters
      end

      private

      def endpoint_parameters_for_operation(operation)
        @parameters.map do |param_name, param_data|
          value, source = EndpointParameter.endpoint_parameter_value(
            @service, param_name, param_data, operation
          )

          EndpointParameter.new(
            param_name,
            param_data,
            value,
            source
          )
        end.select { |p| p.source == 'operation' }
      end
    end
  end
end
