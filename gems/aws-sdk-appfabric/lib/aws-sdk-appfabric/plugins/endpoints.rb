# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::AppFabric
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::AppFabric::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::AppFabric::EndpointParameters`'
      ) do |cfg|
        Aws::AppFabric::EndpointProvider.new
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
          when :batch_get_user_access_tasks
            Aws::AppFabric::Endpoints::BatchGetUserAccessTasks.build(context)
          when :connect_app_authorization
            Aws::AppFabric::Endpoints::ConnectAppAuthorization.build(context)
          when :create_app_authorization
            Aws::AppFabric::Endpoints::CreateAppAuthorization.build(context)
          when :create_app_bundle
            Aws::AppFabric::Endpoints::CreateAppBundle.build(context)
          when :create_ingestion
            Aws::AppFabric::Endpoints::CreateIngestion.build(context)
          when :create_ingestion_destination
            Aws::AppFabric::Endpoints::CreateIngestionDestination.build(context)
          when :delete_app_authorization
            Aws::AppFabric::Endpoints::DeleteAppAuthorization.build(context)
          when :delete_app_bundle
            Aws::AppFabric::Endpoints::DeleteAppBundle.build(context)
          when :delete_ingestion
            Aws::AppFabric::Endpoints::DeleteIngestion.build(context)
          when :delete_ingestion_destination
            Aws::AppFabric::Endpoints::DeleteIngestionDestination.build(context)
          when :get_app_authorization
            Aws::AppFabric::Endpoints::GetAppAuthorization.build(context)
          when :get_app_bundle
            Aws::AppFabric::Endpoints::GetAppBundle.build(context)
          when :get_ingestion
            Aws::AppFabric::Endpoints::GetIngestion.build(context)
          when :get_ingestion_destination
            Aws::AppFabric::Endpoints::GetIngestionDestination.build(context)
          when :list_app_authorizations
            Aws::AppFabric::Endpoints::ListAppAuthorizations.build(context)
          when :list_app_bundles
            Aws::AppFabric::Endpoints::ListAppBundles.build(context)
          when :list_ingestion_destinations
            Aws::AppFabric::Endpoints::ListIngestionDestinations.build(context)
          when :list_ingestions
            Aws::AppFabric::Endpoints::ListIngestions.build(context)
          when :list_tags_for_resource
            Aws::AppFabric::Endpoints::ListTagsForResource.build(context)
          when :start_ingestion
            Aws::AppFabric::Endpoints::StartIngestion.build(context)
          when :start_user_access_tasks
            Aws::AppFabric::Endpoints::StartUserAccessTasks.build(context)
          when :stop_ingestion
            Aws::AppFabric::Endpoints::StopIngestion.build(context)
          when :tag_resource
            Aws::AppFabric::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::AppFabric::Endpoints::UntagResource.build(context)
          when :update_app_authorization
            Aws::AppFabric::Endpoints::UpdateAppAuthorization.build(context)
          when :update_ingestion_destination
            Aws::AppFabric::Endpoints::UpdateIngestionDestination.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
