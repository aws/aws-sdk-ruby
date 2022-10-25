# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CodeStarconnections
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::CodeStarconnections::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::CodeStarconnections::EndpointParameters`'
      ) do |cfg|
        Aws::CodeStarconnections::EndpointProvider.new
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
          when :create_connection
            Aws::CodeStarconnections::Endpoints::CreateConnection.build(context)
          when :create_host
            Aws::CodeStarconnections::Endpoints::CreateHost.build(context)
          when :delete_connection
            Aws::CodeStarconnections::Endpoints::DeleteConnection.build(context)
          when :delete_host
            Aws::CodeStarconnections::Endpoints::DeleteHost.build(context)
          when :get_connection
            Aws::CodeStarconnections::Endpoints::GetConnection.build(context)
          when :get_host
            Aws::CodeStarconnections::Endpoints::GetHost.build(context)
          when :list_connections
            Aws::CodeStarconnections::Endpoints::ListConnections.build(context)
          when :list_hosts
            Aws::CodeStarconnections::Endpoints::ListHosts.build(context)
          when :list_tags_for_resource
            Aws::CodeStarconnections::Endpoints::ListTagsForResource.build(context)
          when :tag_resource
            Aws::CodeStarconnections::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::CodeStarconnections::Endpoints::UntagResource.build(context)
          when :update_host
            Aws::CodeStarconnections::Endpoints::UpdateHost.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
