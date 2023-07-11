# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::DatabaseMigrationService
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::DatabaseMigrationService::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::DatabaseMigrationService::EndpointParameters`'
      ) do |cfg|
        Aws::DatabaseMigrationService::EndpointProvider.new
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
          when :add_tags_to_resource
            Aws::DatabaseMigrationService::Endpoints::AddTagsToResource.build(context)
          when :apply_pending_maintenance_action
            Aws::DatabaseMigrationService::Endpoints::ApplyPendingMaintenanceAction.build(context)
          when :batch_start_recommendations
            Aws::DatabaseMigrationService::Endpoints::BatchStartRecommendations.build(context)
          when :cancel_replication_task_assessment_run
            Aws::DatabaseMigrationService::Endpoints::CancelReplicationTaskAssessmentRun.build(context)
          when :create_endpoint
            Aws::DatabaseMigrationService::Endpoints::CreateEndpoint.build(context)
          when :create_event_subscription
            Aws::DatabaseMigrationService::Endpoints::CreateEventSubscription.build(context)
          when :create_fleet_advisor_collector
            Aws::DatabaseMigrationService::Endpoints::CreateFleetAdvisorCollector.build(context)
          when :create_replication_config
            Aws::DatabaseMigrationService::Endpoints::CreateReplicationConfig.build(context)
          when :create_replication_instance
            Aws::DatabaseMigrationService::Endpoints::CreateReplicationInstance.build(context)
          when :create_replication_subnet_group
            Aws::DatabaseMigrationService::Endpoints::CreateReplicationSubnetGroup.build(context)
          when :create_replication_task
            Aws::DatabaseMigrationService::Endpoints::CreateReplicationTask.build(context)
          when :delete_certificate
            Aws::DatabaseMigrationService::Endpoints::DeleteCertificate.build(context)
          when :delete_connection
            Aws::DatabaseMigrationService::Endpoints::DeleteConnection.build(context)
          when :delete_endpoint
            Aws::DatabaseMigrationService::Endpoints::DeleteEndpoint.build(context)
          when :delete_event_subscription
            Aws::DatabaseMigrationService::Endpoints::DeleteEventSubscription.build(context)
          when :delete_fleet_advisor_collector
            Aws::DatabaseMigrationService::Endpoints::DeleteFleetAdvisorCollector.build(context)
          when :delete_fleet_advisor_databases
            Aws::DatabaseMigrationService::Endpoints::DeleteFleetAdvisorDatabases.build(context)
          when :delete_replication_config
            Aws::DatabaseMigrationService::Endpoints::DeleteReplicationConfig.build(context)
          when :delete_replication_instance
            Aws::DatabaseMigrationService::Endpoints::DeleteReplicationInstance.build(context)
          when :delete_replication_subnet_group
            Aws::DatabaseMigrationService::Endpoints::DeleteReplicationSubnetGroup.build(context)
          when :delete_replication_task
            Aws::DatabaseMigrationService::Endpoints::DeleteReplicationTask.build(context)
          when :delete_replication_task_assessment_run
            Aws::DatabaseMigrationService::Endpoints::DeleteReplicationTaskAssessmentRun.build(context)
          when :describe_account_attributes
            Aws::DatabaseMigrationService::Endpoints::DescribeAccountAttributes.build(context)
          when :describe_applicable_individual_assessments
            Aws::DatabaseMigrationService::Endpoints::DescribeApplicableIndividualAssessments.build(context)
          when :describe_certificates
            Aws::DatabaseMigrationService::Endpoints::DescribeCertificates.build(context)
          when :describe_connections
            Aws::DatabaseMigrationService::Endpoints::DescribeConnections.build(context)
          when :describe_endpoint_settings
            Aws::DatabaseMigrationService::Endpoints::DescribeEndpointSettings.build(context)
          when :describe_endpoint_types
            Aws::DatabaseMigrationService::Endpoints::DescribeEndpointTypes.build(context)
          when :describe_endpoints
            Aws::DatabaseMigrationService::Endpoints::DescribeEndpoints.build(context)
          when :describe_event_categories
            Aws::DatabaseMigrationService::Endpoints::DescribeEventCategories.build(context)
          when :describe_event_subscriptions
            Aws::DatabaseMigrationService::Endpoints::DescribeEventSubscriptions.build(context)
          when :describe_events
            Aws::DatabaseMigrationService::Endpoints::DescribeEvents.build(context)
          when :describe_fleet_advisor_collectors
            Aws::DatabaseMigrationService::Endpoints::DescribeFleetAdvisorCollectors.build(context)
          when :describe_fleet_advisor_databases
            Aws::DatabaseMigrationService::Endpoints::DescribeFleetAdvisorDatabases.build(context)
          when :describe_fleet_advisor_lsa_analysis
            Aws::DatabaseMigrationService::Endpoints::DescribeFleetAdvisorLsaAnalysis.build(context)
          when :describe_fleet_advisor_schema_object_summary
            Aws::DatabaseMigrationService::Endpoints::DescribeFleetAdvisorSchemaObjectSummary.build(context)
          when :describe_fleet_advisor_schemas
            Aws::DatabaseMigrationService::Endpoints::DescribeFleetAdvisorSchemas.build(context)
          when :describe_orderable_replication_instances
            Aws::DatabaseMigrationService::Endpoints::DescribeOrderableReplicationInstances.build(context)
          when :describe_pending_maintenance_actions
            Aws::DatabaseMigrationService::Endpoints::DescribePendingMaintenanceActions.build(context)
          when :describe_recommendation_limitations
            Aws::DatabaseMigrationService::Endpoints::DescribeRecommendationLimitations.build(context)
          when :describe_recommendations
            Aws::DatabaseMigrationService::Endpoints::DescribeRecommendations.build(context)
          when :describe_refresh_schemas_status
            Aws::DatabaseMigrationService::Endpoints::DescribeRefreshSchemasStatus.build(context)
          when :describe_replication_configs
            Aws::DatabaseMigrationService::Endpoints::DescribeReplicationConfigs.build(context)
          when :describe_replication_instance_task_logs
            Aws::DatabaseMigrationService::Endpoints::DescribeReplicationInstanceTaskLogs.build(context)
          when :describe_replication_instances
            Aws::DatabaseMigrationService::Endpoints::DescribeReplicationInstances.build(context)
          when :describe_replication_subnet_groups
            Aws::DatabaseMigrationService::Endpoints::DescribeReplicationSubnetGroups.build(context)
          when :describe_replication_table_statistics
            Aws::DatabaseMigrationService::Endpoints::DescribeReplicationTableStatistics.build(context)
          when :describe_replication_task_assessment_results
            Aws::DatabaseMigrationService::Endpoints::DescribeReplicationTaskAssessmentResults.build(context)
          when :describe_replication_task_assessment_runs
            Aws::DatabaseMigrationService::Endpoints::DescribeReplicationTaskAssessmentRuns.build(context)
          when :describe_replication_task_individual_assessments
            Aws::DatabaseMigrationService::Endpoints::DescribeReplicationTaskIndividualAssessments.build(context)
          when :describe_replication_tasks
            Aws::DatabaseMigrationService::Endpoints::DescribeReplicationTasks.build(context)
          when :describe_replications
            Aws::DatabaseMigrationService::Endpoints::DescribeReplications.build(context)
          when :describe_schemas
            Aws::DatabaseMigrationService::Endpoints::DescribeSchemas.build(context)
          when :describe_table_statistics
            Aws::DatabaseMigrationService::Endpoints::DescribeTableStatistics.build(context)
          when :import_certificate
            Aws::DatabaseMigrationService::Endpoints::ImportCertificate.build(context)
          when :list_tags_for_resource
            Aws::DatabaseMigrationService::Endpoints::ListTagsForResource.build(context)
          when :modify_endpoint
            Aws::DatabaseMigrationService::Endpoints::ModifyEndpoint.build(context)
          when :modify_event_subscription
            Aws::DatabaseMigrationService::Endpoints::ModifyEventSubscription.build(context)
          when :modify_replication_config
            Aws::DatabaseMigrationService::Endpoints::ModifyReplicationConfig.build(context)
          when :modify_replication_instance
            Aws::DatabaseMigrationService::Endpoints::ModifyReplicationInstance.build(context)
          when :modify_replication_subnet_group
            Aws::DatabaseMigrationService::Endpoints::ModifyReplicationSubnetGroup.build(context)
          when :modify_replication_task
            Aws::DatabaseMigrationService::Endpoints::ModifyReplicationTask.build(context)
          when :move_replication_task
            Aws::DatabaseMigrationService::Endpoints::MoveReplicationTask.build(context)
          when :reboot_replication_instance
            Aws::DatabaseMigrationService::Endpoints::RebootReplicationInstance.build(context)
          when :refresh_schemas
            Aws::DatabaseMigrationService::Endpoints::RefreshSchemas.build(context)
          when :reload_replication_tables
            Aws::DatabaseMigrationService::Endpoints::ReloadReplicationTables.build(context)
          when :reload_tables
            Aws::DatabaseMigrationService::Endpoints::ReloadTables.build(context)
          when :remove_tags_from_resource
            Aws::DatabaseMigrationService::Endpoints::RemoveTagsFromResource.build(context)
          when :run_fleet_advisor_lsa_analysis
            Aws::DatabaseMigrationService::Endpoints::RunFleetAdvisorLsaAnalysis.build(context)
          when :start_recommendations
            Aws::DatabaseMigrationService::Endpoints::StartRecommendations.build(context)
          when :start_replication
            Aws::DatabaseMigrationService::Endpoints::StartReplication.build(context)
          when :start_replication_task
            Aws::DatabaseMigrationService::Endpoints::StartReplicationTask.build(context)
          when :start_replication_task_assessment
            Aws::DatabaseMigrationService::Endpoints::StartReplicationTaskAssessment.build(context)
          when :start_replication_task_assessment_run
            Aws::DatabaseMigrationService::Endpoints::StartReplicationTaskAssessmentRun.build(context)
          when :stop_replication
            Aws::DatabaseMigrationService::Endpoints::StopReplication.build(context)
          when :stop_replication_task
            Aws::DatabaseMigrationService::Endpoints::StopReplicationTask.build(context)
          when :test_connection
            Aws::DatabaseMigrationService::Endpoints::TestConnection.build(context)
          when :update_subscriptions_to_event_bridge
            Aws::DatabaseMigrationService::Endpoints::UpdateSubscriptionsToEventBridge.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
