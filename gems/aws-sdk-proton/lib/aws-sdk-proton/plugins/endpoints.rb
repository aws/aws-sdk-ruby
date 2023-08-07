# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Proton
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Proton::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Proton::EndpointParameters`'
      ) do |cfg|
        Aws::Proton::EndpointProvider.new
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
          when :accept_environment_account_connection
            Aws::Proton::Endpoints::AcceptEnvironmentAccountConnection.build(context)
          when :cancel_component_deployment
            Aws::Proton::Endpoints::CancelComponentDeployment.build(context)
          when :cancel_environment_deployment
            Aws::Proton::Endpoints::CancelEnvironmentDeployment.build(context)
          when :cancel_service_instance_deployment
            Aws::Proton::Endpoints::CancelServiceInstanceDeployment.build(context)
          when :cancel_service_pipeline_deployment
            Aws::Proton::Endpoints::CancelServicePipelineDeployment.build(context)
          when :create_component
            Aws::Proton::Endpoints::CreateComponent.build(context)
          when :create_environment
            Aws::Proton::Endpoints::CreateEnvironment.build(context)
          when :create_environment_account_connection
            Aws::Proton::Endpoints::CreateEnvironmentAccountConnection.build(context)
          when :create_environment_template
            Aws::Proton::Endpoints::CreateEnvironmentTemplate.build(context)
          when :create_environment_template_version
            Aws::Proton::Endpoints::CreateEnvironmentTemplateVersion.build(context)
          when :create_repository
            Aws::Proton::Endpoints::CreateRepository.build(context)
          when :create_service
            Aws::Proton::Endpoints::CreateService.build(context)
          when :create_service_instance
            Aws::Proton::Endpoints::CreateServiceInstance.build(context)
          when :create_service_sync_config
            Aws::Proton::Endpoints::CreateServiceSyncConfig.build(context)
          when :create_service_template
            Aws::Proton::Endpoints::CreateServiceTemplate.build(context)
          when :create_service_template_version
            Aws::Proton::Endpoints::CreateServiceTemplateVersion.build(context)
          when :create_template_sync_config
            Aws::Proton::Endpoints::CreateTemplateSyncConfig.build(context)
          when :delete_component
            Aws::Proton::Endpoints::DeleteComponent.build(context)
          when :delete_deployment
            Aws::Proton::Endpoints::DeleteDeployment.build(context)
          when :delete_environment
            Aws::Proton::Endpoints::DeleteEnvironment.build(context)
          when :delete_environment_account_connection
            Aws::Proton::Endpoints::DeleteEnvironmentAccountConnection.build(context)
          when :delete_environment_template
            Aws::Proton::Endpoints::DeleteEnvironmentTemplate.build(context)
          when :delete_environment_template_version
            Aws::Proton::Endpoints::DeleteEnvironmentTemplateVersion.build(context)
          when :delete_repository
            Aws::Proton::Endpoints::DeleteRepository.build(context)
          when :delete_service
            Aws::Proton::Endpoints::DeleteService.build(context)
          when :delete_service_sync_config
            Aws::Proton::Endpoints::DeleteServiceSyncConfig.build(context)
          when :delete_service_template
            Aws::Proton::Endpoints::DeleteServiceTemplate.build(context)
          when :delete_service_template_version
            Aws::Proton::Endpoints::DeleteServiceTemplateVersion.build(context)
          when :delete_template_sync_config
            Aws::Proton::Endpoints::DeleteTemplateSyncConfig.build(context)
          when :get_account_settings
            Aws::Proton::Endpoints::GetAccountSettings.build(context)
          when :get_component
            Aws::Proton::Endpoints::GetComponent.build(context)
          when :get_deployment
            Aws::Proton::Endpoints::GetDeployment.build(context)
          when :get_environment
            Aws::Proton::Endpoints::GetEnvironment.build(context)
          when :get_environment_account_connection
            Aws::Proton::Endpoints::GetEnvironmentAccountConnection.build(context)
          when :get_environment_template
            Aws::Proton::Endpoints::GetEnvironmentTemplate.build(context)
          when :get_environment_template_version
            Aws::Proton::Endpoints::GetEnvironmentTemplateVersion.build(context)
          when :get_repository
            Aws::Proton::Endpoints::GetRepository.build(context)
          when :get_repository_sync_status
            Aws::Proton::Endpoints::GetRepositorySyncStatus.build(context)
          when :get_resources_summary
            Aws::Proton::Endpoints::GetResourcesSummary.build(context)
          when :get_service
            Aws::Proton::Endpoints::GetService.build(context)
          when :get_service_instance
            Aws::Proton::Endpoints::GetServiceInstance.build(context)
          when :get_service_instance_sync_status
            Aws::Proton::Endpoints::GetServiceInstanceSyncStatus.build(context)
          when :get_service_sync_blocker_summary
            Aws::Proton::Endpoints::GetServiceSyncBlockerSummary.build(context)
          when :get_service_sync_config
            Aws::Proton::Endpoints::GetServiceSyncConfig.build(context)
          when :get_service_template
            Aws::Proton::Endpoints::GetServiceTemplate.build(context)
          when :get_service_template_version
            Aws::Proton::Endpoints::GetServiceTemplateVersion.build(context)
          when :get_template_sync_config
            Aws::Proton::Endpoints::GetTemplateSyncConfig.build(context)
          when :get_template_sync_status
            Aws::Proton::Endpoints::GetTemplateSyncStatus.build(context)
          when :list_component_outputs
            Aws::Proton::Endpoints::ListComponentOutputs.build(context)
          when :list_component_provisioned_resources
            Aws::Proton::Endpoints::ListComponentProvisionedResources.build(context)
          when :list_components
            Aws::Proton::Endpoints::ListComponents.build(context)
          when :list_deployments
            Aws::Proton::Endpoints::ListDeployments.build(context)
          when :list_environment_account_connections
            Aws::Proton::Endpoints::ListEnvironmentAccountConnections.build(context)
          when :list_environment_outputs
            Aws::Proton::Endpoints::ListEnvironmentOutputs.build(context)
          when :list_environment_provisioned_resources
            Aws::Proton::Endpoints::ListEnvironmentProvisionedResources.build(context)
          when :list_environment_template_versions
            Aws::Proton::Endpoints::ListEnvironmentTemplateVersions.build(context)
          when :list_environment_templates
            Aws::Proton::Endpoints::ListEnvironmentTemplates.build(context)
          when :list_environments
            Aws::Proton::Endpoints::ListEnvironments.build(context)
          when :list_repositories
            Aws::Proton::Endpoints::ListRepositories.build(context)
          when :list_repository_sync_definitions
            Aws::Proton::Endpoints::ListRepositorySyncDefinitions.build(context)
          when :list_service_instance_outputs
            Aws::Proton::Endpoints::ListServiceInstanceOutputs.build(context)
          when :list_service_instance_provisioned_resources
            Aws::Proton::Endpoints::ListServiceInstanceProvisionedResources.build(context)
          when :list_service_instances
            Aws::Proton::Endpoints::ListServiceInstances.build(context)
          when :list_service_pipeline_outputs
            Aws::Proton::Endpoints::ListServicePipelineOutputs.build(context)
          when :list_service_pipeline_provisioned_resources
            Aws::Proton::Endpoints::ListServicePipelineProvisionedResources.build(context)
          when :list_service_template_versions
            Aws::Proton::Endpoints::ListServiceTemplateVersions.build(context)
          when :list_service_templates
            Aws::Proton::Endpoints::ListServiceTemplates.build(context)
          when :list_services
            Aws::Proton::Endpoints::ListServices.build(context)
          when :list_tags_for_resource
            Aws::Proton::Endpoints::ListTagsForResource.build(context)
          when :notify_resource_deployment_status_change
            Aws::Proton::Endpoints::NotifyResourceDeploymentStatusChange.build(context)
          when :reject_environment_account_connection
            Aws::Proton::Endpoints::RejectEnvironmentAccountConnection.build(context)
          when :tag_resource
            Aws::Proton::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::Proton::Endpoints::UntagResource.build(context)
          when :update_account_settings
            Aws::Proton::Endpoints::UpdateAccountSettings.build(context)
          when :update_component
            Aws::Proton::Endpoints::UpdateComponent.build(context)
          when :update_environment
            Aws::Proton::Endpoints::UpdateEnvironment.build(context)
          when :update_environment_account_connection
            Aws::Proton::Endpoints::UpdateEnvironmentAccountConnection.build(context)
          when :update_environment_template
            Aws::Proton::Endpoints::UpdateEnvironmentTemplate.build(context)
          when :update_environment_template_version
            Aws::Proton::Endpoints::UpdateEnvironmentTemplateVersion.build(context)
          when :update_service
            Aws::Proton::Endpoints::UpdateService.build(context)
          when :update_service_instance
            Aws::Proton::Endpoints::UpdateServiceInstance.build(context)
          when :update_service_pipeline
            Aws::Proton::Endpoints::UpdateServicePipeline.build(context)
          when :update_service_sync_blocker
            Aws::Proton::Endpoints::UpdateServiceSyncBlocker.build(context)
          when :update_service_sync_config
            Aws::Proton::Endpoints::UpdateServiceSyncConfig.build(context)
          when :update_service_template
            Aws::Proton::Endpoints::UpdateServiceTemplate.build(context)
          when :update_service_template_version
            Aws::Proton::Endpoints::UpdateServiceTemplateVersion.build(context)
          when :update_template_sync_config
            Aws::Proton::Endpoints::UpdateTemplateSyncConfig.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
