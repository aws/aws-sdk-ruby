# frozen_string_literal: true

module AwsSdkCodeGenerator
  module Views
    class EndpointParametersClass < View

      # @option options [required, Service] :service
      def initialize(options)
        @service = options.fetch(:service)
        if (parameters = @service.endpoint_rules&.fetch('parameters'))
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

      class EndpointParameter
        def initialize(name, definition={})
          @name = name
          @type = definition['type']
          @built_in = definition['builtIn']
          @default = definition['default']
          @required = definition['required']
          @documentation = "# @!attribute #{underscore_name}\n"
          if definition['documentation']
            @documentation += "  #   #{definition['documentation']}\n"
          end
          if deprecated = definition['deprecated']
            @documentation += "  #\n  #   @deprecated\n"
            if deprecated['message']
              @documentation += "  #     #{deprecated['message']}\n"
            end
            if deprecated['since']
              @documentation += "  #     Since: #{deprecated['since']}\n"
            end
          end
          @documentation += "  #\n  #   @return [#{@type}]\n  #"
        end

        # @return [String]
        attr_reader :name

        # @return [String]
        attr_reader :documentation

        # @return [Boolean]
        attr_reader :required

        # @return [String,Boolean]
        attr_reader :default

        def default?
          !@default.nil?
        end

        def boolean_default?
          default? && (@default == true || @default == false)
        end

        def underscore_name
          Underscore.underscore(name)
        end
      end

    end
  end
end
