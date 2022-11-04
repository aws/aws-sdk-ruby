# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::OpsWorks
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::OpsWorks::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::OpsWorks::EndpointParameters`'
      ) do |cfg|
        Aws::OpsWorks::EndpointProvider.new
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
          when :assign_instance
            Aws::OpsWorks::Endpoints::AssignInstance.build(context)
          when :assign_volume
            Aws::OpsWorks::Endpoints::AssignVolume.build(context)
          when :associate_elastic_ip
            Aws::OpsWorks::Endpoints::AssociateElasticIp.build(context)
          when :attach_elastic_load_balancer
            Aws::OpsWorks::Endpoints::AttachElasticLoadBalancer.build(context)
          when :clone_stack
            Aws::OpsWorks::Endpoints::CloneStack.build(context)
          when :create_app
            Aws::OpsWorks::Endpoints::CreateApp.build(context)
          when :create_deployment
            Aws::OpsWorks::Endpoints::CreateDeployment.build(context)
          when :create_instance
            Aws::OpsWorks::Endpoints::CreateInstance.build(context)
          when :create_layer
            Aws::OpsWorks::Endpoints::CreateLayer.build(context)
          when :create_stack
            Aws::OpsWorks::Endpoints::CreateStack.build(context)
          when :create_user_profile
            Aws::OpsWorks::Endpoints::CreateUserProfile.build(context)
          when :delete_app
            Aws::OpsWorks::Endpoints::DeleteApp.build(context)
          when :delete_instance
            Aws::OpsWorks::Endpoints::DeleteInstance.build(context)
          when :delete_layer
            Aws::OpsWorks::Endpoints::DeleteLayer.build(context)
          when :delete_stack
            Aws::OpsWorks::Endpoints::DeleteStack.build(context)
          when :delete_user_profile
            Aws::OpsWorks::Endpoints::DeleteUserProfile.build(context)
          when :deregister_ecs_cluster
            Aws::OpsWorks::Endpoints::DeregisterEcsCluster.build(context)
          when :deregister_elastic_ip
            Aws::OpsWorks::Endpoints::DeregisterElasticIp.build(context)
          when :deregister_instance
            Aws::OpsWorks::Endpoints::DeregisterInstance.build(context)
          when :deregister_rds_db_instance
            Aws::OpsWorks::Endpoints::DeregisterRdsDbInstance.build(context)
          when :deregister_volume
            Aws::OpsWorks::Endpoints::DeregisterVolume.build(context)
          when :describe_agent_versions
            Aws::OpsWorks::Endpoints::DescribeAgentVersions.build(context)
          when :describe_apps
            Aws::OpsWorks::Endpoints::DescribeApps.build(context)
          when :describe_commands
            Aws::OpsWorks::Endpoints::DescribeCommands.build(context)
          when :describe_deployments
            Aws::OpsWorks::Endpoints::DescribeDeployments.build(context)
          when :describe_ecs_clusters
            Aws::OpsWorks::Endpoints::DescribeEcsClusters.build(context)
          when :describe_elastic_ips
            Aws::OpsWorks::Endpoints::DescribeElasticIps.build(context)
          when :describe_elastic_load_balancers
            Aws::OpsWorks::Endpoints::DescribeElasticLoadBalancers.build(context)
          when :describe_instances
            Aws::OpsWorks::Endpoints::DescribeInstances.build(context)
          when :describe_layers
            Aws::OpsWorks::Endpoints::DescribeLayers.build(context)
          when :describe_load_based_auto_scaling
            Aws::OpsWorks::Endpoints::DescribeLoadBasedAutoScaling.build(context)
          when :describe_my_user_profile
            Aws::OpsWorks::Endpoints::DescribeMyUserProfile.build(context)
          when :describe_operating_systems
            Aws::OpsWorks::Endpoints::DescribeOperatingSystems.build(context)
          when :describe_permissions
            Aws::OpsWorks::Endpoints::DescribePermissions.build(context)
          when :describe_raid_arrays
            Aws::OpsWorks::Endpoints::DescribeRaidArrays.build(context)
          when :describe_rds_db_instances
            Aws::OpsWorks::Endpoints::DescribeRdsDbInstances.build(context)
          when :describe_service_errors
            Aws::OpsWorks::Endpoints::DescribeServiceErrors.build(context)
          when :describe_stack_provisioning_parameters
            Aws::OpsWorks::Endpoints::DescribeStackProvisioningParameters.build(context)
          when :describe_stack_summary
            Aws::OpsWorks::Endpoints::DescribeStackSummary.build(context)
          when :describe_stacks
            Aws::OpsWorks::Endpoints::DescribeStacks.build(context)
          when :describe_time_based_auto_scaling
            Aws::OpsWorks::Endpoints::DescribeTimeBasedAutoScaling.build(context)
          when :describe_user_profiles
            Aws::OpsWorks::Endpoints::DescribeUserProfiles.build(context)
          when :describe_volumes
            Aws::OpsWorks::Endpoints::DescribeVolumes.build(context)
          when :detach_elastic_load_balancer
            Aws::OpsWorks::Endpoints::DetachElasticLoadBalancer.build(context)
          when :disassociate_elastic_ip
            Aws::OpsWorks::Endpoints::DisassociateElasticIp.build(context)
          when :get_hostname_suggestion
            Aws::OpsWorks::Endpoints::GetHostnameSuggestion.build(context)
          when :grant_access
            Aws::OpsWorks::Endpoints::GrantAccess.build(context)
          when :list_tags
            Aws::OpsWorks::Endpoints::ListTags.build(context)
          when :reboot_instance
            Aws::OpsWorks::Endpoints::RebootInstance.build(context)
          when :register_ecs_cluster
            Aws::OpsWorks::Endpoints::RegisterEcsCluster.build(context)
          when :register_elastic_ip
            Aws::OpsWorks::Endpoints::RegisterElasticIp.build(context)
          when :register_instance
            Aws::OpsWorks::Endpoints::RegisterInstance.build(context)
          when :register_rds_db_instance
            Aws::OpsWorks::Endpoints::RegisterRdsDbInstance.build(context)
          when :register_volume
            Aws::OpsWorks::Endpoints::RegisterVolume.build(context)
          when :set_load_based_auto_scaling
            Aws::OpsWorks::Endpoints::SetLoadBasedAutoScaling.build(context)
          when :set_permission
            Aws::OpsWorks::Endpoints::SetPermission.build(context)
          when :set_time_based_auto_scaling
            Aws::OpsWorks::Endpoints::SetTimeBasedAutoScaling.build(context)
          when :start_instance
            Aws::OpsWorks::Endpoints::StartInstance.build(context)
          when :start_stack
            Aws::OpsWorks::Endpoints::StartStack.build(context)
          when :stop_instance
            Aws::OpsWorks::Endpoints::StopInstance.build(context)
          when :stop_stack
            Aws::OpsWorks::Endpoints::StopStack.build(context)
          when :tag_resource
            Aws::OpsWorks::Endpoints::TagResource.build(context)
          when :unassign_instance
            Aws::OpsWorks::Endpoints::UnassignInstance.build(context)
          when :unassign_volume
            Aws::OpsWorks::Endpoints::UnassignVolume.build(context)
          when :untag_resource
            Aws::OpsWorks::Endpoints::UntagResource.build(context)
          when :update_app
            Aws::OpsWorks::Endpoints::UpdateApp.build(context)
          when :update_elastic_ip
            Aws::OpsWorks::Endpoints::UpdateElasticIp.build(context)
          when :update_instance
            Aws::OpsWorks::Endpoints::UpdateInstance.build(context)
          when :update_layer
            Aws::OpsWorks::Endpoints::UpdateLayer.build(context)
          when :update_my_user_profile
            Aws::OpsWorks::Endpoints::UpdateMyUserProfile.build(context)
          when :update_rds_db_instance
            Aws::OpsWorks::Endpoints::UpdateRdsDbInstance.build(context)
          when :update_stack
            Aws::OpsWorks::Endpoints::UpdateStack.build(context)
          when :update_user_profile
            Aws::OpsWorks::Endpoints::UpdateUserProfile.build(context)
          when :update_volume
            Aws::OpsWorks::Endpoints::UpdateVolume.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
