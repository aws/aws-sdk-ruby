# frozen_string_literal: true

module AwsSdkCodeGenerator
  module Views
    class EndpointsPlugin < View
      # @option options [required, Service] :service
      def initialize(options)
        @service = options.fetch(:service)
        endpoint_parameters = @service.endpoint_rules.fetch('parameters', {})

        # HACK: AccountIdEndpointMode should likely be a client context
        # param, but it's a built in that should be per-service.
        @endpoint_options = []
        endpoint_parameters.each do |_key, data|
          next unless data['builtIn'] == 'AWS::Auth::AccountIdEndpointMode'

          @endpoint_options << account_id_endpoint_mode_option
          @account_id_endpoint_mode = true
        end

        if (client_options = @service.api['clientContextParams'])
          client_options.each do |name, _data|
            param_data = endpoint_parameters[name]

            next if param_data['builtIn']

            @endpoint_options << EndpointOption.new(
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

      def has_account_id_endpoint_mode?
        @account_id_endpoint_mode
      end

      private

      def account_id_endpoint_mode_option
        docstring = <<-DOCSTRING.chomp
The account ID endpoint mode to use. This can be one of the following values:
* `preferred` - The default behavior. Use the account ID endpoint if
  available, otherwise use the standard endpoint.
* `disabled` - Never use the account ID endpoint. Only use the standard
  endpoint.
* `required` - Always use the account ID endpoint. If the account ID
  cannot be retrieved from credentials, an error is raised.
        DOCSTRING

        default = <<-DEFAULT.chomp
value = ENV['AWS_ACCOUNT_ID_ENDPOINT_MODE']
        value ||= Aws.shared_config.account_id_endpoint_mode(profile: cfg.profile)
        value || 'preferred'
        DEFAULT

        EndpointOption.new(
          name: 'account_id_endpoint_mode',
          docstring: docstring,
          doc_type: 'String',
          default: default
        )
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
