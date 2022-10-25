# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::DataExchange
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::DataExchange::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::DataExchange::EndpointParameters`'
      ) do |cfg|
        Aws::DataExchange::EndpointProvider.new
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
          when :cancel_job
            Aws::DataExchange::Endpoints::CancelJob.build(context)
          when :create_data_set
            Aws::DataExchange::Endpoints::CreateDataSet.build(context)
          when :create_event_action
            Aws::DataExchange::Endpoints::CreateEventAction.build(context)
          when :create_job
            Aws::DataExchange::Endpoints::CreateJob.build(context)
          when :create_revision
            Aws::DataExchange::Endpoints::CreateRevision.build(context)
          when :delete_asset
            Aws::DataExchange::Endpoints::DeleteAsset.build(context)
          when :delete_data_set
            Aws::DataExchange::Endpoints::DeleteDataSet.build(context)
          when :delete_event_action
            Aws::DataExchange::Endpoints::DeleteEventAction.build(context)
          when :delete_revision
            Aws::DataExchange::Endpoints::DeleteRevision.build(context)
          when :get_asset
            Aws::DataExchange::Endpoints::GetAsset.build(context)
          when :get_data_set
            Aws::DataExchange::Endpoints::GetDataSet.build(context)
          when :get_event_action
            Aws::DataExchange::Endpoints::GetEventAction.build(context)
          when :get_job
            Aws::DataExchange::Endpoints::GetJob.build(context)
          when :get_revision
            Aws::DataExchange::Endpoints::GetRevision.build(context)
          when :list_data_set_revisions
            Aws::DataExchange::Endpoints::ListDataSetRevisions.build(context)
          when :list_data_sets
            Aws::DataExchange::Endpoints::ListDataSets.build(context)
          when :list_event_actions
            Aws::DataExchange::Endpoints::ListEventActions.build(context)
          when :list_jobs
            Aws::DataExchange::Endpoints::ListJobs.build(context)
          when :list_revision_assets
            Aws::DataExchange::Endpoints::ListRevisionAssets.build(context)
          when :list_tags_for_resource
            Aws::DataExchange::Endpoints::ListTagsForResource.build(context)
          when :revoke_revision
            Aws::DataExchange::Endpoints::RevokeRevision.build(context)
          when :send_api_asset
            Aws::DataExchange::Endpoints::SendApiAsset.build(context)
          when :start_job
            Aws::DataExchange::Endpoints::StartJob.build(context)
          when :tag_resource
            Aws::DataExchange::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::DataExchange::Endpoints::UntagResource.build(context)
          when :update_asset
            Aws::DataExchange::Endpoints::UpdateAsset.build(context)
          when :update_data_set
            Aws::DataExchange::Endpoints::UpdateDataSet.build(context)
          when :update_event_action
            Aws::DataExchange::Endpoints::UpdateEventAction.build(context)
          when :update_revision
            Aws::DataExchange::Endpoints::UpdateRevision.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
