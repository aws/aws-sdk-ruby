# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CloudTrail
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::CloudTrail::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::CloudTrail::EndpointParameters`'
      ) do |cfg|
        Aws::CloudTrail::EndpointProvider.new
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
          when :add_tags
            Aws::CloudTrail::Endpoints::AddTags.build(context)
          when :cancel_query
            Aws::CloudTrail::Endpoints::CancelQuery.build(context)
          when :create_channel
            Aws::CloudTrail::Endpoints::CreateChannel.build(context)
          when :create_event_data_store
            Aws::CloudTrail::Endpoints::CreateEventDataStore.build(context)
          when :create_trail
            Aws::CloudTrail::Endpoints::CreateTrail.build(context)
          when :delete_channel
            Aws::CloudTrail::Endpoints::DeleteChannel.build(context)
          when :delete_event_data_store
            Aws::CloudTrail::Endpoints::DeleteEventDataStore.build(context)
          when :delete_resource_policy
            Aws::CloudTrail::Endpoints::DeleteResourcePolicy.build(context)
          when :delete_trail
            Aws::CloudTrail::Endpoints::DeleteTrail.build(context)
          when :deregister_organization_delegated_admin
            Aws::CloudTrail::Endpoints::DeregisterOrganizationDelegatedAdmin.build(context)
          when :describe_query
            Aws::CloudTrail::Endpoints::DescribeQuery.build(context)
          when :describe_trails
            Aws::CloudTrail::Endpoints::DescribeTrails.build(context)
          when :get_channel
            Aws::CloudTrail::Endpoints::GetChannel.build(context)
          when :get_event_data_store
            Aws::CloudTrail::Endpoints::GetEventDataStore.build(context)
          when :get_event_selectors
            Aws::CloudTrail::Endpoints::GetEventSelectors.build(context)
          when :get_import
            Aws::CloudTrail::Endpoints::GetImport.build(context)
          when :get_insight_selectors
            Aws::CloudTrail::Endpoints::GetInsightSelectors.build(context)
          when :get_query_results
            Aws::CloudTrail::Endpoints::GetQueryResults.build(context)
          when :get_resource_policy
            Aws::CloudTrail::Endpoints::GetResourcePolicy.build(context)
          when :get_trail
            Aws::CloudTrail::Endpoints::GetTrail.build(context)
          when :get_trail_status
            Aws::CloudTrail::Endpoints::GetTrailStatus.build(context)
          when :list_channels
            Aws::CloudTrail::Endpoints::ListChannels.build(context)
          when :list_event_data_stores
            Aws::CloudTrail::Endpoints::ListEventDataStores.build(context)
          when :list_import_failures
            Aws::CloudTrail::Endpoints::ListImportFailures.build(context)
          when :list_imports
            Aws::CloudTrail::Endpoints::ListImports.build(context)
          when :list_public_keys
            Aws::CloudTrail::Endpoints::ListPublicKeys.build(context)
          when :list_queries
            Aws::CloudTrail::Endpoints::ListQueries.build(context)
          when :list_tags
            Aws::CloudTrail::Endpoints::ListTags.build(context)
          when :list_trails
            Aws::CloudTrail::Endpoints::ListTrails.build(context)
          when :lookup_events
            Aws::CloudTrail::Endpoints::LookupEvents.build(context)
          when :put_event_selectors
            Aws::CloudTrail::Endpoints::PutEventSelectors.build(context)
          when :put_insight_selectors
            Aws::CloudTrail::Endpoints::PutInsightSelectors.build(context)
          when :put_resource_policy
            Aws::CloudTrail::Endpoints::PutResourcePolicy.build(context)
          when :register_organization_delegated_admin
            Aws::CloudTrail::Endpoints::RegisterOrganizationDelegatedAdmin.build(context)
          when :remove_tags
            Aws::CloudTrail::Endpoints::RemoveTags.build(context)
          when :restore_event_data_store
            Aws::CloudTrail::Endpoints::RestoreEventDataStore.build(context)
          when :start_event_data_store_ingestion
            Aws::CloudTrail::Endpoints::StartEventDataStoreIngestion.build(context)
          when :start_import
            Aws::CloudTrail::Endpoints::StartImport.build(context)
          when :start_logging
            Aws::CloudTrail::Endpoints::StartLogging.build(context)
          when :start_query
            Aws::CloudTrail::Endpoints::StartQuery.build(context)
          when :stop_event_data_store_ingestion
            Aws::CloudTrail::Endpoints::StopEventDataStoreIngestion.build(context)
          when :stop_import
            Aws::CloudTrail::Endpoints::StopImport.build(context)
          when :stop_logging
            Aws::CloudTrail::Endpoints::StopLogging.build(context)
          when :update_channel
            Aws::CloudTrail::Endpoints::UpdateChannel.build(context)
          when :update_event_data_store
            Aws::CloudTrail::Endpoints::UpdateEventDataStore.build(context)
          when :update_trail
            Aws::CloudTrail::Endpoints::UpdateTrail.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
