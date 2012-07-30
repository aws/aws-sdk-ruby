# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
    class Client < Core::Client

      API_VERSION = '2011-01-01'

      extend Core::QueryClient

      # @private
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

      ## client methods ##

      # Calls the CreateAutoScalingGroup API operation.
      # @method create_auto_scaling_group(options = {})
      # @param [Hash] options
      #   * +:auto_scaling_group_name+ - *required* - (String)
      #   * +:launch_configuration_name+ - *required* - (String)
      #   * +:min_size+ - *required* - (Integer)
      #   * +:max_size+ - *required* - (Integer)
      #   * +:desired_capacity+ - (Integer)
      #   * +:default_cooldown+ - (Integer)
      #   * +:availability_zones+ - *required* - (Array<String>)
      #   * +:load_balancer_names+ - (Array<String>)
      #   * +:health_check_type+ - (String)
      #   * +:health_check_grace_period+ - (Integer)
      #   * +:placement_group+ - (String)
      #   * +:vpc_zone_identifier+ - (String)
      #   * +:tags+ - (Array<Hash>)
      #     * +:resource_id+ - (String)
      #     * +:resource_type+ - (String)
      #     * +:key+ - *required* - (String)
      #     * +:value+ - (String)
      #     * +:propagate_at_launch+ - (Boolean)
      # @return [Core::Response]
      define_client_method :create_auto_scaling_group, 'CreateAutoScalingGroup'

      # Calls the CreateLaunchConfiguration API operation.
      # @method create_launch_configuration(options = {})
      # @param [Hash] options
      #   * +:launch_configuration_name+ - *required* - (String)
      #   * +:image_id+ - *required* - (String)
      #   * +:key_name+ - (String)
      #   * +:security_groups+ - (Array<String>)
      #   * +:user_data+ - (String)
      #   * +:instance_type+ - *required* - (String)
      #   * +:kernel_id+ - (String)
      #   * +:ramdisk_id+ - (String)
      #   * +:block_device_mappings+ - (Array<Hash>)
      #     * +:virtual_name+ - (String)
      #     * +:device_name+ - *required* - (String)
      #     * +:ebs+ - (Hash)
      #       * +:snapshot_id+ - (String)
      #       * +:volume_size+ - (Integer)
      #   * +:instance_monitoring+ - (Hash)
      #     * +:enabled+ - (Boolean)
      #   * +:spot_price+ - (String)
      #   * +:iam_instance_profile+ - (String)
      # @return [Core::Response]
      define_client_method :create_launch_configuration, 'CreateLaunchConfiguration'

      # Calls the CreateOrUpdateTags API operation.
      # @method create_or_update_tags(options = {})
      # @param [Hash] options
      #   * +:tags+ - *required* - (Array<Hash>)
      #     * +:resource_id+ - (String)
      #     * +:resource_type+ - (String)
      #     * +:key+ - *required* - (String)
      #     * +:value+ - (String)
      #     * +:propagate_at_launch+ - (Boolean)
      # @return [Core::Response]
      define_client_method :create_or_update_tags, 'CreateOrUpdateTags'

      # Calls the DeleteAutoScalingGroup API operation.
      # @method delete_auto_scaling_group(options = {})
      # @param [Hash] options
      #   * +:auto_scaling_group_name+ - *required* - (String)
      #   * +:force_delete+ - (Boolean)
      # @return [Core::Response]
      define_client_method :delete_auto_scaling_group, 'DeleteAutoScalingGroup'

      # Calls the DeleteLaunchConfiguration API operation.
      # @method delete_launch_configuration(options = {})
      # @param [Hash] options
      #   * +:launch_configuration_name+ - *required* - (String)
      # @return [Core::Response]
      define_client_method :delete_launch_configuration, 'DeleteLaunchConfiguration'

      # Calls the DeleteNotificationConfiguration API operation.
      # @method delete_notification_configuration(options = {})
      # @param [Hash] options
      #   * +:auto_scaling_group_name+ - *required* - (String)
      #   * +:topic_arn+ - *required* - (String)
      # @return [Core::Response]
      define_client_method :delete_notification_configuration, 'DeleteNotificationConfiguration'

      # Calls the DeletePolicy API operation.
      # @method delete_policy(options = {})
      # @param [Hash] options
      #   * +:auto_scaling_group_name+ - (String)
      #   * +:policy_name+ - *required* - (String)
      # @return [Core::Response]
      define_client_method :delete_policy, 'DeletePolicy'

      # Calls the DeleteScheduledAction API operation.
      # @method delete_scheduled_action(options = {})
      # @param [Hash] options
      #   * +:auto_scaling_group_name+ - (String)
      #   * +:scheduled_action_name+ - *required* - (String)
      # @return [Core::Response]
      define_client_method :delete_scheduled_action, 'DeleteScheduledAction'

      # Calls the DeleteTags API operation.
      # @method delete_tags(options = {})
      # @param [Hash] options
      #   * +:tags+ - *required* - (Array<Hash>)
      #     * +:resource_id+ - (String)
      #     * +:resource_type+ - (String)
      #     * +:key+ - *required* - (String)
      #     * +:value+ - (String)
      #     * +:propagate_at_launch+ - (Boolean)
      # @return [Core::Response]
      define_client_method :delete_tags, 'DeleteTags'

      # Calls the DescribeAdjustmentTypes API operation.
      # @method describe_adjustment_types(options = {})
      # @param [Hash] options
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:adjustment_types+ - (Array<Hash>)
      #     * +:adjustment_type+ - (String)
      define_client_method :describe_adjustment_types, 'DescribeAdjustmentTypes'

      # Calls the DescribeAutoScalingGroups API operation.
      # @method describe_auto_scaling_groups(options = {})
      # @param [Hash] options
      #   * +:auto_scaling_group_names+ - (Array<String>)
      #   * +:next_token+ - (String)
      #   * +:max_records+ - (Integer)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:auto_scaling_groups+ - (Array<Hash>)
      #     * +:auto_scaling_group_name+ - (String)
      #     * +:auto_scaling_group_arn+ - (String)
      #     * +:launch_configuration_name+ - (String)
      #     * +:min_size+ - (Integer)
      #     * +:max_size+ - (Integer)
      #     * +:desired_capacity+ - (Integer)
      #     * +:default_cooldown+ - (Integer)
      #     * +:availability_zones+ - (Array<String>)
      #     * +:load_balancer_names+ - (Array<String>)
      #     * +:health_check_type+ - (String)
      #     * +:health_check_grace_period+ - (Integer)
      #     * +:instances+ - (Array<Hash>)
      #       * +:instance_id+ - (String)
      #       * +:availability_zone+ - (String)
      #       * +:lifecycle_state+ - (String)
      #       * +:health_status+ - (String)
      #       * +:launch_configuration_name+ - (String)
      #     * +:created_time+ - (Time)
      #     * +:suspended_processes+ - (Array<Hash>)
      #       * +:process_name+ - (String)
      #       * +:suspension_reason+ - (String)
      #     * +:placement_group+ - (String)
      #     * +:vpc_zone_identifier+ - (String)
      #     * +:enabled_metrics+ - (Array<Hash>)
      #       * +:metric+ - (String)
      #       * +:granularity+ - (String)
      #     * +:status+ - (String)
      #     * +:tags+ - (Array<Hash>)
      #       * +:resource_id+ - (String)
      #       * +:resource_type+ - (String)
      #       * +:key+ - (String)
      #       * +:value+ - (String)
      #       * +:propagate_at_launch+ - (Boolean)
      #   * +:next_token+ - (String)
      define_client_method :describe_auto_scaling_groups, 'DescribeAutoScalingGroups'

      # Calls the DescribeAutoScalingInstances API operation.
      # @method describe_auto_scaling_instances(options = {})
      # @param [Hash] options
      #   * +:instance_ids+ - (Array<String>)
      #   * +:max_records+ - (Integer)
      #   * +:next_token+ - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:auto_scaling_instances+ - (Array<Hash>)
      #     * +:instance_id+ - (String)
      #     * +:auto_scaling_group_name+ - (String)
      #     * +:availability_zone+ - (String)
      #     * +:lifecycle_state+ - (String)
      #     * +:health_status+ - (String)
      #     * +:launch_configuration_name+ - (String)
      #   * +:next_token+ - (String)
      define_client_method :describe_auto_scaling_instances, 'DescribeAutoScalingInstances'

      # Calls the DescribeAutoScalingNotificationTypes API operation.
      # @method describe_auto_scaling_notification_types(options = {})
      # @param [Hash] options
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:auto_scaling_notification_types+ - (Array<String>)
      define_client_method :describe_auto_scaling_notification_types, 'DescribeAutoScalingNotificationTypes'

      # Calls the DescribeLaunchConfigurations API operation.
      # @method describe_launch_configurations(options = {})
      # @param [Hash] options
      #   * +:launch_configuration_names+ - (Array<String>)
      #   * +:next_token+ - (String)
      #   * +:max_records+ - (Integer)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:launch_configurations+ - (Array<Hash>)
      #     * +:launch_configuration_name+ - (String)
      #     * +:launch_configuration_arn+ - (String)
      #     * +:image_id+ - (String)
      #     * +:key_name+ - (String)
      #     * +:security_groups+ - (Array<String>)
      #     * +:user_data+ - (String)
      #     * +:instance_type+ - (String)
      #     * +:kernel_id+ - (String)
      #     * +:ramdisk_id+ - (String)
      #     * +:block_device_mappings+ - (Array<Hash>)
      #       * +:virtual_name+ - (String)
      #       * +:device_name+ - (String)
      #       * +:ebs+ - (Hash)
      #         * +:snapshot_id+ - (String)
      #         * +:volume_size+ - (Integer)
      #     * +:instance_monitoring+ - (Hash)
      #       * +:enabled+ - (Boolean)
      #     * +:spot_price+ - (String)
      #     * +:iam_instance_profile+ - (String)
      #     * +:created_time+ - (Time)
      #   * +:next_token+ - (String)
      define_client_method :describe_launch_configurations, 'DescribeLaunchConfigurations'

      # Calls the DescribeMetricCollectionTypes API operation.
      # @method describe_metric_collection_types(options = {})
      # @param [Hash] options
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:metrics+ - (Array<Hash>)
      #     * +:metric+ - (String)
      #   * +:granularities+ - (Array<Hash>)
      #     * +:granularity+ - (String)
      define_client_method :describe_metric_collection_types, 'DescribeMetricCollectionTypes'

      # Calls the DescribeNotificationConfigurations API operation.
      # @method describe_notification_configurations(options = {})
      # @param [Hash] options
      #   * +:auto_scaling_group_names+ - (Array<String>)
      #   * +:next_token+ - (String)
      #   * +:max_records+ - (Integer)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:notification_configurations+ - (Array<Hash>)
      #     * +:auto_scaling_group_name+ - (String)
      #     * +:topic_arn+ - (String)
      #     * +:notification_type+ - (String)
      #   * +:next_token+ - (String)
      define_client_method :describe_notification_configurations, 'DescribeNotificationConfigurations'

      # Calls the DescribePolicies API operation.
      # @method describe_policies(options = {})
      # @param [Hash] options
      #   * +:auto_scaling_group_name+ - (String)
      #   * +:policy_names+ - (Array<String>)
      #   * +:next_token+ - (String)
      #   * +:max_records+ - (Integer)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:scaling_policies+ - (Array<Hash>)
      #     * +:auto_scaling_group_name+ - (String)
      #     * +:policy_name+ - (String)
      #     * +:scaling_adjustment+ - (Integer)
      #     * +:adjustment_type+ - (String)
      #     * +:cooldown+ - (Integer)
      #     * +:policy_arn+ - (String)
      #     * +:alarms+ - (Array<Hash>)
      #       * +:alarm_name+ - (String)
      #       * +:alarm_arn+ - (String)
      #     * +:min_adjustment_step+ - (Integer)
      #   * +:next_token+ - (String)
      define_client_method :describe_policies, 'DescribePolicies'

      # Calls the DescribeScalingActivities API operation.
      # @method describe_scaling_activities(options = {})
      # @param [Hash] options
      #   * +:activity_ids+ - (Array<String>)
      #   * +:auto_scaling_group_name+ - (String)
      #   * +:max_records+ - (Integer)
      #   * +:next_token+ - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:activities+ - (Array<Hash>)
      #     * +:activity_id+ - (String)
      #     * +:auto_scaling_group_name+ - (String)
      #     * +:description+ - (String)
      #     * +:cause+ - (String)
      #     * +:start_time+ - (Time)
      #     * +:end_time+ - (Time)
      #     * +:status_code+ - (String)
      #     * +:status_message+ - (String)
      #     * +:progress+ - (Integer)
      #     * +:details+ - (String)
      #   * +:next_token+ - (String)
      define_client_method :describe_scaling_activities, 'DescribeScalingActivities'

      # Calls the DescribeScalingProcessTypes API operation.
      # @method describe_scaling_process_types(options = {})
      # @param [Hash] options
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:processes+ - (Array<Hash>)
      #     * +:process_name+ - (String)
      define_client_method :describe_scaling_process_types, 'DescribeScalingProcessTypes'

      # Calls the DescribeScheduledActions API operation.
      # @method describe_scheduled_actions(options = {})
      # @param [Hash] options
      #   * +:auto_scaling_group_name+ - (String)
      #   * +:scheduled_action_names+ - (Array<String>)
      #   * +:start_time+ - (String<ISO8601 datetime>)
      #   * +:end_time+ - (String<ISO8601 datetime>)
      #   * +:next_token+ - (String)
      #   * +:max_records+ - (Integer)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:scheduled_update_group_actions+ - (Array<Hash>)
      #     * +:auto_scaling_group_name+ - (String)
      #     * +:scheduled_action_name+ - (String)
      #     * +:scheduled_action_arn+ - (String)
      #     * +:time+ - (Time)
      #     * +:start_time+ - (Time)
      #     * +:end_time+ - (Time)
      #     * +:recurrence+ - (String)
      #     * +:min_size+ - (Integer)
      #     * +:max_size+ - (Integer)
      #     * +:desired_capacity+ - (Integer)
      #   * +:next_token+ - (String)
      define_client_method :describe_scheduled_actions, 'DescribeScheduledActions'

      # Calls the DescribeTags API operation.
      # @method describe_tags(options = {})
      # @param [Hash] options
      #   * +:filters+ - (Array<Hash>)
      #     * +:name+ - (String)
      #     * +:values+ - (Array<String>)
      #   * +:next_token+ - (String)
      #   * +:max_records+ - (Integer)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:tags+ - (Array<Hash>)
      #     * +:resource_id+ - (String)
      #     * +:resource_type+ - (String)
      #     * +:key+ - (String)
      #     * +:value+ - (String)
      #     * +:propagate_at_launch+ - (Boolean)
      #   * +:next_token+ - (String)
      define_client_method :describe_tags, 'DescribeTags'

      # Calls the DisableMetricsCollection API operation.
      # @method disable_metrics_collection(options = {})
      # @param [Hash] options
      #   * +:auto_scaling_group_name+ - *required* - (String)
      #   * +:metrics+ - (Array<String>)
      # @return [Core::Response]
      define_client_method :disable_metrics_collection, 'DisableMetricsCollection'

      # Calls the EnableMetricsCollection API operation.
      # @method enable_metrics_collection(options = {})
      # @param [Hash] options
      #   * +:auto_scaling_group_name+ - *required* - (String)
      #   * +:metrics+ - (Array<String>)
      #   * +:granularity+ - *required* - (String)
      # @return [Core::Response]
      define_client_method :enable_metrics_collection, 'EnableMetricsCollection'

      # Calls the ExecutePolicy API operation.
      # @method execute_policy(options = {})
      # @param [Hash] options
      #   * +:auto_scaling_group_name+ - (String)
      #   * +:policy_name+ - *required* - (String)
      #   * +:honor_cooldown+ - (Boolean)
      # @return [Core::Response]
      define_client_method :execute_policy, 'ExecutePolicy'

      # Calls the PutNotificationConfiguration API operation.
      # @method put_notification_configuration(options = {})
      # @param [Hash] options
      #   * +:auto_scaling_group_name+ - *required* - (String)
      #   * +:topic_arn+ - *required* - (String)
      #   * +:notification_types+ - *required* - (Array<String>)
      # @return [Core::Response]
      define_client_method :put_notification_configuration, 'PutNotificationConfiguration'

      # Calls the PutScalingPolicy API operation.
      # @method put_scaling_policy(options = {})
      # @param [Hash] options
      #   * +:auto_scaling_group_name+ - *required* - (String)
      #   * +:policy_name+ - *required* - (String)
      #   * +:scaling_adjustment+ - *required* - (Integer)
      #   * +:adjustment_type+ - *required* - (String)
      #   * +:cooldown+ - (Integer)
      #   * +:min_adjustment_step+ - (Integer)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:policy_arn+ - (String)
      define_client_method :put_scaling_policy, 'PutScalingPolicy'

      # Calls the PutScheduledUpdateGroupAction API operation.
      # @method put_scheduled_update_group_action(options = {})
      # @param [Hash] options
      #   * +:auto_scaling_group_name+ - *required* - (String)
      #   * +:scheduled_action_name+ - *required* - (String)
      #   * +:time+ - (String<ISO8601 datetime>)
      #   * +:start_time+ - (String<ISO8601 datetime>)
      #   * +:end_time+ - (String<ISO8601 datetime>)
      #   * +:recurrence+ - (String)
      #   * +:min_size+ - (Integer)
      #   * +:max_size+ - (Integer)
      #   * +:desired_capacity+ - (Integer)
      # @return [Core::Response]
      define_client_method :put_scheduled_update_group_action, 'PutScheduledUpdateGroupAction'

      # Calls the ResumeProcesses API operation.
      # @method resume_processes(options = {})
      # @param [Hash] options
      #   * +:auto_scaling_group_name+ - *required* - (String)
      #   * +:scaling_processes+ - (Array<String>)
      # @return [Core::Response]
      define_client_method :resume_processes, 'ResumeProcesses'

      # Calls the SetDesiredCapacity API operation.
      # @method set_desired_capacity(options = {})
      # @param [Hash] options
      #   * +:auto_scaling_group_name+ - *required* - (String)
      #   * +:desired_capacity+ - *required* - (Integer)
      #   * +:honor_cooldown+ - (Boolean)
      # @return [Core::Response]
      define_client_method :set_desired_capacity, 'SetDesiredCapacity'

      # Calls the SetInstanceHealth API operation.
      # @method set_instance_health(options = {})
      # @param [Hash] options
      #   * +:instance_id+ - *required* - (String)
      #   * +:health_status+ - *required* - (String)
      #   * +:should_respect_grace_period+ - (Boolean)
      # @return [Core::Response]
      define_client_method :set_instance_health, 'SetInstanceHealth'

      # Calls the SuspendProcesses API operation.
      # @method suspend_processes(options = {})
      # @param [Hash] options
      #   * +:auto_scaling_group_name+ - *required* - (String)
      #   * +:scaling_processes+ - (Array<String>)
      # @return [Core::Response]
      define_client_method :suspend_processes, 'SuspendProcesses'

      # Calls the TerminateInstanceInAutoScalingGroup API operation.
      # @method terminate_instance_in_auto_scaling_group(options = {})
      # @param [Hash] options
      #   * +:instance_id+ - *required* - (String)
      #   * +:should_decrement_desired_capacity+ - *required* - (Boolean)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:activity+ - (Hash)
      #     * +:activity_id+ - (String)
      #     * +:auto_scaling_group_name+ - (String)
      #     * +:description+ - (String)
      #     * +:cause+ - (String)
      #     * +:start_time+ - (Time)
      #     * +:end_time+ - (Time)
      #     * +:status_code+ - (String)
      #     * +:status_message+ - (String)
      #     * +:progress+ - (Integer)
      #     * +:details+ - (String)
      define_client_method :terminate_instance_in_auto_scaling_group, 'TerminateInstanceInAutoScalingGroup'

      # Calls the UpdateAutoScalingGroup API operation.
      # @method update_auto_scaling_group(options = {})
      # @param [Hash] options
      #   * +:auto_scaling_group_name+ - *required* - (String)
      #   * +:launch_configuration_name+ - (String)
      #   * +:min_size+ - (Integer)
      #   * +:max_size+ - (Integer)
      #   * +:desired_capacity+ - (Integer)
      #   * +:default_cooldown+ - (Integer)
      #   * +:availability_zones+ - (Array<String>)
      #   * +:health_check_type+ - (String)
      #   * +:health_check_grace_period+ - (Integer)
      #   * +:placement_group+ - (String)
      #   * +:vpc_zone_identifier+ - (String)
      # @return [Core::Response]
      define_client_method :update_auto_scaling_group, 'UpdateAutoScalingGroup'

      ## end client methods ##

    end
  end
end
