# frozen_string_literal: true

module AwsSdkCodeGenerator
  class EndpointParameter
    def initialize(name, definition, service, operation=nil)
      @name = name

      @value, @source = endpoint_parameter_value(name, definition, service, operation)

      @type = definition['type']
      @built_in = definition['builtIn']
      @default = definition['default']
      @required = definition['required']
      @documentation = "# @!attribute #{key}\n"
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

    # @return [String]
    attr_reader :source

    # @return [String]
    attr_reader :value

    # @return [String,Boolean,Array]
    def default
      case @default
      when String
        "\"#{@default}\""
      else
        @default.to_s
      end
    end

    def default?
      !@default.nil?
    end

    def validate_required?
      required && !default?
    end

    def key
      Underscore.underscore(name)
    end

    private

    # Most to least
    # staticContextParams
    # contextParam
    # operationContextParams
    # clientContextParams (always sourced from config)
    # Built-In Bindings (sourced from config in most cases, context in some cases to allow operation level overrides)
    # Built-in binding default values
    # @retyrn [value, source].  source may be one of [operation, config, default]
    def endpoint_parameter_value(param_name, param_data, service, operation)
      unless operation.nil?
        value, source = [
          static_context_param(operation, param_name), 'operation'
        ]
        value, source = [
          context_param_value(service, operation, param_name), 'operation'
        ] unless value
        value, source = [
          operation_context_param_value(operation, param_name), 'operation'
        ] unless value
      end

      value, source = [
        client_context_param_value(service, param_name, param_data),
        'config'
      ] unless value


      # built-ins may be sourced from operation context in some cases
      unless value
        value, source = built_in_param_value(service, param_data)
      end

      [value || 'nil', source || 'default']
    end

    def client_context_param_value(service, param_name, param_data)
      if service.api['clientContextParams']&.key?(param_name) &&
        !param_data['builtIn']
        "config.#{Underscore.underscore(param_name)}"
      end
    end

    # built-ins may be sourced from operation context in some cases
    def built_in_param_value(service, param_data)
      source = 'config'
      value =
        case param_data['builtIn']
        when 'AWS::Region'
          'config.region'
        when 'AWS::UseFIPS'
          'config.use_fips_endpoint'
        when 'AWS::UseDualStack'
          if service.name == 'S3' || service.name == 'S3Control'
            source = 'operation'
            'context[:use_dualstack_endpoint]'
          else
            'config.use_dualstack_endpoint'
          end
        when 'AWS::Auth::AccountId'
          'config.credentials.credentials.account_id'
        when 'AWS::Auth::AccountIdEndpointMode'
          'config.account_id_endpoint_mode'
        when 'AWS::STS::UseGlobalEndpoint'
          "config.sts_regional_endpoints == 'legacy'"
        when 'AWS::S3::UseGlobalEndpoint'
          "config.s3_us_east_1_regional_endpoint == 'legacy'"
        when 'AWS::S3::Accelerate'
          if service.name == 'S3' || service.name == 'S3Control'
            source = 'operation'
            'context[:use_accelerate_endpoint]'
          else
            'config.use_accelerate_endpoint'
          end
        when 'AWS::S3::ForcePathStyle'
          'config.force_path_style'
        when 'AWS::S3::UseArnRegion', 'AWS::S3Control::UseArnRegion'
          'config.s3_use_arn_region'
        when 'AWS::S3::DisableMultiRegionAccessPoints'
          'config.s3_disable_multiregion_access_points'
        when 'SDK::Endpoint'
          '(config.endpoint.to_s unless config.regional_endpoint)'
        else
          source = nil
          nil # no value, not a default
        end
      [value, source]
    end

    def context_param_value(service, operation, param_name)
      return nil unless operation['input']

      input_shape = operation['input']['shape']
      members = service.api['shapes'][input_shape].fetch('members', {})
      members.detect do |(member_name, member)|
        context_param = member.fetch('contextParam', {})
        if context_param.fetch('name', nil) == param_name
          break "context.params[:#{Underscore.underscore(member_name)}]"
        end
      end
    end

    def operation_context_param_value(operation, param_name)
      return nil unless operation['input']

      binding = operation.fetch('operationContextParams', {})[param_name]

      return nil unless binding

      "JMESPath.search(\"#{Underscore.underscore_jmespath(binding['path'])}\", context.params)"
    end

    def static_context_param(operation, param_name)
      value = operation.fetch('staticContextParams', {})
               .fetch(param_name, {}).fetch('value', nil)
      if !value.nil? && value.is_a?(String)
        "\"#{value}\""
      else
        value
      end
    end
  end
end
