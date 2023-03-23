# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::SageMaker
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::SageMaker::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::SageMaker::EndpointParameters`'
      ) do |cfg|
        Aws::SageMaker::EndpointProvider.new
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
          when :add_association
            Aws::SageMaker::Endpoints::AddAssociation.build(context)
          when :add_tags
            Aws::SageMaker::Endpoints::AddTags.build(context)
          when :associate_trial_component
            Aws::SageMaker::Endpoints::AssociateTrialComponent.build(context)
          when :batch_describe_model_package
            Aws::SageMaker::Endpoints::BatchDescribeModelPackage.build(context)
          when :create_action
            Aws::SageMaker::Endpoints::CreateAction.build(context)
          when :create_algorithm
            Aws::SageMaker::Endpoints::CreateAlgorithm.build(context)
          when :create_app
            Aws::SageMaker::Endpoints::CreateApp.build(context)
          when :create_app_image_config
            Aws::SageMaker::Endpoints::CreateAppImageConfig.build(context)
          when :create_artifact
            Aws::SageMaker::Endpoints::CreateArtifact.build(context)
          when :create_auto_ml_job
            Aws::SageMaker::Endpoints::CreateAutoMLJob.build(context)
          when :create_auto_ml_job_v2
            Aws::SageMaker::Endpoints::CreateAutoMLJobV2.build(context)
          when :create_code_repository
            Aws::SageMaker::Endpoints::CreateCodeRepository.build(context)
          when :create_compilation_job
            Aws::SageMaker::Endpoints::CreateCompilationJob.build(context)
          when :create_context
            Aws::SageMaker::Endpoints::CreateContext.build(context)
          when :create_data_quality_job_definition
            Aws::SageMaker::Endpoints::CreateDataQualityJobDefinition.build(context)
          when :create_device_fleet
            Aws::SageMaker::Endpoints::CreateDeviceFleet.build(context)
          when :create_domain
            Aws::SageMaker::Endpoints::CreateDomain.build(context)
          when :create_edge_deployment_plan
            Aws::SageMaker::Endpoints::CreateEdgeDeploymentPlan.build(context)
          when :create_edge_deployment_stage
            Aws::SageMaker::Endpoints::CreateEdgeDeploymentStage.build(context)
          when :create_edge_packaging_job
            Aws::SageMaker::Endpoints::CreateEdgePackagingJob.build(context)
          when :create_endpoint
            Aws::SageMaker::Endpoints::CreateEndpoint.build(context)
          when :create_endpoint_config
            Aws::SageMaker::Endpoints::CreateEndpointConfig.build(context)
          when :create_experiment
            Aws::SageMaker::Endpoints::CreateExperiment.build(context)
          when :create_feature_group
            Aws::SageMaker::Endpoints::CreateFeatureGroup.build(context)
          when :create_flow_definition
            Aws::SageMaker::Endpoints::CreateFlowDefinition.build(context)
          when :create_hub
            Aws::SageMaker::Endpoints::CreateHub.build(context)
          when :create_human_task_ui
            Aws::SageMaker::Endpoints::CreateHumanTaskUi.build(context)
          when :create_hyper_parameter_tuning_job
            Aws::SageMaker::Endpoints::CreateHyperParameterTuningJob.build(context)
          when :create_image
            Aws::SageMaker::Endpoints::CreateImage.build(context)
          when :create_image_version
            Aws::SageMaker::Endpoints::CreateImageVersion.build(context)
          when :create_inference_experiment
            Aws::SageMaker::Endpoints::CreateInferenceExperiment.build(context)
          when :create_inference_recommendations_job
            Aws::SageMaker::Endpoints::CreateInferenceRecommendationsJob.build(context)
          when :create_labeling_job
            Aws::SageMaker::Endpoints::CreateLabelingJob.build(context)
          when :create_model
            Aws::SageMaker::Endpoints::CreateModel.build(context)
          when :create_model_bias_job_definition
            Aws::SageMaker::Endpoints::CreateModelBiasJobDefinition.build(context)
          when :create_model_card
            Aws::SageMaker::Endpoints::CreateModelCard.build(context)
          when :create_model_card_export_job
            Aws::SageMaker::Endpoints::CreateModelCardExportJob.build(context)
          when :create_model_explainability_job_definition
            Aws::SageMaker::Endpoints::CreateModelExplainabilityJobDefinition.build(context)
          when :create_model_package
            Aws::SageMaker::Endpoints::CreateModelPackage.build(context)
          when :create_model_package_group
            Aws::SageMaker::Endpoints::CreateModelPackageGroup.build(context)
          when :create_model_quality_job_definition
            Aws::SageMaker::Endpoints::CreateModelQualityJobDefinition.build(context)
          when :create_monitoring_schedule
            Aws::SageMaker::Endpoints::CreateMonitoringSchedule.build(context)
          when :create_notebook_instance
            Aws::SageMaker::Endpoints::CreateNotebookInstance.build(context)
          when :create_notebook_instance_lifecycle_config
            Aws::SageMaker::Endpoints::CreateNotebookInstanceLifecycleConfig.build(context)
          when :create_pipeline
            Aws::SageMaker::Endpoints::CreatePipeline.build(context)
          when :create_presigned_domain_url
            Aws::SageMaker::Endpoints::CreatePresignedDomainUrl.build(context)
          when :create_presigned_notebook_instance_url
            Aws::SageMaker::Endpoints::CreatePresignedNotebookInstanceUrl.build(context)
          when :create_processing_job
            Aws::SageMaker::Endpoints::CreateProcessingJob.build(context)
          when :create_project
            Aws::SageMaker::Endpoints::CreateProject.build(context)
          when :create_space
            Aws::SageMaker::Endpoints::CreateSpace.build(context)
          when :create_studio_lifecycle_config
            Aws::SageMaker::Endpoints::CreateStudioLifecycleConfig.build(context)
          when :create_training_job
            Aws::SageMaker::Endpoints::CreateTrainingJob.build(context)
          when :create_transform_job
            Aws::SageMaker::Endpoints::CreateTransformJob.build(context)
          when :create_trial
            Aws::SageMaker::Endpoints::CreateTrial.build(context)
          when :create_trial_component
            Aws::SageMaker::Endpoints::CreateTrialComponent.build(context)
          when :create_user_profile
            Aws::SageMaker::Endpoints::CreateUserProfile.build(context)
          when :create_workforce
            Aws::SageMaker::Endpoints::CreateWorkforce.build(context)
          when :create_workteam
            Aws::SageMaker::Endpoints::CreateWorkteam.build(context)
          when :delete_action
            Aws::SageMaker::Endpoints::DeleteAction.build(context)
          when :delete_algorithm
            Aws::SageMaker::Endpoints::DeleteAlgorithm.build(context)
          when :delete_app
            Aws::SageMaker::Endpoints::DeleteApp.build(context)
          when :delete_app_image_config
            Aws::SageMaker::Endpoints::DeleteAppImageConfig.build(context)
          when :delete_artifact
            Aws::SageMaker::Endpoints::DeleteArtifact.build(context)
          when :delete_association
            Aws::SageMaker::Endpoints::DeleteAssociation.build(context)
          when :delete_code_repository
            Aws::SageMaker::Endpoints::DeleteCodeRepository.build(context)
          when :delete_context
            Aws::SageMaker::Endpoints::DeleteContext.build(context)
          when :delete_data_quality_job_definition
            Aws::SageMaker::Endpoints::DeleteDataQualityJobDefinition.build(context)
          when :delete_device_fleet
            Aws::SageMaker::Endpoints::DeleteDeviceFleet.build(context)
          when :delete_domain
            Aws::SageMaker::Endpoints::DeleteDomain.build(context)
          when :delete_edge_deployment_plan
            Aws::SageMaker::Endpoints::DeleteEdgeDeploymentPlan.build(context)
          when :delete_edge_deployment_stage
            Aws::SageMaker::Endpoints::DeleteEdgeDeploymentStage.build(context)
          when :delete_endpoint
            Aws::SageMaker::Endpoints::DeleteEndpoint.build(context)
          when :delete_endpoint_config
            Aws::SageMaker::Endpoints::DeleteEndpointConfig.build(context)
          when :delete_experiment
            Aws::SageMaker::Endpoints::DeleteExperiment.build(context)
          when :delete_feature_group
            Aws::SageMaker::Endpoints::DeleteFeatureGroup.build(context)
          when :delete_flow_definition
            Aws::SageMaker::Endpoints::DeleteFlowDefinition.build(context)
          when :delete_hub
            Aws::SageMaker::Endpoints::DeleteHub.build(context)
          when :delete_hub_content
            Aws::SageMaker::Endpoints::DeleteHubContent.build(context)
          when :delete_human_task_ui
            Aws::SageMaker::Endpoints::DeleteHumanTaskUi.build(context)
          when :delete_image
            Aws::SageMaker::Endpoints::DeleteImage.build(context)
          when :delete_image_version
            Aws::SageMaker::Endpoints::DeleteImageVersion.build(context)
          when :delete_inference_experiment
            Aws::SageMaker::Endpoints::DeleteInferenceExperiment.build(context)
          when :delete_model
            Aws::SageMaker::Endpoints::DeleteModel.build(context)
          when :delete_model_bias_job_definition
            Aws::SageMaker::Endpoints::DeleteModelBiasJobDefinition.build(context)
          when :delete_model_card
            Aws::SageMaker::Endpoints::DeleteModelCard.build(context)
          when :delete_model_explainability_job_definition
            Aws::SageMaker::Endpoints::DeleteModelExplainabilityJobDefinition.build(context)
          when :delete_model_package
            Aws::SageMaker::Endpoints::DeleteModelPackage.build(context)
          when :delete_model_package_group
            Aws::SageMaker::Endpoints::DeleteModelPackageGroup.build(context)
          when :delete_model_package_group_policy
            Aws::SageMaker::Endpoints::DeleteModelPackageGroupPolicy.build(context)
          when :delete_model_quality_job_definition
            Aws::SageMaker::Endpoints::DeleteModelQualityJobDefinition.build(context)
          when :delete_monitoring_schedule
            Aws::SageMaker::Endpoints::DeleteMonitoringSchedule.build(context)
          when :delete_notebook_instance
            Aws::SageMaker::Endpoints::DeleteNotebookInstance.build(context)
          when :delete_notebook_instance_lifecycle_config
            Aws::SageMaker::Endpoints::DeleteNotebookInstanceLifecycleConfig.build(context)
          when :delete_pipeline
            Aws::SageMaker::Endpoints::DeletePipeline.build(context)
          when :delete_project
            Aws::SageMaker::Endpoints::DeleteProject.build(context)
          when :delete_space
            Aws::SageMaker::Endpoints::DeleteSpace.build(context)
          when :delete_studio_lifecycle_config
            Aws::SageMaker::Endpoints::DeleteStudioLifecycleConfig.build(context)
          when :delete_tags
            Aws::SageMaker::Endpoints::DeleteTags.build(context)
          when :delete_trial
            Aws::SageMaker::Endpoints::DeleteTrial.build(context)
          when :delete_trial_component
            Aws::SageMaker::Endpoints::DeleteTrialComponent.build(context)
          when :delete_user_profile
            Aws::SageMaker::Endpoints::DeleteUserProfile.build(context)
          when :delete_workforce
            Aws::SageMaker::Endpoints::DeleteWorkforce.build(context)
          when :delete_workteam
            Aws::SageMaker::Endpoints::DeleteWorkteam.build(context)
          when :deregister_devices
            Aws::SageMaker::Endpoints::DeregisterDevices.build(context)
          when :describe_action
            Aws::SageMaker::Endpoints::DescribeAction.build(context)
          when :describe_algorithm
            Aws::SageMaker::Endpoints::DescribeAlgorithm.build(context)
          when :describe_app
            Aws::SageMaker::Endpoints::DescribeApp.build(context)
          when :describe_app_image_config
            Aws::SageMaker::Endpoints::DescribeAppImageConfig.build(context)
          when :describe_artifact
            Aws::SageMaker::Endpoints::DescribeArtifact.build(context)
          when :describe_auto_ml_job
            Aws::SageMaker::Endpoints::DescribeAutoMLJob.build(context)
          when :describe_auto_ml_job_v2
            Aws::SageMaker::Endpoints::DescribeAutoMLJobV2.build(context)
          when :describe_code_repository
            Aws::SageMaker::Endpoints::DescribeCodeRepository.build(context)
          when :describe_compilation_job
            Aws::SageMaker::Endpoints::DescribeCompilationJob.build(context)
          when :describe_context
            Aws::SageMaker::Endpoints::DescribeContext.build(context)
          when :describe_data_quality_job_definition
            Aws::SageMaker::Endpoints::DescribeDataQualityJobDefinition.build(context)
          when :describe_device
            Aws::SageMaker::Endpoints::DescribeDevice.build(context)
          when :describe_device_fleet
            Aws::SageMaker::Endpoints::DescribeDeviceFleet.build(context)
          when :describe_domain
            Aws::SageMaker::Endpoints::DescribeDomain.build(context)
          when :describe_edge_deployment_plan
            Aws::SageMaker::Endpoints::DescribeEdgeDeploymentPlan.build(context)
          when :describe_edge_packaging_job
            Aws::SageMaker::Endpoints::DescribeEdgePackagingJob.build(context)
          when :describe_endpoint
            Aws::SageMaker::Endpoints::DescribeEndpoint.build(context)
          when :describe_endpoint_config
            Aws::SageMaker::Endpoints::DescribeEndpointConfig.build(context)
          when :describe_experiment
            Aws::SageMaker::Endpoints::DescribeExperiment.build(context)
          when :describe_feature_group
            Aws::SageMaker::Endpoints::DescribeFeatureGroup.build(context)
          when :describe_feature_metadata
            Aws::SageMaker::Endpoints::DescribeFeatureMetadata.build(context)
          when :describe_flow_definition
            Aws::SageMaker::Endpoints::DescribeFlowDefinition.build(context)
          when :describe_hub
            Aws::SageMaker::Endpoints::DescribeHub.build(context)
          when :describe_hub_content
            Aws::SageMaker::Endpoints::DescribeHubContent.build(context)
          when :describe_human_task_ui
            Aws::SageMaker::Endpoints::DescribeHumanTaskUi.build(context)
          when :describe_hyper_parameter_tuning_job
            Aws::SageMaker::Endpoints::DescribeHyperParameterTuningJob.build(context)
          when :describe_image
            Aws::SageMaker::Endpoints::DescribeImage.build(context)
          when :describe_image_version
            Aws::SageMaker::Endpoints::DescribeImageVersion.build(context)
          when :describe_inference_experiment
            Aws::SageMaker::Endpoints::DescribeInferenceExperiment.build(context)
          when :describe_inference_recommendations_job
            Aws::SageMaker::Endpoints::DescribeInferenceRecommendationsJob.build(context)
          when :describe_labeling_job
            Aws::SageMaker::Endpoints::DescribeLabelingJob.build(context)
          when :describe_lineage_group
            Aws::SageMaker::Endpoints::DescribeLineageGroup.build(context)
          when :describe_model
            Aws::SageMaker::Endpoints::DescribeModel.build(context)
          when :describe_model_bias_job_definition
            Aws::SageMaker::Endpoints::DescribeModelBiasJobDefinition.build(context)
          when :describe_model_card
            Aws::SageMaker::Endpoints::DescribeModelCard.build(context)
          when :describe_model_card_export_job
            Aws::SageMaker::Endpoints::DescribeModelCardExportJob.build(context)
          when :describe_model_explainability_job_definition
            Aws::SageMaker::Endpoints::DescribeModelExplainabilityJobDefinition.build(context)
          when :describe_model_package
            Aws::SageMaker::Endpoints::DescribeModelPackage.build(context)
          when :describe_model_package_group
            Aws::SageMaker::Endpoints::DescribeModelPackageGroup.build(context)
          when :describe_model_quality_job_definition
            Aws::SageMaker::Endpoints::DescribeModelQualityJobDefinition.build(context)
          when :describe_monitoring_schedule
            Aws::SageMaker::Endpoints::DescribeMonitoringSchedule.build(context)
          when :describe_notebook_instance
            Aws::SageMaker::Endpoints::DescribeNotebookInstance.build(context)
          when :describe_notebook_instance_lifecycle_config
            Aws::SageMaker::Endpoints::DescribeNotebookInstanceLifecycleConfig.build(context)
          when :describe_pipeline
            Aws::SageMaker::Endpoints::DescribePipeline.build(context)
          when :describe_pipeline_definition_for_execution
            Aws::SageMaker::Endpoints::DescribePipelineDefinitionForExecution.build(context)
          when :describe_pipeline_execution
            Aws::SageMaker::Endpoints::DescribePipelineExecution.build(context)
          when :describe_processing_job
            Aws::SageMaker::Endpoints::DescribeProcessingJob.build(context)
          when :describe_project
            Aws::SageMaker::Endpoints::DescribeProject.build(context)
          when :describe_space
            Aws::SageMaker::Endpoints::DescribeSpace.build(context)
          when :describe_studio_lifecycle_config
            Aws::SageMaker::Endpoints::DescribeStudioLifecycleConfig.build(context)
          when :describe_subscribed_workteam
            Aws::SageMaker::Endpoints::DescribeSubscribedWorkteam.build(context)
          when :describe_training_job
            Aws::SageMaker::Endpoints::DescribeTrainingJob.build(context)
          when :describe_transform_job
            Aws::SageMaker::Endpoints::DescribeTransformJob.build(context)
          when :describe_trial
            Aws::SageMaker::Endpoints::DescribeTrial.build(context)
          when :describe_trial_component
            Aws::SageMaker::Endpoints::DescribeTrialComponent.build(context)
          when :describe_user_profile
            Aws::SageMaker::Endpoints::DescribeUserProfile.build(context)
          when :describe_workforce
            Aws::SageMaker::Endpoints::DescribeWorkforce.build(context)
          when :describe_workteam
            Aws::SageMaker::Endpoints::DescribeWorkteam.build(context)
          when :disable_sagemaker_servicecatalog_portfolio
            Aws::SageMaker::Endpoints::DisableSagemakerServicecatalogPortfolio.build(context)
          when :disassociate_trial_component
            Aws::SageMaker::Endpoints::DisassociateTrialComponent.build(context)
          when :enable_sagemaker_servicecatalog_portfolio
            Aws::SageMaker::Endpoints::EnableSagemakerServicecatalogPortfolio.build(context)
          when :get_device_fleet_report
            Aws::SageMaker::Endpoints::GetDeviceFleetReport.build(context)
          when :get_lineage_group_policy
            Aws::SageMaker::Endpoints::GetLineageGroupPolicy.build(context)
          when :get_model_package_group_policy
            Aws::SageMaker::Endpoints::GetModelPackageGroupPolicy.build(context)
          when :get_sagemaker_servicecatalog_portfolio_status
            Aws::SageMaker::Endpoints::GetSagemakerServicecatalogPortfolioStatus.build(context)
          when :get_search_suggestions
            Aws::SageMaker::Endpoints::GetSearchSuggestions.build(context)
          when :import_hub_content
            Aws::SageMaker::Endpoints::ImportHubContent.build(context)
          when :list_actions
            Aws::SageMaker::Endpoints::ListActions.build(context)
          when :list_algorithms
            Aws::SageMaker::Endpoints::ListAlgorithms.build(context)
          when :list_aliases
            Aws::SageMaker::Endpoints::ListAliases.build(context)
          when :list_app_image_configs
            Aws::SageMaker::Endpoints::ListAppImageConfigs.build(context)
          when :list_apps
            Aws::SageMaker::Endpoints::ListApps.build(context)
          when :list_artifacts
            Aws::SageMaker::Endpoints::ListArtifacts.build(context)
          when :list_associations
            Aws::SageMaker::Endpoints::ListAssociations.build(context)
          when :list_auto_ml_jobs
            Aws::SageMaker::Endpoints::ListAutoMLJobs.build(context)
          when :list_candidates_for_auto_ml_job
            Aws::SageMaker::Endpoints::ListCandidatesForAutoMLJob.build(context)
          when :list_code_repositories
            Aws::SageMaker::Endpoints::ListCodeRepositories.build(context)
          when :list_compilation_jobs
            Aws::SageMaker::Endpoints::ListCompilationJobs.build(context)
          when :list_contexts
            Aws::SageMaker::Endpoints::ListContexts.build(context)
          when :list_data_quality_job_definitions
            Aws::SageMaker::Endpoints::ListDataQualityJobDefinitions.build(context)
          when :list_device_fleets
            Aws::SageMaker::Endpoints::ListDeviceFleets.build(context)
          when :list_devices
            Aws::SageMaker::Endpoints::ListDevices.build(context)
          when :list_domains
            Aws::SageMaker::Endpoints::ListDomains.build(context)
          when :list_edge_deployment_plans
            Aws::SageMaker::Endpoints::ListEdgeDeploymentPlans.build(context)
          when :list_edge_packaging_jobs
            Aws::SageMaker::Endpoints::ListEdgePackagingJobs.build(context)
          when :list_endpoint_configs
            Aws::SageMaker::Endpoints::ListEndpointConfigs.build(context)
          when :list_endpoints
            Aws::SageMaker::Endpoints::ListEndpoints.build(context)
          when :list_experiments
            Aws::SageMaker::Endpoints::ListExperiments.build(context)
          when :list_feature_groups
            Aws::SageMaker::Endpoints::ListFeatureGroups.build(context)
          when :list_flow_definitions
            Aws::SageMaker::Endpoints::ListFlowDefinitions.build(context)
          when :list_hub_content_versions
            Aws::SageMaker::Endpoints::ListHubContentVersions.build(context)
          when :list_hub_contents
            Aws::SageMaker::Endpoints::ListHubContents.build(context)
          when :list_hubs
            Aws::SageMaker::Endpoints::ListHubs.build(context)
          when :list_human_task_uis
            Aws::SageMaker::Endpoints::ListHumanTaskUis.build(context)
          when :list_hyper_parameter_tuning_jobs
            Aws::SageMaker::Endpoints::ListHyperParameterTuningJobs.build(context)
          when :list_image_versions
            Aws::SageMaker::Endpoints::ListImageVersions.build(context)
          when :list_images
            Aws::SageMaker::Endpoints::ListImages.build(context)
          when :list_inference_experiments
            Aws::SageMaker::Endpoints::ListInferenceExperiments.build(context)
          when :list_inference_recommendations_job_steps
            Aws::SageMaker::Endpoints::ListInferenceRecommendationsJobSteps.build(context)
          when :list_inference_recommendations_jobs
            Aws::SageMaker::Endpoints::ListInferenceRecommendationsJobs.build(context)
          when :list_labeling_jobs
            Aws::SageMaker::Endpoints::ListLabelingJobs.build(context)
          when :list_labeling_jobs_for_workteam
            Aws::SageMaker::Endpoints::ListLabelingJobsForWorkteam.build(context)
          when :list_lineage_groups
            Aws::SageMaker::Endpoints::ListLineageGroups.build(context)
          when :list_model_bias_job_definitions
            Aws::SageMaker::Endpoints::ListModelBiasJobDefinitions.build(context)
          when :list_model_card_export_jobs
            Aws::SageMaker::Endpoints::ListModelCardExportJobs.build(context)
          when :list_model_card_versions
            Aws::SageMaker::Endpoints::ListModelCardVersions.build(context)
          when :list_model_cards
            Aws::SageMaker::Endpoints::ListModelCards.build(context)
          when :list_model_explainability_job_definitions
            Aws::SageMaker::Endpoints::ListModelExplainabilityJobDefinitions.build(context)
          when :list_model_metadata
            Aws::SageMaker::Endpoints::ListModelMetadata.build(context)
          when :list_model_package_groups
            Aws::SageMaker::Endpoints::ListModelPackageGroups.build(context)
          when :list_model_packages
            Aws::SageMaker::Endpoints::ListModelPackages.build(context)
          when :list_model_quality_job_definitions
            Aws::SageMaker::Endpoints::ListModelQualityJobDefinitions.build(context)
          when :list_models
            Aws::SageMaker::Endpoints::ListModels.build(context)
          when :list_monitoring_alert_history
            Aws::SageMaker::Endpoints::ListMonitoringAlertHistory.build(context)
          when :list_monitoring_alerts
            Aws::SageMaker::Endpoints::ListMonitoringAlerts.build(context)
          when :list_monitoring_executions
            Aws::SageMaker::Endpoints::ListMonitoringExecutions.build(context)
          when :list_monitoring_schedules
            Aws::SageMaker::Endpoints::ListMonitoringSchedules.build(context)
          when :list_notebook_instance_lifecycle_configs
            Aws::SageMaker::Endpoints::ListNotebookInstanceLifecycleConfigs.build(context)
          when :list_notebook_instances
            Aws::SageMaker::Endpoints::ListNotebookInstances.build(context)
          when :list_pipeline_execution_steps
            Aws::SageMaker::Endpoints::ListPipelineExecutionSteps.build(context)
          when :list_pipeline_executions
            Aws::SageMaker::Endpoints::ListPipelineExecutions.build(context)
          when :list_pipeline_parameters_for_execution
            Aws::SageMaker::Endpoints::ListPipelineParametersForExecution.build(context)
          when :list_pipelines
            Aws::SageMaker::Endpoints::ListPipelines.build(context)
          when :list_processing_jobs
            Aws::SageMaker::Endpoints::ListProcessingJobs.build(context)
          when :list_projects
            Aws::SageMaker::Endpoints::ListProjects.build(context)
          when :list_spaces
            Aws::SageMaker::Endpoints::ListSpaces.build(context)
          when :list_stage_devices
            Aws::SageMaker::Endpoints::ListStageDevices.build(context)
          when :list_studio_lifecycle_configs
            Aws::SageMaker::Endpoints::ListStudioLifecycleConfigs.build(context)
          when :list_subscribed_workteams
            Aws::SageMaker::Endpoints::ListSubscribedWorkteams.build(context)
          when :list_tags
            Aws::SageMaker::Endpoints::ListTags.build(context)
          when :list_training_jobs
            Aws::SageMaker::Endpoints::ListTrainingJobs.build(context)
          when :list_training_jobs_for_hyper_parameter_tuning_job
            Aws::SageMaker::Endpoints::ListTrainingJobsForHyperParameterTuningJob.build(context)
          when :list_transform_jobs
            Aws::SageMaker::Endpoints::ListTransformJobs.build(context)
          when :list_trial_components
            Aws::SageMaker::Endpoints::ListTrialComponents.build(context)
          when :list_trials
            Aws::SageMaker::Endpoints::ListTrials.build(context)
          when :list_user_profiles
            Aws::SageMaker::Endpoints::ListUserProfiles.build(context)
          when :list_workforces
            Aws::SageMaker::Endpoints::ListWorkforces.build(context)
          when :list_workteams
            Aws::SageMaker::Endpoints::ListWorkteams.build(context)
          when :put_model_package_group_policy
            Aws::SageMaker::Endpoints::PutModelPackageGroupPolicy.build(context)
          when :query_lineage
            Aws::SageMaker::Endpoints::QueryLineage.build(context)
          when :register_devices
            Aws::SageMaker::Endpoints::RegisterDevices.build(context)
          when :render_ui_template
            Aws::SageMaker::Endpoints::RenderUiTemplate.build(context)
          when :retry_pipeline_execution
            Aws::SageMaker::Endpoints::RetryPipelineExecution.build(context)
          when :search
            Aws::SageMaker::Endpoints::Search.build(context)
          when :send_pipeline_execution_step_failure
            Aws::SageMaker::Endpoints::SendPipelineExecutionStepFailure.build(context)
          when :send_pipeline_execution_step_success
            Aws::SageMaker::Endpoints::SendPipelineExecutionStepSuccess.build(context)
          when :start_edge_deployment_stage
            Aws::SageMaker::Endpoints::StartEdgeDeploymentStage.build(context)
          when :start_inference_experiment
            Aws::SageMaker::Endpoints::StartInferenceExperiment.build(context)
          when :start_monitoring_schedule
            Aws::SageMaker::Endpoints::StartMonitoringSchedule.build(context)
          when :start_notebook_instance
            Aws::SageMaker::Endpoints::StartNotebookInstance.build(context)
          when :start_pipeline_execution
            Aws::SageMaker::Endpoints::StartPipelineExecution.build(context)
          when :stop_auto_ml_job
            Aws::SageMaker::Endpoints::StopAutoMLJob.build(context)
          when :stop_compilation_job
            Aws::SageMaker::Endpoints::StopCompilationJob.build(context)
          when :stop_edge_deployment_stage
            Aws::SageMaker::Endpoints::StopEdgeDeploymentStage.build(context)
          when :stop_edge_packaging_job
            Aws::SageMaker::Endpoints::StopEdgePackagingJob.build(context)
          when :stop_hyper_parameter_tuning_job
            Aws::SageMaker::Endpoints::StopHyperParameterTuningJob.build(context)
          when :stop_inference_experiment
            Aws::SageMaker::Endpoints::StopInferenceExperiment.build(context)
          when :stop_inference_recommendations_job
            Aws::SageMaker::Endpoints::StopInferenceRecommendationsJob.build(context)
          when :stop_labeling_job
            Aws::SageMaker::Endpoints::StopLabelingJob.build(context)
          when :stop_monitoring_schedule
            Aws::SageMaker::Endpoints::StopMonitoringSchedule.build(context)
          when :stop_notebook_instance
            Aws::SageMaker::Endpoints::StopNotebookInstance.build(context)
          when :stop_pipeline_execution
            Aws::SageMaker::Endpoints::StopPipelineExecution.build(context)
          when :stop_processing_job
            Aws::SageMaker::Endpoints::StopProcessingJob.build(context)
          when :stop_training_job
            Aws::SageMaker::Endpoints::StopTrainingJob.build(context)
          when :stop_transform_job
            Aws::SageMaker::Endpoints::StopTransformJob.build(context)
          when :update_action
            Aws::SageMaker::Endpoints::UpdateAction.build(context)
          when :update_app_image_config
            Aws::SageMaker::Endpoints::UpdateAppImageConfig.build(context)
          when :update_artifact
            Aws::SageMaker::Endpoints::UpdateArtifact.build(context)
          when :update_code_repository
            Aws::SageMaker::Endpoints::UpdateCodeRepository.build(context)
          when :update_context
            Aws::SageMaker::Endpoints::UpdateContext.build(context)
          when :update_device_fleet
            Aws::SageMaker::Endpoints::UpdateDeviceFleet.build(context)
          when :update_devices
            Aws::SageMaker::Endpoints::UpdateDevices.build(context)
          when :update_domain
            Aws::SageMaker::Endpoints::UpdateDomain.build(context)
          when :update_endpoint
            Aws::SageMaker::Endpoints::UpdateEndpoint.build(context)
          when :update_endpoint_weights_and_capacities
            Aws::SageMaker::Endpoints::UpdateEndpointWeightsAndCapacities.build(context)
          when :update_experiment
            Aws::SageMaker::Endpoints::UpdateExperiment.build(context)
          when :update_feature_group
            Aws::SageMaker::Endpoints::UpdateFeatureGroup.build(context)
          when :update_feature_metadata
            Aws::SageMaker::Endpoints::UpdateFeatureMetadata.build(context)
          when :update_hub
            Aws::SageMaker::Endpoints::UpdateHub.build(context)
          when :update_image
            Aws::SageMaker::Endpoints::UpdateImage.build(context)
          when :update_image_version
            Aws::SageMaker::Endpoints::UpdateImageVersion.build(context)
          when :update_inference_experiment
            Aws::SageMaker::Endpoints::UpdateInferenceExperiment.build(context)
          when :update_model_card
            Aws::SageMaker::Endpoints::UpdateModelCard.build(context)
          when :update_model_package
            Aws::SageMaker::Endpoints::UpdateModelPackage.build(context)
          when :update_monitoring_alert
            Aws::SageMaker::Endpoints::UpdateMonitoringAlert.build(context)
          when :update_monitoring_schedule
            Aws::SageMaker::Endpoints::UpdateMonitoringSchedule.build(context)
          when :update_notebook_instance
            Aws::SageMaker::Endpoints::UpdateNotebookInstance.build(context)
          when :update_notebook_instance_lifecycle_config
            Aws::SageMaker::Endpoints::UpdateNotebookInstanceLifecycleConfig.build(context)
          when :update_pipeline
            Aws::SageMaker::Endpoints::UpdatePipeline.build(context)
          when :update_pipeline_execution
            Aws::SageMaker::Endpoints::UpdatePipelineExecution.build(context)
          when :update_project
            Aws::SageMaker::Endpoints::UpdateProject.build(context)
          when :update_space
            Aws::SageMaker::Endpoints::UpdateSpace.build(context)
          when :update_training_job
            Aws::SageMaker::Endpoints::UpdateTrainingJob.build(context)
          when :update_trial
            Aws::SageMaker::Endpoints::UpdateTrial.build(context)
          when :update_trial_component
            Aws::SageMaker::Endpoints::UpdateTrialComponent.build(context)
          when :update_user_profile
            Aws::SageMaker::Endpoints::UpdateUserProfile.build(context)
          when :update_workforce
            Aws::SageMaker::Endpoints::UpdateWorkforce.build(context)
          when :update_workteam
            Aws::SageMaker::Endpoints::UpdateWorkteam.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
