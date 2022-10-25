# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::SSMIncidents
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::SSMIncidents::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::SSMIncidents::EndpointParameters`'
      ) do |cfg|
        Aws::SSMIncidents::EndpointProvider.new
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
          when :create_replication_set
            Aws::SSMIncidents::Endpoints::CreateReplicationSet.build(context)
          when :create_response_plan
            Aws::SSMIncidents::Endpoints::CreateResponsePlan.build(context)
          when :create_timeline_event
            Aws::SSMIncidents::Endpoints::CreateTimelineEvent.build(context)
          when :delete_incident_record
            Aws::SSMIncidents::Endpoints::DeleteIncidentRecord.build(context)
          when :delete_replication_set
            Aws::SSMIncidents::Endpoints::DeleteReplicationSet.build(context)
          when :delete_resource_policy
            Aws::SSMIncidents::Endpoints::DeleteResourcePolicy.build(context)
          when :delete_response_plan
            Aws::SSMIncidents::Endpoints::DeleteResponsePlan.build(context)
          when :delete_timeline_event
            Aws::SSMIncidents::Endpoints::DeleteTimelineEvent.build(context)
          when :get_incident_record
            Aws::SSMIncidents::Endpoints::GetIncidentRecord.build(context)
          when :get_replication_set
            Aws::SSMIncidents::Endpoints::GetReplicationSet.build(context)
          when :get_resource_policies
            Aws::SSMIncidents::Endpoints::GetResourcePolicies.build(context)
          when :get_response_plan
            Aws::SSMIncidents::Endpoints::GetResponsePlan.build(context)
          when :get_timeline_event
            Aws::SSMIncidents::Endpoints::GetTimelineEvent.build(context)
          when :list_incident_records
            Aws::SSMIncidents::Endpoints::ListIncidentRecords.build(context)
          when :list_related_items
            Aws::SSMIncidents::Endpoints::ListRelatedItems.build(context)
          when :list_replication_sets
            Aws::SSMIncidents::Endpoints::ListReplicationSets.build(context)
          when :list_response_plans
            Aws::SSMIncidents::Endpoints::ListResponsePlans.build(context)
          when :list_tags_for_resource
            Aws::SSMIncidents::Endpoints::ListTagsForResource.build(context)
          when :list_timeline_events
            Aws::SSMIncidents::Endpoints::ListTimelineEvents.build(context)
          when :put_resource_policy
            Aws::SSMIncidents::Endpoints::PutResourcePolicy.build(context)
          when :start_incident
            Aws::SSMIncidents::Endpoints::StartIncident.build(context)
          when :tag_resource
            Aws::SSMIncidents::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::SSMIncidents::Endpoints::UntagResource.build(context)
          when :update_deletion_protection
            Aws::SSMIncidents::Endpoints::UpdateDeletionProtection.build(context)
          when :update_incident_record
            Aws::SSMIncidents::Endpoints::UpdateIncidentRecord.build(context)
          when :update_related_items
            Aws::SSMIncidents::Endpoints::UpdateRelatedItems.build(context)
          when :update_replication_set
            Aws::SSMIncidents::Endpoints::UpdateReplicationSet.build(context)
          when :update_response_plan
            Aws::SSMIncidents::Endpoints::UpdateResponsePlan.build(context)
          when :update_timeline_event
            Aws::SSMIncidents::Endpoints::UpdateTimelineEvent.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
