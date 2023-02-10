# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::AutoScaling
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::AutoScaling::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::AutoScaling::EndpointParameters`'
      ) do |cfg|
        Aws::AutoScaling::EndpointProvider.new
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
          when :attach_instances
            Aws::AutoScaling::Endpoints::AttachInstances.build(context)
          when :attach_load_balancer_target_groups
            Aws::AutoScaling::Endpoints::AttachLoadBalancerTargetGroups.build(context)
          when :attach_load_balancers
            Aws::AutoScaling::Endpoints::AttachLoadBalancers.build(context)
          when :attach_traffic_sources
            Aws::AutoScaling::Endpoints::AttachTrafficSources.build(context)
          when :batch_delete_scheduled_action
            Aws::AutoScaling::Endpoints::BatchDeleteScheduledAction.build(context)
          when :batch_put_scheduled_update_group_action
            Aws::AutoScaling::Endpoints::BatchPutScheduledUpdateGroupAction.build(context)
          when :cancel_instance_refresh
            Aws::AutoScaling::Endpoints::CancelInstanceRefresh.build(context)
          when :complete_lifecycle_action
            Aws::AutoScaling::Endpoints::CompleteLifecycleAction.build(context)
          when :create_auto_scaling_group
            Aws::AutoScaling::Endpoints::CreateAutoScalingGroup.build(context)
          when :create_launch_configuration
            Aws::AutoScaling::Endpoints::CreateLaunchConfiguration.build(context)
          when :create_or_update_tags
            Aws::AutoScaling::Endpoints::CreateOrUpdateTags.build(context)
          when :delete_auto_scaling_group
            Aws::AutoScaling::Endpoints::DeleteAutoScalingGroup.build(context)
          when :delete_launch_configuration
            Aws::AutoScaling::Endpoints::DeleteLaunchConfiguration.build(context)
          when :delete_lifecycle_hook
            Aws::AutoScaling::Endpoints::DeleteLifecycleHook.build(context)
          when :delete_notification_configuration
            Aws::AutoScaling::Endpoints::DeleteNotificationConfiguration.build(context)
          when :delete_policy
            Aws::AutoScaling::Endpoints::DeletePolicy.build(context)
          when :delete_scheduled_action
            Aws::AutoScaling::Endpoints::DeleteScheduledAction.build(context)
          when :delete_tags
            Aws::AutoScaling::Endpoints::DeleteTags.build(context)
          when :delete_warm_pool
            Aws::AutoScaling::Endpoints::DeleteWarmPool.build(context)
          when :describe_account_limits
            Aws::AutoScaling::Endpoints::DescribeAccountLimits.build(context)
          when :describe_adjustment_types
            Aws::AutoScaling::Endpoints::DescribeAdjustmentTypes.build(context)
          when :describe_auto_scaling_groups
            Aws::AutoScaling::Endpoints::DescribeAutoScalingGroups.build(context)
          when :describe_auto_scaling_instances
            Aws::AutoScaling::Endpoints::DescribeAutoScalingInstances.build(context)
          when :describe_auto_scaling_notification_types
            Aws::AutoScaling::Endpoints::DescribeAutoScalingNotificationTypes.build(context)
          when :describe_instance_refreshes
            Aws::AutoScaling::Endpoints::DescribeInstanceRefreshes.build(context)
          when :describe_launch_configurations
            Aws::AutoScaling::Endpoints::DescribeLaunchConfigurations.build(context)
          when :describe_lifecycle_hook_types
            Aws::AutoScaling::Endpoints::DescribeLifecycleHookTypes.build(context)
          when :describe_lifecycle_hooks
            Aws::AutoScaling::Endpoints::DescribeLifecycleHooks.build(context)
          when :describe_load_balancer_target_groups
            Aws::AutoScaling::Endpoints::DescribeLoadBalancerTargetGroups.build(context)
          when :describe_load_balancers
            Aws::AutoScaling::Endpoints::DescribeLoadBalancers.build(context)
          when :describe_metric_collection_types
            Aws::AutoScaling::Endpoints::DescribeMetricCollectionTypes.build(context)
          when :describe_notification_configurations
            Aws::AutoScaling::Endpoints::DescribeNotificationConfigurations.build(context)
          when :describe_policies
            Aws::AutoScaling::Endpoints::DescribePolicies.build(context)
          when :describe_scaling_activities
            Aws::AutoScaling::Endpoints::DescribeScalingActivities.build(context)
          when :describe_scaling_process_types
            Aws::AutoScaling::Endpoints::DescribeScalingProcessTypes.build(context)
          when :describe_scheduled_actions
            Aws::AutoScaling::Endpoints::DescribeScheduledActions.build(context)
          when :describe_tags
            Aws::AutoScaling::Endpoints::DescribeTags.build(context)
          when :describe_termination_policy_types
            Aws::AutoScaling::Endpoints::DescribeTerminationPolicyTypes.build(context)
          when :describe_traffic_sources
            Aws::AutoScaling::Endpoints::DescribeTrafficSources.build(context)
          when :describe_warm_pool
            Aws::AutoScaling::Endpoints::DescribeWarmPool.build(context)
          when :detach_instances
            Aws::AutoScaling::Endpoints::DetachInstances.build(context)
          when :detach_load_balancer_target_groups
            Aws::AutoScaling::Endpoints::DetachLoadBalancerTargetGroups.build(context)
          when :detach_load_balancers
            Aws::AutoScaling::Endpoints::DetachLoadBalancers.build(context)
          when :detach_traffic_sources
            Aws::AutoScaling::Endpoints::DetachTrafficSources.build(context)
          when :disable_metrics_collection
            Aws::AutoScaling::Endpoints::DisableMetricsCollection.build(context)
          when :enable_metrics_collection
            Aws::AutoScaling::Endpoints::EnableMetricsCollection.build(context)
          when :enter_standby
            Aws::AutoScaling::Endpoints::EnterStandby.build(context)
          when :execute_policy
            Aws::AutoScaling::Endpoints::ExecutePolicy.build(context)
          when :exit_standby
            Aws::AutoScaling::Endpoints::ExitStandby.build(context)
          when :get_predictive_scaling_forecast
            Aws::AutoScaling::Endpoints::GetPredictiveScalingForecast.build(context)
          when :put_lifecycle_hook
            Aws::AutoScaling::Endpoints::PutLifecycleHook.build(context)
          when :put_notification_configuration
            Aws::AutoScaling::Endpoints::PutNotificationConfiguration.build(context)
          when :put_scaling_policy
            Aws::AutoScaling::Endpoints::PutScalingPolicy.build(context)
          when :put_scheduled_update_group_action
            Aws::AutoScaling::Endpoints::PutScheduledUpdateGroupAction.build(context)
          when :put_warm_pool
            Aws::AutoScaling::Endpoints::PutWarmPool.build(context)
          when :record_lifecycle_action_heartbeat
            Aws::AutoScaling::Endpoints::RecordLifecycleActionHeartbeat.build(context)
          when :resume_processes
            Aws::AutoScaling::Endpoints::ResumeProcesses.build(context)
          when :rollback_instance_refresh
            Aws::AutoScaling::Endpoints::RollbackInstanceRefresh.build(context)
          when :set_desired_capacity
            Aws::AutoScaling::Endpoints::SetDesiredCapacity.build(context)
          when :set_instance_health
            Aws::AutoScaling::Endpoints::SetInstanceHealth.build(context)
          when :set_instance_protection
            Aws::AutoScaling::Endpoints::SetInstanceProtection.build(context)
          when :start_instance_refresh
            Aws::AutoScaling::Endpoints::StartInstanceRefresh.build(context)
          when :suspend_processes
            Aws::AutoScaling::Endpoints::SuspendProcesses.build(context)
          when :terminate_instance_in_auto_scaling_group
            Aws::AutoScaling::Endpoints::TerminateInstanceInAutoScalingGroup.build(context)
          when :update_auto_scaling_group
            Aws::AutoScaling::Endpoints::UpdateAutoScalingGroup.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
