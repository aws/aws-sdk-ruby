# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::IoTSecureTunneling
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::IoTSecureTunneling::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::IoTSecureTunneling::EndpointParameters`'
      ) do |cfg|
        Aws::IoTSecureTunneling::EndpointProvider.new
      end

      # @api private
      class Handler < Seahorse::Client::Handler
        def call(context)
          # If endpoint was discovered, do not resolve or apply the endpoint.
          unless context[:discovered_endpoint]
            params = parameters_for_operation(context)
            endpoint = context.config.endpoint_provider.resolve_endpoint(params)

            context.http_request.endpoint = endpoint.url
            apply_endpoint_headers(context, endpoint.headers)
          end

          context[:endpoint_params] = params
          context[:auth_scheme] =
            Aws::Endpoints.resolve_auth_scheme(context, endpoint)

          @handler.call(context)
        end

        private

        def apply_endpoint_headers(context, headers)
          headers.each do |key, values|
            value = values
              .compact
              .map { |s| Seahorse::Util.escape_header_list_string(s.to_s) }
              .join(',')

            context.http_request.headers[key] = value
          end
        end

        def parameters_for_operation(context)
          case context.operation_name
          when :close_tunnel
            Aws::IoTSecureTunneling::Endpoints::CloseTunnel.build(context)
          when :describe_tunnel
            Aws::IoTSecureTunneling::Endpoints::DescribeTunnel.build(context)
          when :list_tags_for_resource
            Aws::IoTSecureTunneling::Endpoints::ListTagsForResource.build(context)
          when :list_tunnels
            Aws::IoTSecureTunneling::Endpoints::ListTunnels.build(context)
          when :open_tunnel
            Aws::IoTSecureTunneling::Endpoints::OpenTunnel.build(context)
          when :rotate_tunnel_access_token
            Aws::IoTSecureTunneling::Endpoints::RotateTunnelAccessToken.build(context)
          when :tag_resource
            Aws::IoTSecureTunneling::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::IoTSecureTunneling::Endpoints::UntagResource.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
