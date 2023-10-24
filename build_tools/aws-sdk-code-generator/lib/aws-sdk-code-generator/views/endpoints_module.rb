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
          @source = options[:source]
          @param_data = options[:param_data]
        end

        # @return [String]
        attr_accessor :key

        # @return [String]
        attr_accessor :value

        # @return [String]
        attr_accessor :source

        # @return [Hash]
        attr_accessor :param_data

        def static_string?
          @source == 'staticContextParam' && value.is_a?(String)
        end
      end


      private

      def endpoint_parameters_for_operation(operation)
        @parameters.each.with_object([]) do |(param_name, param_data), endpoint_parameters|
          value, source = endpoint_parameter_value(
            operation, param_name, param_data
          )

          endpoint_parameters << EndpointParameter.new(
            key: Underscore.underscore(param_name),
            value: value,
            source: source,
            param_data: param_data
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
        value, source = [
          static_context_param(operation, param_name), 'staticContextParam'
        ]
        value, source = [
          context_param_value(operation, param_name), 'contextParam'
        ] unless value
        value, source = [
          client_context_param_value(param_name, param_data),
          'clientContextParam'
        ] unless value
        value, source = [
          built_in_client_context_param_value(param_data), 'builtIn'
        ] unless value

        [value || 'nil', source]
      end

      def client_context_param_value(param_name, param_data)
        if @service.api['clientContextParams']&.key?(param_name) &&
           !param_data['builtIn']
          "context.config.#{Underscore.underscore(param_name)}"
        end
      end

      def built_in_client_context_param_value(param_data)
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
        when 'AWS::Auth::CredentialScope'
          'context.config.credentials.credentials.credential_scope'
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
        when 'AWS::S3::UseArnRegion', 'AWS::S3Control::UseArnRegion'
          'context.config.s3_use_arn_region'
        when 'AWS::S3::DisableMultiRegionAccessPoints'
          'context.config.s3_disable_multiregion_access_points'
        when 'SDK::Endpoint'
          'context.config.regional_endpoint ? nil : context.config.endpoint.to_s'
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
