# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Glue
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Glue::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Glue::EndpointParameters`'
      ) do |cfg|
        Aws::Glue::EndpointProvider.new
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
          when :batch_create_partition
            Aws::Glue::Endpoints::BatchCreatePartition.build(context)
          when :batch_delete_connection
            Aws::Glue::Endpoints::BatchDeleteConnection.build(context)
          when :batch_delete_partition
            Aws::Glue::Endpoints::BatchDeletePartition.build(context)
          when :batch_delete_table
            Aws::Glue::Endpoints::BatchDeleteTable.build(context)
          when :batch_delete_table_version
            Aws::Glue::Endpoints::BatchDeleteTableVersion.build(context)
          when :batch_get_blueprints
            Aws::Glue::Endpoints::BatchGetBlueprints.build(context)
          when :batch_get_crawlers
            Aws::Glue::Endpoints::BatchGetCrawlers.build(context)
          when :batch_get_custom_entity_types
            Aws::Glue::Endpoints::BatchGetCustomEntityTypes.build(context)
          when :batch_get_data_quality_result
            Aws::Glue::Endpoints::BatchGetDataQualityResult.build(context)
          when :batch_get_dev_endpoints
            Aws::Glue::Endpoints::BatchGetDevEndpoints.build(context)
          when :batch_get_jobs
            Aws::Glue::Endpoints::BatchGetJobs.build(context)
          when :batch_get_partition
            Aws::Glue::Endpoints::BatchGetPartition.build(context)
          when :batch_get_triggers
            Aws::Glue::Endpoints::BatchGetTriggers.build(context)
          when :batch_get_workflows
            Aws::Glue::Endpoints::BatchGetWorkflows.build(context)
          when :batch_stop_job_run
            Aws::Glue::Endpoints::BatchStopJobRun.build(context)
          when :batch_update_partition
            Aws::Glue::Endpoints::BatchUpdatePartition.build(context)
          when :cancel_data_quality_rule_recommendation_run
            Aws::Glue::Endpoints::CancelDataQualityRuleRecommendationRun.build(context)
          when :cancel_data_quality_ruleset_evaluation_run
            Aws::Glue::Endpoints::CancelDataQualityRulesetEvaluationRun.build(context)
          when :cancel_ml_task_run
            Aws::Glue::Endpoints::CancelMLTaskRun.build(context)
          when :cancel_statement
            Aws::Glue::Endpoints::CancelStatement.build(context)
          when :check_schema_version_validity
            Aws::Glue::Endpoints::CheckSchemaVersionValidity.build(context)
          when :create_blueprint
            Aws::Glue::Endpoints::CreateBlueprint.build(context)
          when :create_classifier
            Aws::Glue::Endpoints::CreateClassifier.build(context)
          when :create_connection
            Aws::Glue::Endpoints::CreateConnection.build(context)
          when :create_crawler
            Aws::Glue::Endpoints::CreateCrawler.build(context)
          when :create_custom_entity_type
            Aws::Glue::Endpoints::CreateCustomEntityType.build(context)
          when :create_data_quality_ruleset
            Aws::Glue::Endpoints::CreateDataQualityRuleset.build(context)
          when :create_database
            Aws::Glue::Endpoints::CreateDatabase.build(context)
          when :create_dev_endpoint
            Aws::Glue::Endpoints::CreateDevEndpoint.build(context)
          when :create_job
            Aws::Glue::Endpoints::CreateJob.build(context)
          when :create_ml_transform
            Aws::Glue::Endpoints::CreateMLTransform.build(context)
          when :create_partition
            Aws::Glue::Endpoints::CreatePartition.build(context)
          when :create_partition_index
            Aws::Glue::Endpoints::CreatePartitionIndex.build(context)
          when :create_registry
            Aws::Glue::Endpoints::CreateRegistry.build(context)
          when :create_schema
            Aws::Glue::Endpoints::CreateSchema.build(context)
          when :create_script
            Aws::Glue::Endpoints::CreateScript.build(context)
          when :create_security_configuration
            Aws::Glue::Endpoints::CreateSecurityConfiguration.build(context)
          when :create_session
            Aws::Glue::Endpoints::CreateSession.build(context)
          when :create_table
            Aws::Glue::Endpoints::CreateTable.build(context)
          when :create_trigger
            Aws::Glue::Endpoints::CreateTrigger.build(context)
          when :create_user_defined_function
            Aws::Glue::Endpoints::CreateUserDefinedFunction.build(context)
          when :create_workflow
            Aws::Glue::Endpoints::CreateWorkflow.build(context)
          when :delete_blueprint
            Aws::Glue::Endpoints::DeleteBlueprint.build(context)
          when :delete_classifier
            Aws::Glue::Endpoints::DeleteClassifier.build(context)
          when :delete_column_statistics_for_partition
            Aws::Glue::Endpoints::DeleteColumnStatisticsForPartition.build(context)
          when :delete_column_statistics_for_table
            Aws::Glue::Endpoints::DeleteColumnStatisticsForTable.build(context)
          when :delete_connection
            Aws::Glue::Endpoints::DeleteConnection.build(context)
          when :delete_crawler
            Aws::Glue::Endpoints::DeleteCrawler.build(context)
          when :delete_custom_entity_type
            Aws::Glue::Endpoints::DeleteCustomEntityType.build(context)
          when :delete_data_quality_ruleset
            Aws::Glue::Endpoints::DeleteDataQualityRuleset.build(context)
          when :delete_database
            Aws::Glue::Endpoints::DeleteDatabase.build(context)
          when :delete_dev_endpoint
            Aws::Glue::Endpoints::DeleteDevEndpoint.build(context)
          when :delete_job
            Aws::Glue::Endpoints::DeleteJob.build(context)
          when :delete_ml_transform
            Aws::Glue::Endpoints::DeleteMLTransform.build(context)
          when :delete_partition
            Aws::Glue::Endpoints::DeletePartition.build(context)
          when :delete_partition_index
            Aws::Glue::Endpoints::DeletePartitionIndex.build(context)
          when :delete_registry
            Aws::Glue::Endpoints::DeleteRegistry.build(context)
          when :delete_resource_policy
            Aws::Glue::Endpoints::DeleteResourcePolicy.build(context)
          when :delete_schema
            Aws::Glue::Endpoints::DeleteSchema.build(context)
          when :delete_schema_versions
            Aws::Glue::Endpoints::DeleteSchemaVersions.build(context)
          when :delete_security_configuration
            Aws::Glue::Endpoints::DeleteSecurityConfiguration.build(context)
          when :delete_session
            Aws::Glue::Endpoints::DeleteSession.build(context)
          when :delete_table
            Aws::Glue::Endpoints::DeleteTable.build(context)
          when :delete_table_version
            Aws::Glue::Endpoints::DeleteTableVersion.build(context)
          when :delete_trigger
            Aws::Glue::Endpoints::DeleteTrigger.build(context)
          when :delete_user_defined_function
            Aws::Glue::Endpoints::DeleteUserDefinedFunction.build(context)
          when :delete_workflow
            Aws::Glue::Endpoints::DeleteWorkflow.build(context)
          when :get_blueprint
            Aws::Glue::Endpoints::GetBlueprint.build(context)
          when :get_blueprint_run
            Aws::Glue::Endpoints::GetBlueprintRun.build(context)
          when :get_blueprint_runs
            Aws::Glue::Endpoints::GetBlueprintRuns.build(context)
          when :get_catalog_import_status
            Aws::Glue::Endpoints::GetCatalogImportStatus.build(context)
          when :get_classifier
            Aws::Glue::Endpoints::GetClassifier.build(context)
          when :get_classifiers
            Aws::Glue::Endpoints::GetClassifiers.build(context)
          when :get_column_statistics_for_partition
            Aws::Glue::Endpoints::GetColumnStatisticsForPartition.build(context)
          when :get_column_statistics_for_table
            Aws::Glue::Endpoints::GetColumnStatisticsForTable.build(context)
          when :get_connection
            Aws::Glue::Endpoints::GetConnection.build(context)
          when :get_connections
            Aws::Glue::Endpoints::GetConnections.build(context)
          when :get_crawler
            Aws::Glue::Endpoints::GetCrawler.build(context)
          when :get_crawler_metrics
            Aws::Glue::Endpoints::GetCrawlerMetrics.build(context)
          when :get_crawlers
            Aws::Glue::Endpoints::GetCrawlers.build(context)
          when :get_custom_entity_type
            Aws::Glue::Endpoints::GetCustomEntityType.build(context)
          when :get_data_catalog_encryption_settings
            Aws::Glue::Endpoints::GetDataCatalogEncryptionSettings.build(context)
          when :get_data_quality_result
            Aws::Glue::Endpoints::GetDataQualityResult.build(context)
          when :get_data_quality_rule_recommendation_run
            Aws::Glue::Endpoints::GetDataQualityRuleRecommendationRun.build(context)
          when :get_data_quality_ruleset
            Aws::Glue::Endpoints::GetDataQualityRuleset.build(context)
          when :get_data_quality_ruleset_evaluation_run
            Aws::Glue::Endpoints::GetDataQualityRulesetEvaluationRun.build(context)
          when :get_database
            Aws::Glue::Endpoints::GetDatabase.build(context)
          when :get_databases
            Aws::Glue::Endpoints::GetDatabases.build(context)
          when :get_dataflow_graph
            Aws::Glue::Endpoints::GetDataflowGraph.build(context)
          when :get_dev_endpoint
            Aws::Glue::Endpoints::GetDevEndpoint.build(context)
          when :get_dev_endpoints
            Aws::Glue::Endpoints::GetDevEndpoints.build(context)
          when :get_job
            Aws::Glue::Endpoints::GetJob.build(context)
          when :get_job_bookmark
            Aws::Glue::Endpoints::GetJobBookmark.build(context)
          when :get_job_run
            Aws::Glue::Endpoints::GetJobRun.build(context)
          when :get_job_runs
            Aws::Glue::Endpoints::GetJobRuns.build(context)
          when :get_jobs
            Aws::Glue::Endpoints::GetJobs.build(context)
          when :get_ml_task_run
            Aws::Glue::Endpoints::GetMLTaskRun.build(context)
          when :get_ml_task_runs
            Aws::Glue::Endpoints::GetMLTaskRuns.build(context)
          when :get_ml_transform
            Aws::Glue::Endpoints::GetMLTransform.build(context)
          when :get_ml_transforms
            Aws::Glue::Endpoints::GetMLTransforms.build(context)
          when :get_mapping
            Aws::Glue::Endpoints::GetMapping.build(context)
          when :get_partition
            Aws::Glue::Endpoints::GetPartition.build(context)
          when :get_partition_indexes
            Aws::Glue::Endpoints::GetPartitionIndexes.build(context)
          when :get_partitions
            Aws::Glue::Endpoints::GetPartitions.build(context)
          when :get_plan
            Aws::Glue::Endpoints::GetPlan.build(context)
          when :get_registry
            Aws::Glue::Endpoints::GetRegistry.build(context)
          when :get_resource_policies
            Aws::Glue::Endpoints::GetResourcePolicies.build(context)
          when :get_resource_policy
            Aws::Glue::Endpoints::GetResourcePolicy.build(context)
          when :get_schema
            Aws::Glue::Endpoints::GetSchema.build(context)
          when :get_schema_by_definition
            Aws::Glue::Endpoints::GetSchemaByDefinition.build(context)
          when :get_schema_version
            Aws::Glue::Endpoints::GetSchemaVersion.build(context)
          when :get_schema_versions_diff
            Aws::Glue::Endpoints::GetSchemaVersionsDiff.build(context)
          when :get_security_configuration
            Aws::Glue::Endpoints::GetSecurityConfiguration.build(context)
          when :get_security_configurations
            Aws::Glue::Endpoints::GetSecurityConfigurations.build(context)
          when :get_session
            Aws::Glue::Endpoints::GetSession.build(context)
          when :get_statement
            Aws::Glue::Endpoints::GetStatement.build(context)
          when :get_table
            Aws::Glue::Endpoints::GetTable.build(context)
          when :get_table_version
            Aws::Glue::Endpoints::GetTableVersion.build(context)
          when :get_table_versions
            Aws::Glue::Endpoints::GetTableVersions.build(context)
          when :get_tables
            Aws::Glue::Endpoints::GetTables.build(context)
          when :get_tags
            Aws::Glue::Endpoints::GetTags.build(context)
          when :get_trigger
            Aws::Glue::Endpoints::GetTrigger.build(context)
          when :get_triggers
            Aws::Glue::Endpoints::GetTriggers.build(context)
          when :get_unfiltered_partition_metadata
            Aws::Glue::Endpoints::GetUnfilteredPartitionMetadata.build(context)
          when :get_unfiltered_partitions_metadata
            Aws::Glue::Endpoints::GetUnfilteredPartitionsMetadata.build(context)
          when :get_unfiltered_table_metadata
            Aws::Glue::Endpoints::GetUnfilteredTableMetadata.build(context)
          when :get_user_defined_function
            Aws::Glue::Endpoints::GetUserDefinedFunction.build(context)
          when :get_user_defined_functions
            Aws::Glue::Endpoints::GetUserDefinedFunctions.build(context)
          when :get_workflow
            Aws::Glue::Endpoints::GetWorkflow.build(context)
          when :get_workflow_run
            Aws::Glue::Endpoints::GetWorkflowRun.build(context)
          when :get_workflow_run_properties
            Aws::Glue::Endpoints::GetWorkflowRunProperties.build(context)
          when :get_workflow_runs
            Aws::Glue::Endpoints::GetWorkflowRuns.build(context)
          when :import_catalog_to_glue
            Aws::Glue::Endpoints::ImportCatalogToGlue.build(context)
          when :list_blueprints
            Aws::Glue::Endpoints::ListBlueprints.build(context)
          when :list_crawlers
            Aws::Glue::Endpoints::ListCrawlers.build(context)
          when :list_crawls
            Aws::Glue::Endpoints::ListCrawls.build(context)
          when :list_custom_entity_types
            Aws::Glue::Endpoints::ListCustomEntityTypes.build(context)
          when :list_data_quality_results
            Aws::Glue::Endpoints::ListDataQualityResults.build(context)
          when :list_data_quality_rule_recommendation_runs
            Aws::Glue::Endpoints::ListDataQualityRuleRecommendationRuns.build(context)
          when :list_data_quality_ruleset_evaluation_runs
            Aws::Glue::Endpoints::ListDataQualityRulesetEvaluationRuns.build(context)
          when :list_data_quality_rulesets
            Aws::Glue::Endpoints::ListDataQualityRulesets.build(context)
          when :list_dev_endpoints
            Aws::Glue::Endpoints::ListDevEndpoints.build(context)
          when :list_jobs
            Aws::Glue::Endpoints::ListJobs.build(context)
          when :list_ml_transforms
            Aws::Glue::Endpoints::ListMLTransforms.build(context)
          when :list_registries
            Aws::Glue::Endpoints::ListRegistries.build(context)
          when :list_schema_versions
            Aws::Glue::Endpoints::ListSchemaVersions.build(context)
          when :list_schemas
            Aws::Glue::Endpoints::ListSchemas.build(context)
          when :list_sessions
            Aws::Glue::Endpoints::ListSessions.build(context)
          when :list_statements
            Aws::Glue::Endpoints::ListStatements.build(context)
          when :list_triggers
            Aws::Glue::Endpoints::ListTriggers.build(context)
          when :list_workflows
            Aws::Glue::Endpoints::ListWorkflows.build(context)
          when :put_data_catalog_encryption_settings
            Aws::Glue::Endpoints::PutDataCatalogEncryptionSettings.build(context)
          when :put_resource_policy
            Aws::Glue::Endpoints::PutResourcePolicy.build(context)
          when :put_schema_version_metadata
            Aws::Glue::Endpoints::PutSchemaVersionMetadata.build(context)
          when :put_workflow_run_properties
            Aws::Glue::Endpoints::PutWorkflowRunProperties.build(context)
          when :query_schema_version_metadata
            Aws::Glue::Endpoints::QuerySchemaVersionMetadata.build(context)
          when :register_schema_version
            Aws::Glue::Endpoints::RegisterSchemaVersion.build(context)
          when :remove_schema_version_metadata
            Aws::Glue::Endpoints::RemoveSchemaVersionMetadata.build(context)
          when :reset_job_bookmark
            Aws::Glue::Endpoints::ResetJobBookmark.build(context)
          when :resume_workflow_run
            Aws::Glue::Endpoints::ResumeWorkflowRun.build(context)
          when :run_statement
            Aws::Glue::Endpoints::RunStatement.build(context)
          when :search_tables
            Aws::Glue::Endpoints::SearchTables.build(context)
          when :start_blueprint_run
            Aws::Glue::Endpoints::StartBlueprintRun.build(context)
          when :start_crawler
            Aws::Glue::Endpoints::StartCrawler.build(context)
          when :start_crawler_schedule
            Aws::Glue::Endpoints::StartCrawlerSchedule.build(context)
          when :start_data_quality_rule_recommendation_run
            Aws::Glue::Endpoints::StartDataQualityRuleRecommendationRun.build(context)
          when :start_data_quality_ruleset_evaluation_run
            Aws::Glue::Endpoints::StartDataQualityRulesetEvaluationRun.build(context)
          when :start_export_labels_task_run
            Aws::Glue::Endpoints::StartExportLabelsTaskRun.build(context)
          when :start_import_labels_task_run
            Aws::Glue::Endpoints::StartImportLabelsTaskRun.build(context)
          when :start_job_run
            Aws::Glue::Endpoints::StartJobRun.build(context)
          when :start_ml_evaluation_task_run
            Aws::Glue::Endpoints::StartMLEvaluationTaskRun.build(context)
          when :start_ml_labeling_set_generation_task_run
            Aws::Glue::Endpoints::StartMLLabelingSetGenerationTaskRun.build(context)
          when :start_trigger
            Aws::Glue::Endpoints::StartTrigger.build(context)
          when :start_workflow_run
            Aws::Glue::Endpoints::StartWorkflowRun.build(context)
          when :stop_crawler
            Aws::Glue::Endpoints::StopCrawler.build(context)
          when :stop_crawler_schedule
            Aws::Glue::Endpoints::StopCrawlerSchedule.build(context)
          when :stop_session
            Aws::Glue::Endpoints::StopSession.build(context)
          when :stop_trigger
            Aws::Glue::Endpoints::StopTrigger.build(context)
          when :stop_workflow_run
            Aws::Glue::Endpoints::StopWorkflowRun.build(context)
          when :tag_resource
            Aws::Glue::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::Glue::Endpoints::UntagResource.build(context)
          when :update_blueprint
            Aws::Glue::Endpoints::UpdateBlueprint.build(context)
          when :update_classifier
            Aws::Glue::Endpoints::UpdateClassifier.build(context)
          when :update_column_statistics_for_partition
            Aws::Glue::Endpoints::UpdateColumnStatisticsForPartition.build(context)
          when :update_column_statistics_for_table
            Aws::Glue::Endpoints::UpdateColumnStatisticsForTable.build(context)
          when :update_connection
            Aws::Glue::Endpoints::UpdateConnection.build(context)
          when :update_crawler
            Aws::Glue::Endpoints::UpdateCrawler.build(context)
          when :update_crawler_schedule
            Aws::Glue::Endpoints::UpdateCrawlerSchedule.build(context)
          when :update_data_quality_ruleset
            Aws::Glue::Endpoints::UpdateDataQualityRuleset.build(context)
          when :update_database
            Aws::Glue::Endpoints::UpdateDatabase.build(context)
          when :update_dev_endpoint
            Aws::Glue::Endpoints::UpdateDevEndpoint.build(context)
          when :update_job
            Aws::Glue::Endpoints::UpdateJob.build(context)
          when :update_job_from_source_control
            Aws::Glue::Endpoints::UpdateJobFromSourceControl.build(context)
          when :update_ml_transform
            Aws::Glue::Endpoints::UpdateMLTransform.build(context)
          when :update_partition
            Aws::Glue::Endpoints::UpdatePartition.build(context)
          when :update_registry
            Aws::Glue::Endpoints::UpdateRegistry.build(context)
          when :update_schema
            Aws::Glue::Endpoints::UpdateSchema.build(context)
          when :update_source_control_from_job
            Aws::Glue::Endpoints::UpdateSourceControlFromJob.build(context)
          when :update_table
            Aws::Glue::Endpoints::UpdateTable.build(context)
          when :update_trigger
            Aws::Glue::Endpoints::UpdateTrigger.build(context)
          when :update_user_defined_function
            Aws::Glue::Endpoints::UpdateUserDefinedFunction.build(context)
          when :update_workflow
            Aws::Glue::Endpoints::UpdateWorkflow.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
