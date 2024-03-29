# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CodeConnections
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::CodeConnections::EndpointProvider',
        rbs_type: 'untyped',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::CodeConnections::EndpointParameters`'
      ) do |cfg|
        Aws::CodeConnections::EndpointProvider.new
      end

      # @api private
      class Handler < Seahorse::Client::Handler
        def call(context)
          unless context[:discovered_endpoint]
            params = parameters_for_operation(context)
            endpoint = context.config.endpoint_provider.resolve_endpoint(params)

            context.http_request.endpoint = endpoint.url
            apply_endpoint_headers(context, endpoint.headers)

            context[:endpoint_params] = params
            context[:endpoint_properties] = endpoint.properties
          end

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
            Aws::CodeConnections::Endpoints::CreateConnection.build(context)
          when :create_host
            Aws::CodeConnections::Endpoints::CreateHost.build(context)
          when :create_repository_link
            Aws::CodeConnections::Endpoints::CreateRepositoryLink.build(context)
          when :create_sync_configuration
            Aws::CodeConnections::Endpoints::CreateSyncConfiguration.build(context)
          when :delete_connection
            Aws::CodeConnections::Endpoints::DeleteConnection.build(context)
          when :delete_host
            Aws::CodeConnections::Endpoints::DeleteHost.build(context)
          when :delete_repository_link
            Aws::CodeConnections::Endpoints::DeleteRepositoryLink.build(context)
          when :delete_sync_configuration
            Aws::CodeConnections::Endpoints::DeleteSyncConfiguration.build(context)
          when :get_connection
            Aws::CodeConnections::Endpoints::GetConnection.build(context)
          when :get_host
            Aws::CodeConnections::Endpoints::GetHost.build(context)
          when :get_repository_link
            Aws::CodeConnections::Endpoints::GetRepositoryLink.build(context)
          when :get_repository_sync_status
            Aws::CodeConnections::Endpoints::GetRepositorySyncStatus.build(context)
          when :get_resource_sync_status
            Aws::CodeConnections::Endpoints::GetResourceSyncStatus.build(context)
          when :get_sync_blocker_summary
            Aws::CodeConnections::Endpoints::GetSyncBlockerSummary.build(context)
          when :get_sync_configuration
            Aws::CodeConnections::Endpoints::GetSyncConfiguration.build(context)
          when :list_connections
            Aws::CodeConnections::Endpoints::ListConnections.build(context)
          when :list_hosts
            Aws::CodeConnections::Endpoints::ListHosts.build(context)
          when :list_repository_links
            Aws::CodeConnections::Endpoints::ListRepositoryLinks.build(context)
          when :list_repository_sync_definitions
            Aws::CodeConnections::Endpoints::ListRepositorySyncDefinitions.build(context)
          when :list_sync_configurations
            Aws::CodeConnections::Endpoints::ListSyncConfigurations.build(context)
          when :list_tags_for_resource
            Aws::CodeConnections::Endpoints::ListTagsForResource.build(context)
          when :tag_resource
            Aws::CodeConnections::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::CodeConnections::Endpoints::UntagResource.build(context)
          when :update_host
            Aws::CodeConnections::Endpoints::UpdateHost.build(context)
          when :update_repository_link
            Aws::CodeConnections::Endpoints::UpdateRepositoryLink.build(context)
          when :update_sync_blocker
            Aws::CodeConnections::Endpoints::UpdateSyncBlocker.build(context)
          when :update_sync_configuration
            Aws::CodeConnections::Endpoints::UpdateSyncConfiguration.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
