# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::EMR
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::EMR::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::EMR::EndpointParameters`'
      ) do |cfg|
        Aws::EMR::EndpointProvider.new
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
          when :add_instance_fleet
            Aws::EMR::Endpoints::AddInstanceFleet.build(context)
          when :add_instance_groups
            Aws::EMR::Endpoints::AddInstanceGroups.build(context)
          when :add_job_flow_steps
            Aws::EMR::Endpoints::AddJobFlowSteps.build(context)
          when :add_tags
            Aws::EMR::Endpoints::AddTags.build(context)
          when :cancel_steps
            Aws::EMR::Endpoints::CancelSteps.build(context)
          when :create_security_configuration
            Aws::EMR::Endpoints::CreateSecurityConfiguration.build(context)
          when :create_studio
            Aws::EMR::Endpoints::CreateStudio.build(context)
          when :create_studio_session_mapping
            Aws::EMR::Endpoints::CreateStudioSessionMapping.build(context)
          when :delete_security_configuration
            Aws::EMR::Endpoints::DeleteSecurityConfiguration.build(context)
          when :delete_studio
            Aws::EMR::Endpoints::DeleteStudio.build(context)
          when :delete_studio_session_mapping
            Aws::EMR::Endpoints::DeleteStudioSessionMapping.build(context)
          when :describe_cluster
            Aws::EMR::Endpoints::DescribeCluster.build(context)
          when :describe_job_flows
            Aws::EMR::Endpoints::DescribeJobFlows.build(context)
          when :describe_notebook_execution
            Aws::EMR::Endpoints::DescribeNotebookExecution.build(context)
          when :describe_release_label
            Aws::EMR::Endpoints::DescribeReleaseLabel.build(context)
          when :describe_security_configuration
            Aws::EMR::Endpoints::DescribeSecurityConfiguration.build(context)
          when :describe_step
            Aws::EMR::Endpoints::DescribeStep.build(context)
          when :describe_studio
            Aws::EMR::Endpoints::DescribeStudio.build(context)
          when :get_auto_termination_policy
            Aws::EMR::Endpoints::GetAutoTerminationPolicy.build(context)
          when :get_block_public_access_configuration
            Aws::EMR::Endpoints::GetBlockPublicAccessConfiguration.build(context)
          when :get_cluster_session_credentials
            Aws::EMR::Endpoints::GetClusterSessionCredentials.build(context)
          when :get_managed_scaling_policy
            Aws::EMR::Endpoints::GetManagedScalingPolicy.build(context)
          when :get_studio_session_mapping
            Aws::EMR::Endpoints::GetStudioSessionMapping.build(context)
          when :list_bootstrap_actions
            Aws::EMR::Endpoints::ListBootstrapActions.build(context)
          when :list_clusters
            Aws::EMR::Endpoints::ListClusters.build(context)
          when :list_instance_fleets
            Aws::EMR::Endpoints::ListInstanceFleets.build(context)
          when :list_instance_groups
            Aws::EMR::Endpoints::ListInstanceGroups.build(context)
          when :list_instances
            Aws::EMR::Endpoints::ListInstances.build(context)
          when :list_notebook_executions
            Aws::EMR::Endpoints::ListNotebookExecutions.build(context)
          when :list_release_labels
            Aws::EMR::Endpoints::ListReleaseLabels.build(context)
          when :list_security_configurations
            Aws::EMR::Endpoints::ListSecurityConfigurations.build(context)
          when :list_steps
            Aws::EMR::Endpoints::ListSteps.build(context)
          when :list_studio_session_mappings
            Aws::EMR::Endpoints::ListStudioSessionMappings.build(context)
          when :list_studios
            Aws::EMR::Endpoints::ListStudios.build(context)
          when :list_supported_instance_types
            Aws::EMR::Endpoints::ListSupportedInstanceTypes.build(context)
          when :modify_cluster
            Aws::EMR::Endpoints::ModifyCluster.build(context)
          when :modify_instance_fleet
            Aws::EMR::Endpoints::ModifyInstanceFleet.build(context)
          when :modify_instance_groups
            Aws::EMR::Endpoints::ModifyInstanceGroups.build(context)
          when :put_auto_scaling_policy
            Aws::EMR::Endpoints::PutAutoScalingPolicy.build(context)
          when :put_auto_termination_policy
            Aws::EMR::Endpoints::PutAutoTerminationPolicy.build(context)
          when :put_block_public_access_configuration
            Aws::EMR::Endpoints::PutBlockPublicAccessConfiguration.build(context)
          when :put_managed_scaling_policy
            Aws::EMR::Endpoints::PutManagedScalingPolicy.build(context)
          when :remove_auto_scaling_policy
            Aws::EMR::Endpoints::RemoveAutoScalingPolicy.build(context)
          when :remove_auto_termination_policy
            Aws::EMR::Endpoints::RemoveAutoTerminationPolicy.build(context)
          when :remove_managed_scaling_policy
            Aws::EMR::Endpoints::RemoveManagedScalingPolicy.build(context)
          when :remove_tags
            Aws::EMR::Endpoints::RemoveTags.build(context)
          when :run_job_flow
            Aws::EMR::Endpoints::RunJobFlow.build(context)
          when :set_termination_protection
            Aws::EMR::Endpoints::SetTerminationProtection.build(context)
          when :set_visible_to_all_users
            Aws::EMR::Endpoints::SetVisibleToAllUsers.build(context)
          when :start_notebook_execution
            Aws::EMR::Endpoints::StartNotebookExecution.build(context)
          when :stop_notebook_execution
            Aws::EMR::Endpoints::StopNotebookExecution.build(context)
          when :terminate_job_flows
            Aws::EMR::Endpoints::TerminateJobFlows.build(context)
          when :update_studio
            Aws::EMR::Endpoints::UpdateStudio.build(context)
          when :update_studio_session_mapping
            Aws::EMR::Endpoints::UpdateStudioSessionMapping.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
