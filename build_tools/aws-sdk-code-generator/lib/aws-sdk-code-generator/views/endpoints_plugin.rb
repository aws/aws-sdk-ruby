# frozen_string_literal: true

module AwsSdkCodeGenerator
  module Views
    class EndpointsPlugin < View
      # @option options [required, Service] :service
      def initialize(options)
        @service = options.fetch(:service)
        if (client_options = @service.api['clientContextParams'])
          endpoint_parameters = @service.endpoint_rules.fetch('parameters', {})

          @endpoint_options = client_options.each.with_object([]) do |(name, _data), array|
            param_data = endpoint_parameters[name]

            next if param_data['builtIn']

            array << EndpointOption.new(
              name: Underscore.underscore(name),
              docstring: param_data['documentation'],
              doc_type: param_data['type'],
              default: param_data['default']
            )
          end
        end
        @endpoint_classes = @service.api['operations'].each.with_object([]) do
          |(op, _api), array|
          array << EndpointClass.new(
            operation_name: Underscore.underscore(op),
            class_name: op
          )
        end
      end

      # @return [Array<EndpointClass>]
      attr_reader :endpoint_classes

      # @return [Array<EndpointOption>, nil]
      attr_reader :endpoint_options

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
          @operation_name = options[:operation_name]
          @class_name = options[:class_name]
        end

        # @return [String]
        attr_reader :operation_name

        # @return [String]
        attr_reader :class_name
      end

      class EndpointOption
        def initialize(options)
          @name = options[:name]
          @doc_type = options[:doc_type]
          @default = options[:default].nil? ? 'nil' : options[:default]
          @docstring = options[:docstring]
        end

        # @return [String]
        attr_reader :name

        # @return [String]
        attr_reader :doc_type

        # @return [Boolean,String]
        attr_reader :default

        # @return [String]
        attr_reader :docstring
      end
    end
  end
end
