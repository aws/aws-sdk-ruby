# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

module AWS
  class AutoScaling

    # Client class for Auto Scaling.
    class Client < Core::QueryClient

      # @api private
      CACHEABLE_REQUESTS = Set[
        :describe_adjustment_types,
        :describe_auto_scaling_groups,
        :describe_auto_scaling_instances,
        :describe_auto_scaling_notification_types,
        :describe_launch_configurations,
        :describe_metric_collection_types,
        :describe_notification_configurations,
        :describe_policies,
        :describe_scaling_activities,
        :describe_scaling_process_types,
        :describe_scheduled_actions,
        :describe_tags,
      ]

      # client methods #

      # @!method create_auto_scaling_group(options = {})
      # Calls the CreateAutoScalingGroup API operation.
      # @param [Hash] options
      #   * `:auto_scaling_group_name` - *required* - (String)
      #   * `:launch_configuration_name` - *required* - (String)
      #   * `:min_size` - *required* - (Integer)
      #   * `:max_size` - *required* - (Integer)
      #   * `:desired_capacity` - (Integer)
      #   * `:default_cooldown` - (Integer)
      #   * `:availability_zones` - (Array<String>)
      #   * `:load_balancer_names` - (Array<String>)
      #   * `:health_check_type` - (String)
      #   * `:health_check_grace_period` - (Integer)
      #   * `:placement_group` - (String)
      #   * `:vpc_zone_identifier` - (String)
      #   * `:termination_policies` - (Array<String>)
      #   * `:tags` - (Array<Hash>)
      #     * `:resource_id` - (String)
      #     * `:resource_type` - (String)
      #     * `:key` - *required* - (String)
      #     * `:value` - (String)
      #     * `:propagate_at_launch` - (Boolean)
      # @return [Core::Response]

      # @!method create_launch_configuration(options = {})
      # Calls the CreateLaunchConfiguration API operation.
      # @param [Hash] options
      #   * `:launch_configuration_name` - *required* - (String)
      #   * `:image_id` - *required* - (String)
      #   * `:key_name` - (String)
      #   * `:security_groups` - (Array<String>)
      #   * `:user_data` - (String)
      #   * `:instance_type` - *required* - (String)
      #   * `:kernel_id` - (String)
      #   * `:ramdisk_id` - (String)
      #   * `:block_device_mappings` - (Array<Hash>)
      #     * `:virtual_name` - (String)
      #     * `:device_name` - *required* - (String)
      #     * `:ebs` - (Hash)
      #       * `:snapshot_id` - (String)
      #       * `:volume_size` - (Integer)
      #   * `:instance_monitoring` - (Hash)
      #     * `:enabled` - (Boolean)
      #   * `:spot_price` - (String)
      #   * `:iam_instance_profile` - (String)
      #   * `:ebs_optimized` - (Boolean)
      # @return [Core::Response]

      # @!method create_or_update_tags(options = {})
      # Calls the CreateOrUpdateTags API operation.
      # @param [Hash] options
      #   * `:tags` - *required* - (Array<Hash>)
      #     * `:resource_id` - (String)
      #     * `:resource_type` - (String)
      #     * `:key` - *required* - (String)
      #     * `:value` - (String)
      #     * `:propagate_at_launch` - (Boolean)
      # @return [Core::Response]

      # @!method delete_auto_scaling_group(options = {})
      # Calls the DeleteAutoScalingGroup API operation.
      # @param [Hash] options
      #   * `:auto_scaling_group_name` - *required* - (String)
      #   * `:force_delete` - (Boolean)
      # @return [Core::Response]

      # @!method delete_launch_configuration(options = {})
      # Calls the DeleteLaunchConfiguration API operation.
      # @param [Hash] options
      #   * `:launch_configuration_name` - *required* - (String)
      # @return [Core::Response]

      # @!method delete_notification_configuration(options = {})
      # Calls the DeleteNotificationConfiguration API operation.
      # @param [Hash] options
      #   * `:auto_scaling_group_name` - *required* - (String)
      #   * `:topic_arn` - *required* - (String)
      # @return [Core::Response]

      # @!method delete_policy(options = {})
      # Calls the DeletePolicy API operation.
      # @param [Hash] options
      #   * `:auto_scaling_group_name` - (String)
      #   * `:policy_name` - *required* - (String)
      # @return [Core::Response]

      # @!method delete_scheduled_action(options = {})
      # Calls the DeleteScheduledAction API operation.
      # @param [Hash] options
      #   * `:auto_scaling_group_name` - (String)
      #   * `:scheduled_action_name` - *required* - (String)
      # @return [Core::Response]

      # @!method delete_tags(options = {})
      # Calls the DeleteTags API operation.
      # @param [Hash] options
      #   * `:tags` - *required* - (Array<Hash>)
      #     * `:resource_id` - (String)
      #     * `:resource_type` - (String)
      #     * `:key` - *required* - (String)
      #     * `:value` - (String)
      #     * `:propagate_at_launch` - (Boolean)
      # @return [Core::Response]

      # @!method describe_adjustment_types(options = {})
      # Calls the DescribeAdjustmentTypes API operation.
      # @param [Hash] options
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:adjustment_types` - (Array<Hash>)
      #     * `:adjustment_type` - (String)

      # @!method describe_auto_scaling_groups(options = {})
      # Calls the DescribeAutoScalingGroups API operation.
      # @param [Hash] options
      #   * `:auto_scaling_group_names` - (Array<String>)
      #   * `:next_token` - (String)
      #   * `:max_records` - (Integer)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:auto_scaling_groups` - (Array<Hash>)
      #     * `:auto_scaling_group_name` - (String)
      #     * `:auto_scaling_group_arn` - (String)
      #     * `:launch_configuration_name` - (String)
      #     * `:min_size` - (Integer)
      #     * `:max_size` - (Integer)
      #     * `:desired_capacity` - (Integer)
      #     * `:default_cooldown` - (Integer)
      #     * `:availability_zones` - (Array<String>)
      #     * `:load_balancer_names` - (Array<String>)
      #     * `:health_check_type` - (String)
      #     * `:health_check_grace_period` - (Integer)
      #     * `:instances` - (Array<Hash>)
      #       * `:instance_id` - (String)
      #       * `:availability_zone` - (String)
      #       * `:lifecycle_state` - (String)
      #       * `:health_status` - (String)
      #       * `:launch_configuration_name` - (String)
      #     * `:created_time` - (Time)
      #     * `:suspended_processes` - (Array<Hash>)
      #       * `:process_name` - (String)
      #       * `:suspension_reason` - (String)
      #     * `:placement_group` - (String)
      #     * `:vpc_zone_identifier` - (String)
      #     * `:enabled_metrics` - (Array<Hash>)
      #       * `:metric` - (String)
      #       * `:granularity` - (String)
      #     * `:status` - (String)
      #     * `:tags` - (Array<Hash>)
      #       * `:resource_id` - (String)
      #       * `:resource_type` - (String)
      #       * `:key` - (String)
      #       * `:value` - (String)
      #       * `:propagate_at_launch` - (Boolean)
      #     * `:termination_policies` - (Array<String>)
      #   * `:next_token` - (String)

      # @!method describe_auto_scaling_instances(options = {})
      # Calls the DescribeAutoScalingInstances API operation.
      # @param [Hash] options
      #   * `:instance_ids` - (Array<String>)
      #   * `:max_records` - (Integer)
      #   * `:next_token` - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:auto_scaling_instances` - (Array<Hash>)
      #     * `:instance_id` - (String)
      #     * `:auto_scaling_group_name` - (String)
      #     * `:availability_zone` - (String)
      #     * `:lifecycle_state` - (String)
      #     * `:health_status` - (String)
      #     * `:launch_configuration_name` - (String)
      #   * `:next_token` - (String)

      # @!method describe_auto_scaling_notification_types(options = {})
      # Calls the DescribeAutoScalingNotificationTypes API operation.
      # @param [Hash] options
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:auto_scaling_notification_types` - (Array<String>)

      # @!method describe_launch_configurations(options = {})
      # Calls the DescribeLaunchConfigurations API operation.
      # @param [Hash] options
      #   * `:launch_configuration_names` - (Array<String>)
      #   * `:next_token` - (String)
      #   * `:max_records` - (Integer)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:launch_configurations` - (Array<Hash>)
      #     * `:launch_configuration_name` - (String)
      #     * `:launch_configuration_arn` - (String)
      #     * `:image_id` - (String)
      #     * `:key_name` - (String)
      #     * `:security_groups` - (Array<String>)
      #     * `:user_data` - (String)
      #     * `:instance_type` - (String)
      #     * `:kernel_id` - (String)
      #     * `:ramdisk_id` - (String)
      #     * `:block_device_mappings` - (Array<Hash>)
      #       * `:virtual_name` - (String)
      #       * `:device_name` - (String)
      #       * `:ebs` - (Hash)
      #         * `:snapshot_id` - (String)
      #         * `:volume_size` - (Integer)
      #     * `:instance_monitoring` - (Hash)
      #       * `:enabled` - (Boolean)
      #     * `:spot_price` - (String)
      #     * `:iam_instance_profile` - (String)
      #     * `:created_time` - (Time)
      #     * `:ebs_optimized` - (Boolean)
      #   * `:next_token` - (String)

      # @!method describe_metric_collection_types(options = {})
      # Calls the DescribeMetricCollectionTypes API operation.
      # @param [Hash] options
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:metrics` - (Array<Hash>)
      #     * `:metric` - (String)
      #   * `:granularities` - (Array<Hash>)
      #     * `:granularity` - (String)

      # @!method describe_notification_configurations(options = {})
      # Calls the DescribeNotificationConfigurations API operation.
      # @param [Hash] options
      #   * `:auto_scaling_group_names` - (Array<String>)
      #   * `:next_token` - (String)
      #   * `:max_records` - (Integer)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:notification_configurations` - (Array<Hash>)
      #     * `:auto_scaling_group_name` - (String)
      #     * `:topic_arn` - (String)
      #     * `:notification_type` - (String)
      #   * `:next_token` - (String)

      # @!method describe_policies(options = {})
      # Calls the DescribePolicies API operation.
      # @param [Hash] options
      #   * `:auto_scaling_group_name` - (String)
      #   * `:policy_names` - (Array<String>)
      #   * `:next_token` - (String)
      #   * `:max_records` - (Integer)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:scaling_policies` - (Array<Hash>)
      #     * `:auto_scaling_group_name` - (String)
      #     * `:policy_name` - (String)
      #     * `:scaling_adjustment` - (Integer)
      #     * `:adjustment_type` - (String)
      #     * `:cooldown` - (Integer)
      #     * `:policy_arn` - (String)
      #     * `:alarms` - (Array<Hash>)
      #       * `:alarm_name` - (String)
      #       * `:alarm_arn` - (String)
      #     * `:min_adjustment_step` - (Integer)
      #   * `:next_token` - (String)

      # @!method describe_scaling_activities(options = {})
      # Calls the DescribeScalingActivities API operation.
      # @param [Hash] options
      #   * `:activity_ids` - (Array<String>)
      #   * `:auto_scaling_group_name` - (String)
      #   * `:max_records` - (Integer)
      #   * `:next_token` - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:activities` - (Array<Hash>)
      #     * `:activity_id` - (String)
      #     * `:auto_scaling_group_name` - (String)
      #     * `:description` - (String)
      #     * `:cause` - (String)
      #     * `:start_time` - (Time)
      #     * `:end_time` - (Time)
      #     * `:status_code` - (String)
      #     * `:status_message` - (String)
      #     * `:progress` - (Integer)
      #     * `:details` - (String)
      #   * `:next_token` - (String)

      # @!method describe_scaling_process_types(options = {})
      # Calls the DescribeScalingProcessTypes API operation.
      # @param [Hash] options
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:processes` - (Array<Hash>)
      #     * `:process_name` - (String)

      # @!method describe_scheduled_actions(options = {})
      # Calls the DescribeScheduledActions API operation.
      # @param [Hash] options
      #   * `:auto_scaling_group_name` - (String)
      #   * `:scheduled_action_names` - (Array<String>)
      #   * `:start_time` - (String<ISO8601 datetime>)
      #   * `:end_time` - (String<ISO8601 datetime>)
      #   * `:next_token` - (String)
      #   * `:max_records` - (Integer)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:scheduled_update_group_actions` - (Array<Hash>)
      #     * `:auto_scaling_group_name` - (String)
      #     * `:scheduled_action_name` - (String)
      #     * `:scheduled_action_arn` - (String)
      #     * `:time` - (Time)
      #     * `:start_time` - (Time)
      #     * `:end_time` - (Time)
      #     * `:recurrence` - (String)
      #     * `:min_size` - (Integer)
      #     * `:max_size` - (Integer)
      #     * `:desired_capacity` - (Integer)
      #   * `:next_token` - (String)

      # @!method describe_tags(options = {})
      # Calls the DescribeTags API operation.
      # @param [Hash] options
      #   * `:filters` - (Array<Hash>)
      #     * `:name` - (String)
      #     * `:values` - (Array<String>)
      #   * `:next_token` - (String)
      #   * `:max_records` - (Integer)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:tags` - (Array<Hash>)
      #     * `:resource_id` - (String)
      #     * `:resource_type` - (String)
      #     * `:key` - (String)
      #     * `:value` - (String)
      #     * `:propagate_at_launch` - (Boolean)
      #   * `:next_token` - (String)

      # @!method describe_termination_policy_types(options = {})
      # Calls the DescribeTerminationPolicyTypes API operation.
      # @param [Hash] options
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:termination_policy_types` - (Array<String>)

      # @!method disable_metrics_collection(options = {})
      # Calls the DisableMetricsCollection API operation.
      # @param [Hash] options
      #   * `:auto_scaling_group_name` - *required* - (String)
      #   * `:metrics` - (Array<String>)
      # @return [Core::Response]

      # @!method enable_metrics_collection(options = {})
      # Calls the EnableMetricsCollection API operation.
      # @param [Hash] options
      #   * `:auto_scaling_group_name` - *required* - (String)
      #   * `:metrics` - (Array<String>)
      #   * `:granularity` - *required* - (String)
      # @return [Core::Response]

      # @!method execute_policy(options = {})
      # Calls the ExecutePolicy API operation.
      # @param [Hash] options
      #   * `:auto_scaling_group_name` - (String)
      #   * `:policy_name` - *required* - (String)
      #   * `:honor_cooldown` - (Boolean)
      # @return [Core::Response]

      # @!method put_notification_configuration(options = {})
      # Calls the PutNotificationConfiguration API operation.
      # @param [Hash] options
      #   * `:auto_scaling_group_name` - *required* - (String)
      #   * `:topic_arn` - *required* - (String)
      #   * `:notification_types` - *required* - (Array<String>)
      # @return [Core::Response]

      # @!method put_scaling_policy(options = {})
      # Calls the PutScalingPolicy API operation.
      # @param [Hash] options
      #   * `:auto_scaling_group_name` - *required* - (String)
      #   * `:policy_name` - *required* - (String)
      #   * `:scaling_adjustment` - *required* - (Integer)
      #   * `:adjustment_type` - *required* - (String)
      #   * `:cooldown` - (Integer)
      #   * `:min_adjustment_step` - (Integer)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:policy_arn` - (String)

      # @!method put_scheduled_update_group_action(options = {})
      # Calls the PutScheduledUpdateGroupAction API operation.
      # @param [Hash] options
      #   * `:auto_scaling_group_name` - *required* - (String)
      #   * `:scheduled_action_name` - *required* - (String)
      #   * `:time` - (String<ISO8601 datetime>)
      #   * `:start_time` - (String<ISO8601 datetime>)
      #   * `:end_time` - (String<ISO8601 datetime>)
      #   * `:recurrence` - (String)
      #   * `:min_size` - (Integer)
      #   * `:max_size` - (Integer)
      #   * `:desired_capacity` - (Integer)
      # @return [Core::Response]

      # @!method resume_processes(options = {})
      # Calls the ResumeProcesses API operation.
      # @param [Hash] options
      #   * `:auto_scaling_group_name` - *required* - (String)
      #   * `:scaling_processes` - (Array<String>)
      # @return [Core::Response]

      # @!method set_desired_capacity(options = {})
      # Calls the SetDesiredCapacity API operation.
      # @param [Hash] options
      #   * `:auto_scaling_group_name` - *required* - (String)
      #   * `:desired_capacity` - *required* - (Integer)
      #   * `:honor_cooldown` - (Boolean)
      # @return [Core::Response]

      # @!method set_instance_health(options = {})
      # Calls the SetInstanceHealth API operation.
      # @param [Hash] options
      #   * `:instance_id` - *required* - (String)
      #   * `:health_status` - *required* - (String)
      #   * `:should_respect_grace_period` - (Boolean)
      # @return [Core::Response]

      # @!method suspend_processes(options = {})
      # Calls the SuspendProcesses API operation.
      # @param [Hash] options
      #   * `:auto_scaling_group_name` - *required* - (String)
      #   * `:scaling_processes` - (Array<String>)
      # @return [Core::Response]

      # @!method terminate_instance_in_auto_scaling_group(options = {})
      # Calls the TerminateInstanceInAutoScalingGroup API operation.
      # @param [Hash] options
      #   * `:instance_id` - *required* - (String)
      #   * `:should_decrement_desired_capacity` - *required* - (Boolean)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:activity` - (Hash)
      #     * `:activity_id` - (String)
      #     * `:auto_scaling_group_name` - (String)
      #     * `:description` - (String)
      #     * `:cause` - (String)
      #     * `:start_time` - (Time)
      #     * `:end_time` - (Time)
      #     * `:status_code` - (String)
      #     * `:status_message` - (String)
      #     * `:progress` - (Integer)
      #     * `:details` - (String)

      # @!method update_auto_scaling_group(options = {})
      # Calls the UpdateAutoScalingGroup API operation.
      # @param [Hash] options
      #   * `:auto_scaling_group_name` - *required* - (String)
      #   * `:launch_configuration_name` - (String)
      #   * `:min_size` - (Integer)
      #   * `:max_size` - (Integer)
      #   * `:desired_capacity` - (Integer)
      #   * `:default_cooldown` - (Integer)
      #   * `:availability_zones` - (Array<String>)
      #   * `:health_check_type` - (String)
      #   * `:health_check_grace_period` - (Integer)
      #   * `:placement_group` - (String)
      #   * `:vpc_zone_identifier` - (String)
      #   * `:termination_policies` - (Array<String>)
      # @return [Core::Response]

      # end client methods #

      define_client_methods('2011-01-01')

    end
  end
end
