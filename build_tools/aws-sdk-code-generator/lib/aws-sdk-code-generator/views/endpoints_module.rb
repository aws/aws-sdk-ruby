# frozen_string_literal: true

module AwsSdkCodeGenerator
  module Views
    class EndpointsModule < View
      # @option options [required, Service] :service
      def initialize(options)
        @service = options.fetch(:service)

        @parameters = @service.endpoint_rules.fetch('parameters', {})

        @endpoint_classes = @service.api['operations'].each.with_object([]) do
          |(name, op), array|
          array << EndpointClass.new(
            name: name,
            parameters: endpoint_parameters_for_operation(op)
          )
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

      class EndpointClass
        def initialize(options)
          @name = options[:name]
          @parameters = options[:parameters]
        end

        # @return [String]
        attr_reader :name

        # @return [Array<EndpointParameter>]
        attr_reader :parameters
      end

      class EndpointParameter
        def initialize(options)
          @key = options[:key]
          @value = options[:value]
        end

        # @return [String]
        attr_accessor :key

        # @return [String]
        attr_accessor :value
      end


      private

      def endpoint_parameters_for_operation(operation)
        @parameters.each.with_object([]) do
          |(param_name, param_data), endpoint_parameters|
          endpoint_parameters << EndpointParameter.new(
            key: Underscore.underscore(param_name),
            value: endpoint_parameter_value(operation, param_name, param_data)
          )
        end
      end

      # Most to least
      # staticContextParams
      # contextParam
      # clientContextParams
      # Built-In Bindings
      # Built-in binding default values
      def endpoint_parameter_value(operation, param_name, param_data)
        value = client_context_param_value(param_data)
        value ||= context_param_value(operation, param_name)
        value ||= static_context_param(operation, param_name)
        value || 'nil'
      end

      def client_context_param_value(param_data)
        case param_data['builtIn']
        when 'AWS::Region'
          'context.config.region'
        when 'AWS::UseFIPS'
          'context.config.use_fips_endpoint'
        when 'AWS::UseDualStack'
          if @service.name == 'S3' || @service.name == 'S3Control'
            'context[:use_dualstack_endpoint]'
          else
            'context.config.use_dualstack_endpoint'
          end
        when 'AWS::STS::UseGlobalEndpoint'
          "context.config.sts_regional_endpoints == 'legacy'"
        when 'AWS::S3::UseGlobalEndpoint'
          "context.config.s3_us_east_1_regional_endpoint == 'legacy'"
        when 'AWS::S3::Accelerate'
          if @service.name == 'S3' || @service.name == 'S3Control'
            'context[:use_accelerate_endpoint]'
          else
            'context.config.use_accelerate_endpoint'
          end
        when 'AWS::S3::ForcePathStyle'
          'context.config.force_path_style'
        when 'AWS::S3::UseArnRegion'
          'context.config.s3_use_arn_region'
        when 'AWS::S3::DisableMultiRegionAccessPoints'
          'context.config.s3_disable_multiregion_access_points'
        when 'SDK::Endpoint'
          'endpoint'
        end
      end

      def context_param_value(operation, param_name)
        return nil unless operation['input']

        input_shape = operation['input']['shape']
        members = @service.api['shapes'][input_shape].fetch('members', {})
        members.detect do |(member_name, member)|
          context_param = member.fetch('contextParam', {})
          if context_param.fetch('name', nil) == param_name
            break "context.params[:#{Underscore.underscore(member_name)}]"
          end
        end
      end

      def static_context_param(operation, param_name)
        operation.fetch('staticContextParams', {})
                 .fetch(param_name, {}).fetch('value', nil)
      end
    end
  end
end
