# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::DynamoDB
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::DynamoDB::EndpointProvider',
        rbs_type: 'untyped',
        docstring: <<~DOCS) do |_cfg|
The endpoint provider used to resolve endpoints. Any object that responds to
`#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
`Aws::DynamoDB::EndpointParameters`.
        DOCS
        Aws::DynamoDB::EndpointProvider.new
      end

      option(
        :account_id_endpoint_mode,
        doc_type: 'String',
        docstring: <<~DOCS) do |cfg|
The account ID endpoint mode to use. This can be one of the following values:
* `preferred` - The default behavior. Use the account ID endpoint if
  available, otherwise use the standard endpoint.
* `disabled` - Never use the account ID endpoint. Only use the standard
  endpoint.
* `required` - Always use the account ID endpoint. If the account ID
  cannot be retrieved from credentials, an error is raised.
        DOCS
        value = ENV['AWS_ACCOUNT_ID_ENDPOINT_MODE']
        value ||= Aws.shared_config.account_id_endpoint_mode(profile: cfg.profile)
        value || 'preferred'
      end

      # @api private
      class Handler < Seahorse::Client::Handler
        def call(context)
          unless context[:discovered_endpoint]
            params = Aws::DynamoDB::Endpoints.parameters_for_operation(context)
            endpoint = context.config.endpoint_provider.resolve_endpoint(params)

            context.http_request.endpoint = endpoint.url
            apply_endpoint_headers(context, endpoint.headers)

            context[:endpoint_params] = params
            context[:endpoint_properties] = endpoint.properties
          end

          context[:auth_scheme] =
            Aws::Endpoints.resolve_auth_scheme(context, endpoint)

          with_metrics(context) { @handler.call(context) }
        end

        private

        def with_metrics(context, &block)
          metrics = []
          metrics << 'ENDPOINT_OVERRIDE' unless context.config.regional_endpoint
          if context[:auth_scheme] && context[:auth_scheme]['name'] == 'sigv4a'
            metrics << 'SIGV4A_SIGNING'
          end
          case context.config.account_id_endpoint_mode
          when 'preferred'
            metrics << 'ACCOUNT_ID_MODE_PREFERRED'
          when 'disabled'
            metrics << 'ACCOUNT_ID_MODE_DISABLED'
          when 'required'
            metrics << 'ACCOUNT_ID_MODE_REQUIRED'
          end
          if context.config.credentials&.credentials&.account_id
            metrics << 'RESOLVED_ACCOUNT_ID'
          end
          Aws::Plugins::UserAgent.metric(*metrics, &block)
        end

        def apply_endpoint_headers(context, headers)
          headers.each do |key, values|
            value = values
              .compact
              .map { |s| Seahorse::Util.escape_header_list_string(s.to_s) }
              .join(',')

            context.http_request.headers[key] = value
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
