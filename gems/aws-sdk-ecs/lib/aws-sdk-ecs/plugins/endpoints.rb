# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ECS
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::ECS::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::ECS::EndpointParameters`'
      ) do |cfg|
        Aws::ECS::EndpointProvider.new
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
          when :create_capacity_provider
            Aws::ECS::Endpoints::CreateCapacityProvider.build(context)
          when :create_cluster
            Aws::ECS::Endpoints::CreateCluster.build(context)
          when :create_service
            Aws::ECS::Endpoints::CreateService.build(context)
          when :create_task_set
            Aws::ECS::Endpoints::CreateTaskSet.build(context)
          when :delete_account_setting
            Aws::ECS::Endpoints::DeleteAccountSetting.build(context)
          when :delete_attributes
            Aws::ECS::Endpoints::DeleteAttributes.build(context)
          when :delete_capacity_provider
            Aws::ECS::Endpoints::DeleteCapacityProvider.build(context)
          when :delete_cluster
            Aws::ECS::Endpoints::DeleteCluster.build(context)
          when :delete_service
            Aws::ECS::Endpoints::DeleteService.build(context)
          when :delete_task_definitions
            Aws::ECS::Endpoints::DeleteTaskDefinitions.build(context)
          when :delete_task_set
            Aws::ECS::Endpoints::DeleteTaskSet.build(context)
          when :deregister_container_instance
            Aws::ECS::Endpoints::DeregisterContainerInstance.build(context)
          when :deregister_task_definition
            Aws::ECS::Endpoints::DeregisterTaskDefinition.build(context)
          when :describe_capacity_providers
            Aws::ECS::Endpoints::DescribeCapacityProviders.build(context)
          when :describe_clusters
            Aws::ECS::Endpoints::DescribeClusters.build(context)
          when :describe_container_instances
            Aws::ECS::Endpoints::DescribeContainerInstances.build(context)
          when :describe_services
            Aws::ECS::Endpoints::DescribeServices.build(context)
          when :describe_task_definition
            Aws::ECS::Endpoints::DescribeTaskDefinition.build(context)
          when :describe_task_sets
            Aws::ECS::Endpoints::DescribeTaskSets.build(context)
          when :describe_tasks
            Aws::ECS::Endpoints::DescribeTasks.build(context)
          when :discover_poll_endpoint
            Aws::ECS::Endpoints::DiscoverPollEndpoint.build(context)
          when :execute_command
            Aws::ECS::Endpoints::ExecuteCommand.build(context)
          when :get_task_protection
            Aws::ECS::Endpoints::GetTaskProtection.build(context)
          when :list_account_settings
            Aws::ECS::Endpoints::ListAccountSettings.build(context)
          when :list_attributes
            Aws::ECS::Endpoints::ListAttributes.build(context)
          when :list_clusters
            Aws::ECS::Endpoints::ListClusters.build(context)
          when :list_container_instances
            Aws::ECS::Endpoints::ListContainerInstances.build(context)
          when :list_services
            Aws::ECS::Endpoints::ListServices.build(context)
          when :list_services_by_namespace
            Aws::ECS::Endpoints::ListServicesByNamespace.build(context)
          when :list_tags_for_resource
            Aws::ECS::Endpoints::ListTagsForResource.build(context)
          when :list_task_definition_families
            Aws::ECS::Endpoints::ListTaskDefinitionFamilies.build(context)
          when :list_task_definitions
            Aws::ECS::Endpoints::ListTaskDefinitions.build(context)
          when :list_tasks
            Aws::ECS::Endpoints::ListTasks.build(context)
          when :put_account_setting
            Aws::ECS::Endpoints::PutAccountSetting.build(context)
          when :put_account_setting_default
            Aws::ECS::Endpoints::PutAccountSettingDefault.build(context)
          when :put_attributes
            Aws::ECS::Endpoints::PutAttributes.build(context)
          when :put_cluster_capacity_providers
            Aws::ECS::Endpoints::PutClusterCapacityProviders.build(context)
          when :register_container_instance
            Aws::ECS::Endpoints::RegisterContainerInstance.build(context)
          when :register_task_definition
            Aws::ECS::Endpoints::RegisterTaskDefinition.build(context)
          when :run_task
            Aws::ECS::Endpoints::RunTask.build(context)
          when :start_task
            Aws::ECS::Endpoints::StartTask.build(context)
          when :stop_task
            Aws::ECS::Endpoints::StopTask.build(context)
          when :submit_attachment_state_changes
            Aws::ECS::Endpoints::SubmitAttachmentStateChanges.build(context)
          when :submit_container_state_change
            Aws::ECS::Endpoints::SubmitContainerStateChange.build(context)
          when :submit_task_state_change
            Aws::ECS::Endpoints::SubmitTaskStateChange.build(context)
          when :tag_resource
            Aws::ECS::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::ECS::Endpoints::UntagResource.build(context)
          when :update_capacity_provider
            Aws::ECS::Endpoints::UpdateCapacityProvider.build(context)
          when :update_cluster
            Aws::ECS::Endpoints::UpdateCluster.build(context)
          when :update_cluster_settings
            Aws::ECS::Endpoints::UpdateClusterSettings.build(context)
          when :update_container_agent
            Aws::ECS::Endpoints::UpdateContainerAgent.build(context)
          when :update_container_instances_state
            Aws::ECS::Endpoints::UpdateContainerInstancesState.build(context)
          when :update_service
            Aws::ECS::Endpoints::UpdateService.build(context)
          when :update_service_primary_task_set
            Aws::ECS::Endpoints::UpdateServicePrimaryTaskSet.build(context)
          when :update_task_protection
            Aws::ECS::Endpoints::UpdateTaskProtection.build(context)
          when :update_task_set
            Aws::ECS::Endpoints::UpdateTaskSet.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
