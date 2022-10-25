# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CodeDeploy
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::CodeDeploy::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::CodeDeploy::EndpointParameters`'
      ) do |cfg|
        Aws::CodeDeploy::EndpointProvider.new
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
          when :add_tags_to_on_premises_instances
            Aws::CodeDeploy::Endpoints::AddTagsToOnPremisesInstances.build(context)
          when :batch_get_application_revisions
            Aws::CodeDeploy::Endpoints::BatchGetApplicationRevisions.build(context)
          when :batch_get_applications
            Aws::CodeDeploy::Endpoints::BatchGetApplications.build(context)
          when :batch_get_deployment_groups
            Aws::CodeDeploy::Endpoints::BatchGetDeploymentGroups.build(context)
          when :batch_get_deployment_instances
            Aws::CodeDeploy::Endpoints::BatchGetDeploymentInstances.build(context)
          when :batch_get_deployment_targets
            Aws::CodeDeploy::Endpoints::BatchGetDeploymentTargets.build(context)
          when :batch_get_deployments
            Aws::CodeDeploy::Endpoints::BatchGetDeployments.build(context)
          when :batch_get_on_premises_instances
            Aws::CodeDeploy::Endpoints::BatchGetOnPremisesInstances.build(context)
          when :continue_deployment
            Aws::CodeDeploy::Endpoints::ContinueDeployment.build(context)
          when :create_application
            Aws::CodeDeploy::Endpoints::CreateApplication.build(context)
          when :create_deployment
            Aws::CodeDeploy::Endpoints::CreateDeployment.build(context)
          when :create_deployment_config
            Aws::CodeDeploy::Endpoints::CreateDeploymentConfig.build(context)
          when :create_deployment_group
            Aws::CodeDeploy::Endpoints::CreateDeploymentGroup.build(context)
          when :delete_application
            Aws::CodeDeploy::Endpoints::DeleteApplication.build(context)
          when :delete_deployment_config
            Aws::CodeDeploy::Endpoints::DeleteDeploymentConfig.build(context)
          when :delete_deployment_group
            Aws::CodeDeploy::Endpoints::DeleteDeploymentGroup.build(context)
          when :delete_git_hub_account_token
            Aws::CodeDeploy::Endpoints::DeleteGitHubAccountToken.build(context)
          when :delete_resources_by_external_id
            Aws::CodeDeploy::Endpoints::DeleteResourcesByExternalId.build(context)
          when :deregister_on_premises_instance
            Aws::CodeDeploy::Endpoints::DeregisterOnPremisesInstance.build(context)
          when :get_application
            Aws::CodeDeploy::Endpoints::GetApplication.build(context)
          when :get_application_revision
            Aws::CodeDeploy::Endpoints::GetApplicationRevision.build(context)
          when :get_deployment
            Aws::CodeDeploy::Endpoints::GetDeployment.build(context)
          when :get_deployment_config
            Aws::CodeDeploy::Endpoints::GetDeploymentConfig.build(context)
          when :get_deployment_group
            Aws::CodeDeploy::Endpoints::GetDeploymentGroup.build(context)
          when :get_deployment_instance
            Aws::CodeDeploy::Endpoints::GetDeploymentInstance.build(context)
          when :get_deployment_target
            Aws::CodeDeploy::Endpoints::GetDeploymentTarget.build(context)
          when :get_on_premises_instance
            Aws::CodeDeploy::Endpoints::GetOnPremisesInstance.build(context)
          when :list_application_revisions
            Aws::CodeDeploy::Endpoints::ListApplicationRevisions.build(context)
          when :list_applications
            Aws::CodeDeploy::Endpoints::ListApplications.build(context)
          when :list_deployment_configs
            Aws::CodeDeploy::Endpoints::ListDeploymentConfigs.build(context)
          when :list_deployment_groups
            Aws::CodeDeploy::Endpoints::ListDeploymentGroups.build(context)
          when :list_deployment_instances
            Aws::CodeDeploy::Endpoints::ListDeploymentInstances.build(context)
          when :list_deployment_targets
            Aws::CodeDeploy::Endpoints::ListDeploymentTargets.build(context)
          when :list_deployments
            Aws::CodeDeploy::Endpoints::ListDeployments.build(context)
          when :list_git_hub_account_token_names
            Aws::CodeDeploy::Endpoints::ListGitHubAccountTokenNames.build(context)
          when :list_on_premises_instances
            Aws::CodeDeploy::Endpoints::ListOnPremisesInstances.build(context)
          when :list_tags_for_resource
            Aws::CodeDeploy::Endpoints::ListTagsForResource.build(context)
          when :put_lifecycle_event_hook_execution_status
            Aws::CodeDeploy::Endpoints::PutLifecycleEventHookExecutionStatus.build(context)
          when :register_application_revision
            Aws::CodeDeploy::Endpoints::RegisterApplicationRevision.build(context)
          when :register_on_premises_instance
            Aws::CodeDeploy::Endpoints::RegisterOnPremisesInstance.build(context)
          when :remove_tags_from_on_premises_instances
            Aws::CodeDeploy::Endpoints::RemoveTagsFromOnPremisesInstances.build(context)
          when :skip_wait_time_for_instance_termination
            Aws::CodeDeploy::Endpoints::SkipWaitTimeForInstanceTermination.build(context)
          when :stop_deployment
            Aws::CodeDeploy::Endpoints::StopDeployment.build(context)
          when :tag_resource
            Aws::CodeDeploy::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::CodeDeploy::Endpoints::UntagResource.build(context)
          when :update_application
            Aws::CodeDeploy::Endpoints::UpdateApplication.build(context)
          when :update_deployment_group
            Aws::CodeDeploy::Endpoints::UpdateDeploymentGroup.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
