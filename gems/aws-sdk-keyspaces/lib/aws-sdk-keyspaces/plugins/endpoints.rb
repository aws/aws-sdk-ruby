# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Keyspaces
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Keyspaces::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Keyspaces::EndpointParameters`'
      ) do |cfg|
        Aws::Keyspaces::EndpointProvider.new
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
          when :create_keyspace
            Aws::Keyspaces::Endpoints::CreateKeyspace.build(context)
          when :create_table
            Aws::Keyspaces::Endpoints::CreateTable.build(context)
          when :delete_keyspace
            Aws::Keyspaces::Endpoints::DeleteKeyspace.build(context)
          when :delete_table
            Aws::Keyspaces::Endpoints::DeleteTable.build(context)
          when :get_keyspace
            Aws::Keyspaces::Endpoints::GetKeyspace.build(context)
          when :get_table
            Aws::Keyspaces::Endpoints::GetTable.build(context)
          when :list_keyspaces
            Aws::Keyspaces::Endpoints::ListKeyspaces.build(context)
          when :list_tables
            Aws::Keyspaces::Endpoints::ListTables.build(context)
          when :list_tags_for_resource
            Aws::Keyspaces::Endpoints::ListTagsForResource.build(context)
          when :restore_table
            Aws::Keyspaces::Endpoints::RestoreTable.build(context)
          when :tag_resource
            Aws::Keyspaces::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::Keyspaces::Endpoints::UntagResource.build(context)
          when :update_table
            Aws::Keyspaces::Endpoints::UpdateTable.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
