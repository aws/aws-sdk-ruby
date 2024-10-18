# frozen_string_literal: true

module AwsSdkCodeGenerator
  module Views
    class EndpointsModule < View
      # @option options [required, Service] :service
      def initialize(options)
        @service = options.fetch(:service)

        @parameters = @service.endpoint_rules.fetch('parameters', {})

        @endpoint_classes = @service.api['operations'].each.with_object([]) do
          |(name, op), classes|
          endpoint_class = EndpointClass.new(
            name: name,
            parameters: endpoint_parameters_for_operation(op)
          )
          classes << endpoint_class unless endpoint_class.parameters.empty?
        end
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

      def operation_specific_parameters?
        @endpoint_classes.empty?
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
        @parameters.each.with_object([]) do |(param_name, param_data), parameters|
          p = EndpointParameter.new(
            param_name,
            param_data,
            @service,
            operation
          )
          parameters << p if p.source == 'operation'
        end
      end
    end
  end
end
