# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EMR
  module Types

    # @note When making an API call, you may pass AddInstanceFleetInput
    #   data as a hash:
    #
    #       {
    #         cluster_id: "XmlStringMaxLen256", # required
    #         instance_fleet: { # required
    #           name: "XmlStringMaxLen256",
    #           instance_fleet_type: "MASTER", # required, accepts MASTER, CORE, TASK
    #           target_on_demand_capacity: 1,
    #           target_spot_capacity: 1,
    #           instance_type_configs: [
    #             {
    #               instance_type: "InstanceType", # required
    #               weighted_capacity: 1,
    #               bid_price: "XmlStringMaxLen256",
    #               bid_price_as_percentage_of_on_demand_price: 1.0,
    #               ebs_configuration: {
    #                 ebs_block_device_configs: [
    #                   {
    #                     volume_specification: { # required
    #                       volume_type: "String", # required
    #                       iops: 1,
    #                       size_in_gb: 1, # required
    #                     },
    #                     volumes_per_instance: 1,
    #                   },
    #                 ],
    #                 ebs_optimized: false,
    #               },
    #               configurations: [
    #                 {
    #                   classification: "String",
    #                   configurations: {
    #                     # recursive ConfigurationList
    #                   },
    #                   properties: {
    #                     "String" => "String",
    #                   },
    #                 },
    #               ],
    #             },
    #           ],
    #           launch_specifications: {
    #             spot_specification: { # required
    #               timeout_duration_minutes: 1, # required
    #               timeout_action: "SWITCH_TO_ON_DEMAND", # required, accepts SWITCH_TO_ON_DEMAND, TERMINATE_CLUSTER
    #               block_duration_minutes: 1,
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] cluster_id
    #   The unique identifier of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] instance_fleet
    #   Specifies the configuration of the instance fleet.
    #   @return [Types::InstanceFleetConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/AddInstanceFleetInput AWS API Documentation
    #
    class AddInstanceFleetInput < Struct.new(
      :cluster_id,
      :instance_fleet)
      include Aws::Structure
    end

    # @!attribute [rw] cluster_id
    #   The unique identifier of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] instance_fleet_id
    #   The unique identifier of the instance fleet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/AddInstanceFleetOutput AWS API Documentation
    #
    class AddInstanceFleetOutput < Struct.new(
      :cluster_id,
      :instance_fleet_id)
      include Aws::Structure
    end

    # Input to an AddInstanceGroups call.
    #
    # @note When making an API call, you may pass AddInstanceGroupsInput
    #   data as a hash:
    #
    #       {
    #         instance_groups: [ # required
    #           {
    #             name: "XmlStringMaxLen256",
    #             market: "ON_DEMAND", # accepts ON_DEMAND, SPOT
    #             instance_role: "MASTER", # required, accepts MASTER, CORE, TASK
    #             bid_price: "XmlStringMaxLen256",
    #             instance_type: "InstanceType", # required
    #             instance_count: 1, # required
    #             configurations: [
    #               {
    #                 classification: "String",
    #                 configurations: {
    #                   # recursive ConfigurationList
    #                 },
    #                 properties: {
    #                   "String" => "String",
    #                 },
    #               },
    #             ],
    #             ebs_configuration: {
    #               ebs_block_device_configs: [
    #                 {
    #                   volume_specification: { # required
    #                     volume_type: "String", # required
    #                     iops: 1,
    #                     size_in_gb: 1, # required
    #                   },
    #                   volumes_per_instance: 1,
    #                 },
    #               ],
    #               ebs_optimized: false,
    #             },
    #             auto_scaling_policy: {
    #               constraints: { # required
    #                 min_capacity: 1, # required
    #                 max_capacity: 1, # required
    #               },
    #               rules: [ # required
    #                 {
    #                   name: "String", # required
    #                   description: "String",
    #                   action: { # required
    #                     market: "ON_DEMAND", # accepts ON_DEMAND, SPOT
    #                     simple_scaling_policy_configuration: { # required
    #                       adjustment_type: "CHANGE_IN_CAPACITY", # accepts CHANGE_IN_CAPACITY, PERCENT_CHANGE_IN_CAPACITY, EXACT_CAPACITY
    #                       scaling_adjustment: 1, # required
    #                       cool_down: 1,
    #                     },
    #                   },
    #                   trigger: { # required
    #                     cloud_watch_alarm_definition: { # required
    #                       comparison_operator: "GREATER_THAN_OR_EQUAL", # required, accepts GREATER_THAN_OR_EQUAL, GREATER_THAN, LESS_THAN, LESS_THAN_OR_EQUAL
    #                       evaluation_periods: 1,
    #                       metric_name: "String", # required
    #                       namespace: "String",
    #                       period: 1, # required
    #                       statistic: "SAMPLE_COUNT", # accepts SAMPLE_COUNT, AVERAGE, SUM, MINIMUM, MAXIMUM
    #                       threshold: 1.0, # required
    #                       unit: "NONE", # accepts NONE, SECONDS, MICRO_SECONDS, MILLI_SECONDS, BYTES, KILO_BYTES, MEGA_BYTES, GIGA_BYTES, TERA_BYTES, BITS, KILO_BITS, MEGA_BITS, GIGA_BITS, TERA_BITS, PERCENT, COUNT, BYTES_PER_SECOND, KILO_BYTES_PER_SECOND, MEGA_BYTES_PER_SECOND, GIGA_BYTES_PER_SECOND, TERA_BYTES_PER_SECOND, BITS_PER_SECOND, KILO_BITS_PER_SECOND, MEGA_BITS_PER_SECOND, GIGA_BITS_PER_SECOND, TERA_BITS_PER_SECOND, COUNT_PER_SECOND
    #                       dimensions: [
    #                         {
    #                           key: "String",
    #                           value: "String",
    #                         },
    #                       ],
    #                     },
    #                   },
    #                 },
    #               ],
    #             },
    #           },
    #         ],
    #         job_flow_id: "XmlStringMaxLen256", # required
    #       }
    #
    # @!attribute [rw] instance_groups
    #   Instance groups to add.
    #   @return [Array<Types::InstanceGroupConfig>]
    #
    # @!attribute [rw] job_flow_id
    #   Job flow in which to add the instance groups.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/AddInstanceGroupsInput AWS API Documentation
    #
    class AddInstanceGroupsInput < Struct.new(
      :instance_groups,
      :job_flow_id)
      include Aws::Structure
    end

    # Output from an AddInstanceGroups call.
    #
    # @!attribute [rw] job_flow_id
    #   The job flow ID in which the instance groups are added.
    #   @return [String]
    #
    # @!attribute [rw] instance_group_ids
    #   Instance group IDs of the newly created instance groups.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/AddInstanceGroupsOutput AWS API Documentation
    #
    class AddInstanceGroupsOutput < Struct.new(
      :job_flow_id,
      :instance_group_ids)
      include Aws::Structure
    end

    # The input argument to the AddJobFlowSteps operation.
    #
    # @note When making an API call, you may pass AddJobFlowStepsInput
    #   data as a hash:
    #
    #       {
    #         job_flow_id: "XmlStringMaxLen256", # required
    #         steps: [ # required
    #           {
    #             name: "XmlStringMaxLen256", # required
    #             action_on_failure: "TERMINATE_JOB_FLOW", # accepts TERMINATE_JOB_FLOW, TERMINATE_CLUSTER, CANCEL_AND_WAIT, CONTINUE
    #             hadoop_jar_step: { # required
    #               properties: [
    #                 {
    #                   key: "XmlString",
    #                   value: "XmlString",
    #                 },
    #               ],
    #               jar: "XmlString", # required
    #               main_class: "XmlString",
    #               args: ["XmlString"],
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] job_flow_id
    #   A string that uniquely identifies the job flow. This identifier is
    #   returned by RunJobFlow and can also be obtained from ListClusters.
    #   @return [String]
    #
    # @!attribute [rw] steps
    #   A list of StepConfig to be executed by the job flow.
    #   @return [Array<Types::StepConfig>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/AddJobFlowStepsInput AWS API Documentation
    #
    class AddJobFlowStepsInput < Struct.new(
      :job_flow_id,
      :steps)
      include Aws::Structure
    end

    # The output for the AddJobFlowSteps operation.
    #
    # @!attribute [rw] step_ids
    #   The identifiers of the list of steps added to the job flow.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/AddJobFlowStepsOutput AWS API Documentation
    #
    class AddJobFlowStepsOutput < Struct.new(
      :step_ids)
      include Aws::Structure
    end

    # This input identifies a cluster and a list of tags to attach.
    #
    # @note When making an API call, you may pass AddTagsInput
    #   data as a hash:
    #
    #       {
    #         resource_id: "ResourceId", # required
    #         tags: [ # required
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_id
    #   The Amazon EMR resource identifier to which tags will be added. This
    #   value must be a cluster identifier.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to associate with a cluster and propagate to EC2
    #   instances. Tags are user-defined key/value pairs that consist of a
    #   required key string with a maximum of 128 characters, and an
    #   optional value string with a maximum of 256 characters.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/AddTagsInput AWS API Documentation
    #
    class AddTagsInput < Struct.new(
      :resource_id,
      :tags)
      include Aws::Structure
    end

    # This output indicates the result of adding tags to a resource.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/AddTagsOutput AWS API Documentation
    #
    class AddTagsOutput < Aws::EmptyStructure; end

    # An application is any Amazon or third-party software that you can add
    # to the cluster. This structure contains a list of strings that
    # indicates the software to use with the cluster and accepts a user
    # argument list. Amazon EMR accepts and forwards the argument list to
    # the corresponding installation script as bootstrap action argument.
    # For more information, see [Using the MapR Distribution for Hadoop][1].
    # Currently supported values are:
    #
    # * "mapr-m3" - launch the cluster using MapR M3 Edition.
    #
    # * "mapr-m5" - launch the cluster using MapR M5 Edition.
    #
    # * "mapr" with the user arguments specifying "--edition,m3" or
    #   "--edition,m5" - launch the cluster using MapR M3 or M5 Edition,
    #   respectively.
    #
    # <note markdown="1"> In Amazon EMR releases 4.x and later, the only accepted parameter is
    # the application name. To pass arguments to applications, you supply a
    # configuration for each application.
    #
    #  </note>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-mapr.html
    #
    # @note When making an API call, you may pass Application
    #   data as a hash:
    #
    #       {
    #         name: "String",
    #         version: "String",
    #         args: ["String"],
    #         additional_info: {
    #           "String" => "String",
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the application.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the application.
    #   @return [String]
    #
    # @!attribute [rw] args
    #   Arguments for Amazon EMR to pass to the application.
    #   @return [Array<String>]
    #
    # @!attribute [rw] additional_info
    #   This option is for advanced users only. This is meta information
    #   about third-party applications that third-party vendors use for
    #   testing purposes.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/Application AWS API Documentation
    #
    class Application < Struct.new(
      :name,
      :version,
      :args,
      :additional_info)
      include Aws::Structure
    end

    # An automatic scaling policy for a core instance group or task instance
    # group in an Amazon EMR cluster. An automatic scaling policy defines
    # how an instance group dynamically adds and terminates EC2 instances in
    # response to the value of a CloudWatch metric. See
    # PutAutoScalingPolicy.
    #
    # @note When making an API call, you may pass AutoScalingPolicy
    #   data as a hash:
    #
    #       {
    #         constraints: { # required
    #           min_capacity: 1, # required
    #           max_capacity: 1, # required
    #         },
    #         rules: [ # required
    #           {
    #             name: "String", # required
    #             description: "String",
    #             action: { # required
    #               market: "ON_DEMAND", # accepts ON_DEMAND, SPOT
    #               simple_scaling_policy_configuration: { # required
    #                 adjustment_type: "CHANGE_IN_CAPACITY", # accepts CHANGE_IN_CAPACITY, PERCENT_CHANGE_IN_CAPACITY, EXACT_CAPACITY
    #                 scaling_adjustment: 1, # required
    #                 cool_down: 1,
    #               },
    #             },
    #             trigger: { # required
    #               cloud_watch_alarm_definition: { # required
    #                 comparison_operator: "GREATER_THAN_OR_EQUAL", # required, accepts GREATER_THAN_OR_EQUAL, GREATER_THAN, LESS_THAN, LESS_THAN_OR_EQUAL
    #                 evaluation_periods: 1,
    #                 metric_name: "String", # required
    #                 namespace: "String",
    #                 period: 1, # required
    #                 statistic: "SAMPLE_COUNT", # accepts SAMPLE_COUNT, AVERAGE, SUM, MINIMUM, MAXIMUM
    #                 threshold: 1.0, # required
    #                 unit: "NONE", # accepts NONE, SECONDS, MICRO_SECONDS, MILLI_SECONDS, BYTES, KILO_BYTES, MEGA_BYTES, GIGA_BYTES, TERA_BYTES, BITS, KILO_BITS, MEGA_BITS, GIGA_BITS, TERA_BITS, PERCENT, COUNT, BYTES_PER_SECOND, KILO_BYTES_PER_SECOND, MEGA_BYTES_PER_SECOND, GIGA_BYTES_PER_SECOND, TERA_BYTES_PER_SECOND, BITS_PER_SECOND, KILO_BITS_PER_SECOND, MEGA_BITS_PER_SECOND, GIGA_BITS_PER_SECOND, TERA_BITS_PER_SECOND, COUNT_PER_SECOND
    #                 dimensions: [
    #                   {
    #                     key: "String",
    #                     value: "String",
    #                   },
    #                 ],
    #               },
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] constraints
    #   The upper and lower EC2 instance limits for an automatic scaling
    #   policy. Automatic scaling activity will not cause an instance group
    #   to grow above or below these limits.
    #   @return [Types::ScalingConstraints]
    #
    # @!attribute [rw] rules
    #   The scale-in and scale-out rules that comprise the automatic scaling
    #   policy.
    #   @return [Array<Types::ScalingRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/AutoScalingPolicy AWS API Documentation
    #
    class AutoScalingPolicy < Struct.new(
      :constraints,
      :rules)
      include Aws::Structure
    end

    # An automatic scaling policy for a core instance group or task instance
    # group in an Amazon EMR cluster. The automatic scaling policy defines
    # how an instance group dynamically adds and terminates EC2 instances in
    # response to the value of a CloudWatch metric. See
    # PutAutoScalingPolicy.
    #
    # @!attribute [rw] status
    #   The status of an automatic scaling policy.
    #   @return [Types::AutoScalingPolicyStatus]
    #
    # @!attribute [rw] constraints
    #   The upper and lower EC2 instance limits for an automatic scaling
    #   policy. Automatic scaling activity will not cause an instance group
    #   to grow above or below these limits.
    #   @return [Types::ScalingConstraints]
    #
    # @!attribute [rw] rules
    #   The scale-in and scale-out rules that comprise the automatic scaling
    #   policy.
    #   @return [Array<Types::ScalingRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/AutoScalingPolicyDescription AWS API Documentation
    #
    class AutoScalingPolicyDescription < Struct.new(
      :status,
      :constraints,
      :rules)
      include Aws::Structure
    end

    # The reason for an AutoScalingPolicyStatus change.
    #
    # @!attribute [rw] code
    #   The code indicating the reason for the change in
    #   status.`USER_REQUEST` indicates that the scaling policy status was
    #   changed by a user. `PROVISION_FAILURE` indicates that the status
    #   change was because the policy failed to provision. `CLEANUP_FAILURE`
    #   indicates an error.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A friendly, more verbose message that accompanies an automatic
    #   scaling policy state change.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/AutoScalingPolicyStateChangeReason AWS API Documentation
    #
    class AutoScalingPolicyStateChangeReason < Struct.new(
      :code,
      :message)
      include Aws::Structure
    end

    # The status of an automatic scaling policy.
    #
    # @!attribute [rw] state
    #   Indicates the status of the automatic scaling policy.
    #   @return [String]
    #
    # @!attribute [rw] state_change_reason
    #   The reason for a change in status.
    #   @return [Types::AutoScalingPolicyStateChangeReason]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/AutoScalingPolicyStatus AWS API Documentation
    #
    class AutoScalingPolicyStatus < Struct.new(
      :state,
      :state_change_reason)
      include Aws::Structure
    end

    # Configuration of a bootstrap action.
    #
    # @note When making an API call, you may pass BootstrapActionConfig
    #   data as a hash:
    #
    #       {
    #         name: "XmlStringMaxLen256", # required
    #         script_bootstrap_action: { # required
    #           path: "XmlString", # required
    #           args: ["XmlString"],
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the bootstrap action.
    #   @return [String]
    #
    # @!attribute [rw] script_bootstrap_action
    #   The script run by the bootstrap action.
    #   @return [Types::ScriptBootstrapActionConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/BootstrapActionConfig AWS API Documentation
    #
    class BootstrapActionConfig < Struct.new(
      :name,
      :script_bootstrap_action)
      include Aws::Structure
    end

    # Reports the configuration of a bootstrap action in a cluster (job
    # flow).
    #
    # @!attribute [rw] bootstrap_action_config
    #   A description of the bootstrap action.
    #   @return [Types::BootstrapActionConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/BootstrapActionDetail AWS API Documentation
    #
    class BootstrapActionDetail < Struct.new(
      :bootstrap_action_config)
      include Aws::Structure
    end

    # Specification of the status of a CancelSteps request. Available only
    # in Amazon EMR version 4.8.0 and later, excluding version 5.0.0.
    #
    # @!attribute [rw] step_id
    #   The encrypted StepId of a step.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a CancelSteps Request. The value may be SUBMITTED or
    #   FAILED.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the failure if the CancelSteps request fails.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/CancelStepsInfo AWS API Documentation
    #
    class CancelStepsInfo < Struct.new(
      :step_id,
      :status,
      :reason)
      include Aws::Structure
    end

    # The input argument to the CancelSteps operation.
    #
    # @note When making an API call, you may pass CancelStepsInput
    #   data as a hash:
    #
    #       {
    #         cluster_id: "XmlStringMaxLen256",
    #         step_ids: ["XmlStringMaxLen256"],
    #       }
    #
    # @!attribute [rw] cluster_id
    #   The `ClusterID` for which specified steps will be canceled. Use
    #   RunJobFlow and ListClusters to get ClusterIDs.
    #   @return [String]
    #
    # @!attribute [rw] step_ids
    #   The list of `StepIDs` to cancel. Use ListSteps to get steps and
    #   their states for the specified cluster.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/CancelStepsInput AWS API Documentation
    #
    class CancelStepsInput < Struct.new(
      :cluster_id,
      :step_ids)
      include Aws::Structure
    end

    # The output for the CancelSteps operation.
    #
    # @!attribute [rw] cancel_steps_info_list
    #   A list of CancelStepsInfo, which shows the status of specified
    #   cancel requests for each `StepID` specified.
    #   @return [Array<Types::CancelStepsInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/CancelStepsOutput AWS API Documentation
    #
    class CancelStepsOutput < Struct.new(
      :cancel_steps_info_list)
      include Aws::Structure
    end

    # The definition of a CloudWatch metric alarm, which determines when an
    # automatic scaling activity is triggered. When the defined alarm
    # conditions are satisfied, scaling activity begins.
    #
    # @note When making an API call, you may pass CloudWatchAlarmDefinition
    #   data as a hash:
    #
    #       {
    #         comparison_operator: "GREATER_THAN_OR_EQUAL", # required, accepts GREATER_THAN_OR_EQUAL, GREATER_THAN, LESS_THAN, LESS_THAN_OR_EQUAL
    #         evaluation_periods: 1,
    #         metric_name: "String", # required
    #         namespace: "String",
    #         period: 1, # required
    #         statistic: "SAMPLE_COUNT", # accepts SAMPLE_COUNT, AVERAGE, SUM, MINIMUM, MAXIMUM
    #         threshold: 1.0, # required
    #         unit: "NONE", # accepts NONE, SECONDS, MICRO_SECONDS, MILLI_SECONDS, BYTES, KILO_BYTES, MEGA_BYTES, GIGA_BYTES, TERA_BYTES, BITS, KILO_BITS, MEGA_BITS, GIGA_BITS, TERA_BITS, PERCENT, COUNT, BYTES_PER_SECOND, KILO_BYTES_PER_SECOND, MEGA_BYTES_PER_SECOND, GIGA_BYTES_PER_SECOND, TERA_BYTES_PER_SECOND, BITS_PER_SECOND, KILO_BITS_PER_SECOND, MEGA_BITS_PER_SECOND, GIGA_BITS_PER_SECOND, TERA_BITS_PER_SECOND, COUNT_PER_SECOND
    #         dimensions: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] comparison_operator
    #   Determines how the metric specified by `MetricName` is compared to
    #   the value specified by `Threshold`.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_periods
    #   The number of periods, expressed in seconds using `Period`, during
    #   which the alarm condition must exist before the alarm triggers
    #   automatic scaling activity. The default value is `1`.
    #   @return [Integer]
    #
    # @!attribute [rw] metric_name
    #   The name of the CloudWatch metric that is watched to determine an
    #   alarm condition.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace for the CloudWatch metric. The default is
    #   `AWS/ElasticMapReduce`.
    #   @return [String]
    #
    # @!attribute [rw] period
    #   The period, in seconds, over which the statistic is applied. EMR
    #   CloudWatch metrics are emitted every five minutes (300 seconds), so
    #   if an EMR CloudWatch metric is specified, specify `300`.
    #   @return [Integer]
    #
    # @!attribute [rw] statistic
    #   The statistic to apply to the metric associated with the alarm. The
    #   default is `AVERAGE`.
    #   @return [String]
    #
    # @!attribute [rw] threshold
    #   The value against which the specified statistic is compared.
    #   @return [Float]
    #
    # @!attribute [rw] unit
    #   The unit of measure associated with the CloudWatch metric being
    #   watched. The value specified for `Unit` must correspond to the units
    #   specified in the CloudWatch metric.
    #   @return [String]
    #
    # @!attribute [rw] dimensions
    #   A CloudWatch metric dimension.
    #   @return [Array<Types::MetricDimension>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/CloudWatchAlarmDefinition AWS API Documentation
    #
    class CloudWatchAlarmDefinition < Struct.new(
      :comparison_operator,
      :evaluation_periods,
      :metric_name,
      :namespace,
      :period,
      :statistic,
      :threshold,
      :unit,
      :dimensions)
      include Aws::Structure
    end

    # The detailed description of the cluster.
    #
    # @!attribute [rw] id
    #   The unique identifier for the cluster.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status details about the cluster.
    #   @return [Types::ClusterStatus]
    #
    # @!attribute [rw] ec2_instance_attributes
    #   Provides information about the EC2 instances in a cluster grouped by
    #   category. For example, key name, subnet ID, IAM instance profile,
    #   and so on.
    #   @return [Types::Ec2InstanceAttributes]
    #
    # @!attribute [rw] instance_collection_type
    #   <note markdown="1"> The instance fleet configuration is available only in Amazon EMR
    #   versions 4.8.0 and later, excluding 5.0.x versions.
    #
    #    </note>
    #
    #   The instance group configuration of the cluster. A value of
    #   `INSTANCE_GROUP` indicates a uniform instance group configuration. A
    #   value of `INSTANCE_FLEET` indicates an instance fleets
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] log_uri
    #   The path to the Amazon S3 location where logs for this cluster are
    #   stored.
    #   @return [String]
    #
    # @!attribute [rw] requested_ami_version
    #   The AMI version requested for this cluster.
    #   @return [String]
    #
    # @!attribute [rw] running_ami_version
    #   The AMI version running on this cluster.
    #   @return [String]
    #
    # @!attribute [rw] release_label
    #   The Amazon EMR release label, which determines the version of
    #   open-source application packages installed on the cluster. Release
    #   labels are in the form `emr-x.x.x`, where x.x.x is an Amazon EMR
    #   release version, for example, `emr-5.14.0`. For more information
    #   about Amazon EMR release versions and included application versions
    #   and features, see
    #   [http://docs.aws.amazon.com/emr/latest/ReleaseGuide/][1]. The
    #   release label applies only to Amazon EMR releases versions 4.x and
    #   later. Earlier versions use `AmiVersion`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/emr/latest/ReleaseGuide/
    #   @return [String]
    #
    # @!attribute [rw] auto_terminate
    #   Specifies whether the cluster should terminate after completing all
    #   steps.
    #   @return [Boolean]
    #
    # @!attribute [rw] termination_protected
    #   Indicates whether Amazon EMR will lock the cluster to prevent the
    #   EC2 instances from being terminated by an API call or user
    #   intervention, or in the event of a cluster error.
    #   @return [Boolean]
    #
    # @!attribute [rw] visible_to_all_users
    #   Indicates whether the cluster is visible to all IAM users of the AWS
    #   account associated with the cluster. If this value is set to `true`,
    #   all IAM users of that AWS account can view and manage the cluster if
    #   they have the proper policy permissions set. If this value is
    #   `false`, only the IAM user that created the cluster can view and
    #   manage it. This value can be changed using the SetVisibleToAllUsers
    #   action.
    #   @return [Boolean]
    #
    # @!attribute [rw] applications
    #   The applications installed on this cluster.
    #   @return [Array<Types::Application>]
    #
    # @!attribute [rw] tags
    #   A list of tags associated with a cluster.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] service_role
    #   The IAM role that will be assumed by the Amazon EMR service to
    #   access AWS resources on your behalf.
    #   @return [String]
    #
    # @!attribute [rw] normalized_instance_hours
    #   An approximation of the cost of the cluster, represented in
    #   m1.small/hours. This value is incremented one time for every hour an
    #   m1.small instance runs. Larger instances are weighted more, so an
    #   EC2 instance that is roughly four times more expensive would result
    #   in the normalized instance hours being incremented by four. This
    #   result is only an approximation and does not reflect the actual
    #   billing rate.
    #   @return [Integer]
    #
    # @!attribute [rw] master_public_dns_name
    #   The DNS name of the master node. If the cluster is on a private
    #   subnet, this is the private DNS name. On a public subnet, this is
    #   the public DNS name.
    #   @return [String]
    #
    # @!attribute [rw] configurations
    #   Applies only to Amazon EMR releases 4.x and later. The list of
    #   Configurations supplied to the EMR cluster.
    #   @return [Array<Types::Configuration>]
    #
    # @!attribute [rw] security_configuration
    #   The name of the security configuration applied to the cluster.
    #   @return [String]
    #
    # @!attribute [rw] auto_scaling_role
    #   An IAM role for automatic scaling policies. The default role is
    #   `EMR_AutoScaling_DefaultRole`. The IAM role provides permissions
    #   that the automatic scaling feature requires to launch and terminate
    #   EC2 instances in an instance group.
    #   @return [String]
    #
    # @!attribute [rw] scale_down_behavior
    #   The way that individual Amazon EC2 instances terminate when an
    #   automatic scale-in activity occurs or an instance group is resized.
    #   `TERMINATE_AT_INSTANCE_HOUR` indicates that Amazon EMR terminates
    #   nodes at the instance-hour boundary, regardless of when the request
    #   to terminate the instance was submitted. This option is only
    #   available with Amazon EMR 5.1.0 and later and is the default for
    #   clusters created using that version. `TERMINATE_AT_TASK_COMPLETION`
    #   indicates that Amazon EMR blacklists and drains tasks from nodes
    #   before terminating the Amazon EC2 instances, regardless of the
    #   instance-hour boundary. With either behavior, Amazon EMR removes the
    #   least active nodes first and blocks instance termination if it could
    #   lead to HDFS corruption. `TERMINATE_AT_TASK_COMPLETION` is available
    #   only in Amazon EMR version 4.1.0 and later, and is the default for
    #   versions of Amazon EMR earlier than 5.1.0.
    #   @return [String]
    #
    # @!attribute [rw] custom_ami_id
    #   Available only in Amazon EMR version 5.7.0 and later. The ID of a
    #   custom Amazon EBS-backed Linux AMI if the cluster uses a custom AMI.
    #   @return [String]
    #
    # @!attribute [rw] ebs_root_volume_size
    #   The size, in GiB, of the EBS root device volume of the Linux AMI
    #   that is used for each EC2 instance. Available in Amazon EMR version
    #   4.x and later.
    #   @return [Integer]
    #
    # @!attribute [rw] repo_upgrade_on_boot
    #   Applies only when `CustomAmiID` is used. Specifies the type of
    #   updates that are applied from the Amazon Linux AMI package
    #   repositories when an instance boots using the AMI.
    #   @return [String]
    #
    # @!attribute [rw] kerberos_attributes
    #   Attributes for Kerberos configuration when Kerberos authentication
    #   is enabled using a security configuration. For more information see
    #   [Use Kerberos Authentication][1] in the *EMR Management Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-kerberos.html
    #   @return [Types::KerberosAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/Cluster AWS API Documentation
    #
    class Cluster < Struct.new(
      :id,
      :name,
      :status,
      :ec2_instance_attributes,
      :instance_collection_type,
      :log_uri,
      :requested_ami_version,
      :running_ami_version,
      :release_label,
      :auto_terminate,
      :termination_protected,
      :visible_to_all_users,
      :applications,
      :tags,
      :service_role,
      :normalized_instance_hours,
      :master_public_dns_name,
      :configurations,
      :security_configuration,
      :auto_scaling_role,
      :scale_down_behavior,
      :custom_ami_id,
      :ebs_root_volume_size,
      :repo_upgrade_on_boot,
      :kerberos_attributes)
      include Aws::Structure
    end

    # The reason that the cluster changed to its current state.
    #
    # @!attribute [rw] code
    #   The programmatic code for the state change reason.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The descriptive message for the state change reason.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ClusterStateChangeReason AWS API Documentation
    #
    class ClusterStateChangeReason < Struct.new(
      :code,
      :message)
      include Aws::Structure
    end

    # The detailed status of the cluster.
    #
    # @!attribute [rw] state
    #   The current state of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] state_change_reason
    #   The reason for the cluster status change.
    #   @return [Types::ClusterStateChangeReason]
    #
    # @!attribute [rw] timeline
    #   A timeline that represents the status of a cluster over the lifetime
    #   of the cluster.
    #   @return [Types::ClusterTimeline]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ClusterStatus AWS API Documentation
    #
    class ClusterStatus < Struct.new(
      :state,
      :state_change_reason,
      :timeline)
      include Aws::Structure
    end

    # The summary description of the cluster.
    #
    # @!attribute [rw] id
    #   The unique identifier for the cluster.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The details about the current status of the cluster.
    #   @return [Types::ClusterStatus]
    #
    # @!attribute [rw] normalized_instance_hours
    #   An approximation of the cost of the cluster, represented in
    #   m1.small/hours. This value is incremented one time for every hour an
    #   m1.small instance runs. Larger instances are weighted more, so an
    #   EC2 instance that is roughly four times more expensive would result
    #   in the normalized instance hours being incremented by four. This
    #   result is only an approximation and does not reflect the actual
    #   billing rate.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ClusterSummary AWS API Documentation
    #
    class ClusterSummary < Struct.new(
      :id,
      :name,
      :status,
      :normalized_instance_hours)
      include Aws::Structure
    end

    # Represents the timeline of the cluster's lifecycle.
    #
    # @!attribute [rw] creation_date_time
    #   The creation date and time of the cluster.
    #   @return [Time]
    #
    # @!attribute [rw] ready_date_time
    #   The date and time when the cluster was ready to execute steps.
    #   @return [Time]
    #
    # @!attribute [rw] end_date_time
    #   The date and time when the cluster was terminated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ClusterTimeline AWS API Documentation
    #
    class ClusterTimeline < Struct.new(
      :creation_date_time,
      :ready_date_time,
      :end_date_time)
      include Aws::Structure
    end

    # An entity describing an executable that runs on a cluster.
    #
    # @!attribute [rw] name
    #   The name of the command.
    #   @return [String]
    #
    # @!attribute [rw] script_path
    #   The Amazon S3 location of the command script.
    #   @return [String]
    #
    # @!attribute [rw] args
    #   Arguments for Amazon EMR to pass to the command for execution.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/Command AWS API Documentation
    #
    class Command < Struct.new(
      :name,
      :script_path,
      :args)
      include Aws::Structure
    end

    # <note markdown="1"> Amazon EMR releases 4.x or later.
    #
    #  </note>
    #
    # An optional configuration specification to be used when provisioning
    # cluster instances, which can include configurations for applications
    # and software bundled with Amazon EMR. A configuration consists of a
    # classification, properties, and optional nested configurations. A
    # classification refers to an application-specific configuration file.
    # Properties are the settings you want to change in that file. For more
    # information, see [Configuring Applications][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/emr/latest/ReleaseGuide/emr-configure-apps.html
    #
    # @note When making an API call, you may pass Configuration
    #   data as a hash:
    #
    #       {
    #         classification: "String",
    #         configurations: [
    #           {
    #             classification: "String",
    #             configurations: {
    #               # recursive ConfigurationList
    #             },
    #             properties: {
    #               "String" => "String",
    #             },
    #           },
    #         ],
    #         properties: {
    #           "String" => "String",
    #         },
    #       }
    #
    # @!attribute [rw] classification
    #   The classification within a configuration.
    #   @return [String]
    #
    # @!attribute [rw] configurations
    #   A list of additional configurations to apply within a configuration
    #   object.
    #   @return [Array<Types::Configuration>]
    #
    # @!attribute [rw] properties
    #   A set of properties specified within a configuration classification.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/Configuration AWS API Documentation
    #
    class Configuration < Struct.new(
      :classification,
      :configurations,
      :properties)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateSecurityConfigurationInput
    #   data as a hash:
    #
    #       {
    #         name: "XmlString", # required
    #         security_configuration: "String", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the security configuration.
    #   @return [String]
    #
    # @!attribute [rw] security_configuration
    #   The security configuration details in JSON format. For JSON
    #   parameters and examples, see [Use Security Configurations to Set Up
    #   Cluster Security][1] in the *Amazon EMR Management Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-security-configurations.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/CreateSecurityConfigurationInput AWS API Documentation
    #
    class CreateSecurityConfigurationInput < Struct.new(
      :name,
      :security_configuration)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the security configuration.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time the security configuration was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/CreateSecurityConfigurationOutput AWS API Documentation
    #
    class CreateSecurityConfigurationOutput < Struct.new(
      :name,
      :creation_date_time)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteSecurityConfigurationInput
    #   data as a hash:
    #
    #       {
    #         name: "XmlString", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the security configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/DeleteSecurityConfigurationInput AWS API Documentation
    #
    class DeleteSecurityConfigurationInput < Struct.new(
      :name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/DeleteSecurityConfigurationOutput AWS API Documentation
    #
    class DeleteSecurityConfigurationOutput < Aws::EmptyStructure; end

    # This input determines which cluster to describe.
    #
    # @note When making an API call, you may pass DescribeClusterInput
    #   data as a hash:
    #
    #       {
    #         cluster_id: "ClusterId", # required
    #       }
    #
    # @!attribute [rw] cluster_id
    #   The identifier of the cluster to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/DescribeClusterInput AWS API Documentation
    #
    class DescribeClusterInput < Struct.new(
      :cluster_id)
      include Aws::Structure
    end

    # This output contains the description of the cluster.
    #
    # @!attribute [rw] cluster
    #   This output contains the details for the requested cluster.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/DescribeClusterOutput AWS API Documentation
    #
    class DescribeClusterOutput < Struct.new(
      :cluster)
      include Aws::Structure
    end

    # The input for the DescribeJobFlows operation.
    #
    # @note When making an API call, you may pass DescribeJobFlowsInput
    #   data as a hash:
    #
    #       {
    #         created_after: Time.now,
    #         created_before: Time.now,
    #         job_flow_ids: ["XmlString"],
    #         job_flow_states: ["STARTING"], # accepts STARTING, BOOTSTRAPPING, RUNNING, WAITING, SHUTTING_DOWN, TERMINATED, COMPLETED, FAILED
    #       }
    #
    # @!attribute [rw] created_after
    #   Return only job flows created after this date and time.
    #   @return [Time]
    #
    # @!attribute [rw] created_before
    #   Return only job flows created before this date and time.
    #   @return [Time]
    #
    # @!attribute [rw] job_flow_ids
    #   Return only job flows whose job flow ID is contained in this list.
    #   @return [Array<String>]
    #
    # @!attribute [rw] job_flow_states
    #   Return only job flows whose state is contained in this list.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/DescribeJobFlowsInput AWS API Documentation
    #
    class DescribeJobFlowsInput < Struct.new(
      :created_after,
      :created_before,
      :job_flow_ids,
      :job_flow_states)
      include Aws::Structure
    end

    # The output for the DescribeJobFlows operation.
    #
    # @!attribute [rw] job_flows
    #   A list of job flows matching the parameters supplied.
    #   @return [Array<Types::JobFlowDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/DescribeJobFlowsOutput AWS API Documentation
    #
    class DescribeJobFlowsOutput < Struct.new(
      :job_flows)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeSecurityConfigurationInput
    #   data as a hash:
    #
    #       {
    #         name: "XmlString", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the security configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/DescribeSecurityConfigurationInput AWS API Documentation
    #
    class DescribeSecurityConfigurationInput < Struct.new(
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the security configuration.
    #   @return [String]
    #
    # @!attribute [rw] security_configuration
    #   The security configuration details in JSON format.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time the security configuration was created
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/DescribeSecurityConfigurationOutput AWS API Documentation
    #
    class DescribeSecurityConfigurationOutput < Struct.new(
      :name,
      :security_configuration,
      :creation_date_time)
      include Aws::Structure
    end

    # This input determines which step to describe.
    #
    # @note When making an API call, you may pass DescribeStepInput
    #   data as a hash:
    #
    #       {
    #         cluster_id: "ClusterId", # required
    #         step_id: "StepId", # required
    #       }
    #
    # @!attribute [rw] cluster_id
    #   The identifier of the cluster with steps to describe.
    #   @return [String]
    #
    # @!attribute [rw] step_id
    #   The identifier of the step to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/DescribeStepInput AWS API Documentation
    #
    class DescribeStepInput < Struct.new(
      :cluster_id,
      :step_id)
      include Aws::Structure
    end

    # This output contains the description of the cluster step.
    #
    # @!attribute [rw] step
    #   The step details for the requested step identifier.
    #   @return [Types::Step]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/DescribeStepOutput AWS API Documentation
    #
    class DescribeStepOutput < Struct.new(
      :step)
      include Aws::Structure
    end

    # Configuration of requested EBS block device associated with the
    # instance group.
    #
    # @!attribute [rw] volume_specification
    #   EBS volume specifications such as volume type, IOPS, and size (GiB)
    #   that will be requested for the EBS volume attached to an EC2
    #   instance in the cluster.
    #   @return [Types::VolumeSpecification]
    #
    # @!attribute [rw] device
    #   The device name that is exposed to the instance, such as /dev/sdh.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/EbsBlockDevice AWS API Documentation
    #
    class EbsBlockDevice < Struct.new(
      :volume_specification,
      :device)
      include Aws::Structure
    end

    # Configuration of requested EBS block device associated with the
    # instance group with count of volumes that will be associated to every
    # instance.
    #
    # @note When making an API call, you may pass EbsBlockDeviceConfig
    #   data as a hash:
    #
    #       {
    #         volume_specification: { # required
    #           volume_type: "String", # required
    #           iops: 1,
    #           size_in_gb: 1, # required
    #         },
    #         volumes_per_instance: 1,
    #       }
    #
    # @!attribute [rw] volume_specification
    #   EBS volume specifications such as volume type, IOPS, and size (GiB)
    #   that will be requested for the EBS volume attached to an EC2
    #   instance in the cluster.
    #   @return [Types::VolumeSpecification]
    #
    # @!attribute [rw] volumes_per_instance
    #   Number of EBS volumes with a specific volume configuration that will
    #   be associated with every instance in the instance group
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/EbsBlockDeviceConfig AWS API Documentation
    #
    class EbsBlockDeviceConfig < Struct.new(
      :volume_specification,
      :volumes_per_instance)
      include Aws::Structure
    end

    # The Amazon EBS configuration of a cluster instance.
    #
    # @note When making an API call, you may pass EbsConfiguration
    #   data as a hash:
    #
    #       {
    #         ebs_block_device_configs: [
    #           {
    #             volume_specification: { # required
    #               volume_type: "String", # required
    #               iops: 1,
    #               size_in_gb: 1, # required
    #             },
    #             volumes_per_instance: 1,
    #           },
    #         ],
    #         ebs_optimized: false,
    #       }
    #
    # @!attribute [rw] ebs_block_device_configs
    #   An array of Amazon EBS volume specifications attached to a cluster
    #   instance.
    #   @return [Array<Types::EbsBlockDeviceConfig>]
    #
    # @!attribute [rw] ebs_optimized
    #   Indicates whether an Amazon EBS volume is EBS-optimized.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/EbsConfiguration AWS API Documentation
    #
    class EbsConfiguration < Struct.new(
      :ebs_block_device_configs,
      :ebs_optimized)
      include Aws::Structure
    end

    # EBS block device that's attached to an EC2 instance.
    #
    # @!attribute [rw] device
    #   The device name that is exposed to the instance, such as /dev/sdh.
    #   @return [String]
    #
    # @!attribute [rw] volume_id
    #   The volume identifier of the EBS volume.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/EbsVolume AWS API Documentation
    #
    class EbsVolume < Struct.new(
      :device,
      :volume_id)
      include Aws::Structure
    end

    # Provides information about the EC2 instances in a cluster grouped by
    # category. For example, key name, subnet ID, IAM instance profile, and
    # so on.
    #
    # @!attribute [rw] ec2_key_name
    #   The name of the Amazon EC2 key pair to use when connecting with SSH
    #   into the master node as a user named "hadoop".
    #   @return [String]
    #
    # @!attribute [rw] ec2_subnet_id
    #   To launch the cluster in Amazon VPC, set this parameter to the
    #   identifier of the Amazon VPC subnet where you want the cluster to
    #   launch. If you do not specify this value, the cluster is launched in
    #   the normal AWS cloud, outside of a VPC.
    #
    #   Amazon VPC currently does not support cluster compute quadruple
    #   extra large (cc1.4xlarge) instances. Thus, you cannot specify the
    #   cc1.4xlarge instance type for nodes of a cluster launched in a VPC.
    #   @return [String]
    #
    # @!attribute [rw] requested_ec2_subnet_ids
    #   Applies to clusters configured with the instance fleets option.
    #   Specifies the unique identifier of one or more Amazon EC2 subnets in
    #   which to launch EC2 cluster instances. Subnets must exist within the
    #   same VPC. Amazon EMR chooses the EC2 subnet with the best fit from
    #   among the list of `RequestedEc2SubnetIds`, and then launches all
    #   cluster instances within that Subnet. If this value is not
    #   specified, and the account and region support EC2-Classic networks,
    #   the cluster launches instances in the EC2-Classic network and uses
    #   `RequestedEc2AvailabilityZones` instead of this setting. If
    #   EC2-Classic is not supported, and no Subnet is specified, Amazon EMR
    #   chooses the subnet for you. `RequestedEc2SubnetIDs` and
    #   `RequestedEc2AvailabilityZones` cannot be specified together.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ec2_availability_zone
    #   The Availability Zone in which the cluster will run.
    #   @return [String]
    #
    # @!attribute [rw] requested_ec2_availability_zones
    #   Applies to clusters configured with the instance fleets option.
    #   Specifies one or more Availability Zones in which to launch EC2
    #   cluster instances when the EC2-Classic network configuration is
    #   supported. Amazon EMR chooses the Availability Zone with the best
    #   fit from among the list of `RequestedEc2AvailabilityZones`, and then
    #   launches all cluster instances within that Availability Zone. If you
    #   do not specify this value, Amazon EMR chooses the Availability Zone
    #   for you. `RequestedEc2SubnetIDs` and `RequestedEc2AvailabilityZones`
    #   cannot be specified together.
    #   @return [Array<String>]
    #
    # @!attribute [rw] iam_instance_profile
    #   The IAM role that was specified when the cluster was launched. The
    #   EC2 instances of the cluster assume this role.
    #   @return [String]
    #
    # @!attribute [rw] emr_managed_master_security_group
    #   The identifier of the Amazon EC2 security group for the master node.
    #   @return [String]
    #
    # @!attribute [rw] emr_managed_slave_security_group
    #   The identifier of the Amazon EC2 security group for the slave nodes.
    #   @return [String]
    #
    # @!attribute [rw] service_access_security_group
    #   The identifier of the Amazon EC2 security group for the Amazon EMR
    #   service to access clusters in VPC private subnets.
    #   @return [String]
    #
    # @!attribute [rw] additional_master_security_groups
    #   A list of additional Amazon EC2 security group IDs for the master
    #   node.
    #   @return [Array<String>]
    #
    # @!attribute [rw] additional_slave_security_groups
    #   A list of additional Amazon EC2 security group IDs for the slave
    #   nodes.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/Ec2InstanceAttributes AWS API Documentation
    #
    class Ec2InstanceAttributes < Struct.new(
      :ec2_key_name,
      :ec2_subnet_id,
      :requested_ec2_subnet_ids,
      :ec2_availability_zone,
      :requested_ec2_availability_zones,
      :iam_instance_profile,
      :emr_managed_master_security_group,
      :emr_managed_slave_security_group,
      :service_access_security_group,
      :additional_master_security_groups,
      :additional_slave_security_groups)
      include Aws::Structure
    end

    # The details of the step failure. The service attempts to detect the
    # root cause for many common failures.
    #
    # @!attribute [rw] reason
    #   The reason for the step failure. In the case where the service
    #   cannot successfully determine the root cause of the failure, it
    #   returns "Unknown Error" as a reason.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The descriptive message including the error the EMR service has
    #   identified as the cause of step failure. This is text from an error
    #   log that describes the root cause of the failure.
    #   @return [String]
    #
    # @!attribute [rw] log_file
    #   The path to the log file where the step failure root cause was
    #   originally recorded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/FailureDetails AWS API Documentation
    #
    class FailureDetails < Struct.new(
      :reason,
      :message,
      :log_file)
      include Aws::Structure
    end

    # A job flow step consisting of a JAR file whose main function will be
    # executed. The main function submits a job for Hadoop to execute and
    # waits for the job to finish or fail.
    #
    # @note When making an API call, you may pass HadoopJarStepConfig
    #   data as a hash:
    #
    #       {
    #         properties: [
    #           {
    #             key: "XmlString",
    #             value: "XmlString",
    #           },
    #         ],
    #         jar: "XmlString", # required
    #         main_class: "XmlString",
    #         args: ["XmlString"],
    #       }
    #
    # @!attribute [rw] properties
    #   A list of Java properties that are set when the step runs. You can
    #   use these properties to pass key value pairs to your main function.
    #   @return [Array<Types::KeyValue>]
    #
    # @!attribute [rw] jar
    #   A path to a JAR file run during the step.
    #   @return [String]
    #
    # @!attribute [rw] main_class
    #   The name of the main class in the specified Java file. If not
    #   specified, the JAR file should specify a Main-Class in its manifest
    #   file.
    #   @return [String]
    #
    # @!attribute [rw] args
    #   A list of command line arguments passed to the JAR file's main
    #   function when executed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/HadoopJarStepConfig AWS API Documentation
    #
    class HadoopJarStepConfig < Struct.new(
      :properties,
      :jar,
      :main_class,
      :args)
      include Aws::Structure
    end

    # A cluster step consisting of a JAR file whose main function will be
    # executed. The main function submits a job for Hadoop to execute and
    # waits for the job to finish or fail.
    #
    # @!attribute [rw] jar
    #   The path to the JAR file that runs during the step.
    #   @return [String]
    #
    # @!attribute [rw] properties
    #   The list of Java properties that are set when the step runs. You can
    #   use these properties to pass key value pairs to your main function.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] main_class
    #   The name of the main class in the specified Java file. If not
    #   specified, the JAR file should specify a main class in its manifest
    #   file.
    #   @return [String]
    #
    # @!attribute [rw] args
    #   The list of command line arguments to pass to the JAR file's main
    #   function for execution.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/HadoopStepConfig AWS API Documentation
    #
    class HadoopStepConfig < Struct.new(
      :jar,
      :properties,
      :main_class,
      :args)
      include Aws::Structure
    end

    # Represents an EC2 instance provisioned as part of cluster.
    #
    # @!attribute [rw] id
    #   The unique identifier for the instance in Amazon EMR.
    #   @return [String]
    #
    # @!attribute [rw] ec2_instance_id
    #   The unique identifier of the instance in Amazon EC2.
    #   @return [String]
    #
    # @!attribute [rw] public_dns_name
    #   The public DNS name of the instance.
    #   @return [String]
    #
    # @!attribute [rw] public_ip_address
    #   The public IP address of the instance.
    #   @return [String]
    #
    # @!attribute [rw] private_dns_name
    #   The private DNS name of the instance.
    #   @return [String]
    #
    # @!attribute [rw] private_ip_address
    #   The private IP address of the instance.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the instance.
    #   @return [Types::InstanceStatus]
    #
    # @!attribute [rw] instance_group_id
    #   The identifier of the instance group to which this instance belongs.
    #   @return [String]
    #
    # @!attribute [rw] instance_fleet_id
    #   The unique identifier of the instance fleet to which an EC2 instance
    #   belongs.
    #   @return [String]
    #
    # @!attribute [rw] market
    #   The instance purchasing option. Valid values are `ON_DEMAND` or
    #   `SPOT`.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The EC2 instance type, for example `m3.xlarge`.
    #   @return [String]
    #
    # @!attribute [rw] ebs_volumes
    #   The list of EBS volumes that are attached to this instance.
    #   @return [Array<Types::EbsVolume>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/Instance AWS API Documentation
    #
    class Instance < Struct.new(
      :id,
      :ec2_instance_id,
      :public_dns_name,
      :public_ip_address,
      :private_dns_name,
      :private_ip_address,
      :status,
      :instance_group_id,
      :instance_fleet_id,
      :market,
      :instance_type,
      :ebs_volumes)
      include Aws::Structure
    end

    # Describes an instance fleet, which is a group of EC2 instances that
    # host a particular node type (master, core, or task) in an Amazon EMR
    # cluster. Instance fleets can consist of a mix of instance types and
    # On-Demand and Spot instances, which are provisioned to meet a defined
    # target capacity.
    #
    # <note markdown="1"> The instance fleet configuration is available only in Amazon EMR
    # versions 4.8.0 and later, excluding 5.0.x versions.
    #
    #  </note>
    #
    # @!attribute [rw] id
    #   The unique identifier of the instance fleet.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A friendly name for the instance fleet.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the instance fleet.
    #   @return [Types::InstanceFleetStatus]
    #
    # @!attribute [rw] instance_fleet_type
    #   The node type that the instance fleet hosts. Valid values are
    #   MASTER, CORE, or TASK.
    #   @return [String]
    #
    # @!attribute [rw] target_on_demand_capacity
    #   The target capacity of On-Demand units for the instance fleet, which
    #   determines how many On-Demand instances to provision. When the
    #   instance fleet launches, Amazon EMR tries to provision On-Demand
    #   instances as specified by InstanceTypeConfig. Each instance
    #   configuration has a specified `WeightedCapacity`. When an On-Demand
    #   instance is provisioned, the `WeightedCapacity` units count toward
    #   the target capacity. Amazon EMR provisions instances until the
    #   target capacity is totally fulfilled, even if this results in an
    #   overage. For example, if there are 2 units remaining to fulfill
    #   capacity, and Amazon EMR can only provision an instance with a
    #   `WeightedCapacity` of 5 units, the instance is provisioned, and the
    #   target capacity is exceeded by 3 units. You can use
    #   InstanceFleet$ProvisionedOnDemandCapacity to determine the Spot
    #   capacity units that have been provisioned for the instance fleet.
    #
    #   <note markdown="1"> If not specified or set to 0, only Spot instances are provisioned
    #   for the instance fleet using `TargetSpotCapacity`. At least one of
    #   `TargetSpotCapacity` and `TargetOnDemandCapacity` should be greater
    #   than 0. For a master instance fleet, only one of
    #   `TargetSpotCapacity` and `TargetOnDemandCapacity` can be specified,
    #   and its value must be 1.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] target_spot_capacity
    #   The target capacity of Spot units for the instance fleet, which
    #   determines how many Spot instances to provision. When the instance
    #   fleet launches, Amazon EMR tries to provision Spot instances as
    #   specified by InstanceTypeConfig. Each instance configuration has a
    #   specified `WeightedCapacity`. When a Spot instance is provisioned,
    #   the `WeightedCapacity` units count toward the target capacity.
    #   Amazon EMR provisions instances until the target capacity is totally
    #   fulfilled, even if this results in an overage. For example, if there
    #   are 2 units remaining to fulfill capacity, and Amazon EMR can only
    #   provision an instance with a `WeightedCapacity` of 5 units, the
    #   instance is provisioned, and the target capacity is exceeded by 3
    #   units. You can use InstanceFleet$ProvisionedSpotCapacity to
    #   determine the Spot capacity units that have been provisioned for the
    #   instance fleet.
    #
    #   <note markdown="1"> If not specified or set to 0, only On-Demand instances are
    #   provisioned for the instance fleet. At least one of
    #   `TargetSpotCapacity` and `TargetOnDemandCapacity` should be greater
    #   than 0. For a master instance fleet, only one of
    #   `TargetSpotCapacity` and `TargetOnDemandCapacity` can be specified,
    #   and its value must be 1.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] provisioned_on_demand_capacity
    #   The number of On-Demand units that have been provisioned for the
    #   instance fleet to fulfill `TargetOnDemandCapacity`. This provisioned
    #   capacity might be less than or greater than
    #   `TargetOnDemandCapacity`.
    #   @return [Integer]
    #
    # @!attribute [rw] provisioned_spot_capacity
    #   The number of Spot units that have been provisioned for this
    #   instance fleet to fulfill `TargetSpotCapacity`. This provisioned
    #   capacity might be less than or greater than `TargetSpotCapacity`.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_type_specifications
    #   The specification for the instance types that comprise an instance
    #   fleet. Up to five unique instance specifications may be defined for
    #   each instance fleet.
    #   @return [Array<Types::InstanceTypeSpecification>]
    #
    # @!attribute [rw] launch_specifications
    #   Describes the launch specification for an instance fleet.
    #   @return [Types::InstanceFleetProvisioningSpecifications]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/InstanceFleet AWS API Documentation
    #
    class InstanceFleet < Struct.new(
      :id,
      :name,
      :status,
      :instance_fleet_type,
      :target_on_demand_capacity,
      :target_spot_capacity,
      :provisioned_on_demand_capacity,
      :provisioned_spot_capacity,
      :instance_type_specifications,
      :launch_specifications)
      include Aws::Structure
    end

    # The configuration that defines an instance fleet.
    #
    # <note markdown="1"> The instance fleet configuration is available only in Amazon EMR
    # versions 4.8.0 and later, excluding 5.0.x versions.
    #
    #  </note>
    #
    # @note When making an API call, you may pass InstanceFleetConfig
    #   data as a hash:
    #
    #       {
    #         name: "XmlStringMaxLen256",
    #         instance_fleet_type: "MASTER", # required, accepts MASTER, CORE, TASK
    #         target_on_demand_capacity: 1,
    #         target_spot_capacity: 1,
    #         instance_type_configs: [
    #           {
    #             instance_type: "InstanceType", # required
    #             weighted_capacity: 1,
    #             bid_price: "XmlStringMaxLen256",
    #             bid_price_as_percentage_of_on_demand_price: 1.0,
    #             ebs_configuration: {
    #               ebs_block_device_configs: [
    #                 {
    #                   volume_specification: { # required
    #                     volume_type: "String", # required
    #                     iops: 1,
    #                     size_in_gb: 1, # required
    #                   },
    #                   volumes_per_instance: 1,
    #                 },
    #               ],
    #               ebs_optimized: false,
    #             },
    #             configurations: [
    #               {
    #                 classification: "String",
    #                 configurations: {
    #                   # recursive ConfigurationList
    #                 },
    #                 properties: {
    #                   "String" => "String",
    #                 },
    #               },
    #             ],
    #           },
    #         ],
    #         launch_specifications: {
    #           spot_specification: { # required
    #             timeout_duration_minutes: 1, # required
    #             timeout_action: "SWITCH_TO_ON_DEMAND", # required, accepts SWITCH_TO_ON_DEMAND, TERMINATE_CLUSTER
    #             block_duration_minutes: 1,
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The friendly name of the instance fleet.
    #   @return [String]
    #
    # @!attribute [rw] instance_fleet_type
    #   The node type that the instance fleet hosts. Valid values are
    #   MASTER,CORE,and TASK.
    #   @return [String]
    #
    # @!attribute [rw] target_on_demand_capacity
    #   The target capacity of On-Demand units for the instance fleet, which
    #   determines how many On-Demand instances to provision. When the
    #   instance fleet launches, Amazon EMR tries to provision On-Demand
    #   instances as specified by InstanceTypeConfig. Each instance
    #   configuration has a specified `WeightedCapacity`. When an On-Demand
    #   instance is provisioned, the `WeightedCapacity` units count toward
    #   the target capacity. Amazon EMR provisions instances until the
    #   target capacity is totally fulfilled, even if this results in an
    #   overage. For example, if there are 2 units remaining to fulfill
    #   capacity, and Amazon EMR can only provision an instance with a
    #   `WeightedCapacity` of 5 units, the instance is provisioned, and the
    #   target capacity is exceeded by 3 units.
    #
    #   <note markdown="1"> If not specified or set to 0, only Spot instances are provisioned
    #   for the instance fleet using `TargetSpotCapacity`. At least one of
    #   `TargetSpotCapacity` and `TargetOnDemandCapacity` should be greater
    #   than 0. For a master instance fleet, only one of
    #   `TargetSpotCapacity` and `TargetOnDemandCapacity` can be specified,
    #   and its value must be 1.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] target_spot_capacity
    #   The target capacity of Spot units for the instance fleet, which
    #   determines how many Spot instances to provision. When the instance
    #   fleet launches, Amazon EMR tries to provision Spot instances as
    #   specified by InstanceTypeConfig. Each instance configuration has a
    #   specified `WeightedCapacity`. When a Spot instance is provisioned,
    #   the `WeightedCapacity` units count toward the target capacity.
    #   Amazon EMR provisions instances until the target capacity is totally
    #   fulfilled, even if this results in an overage. For example, if there
    #   are 2 units remaining to fulfill capacity, and Amazon EMR can only
    #   provision an instance with a `WeightedCapacity` of 5 units, the
    #   instance is provisioned, and the target capacity is exceeded by 3
    #   units.
    #
    #   <note markdown="1"> If not specified or set to 0, only On-Demand instances are
    #   provisioned for the instance fleet. At least one of
    #   `TargetSpotCapacity` and `TargetOnDemandCapacity` should be greater
    #   than 0. For a master instance fleet, only one of
    #   `TargetSpotCapacity` and `TargetOnDemandCapacity` can be specified,
    #   and its value must be 1.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] instance_type_configs
    #   The instance type configurations that define the EC2 instances in
    #   the instance fleet.
    #   @return [Array<Types::InstanceTypeConfig>]
    #
    # @!attribute [rw] launch_specifications
    #   The launch specification for the instance fleet.
    #   @return [Types::InstanceFleetProvisioningSpecifications]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/InstanceFleetConfig AWS API Documentation
    #
    class InstanceFleetConfig < Struct.new(
      :name,
      :instance_fleet_type,
      :target_on_demand_capacity,
      :target_spot_capacity,
      :instance_type_configs,
      :launch_specifications)
      include Aws::Structure
    end

    # Configuration parameters for an instance fleet modification request.
    #
    # <note markdown="1"> The instance fleet configuration is available only in Amazon EMR
    # versions 4.8.0 and later, excluding 5.0.x versions.
    #
    #  </note>
    #
    # @note When making an API call, you may pass InstanceFleetModifyConfig
    #   data as a hash:
    #
    #       {
    #         instance_fleet_id: "InstanceFleetId", # required
    #         target_on_demand_capacity: 1,
    #         target_spot_capacity: 1,
    #       }
    #
    # @!attribute [rw] instance_fleet_id
    #   A unique identifier for the instance fleet.
    #   @return [String]
    #
    # @!attribute [rw] target_on_demand_capacity
    #   The target capacity of On-Demand units for the instance fleet. For
    #   more information see InstanceFleetConfig$TargetOnDemandCapacity.
    #   @return [Integer]
    #
    # @!attribute [rw] target_spot_capacity
    #   The target capacity of Spot units for the instance fleet. For more
    #   information, see InstanceFleetConfig$TargetSpotCapacity.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/InstanceFleetModifyConfig AWS API Documentation
    #
    class InstanceFleetModifyConfig < Struct.new(
      :instance_fleet_id,
      :target_on_demand_capacity,
      :target_spot_capacity)
      include Aws::Structure
    end

    # The launch specification for Spot instances in the fleet, which
    # determines the defined duration and provisioning timeout behavior.
    #
    # <note markdown="1"> The instance fleet configuration is available only in Amazon EMR
    # versions 4.8.0 and later, excluding 5.0.x versions.
    #
    #  </note>
    #
    # @note When making an API call, you may pass InstanceFleetProvisioningSpecifications
    #   data as a hash:
    #
    #       {
    #         spot_specification: { # required
    #           timeout_duration_minutes: 1, # required
    #           timeout_action: "SWITCH_TO_ON_DEMAND", # required, accepts SWITCH_TO_ON_DEMAND, TERMINATE_CLUSTER
    #           block_duration_minutes: 1,
    #         },
    #       }
    #
    # @!attribute [rw] spot_specification
    #   The launch specification for Spot instances in the fleet, which
    #   determines the defined duration and provisioning timeout behavior.
    #   @return [Types::SpotProvisioningSpecification]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/InstanceFleetProvisioningSpecifications AWS API Documentation
    #
    class InstanceFleetProvisioningSpecifications < Struct.new(
      :spot_specification)
      include Aws::Structure
    end

    # Provides status change reason details for the instance fleet.
    #
    # <note markdown="1"> The instance fleet configuration is available only in Amazon EMR
    # versions 4.8.0 and later, excluding 5.0.x versions.
    #
    #  </note>
    #
    # @!attribute [rw] code
    #   A code corresponding to the reason the state change occurred.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   An explanatory message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/InstanceFleetStateChangeReason AWS API Documentation
    #
    class InstanceFleetStateChangeReason < Struct.new(
      :code,
      :message)
      include Aws::Structure
    end

    # The status of the instance fleet.
    #
    # <note markdown="1"> The instance fleet configuration is available only in Amazon EMR
    # versions 4.8.0 and later, excluding 5.0.x versions.
    #
    #  </note>
    #
    # @!attribute [rw] state
    #   A code representing the instance fleet status.
    #
    #   * `PROVISIONING`—The instance fleet is provisioning EC2 resources
    #     and is not yet ready to run jobs.
    #
    #   * `BOOTSTRAPPING`—EC2 instances and other resources have been
    #     provisioned and the bootstrap actions specified for the instances
    #     are underway.
    #
    #   * `RUNNING`—EC2 instances and other resources are running. They are
    #     either executing jobs or waiting to execute jobs.
    #
    #   * `RESIZING`—A resize operation is underway. EC2 instances are
    #     either being added or removed.
    #
    #   * `SUSPENDED`—A resize operation could not complete. Existing EC2
    #     instances are running, but instances can't be added or removed.
    #
    #   * `TERMINATING`—The instance fleet is terminating EC2 instances.
    #
    #   * `TERMINATED`—The instance fleet is no longer active, and all EC2
    #     instances have been terminated.
    #   @return [String]
    #
    # @!attribute [rw] state_change_reason
    #   Provides status change reason details for the instance fleet.
    #   @return [Types::InstanceFleetStateChangeReason]
    #
    # @!attribute [rw] timeline
    #   Provides historical timestamps for the instance fleet, including the
    #   time of creation, the time it became ready to run jobs, and the time
    #   of termination.
    #   @return [Types::InstanceFleetTimeline]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/InstanceFleetStatus AWS API Documentation
    #
    class InstanceFleetStatus < Struct.new(
      :state,
      :state_change_reason,
      :timeline)
      include Aws::Structure
    end

    # Provides historical timestamps for the instance fleet, including the
    # time of creation, the time it became ready to run jobs, and the time
    # of termination.
    #
    # <note markdown="1"> The instance fleet configuration is available only in Amazon EMR
    # versions 4.8.0 and later, excluding 5.0.x versions.
    #
    #  </note>
    #
    # @!attribute [rw] creation_date_time
    #   The time and date the instance fleet was created.
    #   @return [Time]
    #
    # @!attribute [rw] ready_date_time
    #   The time and date the instance fleet was ready to run jobs.
    #   @return [Time]
    #
    # @!attribute [rw] end_date_time
    #   The time and date the instance fleet terminated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/InstanceFleetTimeline AWS API Documentation
    #
    class InstanceFleetTimeline < Struct.new(
      :creation_date_time,
      :ready_date_time,
      :end_date_time)
      include Aws::Structure
    end

    # This entity represents an instance group, which is a group of
    # instances that have common purpose. For example, CORE instance group
    # is used for HDFS.
    #
    # @!attribute [rw] id
    #   The identifier of the instance group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the instance group.
    #   @return [String]
    #
    # @!attribute [rw] market
    #   The marketplace to provision instances for this group. Valid values
    #   are ON\_DEMAND or SPOT.
    #   @return [String]
    #
    # @!attribute [rw] instance_group_type
    #   The type of the instance group. Valid values are MASTER, CORE or
    #   TASK.
    #   @return [String]
    #
    # @!attribute [rw] bid_price
    #   The maximum Spot price your are willing to pay for EC2 instances.
    #
    #   An optional, nullable field that applies if the `MarketType` for the
    #   instance group is specified as `SPOT`. Specify the maximum spot
    #   price in USD. If the value is NULL and `SPOT` is specified, the
    #   maximum Spot price is set equal to the On-Demand price.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The EC2 instance type for all instances in the instance group.
    #   @return [String]
    #
    # @!attribute [rw] requested_instance_count
    #   The target number of instances for the instance group.
    #   @return [Integer]
    #
    # @!attribute [rw] running_instance_count
    #   The number of instances currently running in this instance group.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The current status of the instance group.
    #   @return [Types::InstanceGroupStatus]
    #
    # @!attribute [rw] configurations
    #   <note markdown="1"> Amazon EMR releases 4.x or later.
    #
    #    </note>
    #
    #   The list of configurations supplied for an EMR cluster instance
    #   group. You can specify a separate configuration for each instance
    #   group (master, core, and task).
    #   @return [Array<Types::Configuration>]
    #
    # @!attribute [rw] ebs_block_devices
    #   The EBS block devices that are mapped to this instance group.
    #   @return [Array<Types::EbsBlockDevice>]
    #
    # @!attribute [rw] ebs_optimized
    #   If the instance group is EBS-optimized. An Amazon EBS-optimized
    #   instance uses an optimized configuration stack and provides
    #   additional, dedicated capacity for Amazon EBS I/O.
    #   @return [Boolean]
    #
    # @!attribute [rw] shrink_policy
    #   Policy for customizing shrink operations.
    #   @return [Types::ShrinkPolicy]
    #
    # @!attribute [rw] auto_scaling_policy
    #   An automatic scaling policy for a core instance group or task
    #   instance group in an Amazon EMR cluster. The automatic scaling
    #   policy defines how an instance group dynamically adds and terminates
    #   EC2 instances in response to the value of a CloudWatch metric. See
    #   PutAutoScalingPolicy.
    #   @return [Types::AutoScalingPolicyDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/InstanceGroup AWS API Documentation
    #
    class InstanceGroup < Struct.new(
      :id,
      :name,
      :market,
      :instance_group_type,
      :bid_price,
      :instance_type,
      :requested_instance_count,
      :running_instance_count,
      :status,
      :configurations,
      :ebs_block_devices,
      :ebs_optimized,
      :shrink_policy,
      :auto_scaling_policy)
      include Aws::Structure
    end

    # Configuration defining a new instance group.
    #
    # @note When making an API call, you may pass InstanceGroupConfig
    #   data as a hash:
    #
    #       {
    #         name: "XmlStringMaxLen256",
    #         market: "ON_DEMAND", # accepts ON_DEMAND, SPOT
    #         instance_role: "MASTER", # required, accepts MASTER, CORE, TASK
    #         bid_price: "XmlStringMaxLen256",
    #         instance_type: "InstanceType", # required
    #         instance_count: 1, # required
    #         configurations: [
    #           {
    #             classification: "String",
    #             configurations: {
    #               # recursive ConfigurationList
    #             },
    #             properties: {
    #               "String" => "String",
    #             },
    #           },
    #         ],
    #         ebs_configuration: {
    #           ebs_block_device_configs: [
    #             {
    #               volume_specification: { # required
    #                 volume_type: "String", # required
    #                 iops: 1,
    #                 size_in_gb: 1, # required
    #               },
    #               volumes_per_instance: 1,
    #             },
    #           ],
    #           ebs_optimized: false,
    #         },
    #         auto_scaling_policy: {
    #           constraints: { # required
    #             min_capacity: 1, # required
    #             max_capacity: 1, # required
    #           },
    #           rules: [ # required
    #             {
    #               name: "String", # required
    #               description: "String",
    #               action: { # required
    #                 market: "ON_DEMAND", # accepts ON_DEMAND, SPOT
    #                 simple_scaling_policy_configuration: { # required
    #                   adjustment_type: "CHANGE_IN_CAPACITY", # accepts CHANGE_IN_CAPACITY, PERCENT_CHANGE_IN_CAPACITY, EXACT_CAPACITY
    #                   scaling_adjustment: 1, # required
    #                   cool_down: 1,
    #                 },
    #               },
    #               trigger: { # required
    #                 cloud_watch_alarm_definition: { # required
    #                   comparison_operator: "GREATER_THAN_OR_EQUAL", # required, accepts GREATER_THAN_OR_EQUAL, GREATER_THAN, LESS_THAN, LESS_THAN_OR_EQUAL
    #                   evaluation_periods: 1,
    #                   metric_name: "String", # required
    #                   namespace: "String",
    #                   period: 1, # required
    #                   statistic: "SAMPLE_COUNT", # accepts SAMPLE_COUNT, AVERAGE, SUM, MINIMUM, MAXIMUM
    #                   threshold: 1.0, # required
    #                   unit: "NONE", # accepts NONE, SECONDS, MICRO_SECONDS, MILLI_SECONDS, BYTES, KILO_BYTES, MEGA_BYTES, GIGA_BYTES, TERA_BYTES, BITS, KILO_BITS, MEGA_BITS, GIGA_BITS, TERA_BITS, PERCENT, COUNT, BYTES_PER_SECOND, KILO_BYTES_PER_SECOND, MEGA_BYTES_PER_SECOND, GIGA_BYTES_PER_SECOND, TERA_BYTES_PER_SECOND, BITS_PER_SECOND, KILO_BITS_PER_SECOND, MEGA_BITS_PER_SECOND, GIGA_BITS_PER_SECOND, TERA_BITS_PER_SECOND, COUNT_PER_SECOND
    #                   dimensions: [
    #                     {
    #                       key: "String",
    #                       value: "String",
    #                     },
    #                   ],
    #                 },
    #               },
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   Friendly name given to the instance group.
    #   @return [String]
    #
    # @!attribute [rw] market
    #   Market type of the EC2 instances used to create a cluster node.
    #   @return [String]
    #
    # @!attribute [rw] instance_role
    #   The role of the instance group in the cluster.
    #   @return [String]
    #
    # @!attribute [rw] bid_price
    #   The maximum Spot price your are willing to pay for EC2 instances.
    #
    #   An optional, nullable field that applies if the `MarketType` for the
    #   instance group is specified as `SPOT`. Specify the maximum spot
    #   price in USD. If the value is NULL and `SPOT` is specified, the
    #   maximum Spot price is set equal to the On-Demand price.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The EC2 instance type for all instances in the instance group.
    #   @return [String]
    #
    # @!attribute [rw] instance_count
    #   Target number of instances for the instance group.
    #   @return [Integer]
    #
    # @!attribute [rw] configurations
    #   <note markdown="1"> Amazon EMR releases 4.x or later.
    #
    #    </note>
    #
    #   The list of configurations supplied for an EMR cluster instance
    #   group. You can specify a separate configuration for each instance
    #   group (master, core, and task).
    #   @return [Array<Types::Configuration>]
    #
    # @!attribute [rw] ebs_configuration
    #   EBS configurations that will be attached to each EC2 instance in the
    #   instance group.
    #   @return [Types::EbsConfiguration]
    #
    # @!attribute [rw] auto_scaling_policy
    #   An automatic scaling policy for a core instance group or task
    #   instance group in an Amazon EMR cluster. The automatic scaling
    #   policy defines how an instance group dynamically adds and terminates
    #   EC2 instances in response to the value of a CloudWatch metric. See
    #   PutAutoScalingPolicy.
    #   @return [Types::AutoScalingPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/InstanceGroupConfig AWS API Documentation
    #
    class InstanceGroupConfig < Struct.new(
      :name,
      :market,
      :instance_role,
      :bid_price,
      :instance_type,
      :instance_count,
      :configurations,
      :ebs_configuration,
      :auto_scaling_policy)
      include Aws::Structure
    end

    # Detailed information about an instance group.
    #
    # @!attribute [rw] instance_group_id
    #   Unique identifier for the instance group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Friendly name for the instance group.
    #   @return [String]
    #
    # @!attribute [rw] market
    #   Market type of the EC2 instances used to create a cluster node.
    #   @return [String]
    #
    # @!attribute [rw] instance_role
    #   Instance group role in the cluster
    #   @return [String]
    #
    # @!attribute [rw] bid_price
    #   The maximum Spot price your are willing to pay for EC2 instances.
    #
    #   An optional, nullable field that applies if the `MarketType` for the
    #   instance group is specified as `SPOT`. Specified in USD. If the
    #   value is NULL and `SPOT` is specified, the maximum Spot price is set
    #   equal to the On-Demand price.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   EC2 instance type.
    #   @return [String]
    #
    # @!attribute [rw] instance_request_count
    #   Target number of instances to run in the instance group.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_running_count
    #   Actual count of running instances.
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   State of instance group. The following values are deprecated:
    #   STARTING, TERMINATED, and FAILED.
    #   @return [String]
    #
    # @!attribute [rw] last_state_change_reason
    #   Details regarding the state of the instance group.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date/time the instance group was created.
    #   @return [Time]
    #
    # @!attribute [rw] start_date_time
    #   The date/time the instance group was started.
    #   @return [Time]
    #
    # @!attribute [rw] ready_date_time
    #   The date/time the instance group was available to the cluster.
    #   @return [Time]
    #
    # @!attribute [rw] end_date_time
    #   The date/time the instance group was terminated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/InstanceGroupDetail AWS API Documentation
    #
    class InstanceGroupDetail < Struct.new(
      :instance_group_id,
      :name,
      :market,
      :instance_role,
      :bid_price,
      :instance_type,
      :instance_request_count,
      :instance_running_count,
      :state,
      :last_state_change_reason,
      :creation_date_time,
      :start_date_time,
      :ready_date_time,
      :end_date_time)
      include Aws::Structure
    end

    # Modify an instance group size.
    #
    # @note When making an API call, you may pass InstanceGroupModifyConfig
    #   data as a hash:
    #
    #       {
    #         instance_group_id: "XmlStringMaxLen256", # required
    #         instance_count: 1,
    #         ec2_instance_ids_to_terminate: ["InstanceId"],
    #         shrink_policy: {
    #           decommission_timeout: 1,
    #           instance_resize_policy: {
    #             instances_to_terminate: ["InstanceId"],
    #             instances_to_protect: ["InstanceId"],
    #             instance_termination_timeout: 1,
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] instance_group_id
    #   Unique ID of the instance group to expand or shrink.
    #   @return [String]
    #
    # @!attribute [rw] instance_count
    #   Target size for the instance group.
    #   @return [Integer]
    #
    # @!attribute [rw] ec2_instance_ids_to_terminate
    #   The EC2 InstanceIds to terminate. After you terminate the instances,
    #   the instance group will not return to its original requested size.
    #   @return [Array<String>]
    #
    # @!attribute [rw] shrink_policy
    #   Policy for customizing shrink operations.
    #   @return [Types::ShrinkPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/InstanceGroupModifyConfig AWS API Documentation
    #
    class InstanceGroupModifyConfig < Struct.new(
      :instance_group_id,
      :instance_count,
      :ec2_instance_ids_to_terminate,
      :shrink_policy)
      include Aws::Structure
    end

    # The status change reason details for the instance group.
    #
    # @!attribute [rw] code
    #   The programmable code for the state change reason.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The status change reason description.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/InstanceGroupStateChangeReason AWS API Documentation
    #
    class InstanceGroupStateChangeReason < Struct.new(
      :code,
      :message)
      include Aws::Structure
    end

    # The details of the instance group status.
    #
    # @!attribute [rw] state
    #   The current state of the instance group.
    #   @return [String]
    #
    # @!attribute [rw] state_change_reason
    #   The status change reason details for the instance group.
    #   @return [Types::InstanceGroupStateChangeReason]
    #
    # @!attribute [rw] timeline
    #   The timeline of the instance group status over time.
    #   @return [Types::InstanceGroupTimeline]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/InstanceGroupStatus AWS API Documentation
    #
    class InstanceGroupStatus < Struct.new(
      :state,
      :state_change_reason,
      :timeline)
      include Aws::Structure
    end

    # The timeline of the instance group lifecycle.
    #
    # @!attribute [rw] creation_date_time
    #   The creation date and time of the instance group.
    #   @return [Time]
    #
    # @!attribute [rw] ready_date_time
    #   The date and time when the instance group became ready to perform
    #   tasks.
    #   @return [Time]
    #
    # @!attribute [rw] end_date_time
    #   The date and time when the instance group terminated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/InstanceGroupTimeline AWS API Documentation
    #
    class InstanceGroupTimeline < Struct.new(
      :creation_date_time,
      :ready_date_time,
      :end_date_time)
      include Aws::Structure
    end

    # Custom policy for requesting termination protection or termination of
    # specific instances when shrinking an instance group.
    #
    # @note When making an API call, you may pass InstanceResizePolicy
    #   data as a hash:
    #
    #       {
    #         instances_to_terminate: ["InstanceId"],
    #         instances_to_protect: ["InstanceId"],
    #         instance_termination_timeout: 1,
    #       }
    #
    # @!attribute [rw] instances_to_terminate
    #   Specific list of instances to be terminated when shrinking an
    #   instance group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] instances_to_protect
    #   Specific list of instances to be protected when shrinking an
    #   instance group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] instance_termination_timeout
    #   Decommissioning timeout override for the specific list of instances
    #   to be terminated.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/InstanceResizePolicy AWS API Documentation
    #
    class InstanceResizePolicy < Struct.new(
      :instances_to_terminate,
      :instances_to_protect,
      :instance_termination_timeout)
      include Aws::Structure
    end

    # The details of the status change reason for the instance.
    #
    # @!attribute [rw] code
    #   The programmable code for the state change reason.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The status change reason description.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/InstanceStateChangeReason AWS API Documentation
    #
    class InstanceStateChangeReason < Struct.new(
      :code,
      :message)
      include Aws::Structure
    end

    # The instance status details.
    #
    # @!attribute [rw] state
    #   The current state of the instance.
    #   @return [String]
    #
    # @!attribute [rw] state_change_reason
    #   The details of the status change reason for the instance.
    #   @return [Types::InstanceStateChangeReason]
    #
    # @!attribute [rw] timeline
    #   The timeline of the instance status over time.
    #   @return [Types::InstanceTimeline]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/InstanceStatus AWS API Documentation
    #
    class InstanceStatus < Struct.new(
      :state,
      :state_change_reason,
      :timeline)
      include Aws::Structure
    end

    # The timeline of the instance lifecycle.
    #
    # @!attribute [rw] creation_date_time
    #   The creation date and time of the instance.
    #   @return [Time]
    #
    # @!attribute [rw] ready_date_time
    #   The date and time when the instance was ready to perform tasks.
    #   @return [Time]
    #
    # @!attribute [rw] end_date_time
    #   The date and time when the instance was terminated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/InstanceTimeline AWS API Documentation
    #
    class InstanceTimeline < Struct.new(
      :creation_date_time,
      :ready_date_time,
      :end_date_time)
      include Aws::Structure
    end

    # An instance type configuration for each instance type in an instance
    # fleet, which determines the EC2 instances Amazon EMR attempts to
    # provision to fulfill On-Demand and Spot target capacities. There can
    # be a maximum of 5 instance type configurations in a fleet.
    #
    # <note markdown="1"> The instance fleet configuration is available only in Amazon EMR
    # versions 4.8.0 and later, excluding 5.0.x versions.
    #
    #  </note>
    #
    # @note When making an API call, you may pass InstanceTypeConfig
    #   data as a hash:
    #
    #       {
    #         instance_type: "InstanceType", # required
    #         weighted_capacity: 1,
    #         bid_price: "XmlStringMaxLen256",
    #         bid_price_as_percentage_of_on_demand_price: 1.0,
    #         ebs_configuration: {
    #           ebs_block_device_configs: [
    #             {
    #               volume_specification: { # required
    #                 volume_type: "String", # required
    #                 iops: 1,
    #                 size_in_gb: 1, # required
    #               },
    #               volumes_per_instance: 1,
    #             },
    #           ],
    #           ebs_optimized: false,
    #         },
    #         configurations: [
    #           {
    #             classification: "String",
    #             configurations: {
    #               # recursive ConfigurationList
    #             },
    #             properties: {
    #               "String" => "String",
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] instance_type
    #   An EC2 instance type, such as `m3.xlarge`.
    #   @return [String]
    #
    # @!attribute [rw] weighted_capacity
    #   The number of units that a provisioned instance of this type
    #   provides toward fulfilling the target capacities defined in
    #   InstanceFleetConfig. This value is 1 for a master instance fleet,
    #   and must be 1 or greater for core and task instance fleets. Defaults
    #   to 1 if not specified.
    #   @return [Integer]
    #
    # @!attribute [rw] bid_price
    #   The bid price for each EC2 Spot instance type as defined by
    #   `InstanceType`. Expressed in USD. If neither `BidPrice` nor
    #   `BidPriceAsPercentageOfOnDemandPrice` is provided,
    #   `BidPriceAsPercentageOfOnDemandPrice` defaults to 100%.
    #   @return [String]
    #
    # @!attribute [rw] bid_price_as_percentage_of_on_demand_price
    #   The bid price, as a percentage of On-Demand price, for each EC2 Spot
    #   instance as defined by `InstanceType`. Expressed as a number (for
    #   example, 20 specifies 20%). If neither `BidPrice` nor
    #   `BidPriceAsPercentageOfOnDemandPrice` is provided,
    #   `BidPriceAsPercentageOfOnDemandPrice` defaults to 100%.
    #   @return [Float]
    #
    # @!attribute [rw] ebs_configuration
    #   The configuration of Amazon Elastic Block Storage (EBS) attached to
    #   each instance as defined by `InstanceType`.
    #   @return [Types::EbsConfiguration]
    #
    # @!attribute [rw] configurations
    #   A configuration classification that applies when provisioning
    #   cluster instances, which can include configurations for applications
    #   and software that run on the cluster.
    #   @return [Array<Types::Configuration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/InstanceTypeConfig AWS API Documentation
    #
    class InstanceTypeConfig < Struct.new(
      :instance_type,
      :weighted_capacity,
      :bid_price,
      :bid_price_as_percentage_of_on_demand_price,
      :ebs_configuration,
      :configurations)
      include Aws::Structure
    end

    # The configuration specification for each instance type in an instance
    # fleet.
    #
    # <note markdown="1"> The instance fleet configuration is available only in Amazon EMR
    # versions 4.8.0 and later, excluding 5.0.x versions.
    #
    #  </note>
    #
    # @!attribute [rw] instance_type
    #   The EC2 instance type, for example `m3.xlarge`.
    #   @return [String]
    #
    # @!attribute [rw] weighted_capacity
    #   The number of units that a provisioned instance of this type
    #   provides toward fulfilling the target capacities defined in
    #   InstanceFleetConfig. Capacity values represent performance
    #   characteristics such as vCPUs, memory, or I/O. If not specified, the
    #   default value is 1.
    #   @return [Integer]
    #
    # @!attribute [rw] bid_price
    #   The bid price for each EC2 Spot instance type as defined by
    #   `InstanceType`. Expressed in USD.
    #   @return [String]
    #
    # @!attribute [rw] bid_price_as_percentage_of_on_demand_price
    #   The bid price, as a percentage of On-Demand price, for each EC2 Spot
    #   instance as defined by `InstanceType`. Expressed as a number (for
    #   example, 20 specifies 20%).
    #   @return [Float]
    #
    # @!attribute [rw] configurations
    #   A configuration classification that applies when provisioning
    #   cluster instances, which can include configurations for applications
    #   and software bundled with Amazon EMR.
    #   @return [Array<Types::Configuration>]
    #
    # @!attribute [rw] ebs_block_devices
    #   The configuration of Amazon Elastic Block Storage (EBS) attached to
    #   each instance as defined by `InstanceType`.
    #   @return [Array<Types::EbsBlockDevice>]
    #
    # @!attribute [rw] ebs_optimized
    #   Evaluates to `TRUE` when the specified `InstanceType` is
    #   EBS-optimized.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/InstanceTypeSpecification AWS API Documentation
    #
    class InstanceTypeSpecification < Struct.new(
      :instance_type,
      :weighted_capacity,
      :bid_price,
      :bid_price_as_percentage_of_on_demand_price,
      :configurations,
      :ebs_block_devices,
      :ebs_optimized)
      include Aws::Structure
    end

    # A description of a cluster (job flow).
    #
    # @!attribute [rw] job_flow_id
    #   The job flow identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the job flow.
    #   @return [String]
    #
    # @!attribute [rw] log_uri
    #   The location in Amazon S3 where log files for the job are stored.
    #   @return [String]
    #
    # @!attribute [rw] ami_version
    #   Applies only to Amazon EMR AMI versions 3.x and 2.x. For Amazon EMR
    #   releases 4.0 and later, `ReleaseLabel` is used. To specify a custom
    #   AMI, use `CustomAmiID`.
    #   @return [String]
    #
    # @!attribute [rw] execution_status_detail
    #   Describes the execution status of the job flow.
    #   @return [Types::JobFlowExecutionStatusDetail]
    #
    # @!attribute [rw] instances
    #   Describes the Amazon EC2 instances of the job flow.
    #   @return [Types::JobFlowInstancesDetail]
    #
    # @!attribute [rw] steps
    #   A list of steps run by the job flow.
    #   @return [Array<Types::StepDetail>]
    #
    # @!attribute [rw] bootstrap_actions
    #   A list of the bootstrap actions run by the job flow.
    #   @return [Array<Types::BootstrapActionDetail>]
    #
    # @!attribute [rw] supported_products
    #   A list of strings set by third party software when the job flow is
    #   launched. If you are not using third party software to manage the
    #   job flow this value is empty.
    #   @return [Array<String>]
    #
    # @!attribute [rw] visible_to_all_users
    #   Specifies whether the cluster is visible to all IAM users of the AWS
    #   account associated with the cluster. If this value is set to `true`,
    #   all IAM users of that AWS account can view and (if they have the
    #   proper policy permissions set) manage the cluster. If it is set to
    #   `false`, only the IAM user that created the cluster can view and
    #   manage it. This value can be changed using the SetVisibleToAllUsers
    #   action.
    #   @return [Boolean]
    #
    # @!attribute [rw] job_flow_role
    #   The IAM role that was specified when the job flow was launched. The
    #   EC2 instances of the job flow assume this role.
    #   @return [String]
    #
    # @!attribute [rw] service_role
    #   The IAM role that will be assumed by the Amazon EMR service to
    #   access AWS resources on your behalf.
    #   @return [String]
    #
    # @!attribute [rw] auto_scaling_role
    #   An IAM role for automatic scaling policies. The default role is
    #   `EMR_AutoScaling_DefaultRole`. The IAM role provides a way for the
    #   automatic scaling feature to get the required permissions it needs
    #   to launch and terminate EC2 instances in an instance group.
    #   @return [String]
    #
    # @!attribute [rw] scale_down_behavior
    #   The way that individual Amazon EC2 instances terminate when an
    #   automatic scale-in activity occurs or an instance group is resized.
    #   `TERMINATE_AT_INSTANCE_HOUR` indicates that Amazon EMR terminates
    #   nodes at the instance-hour boundary, regardless of when the request
    #   to terminate the instance was submitted. This option is only
    #   available with Amazon EMR 5.1.0 and later and is the default for
    #   clusters created using that version. `TERMINATE_AT_TASK_COMPLETION`
    #   indicates that Amazon EMR blacklists and drains tasks from nodes
    #   before terminating the Amazon EC2 instances, regardless of the
    #   instance-hour boundary. With either behavior, Amazon EMR removes the
    #   least active nodes first and blocks instance termination if it could
    #   lead to HDFS corruption. `TERMINATE_AT_TASK_COMPLETION` available
    #   only in Amazon EMR version 4.1.0 and later, and is the default for
    #   versions of Amazon EMR earlier than 5.1.0.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/JobFlowDetail AWS API Documentation
    #
    class JobFlowDetail < Struct.new(
      :job_flow_id,
      :name,
      :log_uri,
      :ami_version,
      :execution_status_detail,
      :instances,
      :steps,
      :bootstrap_actions,
      :supported_products,
      :visible_to_all_users,
      :job_flow_role,
      :service_role,
      :auto_scaling_role,
      :scale_down_behavior)
      include Aws::Structure
    end

    # Describes the status of the cluster (job flow).
    #
    # @!attribute [rw] state
    #   The state of the job flow.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The creation date and time of the job flow.
    #   @return [Time]
    #
    # @!attribute [rw] start_date_time
    #   The start date and time of the job flow.
    #   @return [Time]
    #
    # @!attribute [rw] ready_date_time
    #   The date and time when the job flow was ready to start running
    #   bootstrap actions.
    #   @return [Time]
    #
    # @!attribute [rw] end_date_time
    #   The completion date and time of the job flow.
    #   @return [Time]
    #
    # @!attribute [rw] last_state_change_reason
    #   Description of the job flow last changed state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/JobFlowExecutionStatusDetail AWS API Documentation
    #
    class JobFlowExecutionStatusDetail < Struct.new(
      :state,
      :creation_date_time,
      :start_date_time,
      :ready_date_time,
      :end_date_time,
      :last_state_change_reason)
      include Aws::Structure
    end

    # A description of the Amazon EC2 instance on which the cluster (job
    # flow) runs. A valid JobFlowInstancesConfig must contain either
    # InstanceGroups or InstanceFleets, which is the recommended
    # configuration. They cannot be used together. You may also have
    # MasterInstanceType, SlaveInstanceType, and InstanceCount (all three
    # must be present), but we don't recommend this configuration.
    #
    # @note When making an API call, you may pass JobFlowInstancesConfig
    #   data as a hash:
    #
    #       {
    #         master_instance_type: "InstanceType",
    #         slave_instance_type: "InstanceType",
    #         instance_count: 1,
    #         instance_groups: [
    #           {
    #             name: "XmlStringMaxLen256",
    #             market: "ON_DEMAND", # accepts ON_DEMAND, SPOT
    #             instance_role: "MASTER", # required, accepts MASTER, CORE, TASK
    #             bid_price: "XmlStringMaxLen256",
    #             instance_type: "InstanceType", # required
    #             instance_count: 1, # required
    #             configurations: [
    #               {
    #                 classification: "String",
    #                 configurations: {
    #                   # recursive ConfigurationList
    #                 },
    #                 properties: {
    #                   "String" => "String",
    #                 },
    #               },
    #             ],
    #             ebs_configuration: {
    #               ebs_block_device_configs: [
    #                 {
    #                   volume_specification: { # required
    #                     volume_type: "String", # required
    #                     iops: 1,
    #                     size_in_gb: 1, # required
    #                   },
    #                   volumes_per_instance: 1,
    #                 },
    #               ],
    #               ebs_optimized: false,
    #             },
    #             auto_scaling_policy: {
    #               constraints: { # required
    #                 min_capacity: 1, # required
    #                 max_capacity: 1, # required
    #               },
    #               rules: [ # required
    #                 {
    #                   name: "String", # required
    #                   description: "String",
    #                   action: { # required
    #                     market: "ON_DEMAND", # accepts ON_DEMAND, SPOT
    #                     simple_scaling_policy_configuration: { # required
    #                       adjustment_type: "CHANGE_IN_CAPACITY", # accepts CHANGE_IN_CAPACITY, PERCENT_CHANGE_IN_CAPACITY, EXACT_CAPACITY
    #                       scaling_adjustment: 1, # required
    #                       cool_down: 1,
    #                     },
    #                   },
    #                   trigger: { # required
    #                     cloud_watch_alarm_definition: { # required
    #                       comparison_operator: "GREATER_THAN_OR_EQUAL", # required, accepts GREATER_THAN_OR_EQUAL, GREATER_THAN, LESS_THAN, LESS_THAN_OR_EQUAL
    #                       evaluation_periods: 1,
    #                       metric_name: "String", # required
    #                       namespace: "String",
    #                       period: 1, # required
    #                       statistic: "SAMPLE_COUNT", # accepts SAMPLE_COUNT, AVERAGE, SUM, MINIMUM, MAXIMUM
    #                       threshold: 1.0, # required
    #                       unit: "NONE", # accepts NONE, SECONDS, MICRO_SECONDS, MILLI_SECONDS, BYTES, KILO_BYTES, MEGA_BYTES, GIGA_BYTES, TERA_BYTES, BITS, KILO_BITS, MEGA_BITS, GIGA_BITS, TERA_BITS, PERCENT, COUNT, BYTES_PER_SECOND, KILO_BYTES_PER_SECOND, MEGA_BYTES_PER_SECOND, GIGA_BYTES_PER_SECOND, TERA_BYTES_PER_SECOND, BITS_PER_SECOND, KILO_BITS_PER_SECOND, MEGA_BITS_PER_SECOND, GIGA_BITS_PER_SECOND, TERA_BITS_PER_SECOND, COUNT_PER_SECOND
    #                       dimensions: [
    #                         {
    #                           key: "String",
    #                           value: "String",
    #                         },
    #                       ],
    #                     },
    #                   },
    #                 },
    #               ],
    #             },
    #           },
    #         ],
    #         instance_fleets: [
    #           {
    #             name: "XmlStringMaxLen256",
    #             instance_fleet_type: "MASTER", # required, accepts MASTER, CORE, TASK
    #             target_on_demand_capacity: 1,
    #             target_spot_capacity: 1,
    #             instance_type_configs: [
    #               {
    #                 instance_type: "InstanceType", # required
    #                 weighted_capacity: 1,
    #                 bid_price: "XmlStringMaxLen256",
    #                 bid_price_as_percentage_of_on_demand_price: 1.0,
    #                 ebs_configuration: {
    #                   ebs_block_device_configs: [
    #                     {
    #                       volume_specification: { # required
    #                         volume_type: "String", # required
    #                         iops: 1,
    #                         size_in_gb: 1, # required
    #                       },
    #                       volumes_per_instance: 1,
    #                     },
    #                   ],
    #                   ebs_optimized: false,
    #                 },
    #                 configurations: [
    #                   {
    #                     classification: "String",
    #                     configurations: {
    #                       # recursive ConfigurationList
    #                     },
    #                     properties: {
    #                       "String" => "String",
    #                     },
    #                   },
    #                 ],
    #               },
    #             ],
    #             launch_specifications: {
    #               spot_specification: { # required
    #                 timeout_duration_minutes: 1, # required
    #                 timeout_action: "SWITCH_TO_ON_DEMAND", # required, accepts SWITCH_TO_ON_DEMAND, TERMINATE_CLUSTER
    #                 block_duration_minutes: 1,
    #               },
    #             },
    #           },
    #         ],
    #         ec2_key_name: "XmlStringMaxLen256",
    #         placement: {
    #           availability_zone: "XmlString",
    #           availability_zones: ["XmlStringMaxLen256"],
    #         },
    #         keep_job_flow_alive_when_no_steps: false,
    #         termination_protected: false,
    #         hadoop_version: "XmlStringMaxLen256",
    #         ec2_subnet_id: "XmlStringMaxLen256",
    #         ec2_subnet_ids: ["XmlStringMaxLen256"],
    #         emr_managed_master_security_group: "XmlStringMaxLen256",
    #         emr_managed_slave_security_group: "XmlStringMaxLen256",
    #         service_access_security_group: "XmlStringMaxLen256",
    #         additional_master_security_groups: ["XmlStringMaxLen256"],
    #         additional_slave_security_groups: ["XmlStringMaxLen256"],
    #       }
    #
    # @!attribute [rw] master_instance_type
    #   The EC2 instance type of the master node.
    #   @return [String]
    #
    # @!attribute [rw] slave_instance_type
    #   The EC2 instance type of the slave nodes.
    #   @return [String]
    #
    # @!attribute [rw] instance_count
    #   The number of EC2 instances in the cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_groups
    #   Configuration for the instance groups in a cluster.
    #   @return [Array<Types::InstanceGroupConfig>]
    #
    # @!attribute [rw] instance_fleets
    #   <note markdown="1"> The instance fleet configuration is available only in Amazon EMR
    #   versions 4.8.0 and later, excluding 5.0.x versions.
    #
    #    </note>
    #
    #   Describes the EC2 instances and instance configurations for clusters
    #   that use the instance fleet configuration.
    #   @return [Array<Types::InstanceFleetConfig>]
    #
    # @!attribute [rw] ec2_key_name
    #   The name of the EC2 key pair that can be used to ssh to the master
    #   node as the user called "hadoop."
    #   @return [String]
    #
    # @!attribute [rw] placement
    #   The Availability Zone in which the cluster runs.
    #   @return [Types::PlacementType]
    #
    # @!attribute [rw] keep_job_flow_alive_when_no_steps
    #   Specifies whether the cluster should remain available after
    #   completing all steps.
    #   @return [Boolean]
    #
    # @!attribute [rw] termination_protected
    #   Specifies whether to lock the cluster to prevent the Amazon EC2
    #   instances from being terminated by API call, user intervention, or
    #   in the event of a job-flow error.
    #   @return [Boolean]
    #
    # @!attribute [rw] hadoop_version
    #   Applies only to Amazon EMR release versions earlier than 4.0. The
    #   Hadoop version for the cluster. Valid inputs are "0.18"
    #   (deprecated), "0.20" (deprecated), "0.20.205" (deprecated),
    #   "1.0.3", "2.2.0", or "2.4.0". If you do not set this value,
    #   the default of 0.18 is used, unless the `AmiVersion` parameter is
    #   set in the RunJobFlow call, in which case the default version of
    #   Hadoop for that AMI version is used.
    #   @return [String]
    #
    # @!attribute [rw] ec2_subnet_id
    #   Applies to clusters that use the uniform instance group
    #   configuration. To launch the cluster in Amazon Virtual Private Cloud
    #   (Amazon VPC), set this parameter to the identifier of the Amazon VPC
    #   subnet where you want the cluster to launch. If you do not specify
    #   this value, the cluster launches in the normal Amazon Web Services
    #   cloud, outside of an Amazon VPC, if the account launching the
    #   cluster supports EC2 Classic networks in the region where the
    #   cluster launches.
    #
    #   Amazon VPC currently does not support cluster compute quadruple
    #   extra large (cc1.4xlarge) instances. Thus you cannot specify the
    #   cc1.4xlarge instance type for clusters launched in an Amazon VPC.
    #   @return [String]
    #
    # @!attribute [rw] ec2_subnet_ids
    #   Applies to clusters that use the instance fleet configuration. When
    #   multiple EC2 subnet IDs are specified, Amazon EMR evaluates them and
    #   launches instances in the optimal subnet.
    #
    #   <note markdown="1"> The instance fleet configuration is available only in Amazon EMR
    #   versions 4.8.0 and later, excluding 5.0.x versions.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] emr_managed_master_security_group
    #   The identifier of the Amazon EC2 security group for the master node.
    #   @return [String]
    #
    # @!attribute [rw] emr_managed_slave_security_group
    #   The identifier of the Amazon EC2 security group for the slave nodes.
    #   @return [String]
    #
    # @!attribute [rw] service_access_security_group
    #   The identifier of the Amazon EC2 security group for the Amazon EMR
    #   service to access clusters in VPC private subnets.
    #   @return [String]
    #
    # @!attribute [rw] additional_master_security_groups
    #   A list of additional Amazon EC2 security group IDs for the master
    #   node.
    #   @return [Array<String>]
    #
    # @!attribute [rw] additional_slave_security_groups
    #   A list of additional Amazon EC2 security group IDs for the slave
    #   nodes.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/JobFlowInstancesConfig AWS API Documentation
    #
    class JobFlowInstancesConfig < Struct.new(
      :master_instance_type,
      :slave_instance_type,
      :instance_count,
      :instance_groups,
      :instance_fleets,
      :ec2_key_name,
      :placement,
      :keep_job_flow_alive_when_no_steps,
      :termination_protected,
      :hadoop_version,
      :ec2_subnet_id,
      :ec2_subnet_ids,
      :emr_managed_master_security_group,
      :emr_managed_slave_security_group,
      :service_access_security_group,
      :additional_master_security_groups,
      :additional_slave_security_groups)
      include Aws::Structure
    end

    # Specify the type of Amazon EC2 instances that the cluster (job flow)
    # runs on.
    #
    # @!attribute [rw] master_instance_type
    #   The Amazon EC2 master node instance type.
    #   @return [String]
    #
    # @!attribute [rw] master_public_dns_name
    #   The DNS name of the master node. If the cluster is on a private
    #   subnet, this is the private DNS name. On a public subnet, this is
    #   the public DNS name.
    #   @return [String]
    #
    # @!attribute [rw] master_instance_id
    #   The Amazon EC2 instance identifier of the master node.
    #   @return [String]
    #
    # @!attribute [rw] slave_instance_type
    #   The Amazon EC2 slave node instance type.
    #   @return [String]
    #
    # @!attribute [rw] instance_count
    #   The number of Amazon EC2 instances in the cluster. If the value is
    #   1, the same instance serves as both the master and slave node. If
    #   the value is greater than 1, one instance is the master node and all
    #   others are slave nodes.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_groups
    #   Details about the instance groups in a cluster.
    #   @return [Array<Types::InstanceGroupDetail>]
    #
    # @!attribute [rw] normalized_instance_hours
    #   An approximation of the cost of the cluster, represented in
    #   m1.small/hours. This value is incremented one time for every hour
    #   that an m1.small runs. Larger instances are weighted more, so an
    #   Amazon EC2 instance that is roughly four times more expensive would
    #   result in the normalized instance hours being incremented by four.
    #   This result is only an approximation and does not reflect the actual
    #   billing rate.
    #   @return [Integer]
    #
    # @!attribute [rw] ec2_key_name
    #   The name of an Amazon EC2 key pair that can be used to ssh to the
    #   master node.
    #   @return [String]
    #
    # @!attribute [rw] ec2_subnet_id
    #   For clusters launched within Amazon Virtual Private Cloud, this is
    #   the identifier of the subnet where the cluster was launched.
    #   @return [String]
    #
    # @!attribute [rw] placement
    #   The Amazon EC2 Availability Zone for the cluster.
    #   @return [Types::PlacementType]
    #
    # @!attribute [rw] keep_job_flow_alive_when_no_steps
    #   Specifies whether the cluster should remain available after
    #   completing all steps.
    #   @return [Boolean]
    #
    # @!attribute [rw] termination_protected
    #   Specifies whether the Amazon EC2 instances in the cluster are
    #   protected from termination by API calls, user intervention, or in
    #   the event of a job-flow error.
    #   @return [Boolean]
    #
    # @!attribute [rw] hadoop_version
    #   The Hadoop version for the cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/JobFlowInstancesDetail AWS API Documentation
    #
    class JobFlowInstancesDetail < Struct.new(
      :master_instance_type,
      :master_public_dns_name,
      :master_instance_id,
      :slave_instance_type,
      :instance_count,
      :instance_groups,
      :normalized_instance_hours,
      :ec2_key_name,
      :ec2_subnet_id,
      :placement,
      :keep_job_flow_alive_when_no_steps,
      :termination_protected,
      :hadoop_version)
      include Aws::Structure
    end

    # Attributes for Kerberos configuration when Kerberos authentication is
    # enabled using a security configuration. For more information see [Use
    # Kerberos Authentication][1] in the *EMR Management Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-kerberos.html
    #
    # @note When making an API call, you may pass KerberosAttributes
    #   data as a hash:
    #
    #       {
    #         realm: "XmlStringMaxLen256", # required
    #         kdc_admin_password: "XmlStringMaxLen256", # required
    #         cross_realm_trust_principal_password: "XmlStringMaxLen256",
    #         ad_domain_join_user: "XmlStringMaxLen256",
    #         ad_domain_join_password: "XmlStringMaxLen256",
    #       }
    #
    # @!attribute [rw] realm
    #   The name of the Kerberos realm to which all nodes in a cluster
    #   belong. For example, `EC2.INTERNAL`.
    #   @return [String]
    #
    # @!attribute [rw] kdc_admin_password
    #   The password used within the cluster for the kadmin service on the
    #   cluster-dedicated KDC, which maintains Kerberos principals, password
    #   policies, and keytabs for the cluster.
    #   @return [String]
    #
    # @!attribute [rw] cross_realm_trust_principal_password
    #   Required only when establishing a cross-realm trust with a KDC in a
    #   different realm. The cross-realm principal password, which must be
    #   identical across realms.
    #   @return [String]
    #
    # @!attribute [rw] ad_domain_join_user
    #   Required only when establishing a cross-realm trust with an Active
    #   Directory domain. A user with sufficient privileges to join
    #   resources to the domain.
    #   @return [String]
    #
    # @!attribute [rw] ad_domain_join_password
    #   The Active Directory password for `ADDomainJoinUser`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/KerberosAttributes AWS API Documentation
    #
    class KerberosAttributes < Struct.new(
      :realm,
      :kdc_admin_password,
      :cross_realm_trust_principal_password,
      :ad_domain_join_user,
      :ad_domain_join_password)
      include Aws::Structure
    end

    # A key value pair.
    #
    # @note When making an API call, you may pass KeyValue
    #   data as a hash:
    #
    #       {
    #         key: "XmlString",
    #         value: "XmlString",
    #       }
    #
    # @!attribute [rw] key
    #   The unique identifier of a key value pair.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value part of the identified key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/KeyValue AWS API Documentation
    #
    class KeyValue < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # This input determines which bootstrap actions to retrieve.
    #
    # @note When making an API call, you may pass ListBootstrapActionsInput
    #   data as a hash:
    #
    #       {
    #         cluster_id: "ClusterId", # required
    #         marker: "Marker",
    #       }
    #
    # @!attribute [rw] cluster_id
    #   The cluster identifier for the bootstrap actions to list.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListBootstrapActionsInput AWS API Documentation
    #
    class ListBootstrapActionsInput < Struct.new(
      :cluster_id,
      :marker)
      include Aws::Structure
    end

    # This output contains the bootstrap actions detail.
    #
    # @!attribute [rw] bootstrap_actions
    #   The bootstrap actions associated with the cluster.
    #   @return [Array<Types::Command>]
    #
    # @!attribute [rw] marker
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListBootstrapActionsOutput AWS API Documentation
    #
    class ListBootstrapActionsOutput < Struct.new(
      :bootstrap_actions,
      :marker)
      include Aws::Structure
    end

    # This input determines how the ListClusters action filters the list of
    # clusters that it returns.
    #
    # @note When making an API call, you may pass ListClustersInput
    #   data as a hash:
    #
    #       {
    #         created_after: Time.now,
    #         created_before: Time.now,
    #         cluster_states: ["STARTING"], # accepts STARTING, BOOTSTRAPPING, RUNNING, WAITING, TERMINATING, TERMINATED, TERMINATED_WITH_ERRORS
    #         marker: "Marker",
    #       }
    #
    # @!attribute [rw] created_after
    #   The creation date and time beginning value filter for listing
    #   clusters.
    #   @return [Time]
    #
    # @!attribute [rw] created_before
    #   The creation date and time end value filter for listing clusters.
    #   @return [Time]
    #
    # @!attribute [rw] cluster_states
    #   The cluster state filters to apply when listing clusters.
    #   @return [Array<String>]
    #
    # @!attribute [rw] marker
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListClustersInput AWS API Documentation
    #
    class ListClustersInput < Struct.new(
      :created_after,
      :created_before,
      :cluster_states,
      :marker)
      include Aws::Structure
    end

    # This contains a ClusterSummaryList with the cluster details; for
    # example, the cluster IDs, names, and status.
    #
    # @!attribute [rw] clusters
    #   The list of clusters for the account based on the given filters.
    #   @return [Array<Types::ClusterSummary>]
    #
    # @!attribute [rw] marker
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListClustersOutput AWS API Documentation
    #
    class ListClustersOutput < Struct.new(
      :clusters,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListInstanceFleetsInput
    #   data as a hash:
    #
    #       {
    #         cluster_id: "ClusterId", # required
    #         marker: "Marker",
    #       }
    #
    # @!attribute [rw] cluster_id
    #   The unique identifier of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListInstanceFleetsInput AWS API Documentation
    #
    class ListInstanceFleetsInput < Struct.new(
      :cluster_id,
      :marker)
      include Aws::Structure
    end

    # @!attribute [rw] instance_fleets
    #   The list of instance fleets for the cluster and given filters.
    #   @return [Array<Types::InstanceFleet>]
    #
    # @!attribute [rw] marker
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListInstanceFleetsOutput AWS API Documentation
    #
    class ListInstanceFleetsOutput < Struct.new(
      :instance_fleets,
      :marker)
      include Aws::Structure
    end

    # This input determines which instance groups to retrieve.
    #
    # @note When making an API call, you may pass ListInstanceGroupsInput
    #   data as a hash:
    #
    #       {
    #         cluster_id: "ClusterId", # required
    #         marker: "Marker",
    #       }
    #
    # @!attribute [rw] cluster_id
    #   The identifier of the cluster for which to list the instance groups.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListInstanceGroupsInput AWS API Documentation
    #
    class ListInstanceGroupsInput < Struct.new(
      :cluster_id,
      :marker)
      include Aws::Structure
    end

    # This input determines which instance groups to retrieve.
    #
    # @!attribute [rw] instance_groups
    #   The list of instance groups for the cluster and given filters.
    #   @return [Array<Types::InstanceGroup>]
    #
    # @!attribute [rw] marker
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListInstanceGroupsOutput AWS API Documentation
    #
    class ListInstanceGroupsOutput < Struct.new(
      :instance_groups,
      :marker)
      include Aws::Structure
    end

    # This input determines which instances to list.
    #
    # @note When making an API call, you may pass ListInstancesInput
    #   data as a hash:
    #
    #       {
    #         cluster_id: "ClusterId", # required
    #         instance_group_id: "InstanceGroupId",
    #         instance_group_types: ["MASTER"], # accepts MASTER, CORE, TASK
    #         instance_fleet_id: "InstanceFleetId",
    #         instance_fleet_type: "MASTER", # accepts MASTER, CORE, TASK
    #         instance_states: ["AWAITING_FULFILLMENT"], # accepts AWAITING_FULFILLMENT, PROVISIONING, BOOTSTRAPPING, RUNNING, TERMINATED
    #         marker: "Marker",
    #       }
    #
    # @!attribute [rw] cluster_id
    #   The identifier of the cluster for which to list the instances.
    #   @return [String]
    #
    # @!attribute [rw] instance_group_id
    #   The identifier of the instance group for which to list the
    #   instances.
    #   @return [String]
    #
    # @!attribute [rw] instance_group_types
    #   The type of instance group for which to list the instances.
    #   @return [Array<String>]
    #
    # @!attribute [rw] instance_fleet_id
    #   The unique identifier of the instance fleet.
    #   @return [String]
    #
    # @!attribute [rw] instance_fleet_type
    #   The node type of the instance fleet. For example MASTER, CORE, or
    #   TASK.
    #   @return [String]
    #
    # @!attribute [rw] instance_states
    #   A list of instance states that will filter the instances returned
    #   with this request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] marker
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListInstancesInput AWS API Documentation
    #
    class ListInstancesInput < Struct.new(
      :cluster_id,
      :instance_group_id,
      :instance_group_types,
      :instance_fleet_id,
      :instance_fleet_type,
      :instance_states,
      :marker)
      include Aws::Structure
    end

    # This output contains the list of instances.
    #
    # @!attribute [rw] instances
    #   The list of instances for the cluster and given filters.
    #   @return [Array<Types::Instance>]
    #
    # @!attribute [rw] marker
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListInstancesOutput AWS API Documentation
    #
    class ListInstancesOutput < Struct.new(
      :instances,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSecurityConfigurationsInput
    #   data as a hash:
    #
    #       {
    #         marker: "Marker",
    #       }
    #
    # @!attribute [rw] marker
    #   The pagination token that indicates the set of results to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListSecurityConfigurationsInput AWS API Documentation
    #
    class ListSecurityConfigurationsInput < Struct.new(
      :marker)
      include Aws::Structure
    end

    # @!attribute [rw] security_configurations
    #   The creation date and time, and name, of each security
    #   configuration.
    #   @return [Array<Types::SecurityConfigurationSummary>]
    #
    # @!attribute [rw] marker
    #   A pagination token that indicates the next set of results to
    #   retrieve. Include the marker in the next ListSecurityConfiguration
    #   call to retrieve the next page of results, if required.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListSecurityConfigurationsOutput AWS API Documentation
    #
    class ListSecurityConfigurationsOutput < Struct.new(
      :security_configurations,
      :marker)
      include Aws::Structure
    end

    # This input determines which steps to list.
    #
    # @note When making an API call, you may pass ListStepsInput
    #   data as a hash:
    #
    #       {
    #         cluster_id: "ClusterId", # required
    #         step_states: ["PENDING"], # accepts PENDING, CANCEL_PENDING, RUNNING, COMPLETED, CANCELLED, FAILED, INTERRUPTED
    #         step_ids: ["XmlString"],
    #         marker: "Marker",
    #       }
    #
    # @!attribute [rw] cluster_id
    #   The identifier of the cluster for which to list the steps.
    #   @return [String]
    #
    # @!attribute [rw] step_states
    #   The filter to limit the step list based on certain states.
    #   @return [Array<String>]
    #
    # @!attribute [rw] step_ids
    #   The filter to limit the step list based on the identifier of the
    #   steps.
    #   @return [Array<String>]
    #
    # @!attribute [rw] marker
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListStepsInput AWS API Documentation
    #
    class ListStepsInput < Struct.new(
      :cluster_id,
      :step_states,
      :step_ids,
      :marker)
      include Aws::Structure
    end

    # This output contains the list of steps returned in reverse order. This
    # means that the last step is the first element in the list.
    #
    # @!attribute [rw] steps
    #   The filtered list of steps for the cluster.
    #   @return [Array<Types::StepSummary>]
    #
    # @!attribute [rw] marker
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListStepsOutput AWS API Documentation
    #
    class ListStepsOutput < Struct.new(
      :steps,
      :marker)
      include Aws::Structure
    end

    # A CloudWatch dimension, which is specified using a `Key` (known as a
    # `Name` in CloudWatch), `Value` pair. By default, Amazon EMR uses one
    # dimension whose `Key` is `JobFlowID` and `Value` is a variable
    # representing the cluster ID, which is `$\{emr.clusterId\}`. This
    # enables the rule to bootstrap when the cluster ID becomes available.
    #
    # @note When making an API call, you may pass MetricDimension
    #   data as a hash:
    #
    #       {
    #         key: "String",
    #         value: "String",
    #       }
    #
    # @!attribute [rw] key
    #   The dimension name.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The dimension value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/MetricDimension AWS API Documentation
    #
    class MetricDimension < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ModifyInstanceFleetInput
    #   data as a hash:
    #
    #       {
    #         cluster_id: "ClusterId", # required
    #         instance_fleet: { # required
    #           instance_fleet_id: "InstanceFleetId", # required
    #           target_on_demand_capacity: 1,
    #           target_spot_capacity: 1,
    #         },
    #       }
    #
    # @!attribute [rw] cluster_id
    #   The unique identifier of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] instance_fleet
    #   The unique identifier of the instance fleet.
    #   @return [Types::InstanceFleetModifyConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ModifyInstanceFleetInput AWS API Documentation
    #
    class ModifyInstanceFleetInput < Struct.new(
      :cluster_id,
      :instance_fleet)
      include Aws::Structure
    end

    # Change the size of some instance groups.
    #
    # @note When making an API call, you may pass ModifyInstanceGroupsInput
    #   data as a hash:
    #
    #       {
    #         cluster_id: "ClusterId",
    #         instance_groups: [
    #           {
    #             instance_group_id: "XmlStringMaxLen256", # required
    #             instance_count: 1,
    #             ec2_instance_ids_to_terminate: ["InstanceId"],
    #             shrink_policy: {
    #               decommission_timeout: 1,
    #               instance_resize_policy: {
    #                 instances_to_terminate: ["InstanceId"],
    #                 instances_to_protect: ["InstanceId"],
    #                 instance_termination_timeout: 1,
    #               },
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] cluster_id
    #   The ID of the cluster to which the instance group belongs.
    #   @return [String]
    #
    # @!attribute [rw] instance_groups
    #   Instance groups to change.
    #   @return [Array<Types::InstanceGroupModifyConfig>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ModifyInstanceGroupsInput AWS API Documentation
    #
    class ModifyInstanceGroupsInput < Struct.new(
      :cluster_id,
      :instance_groups)
      include Aws::Structure
    end

    # The Amazon EC2 Availability Zone configuration of the cluster (job
    # flow).
    #
    # @note When making an API call, you may pass PlacementType
    #   data as a hash:
    #
    #       {
    #         availability_zone: "XmlString",
    #         availability_zones: ["XmlStringMaxLen256"],
    #       }
    #
    # @!attribute [rw] availability_zone
    #   The Amazon EC2 Availability Zone for the cluster. `AvailabilityZone`
    #   is used for uniform instance groups, while `AvailabilityZones`
    #   (plural) is used for instance fleets.
    #   @return [String]
    #
    # @!attribute [rw] availability_zones
    #   When multiple Availability Zones are specified, Amazon EMR evaluates
    #   them and launches instances in the optimal Availability Zone.
    #   `AvailabilityZones` is used for instance fleets, while
    #   `AvailabilityZone` (singular) is used for uniform instance groups.
    #
    #   <note markdown="1"> The instance fleet configuration is available only in Amazon EMR
    #   versions 4.8.0 and later, excluding 5.0.x versions.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/PlacementType AWS API Documentation
    #
    class PlacementType < Struct.new(
      :availability_zone,
      :availability_zones)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutAutoScalingPolicyInput
    #   data as a hash:
    #
    #       {
    #         cluster_id: "ClusterId", # required
    #         instance_group_id: "InstanceGroupId", # required
    #         auto_scaling_policy: { # required
    #           constraints: { # required
    #             min_capacity: 1, # required
    #             max_capacity: 1, # required
    #           },
    #           rules: [ # required
    #             {
    #               name: "String", # required
    #               description: "String",
    #               action: { # required
    #                 market: "ON_DEMAND", # accepts ON_DEMAND, SPOT
    #                 simple_scaling_policy_configuration: { # required
    #                   adjustment_type: "CHANGE_IN_CAPACITY", # accepts CHANGE_IN_CAPACITY, PERCENT_CHANGE_IN_CAPACITY, EXACT_CAPACITY
    #                   scaling_adjustment: 1, # required
    #                   cool_down: 1,
    #                 },
    #               },
    #               trigger: { # required
    #                 cloud_watch_alarm_definition: { # required
    #                   comparison_operator: "GREATER_THAN_OR_EQUAL", # required, accepts GREATER_THAN_OR_EQUAL, GREATER_THAN, LESS_THAN, LESS_THAN_OR_EQUAL
    #                   evaluation_periods: 1,
    #                   metric_name: "String", # required
    #                   namespace: "String",
    #                   period: 1, # required
    #                   statistic: "SAMPLE_COUNT", # accepts SAMPLE_COUNT, AVERAGE, SUM, MINIMUM, MAXIMUM
    #                   threshold: 1.0, # required
    #                   unit: "NONE", # accepts NONE, SECONDS, MICRO_SECONDS, MILLI_SECONDS, BYTES, KILO_BYTES, MEGA_BYTES, GIGA_BYTES, TERA_BYTES, BITS, KILO_BITS, MEGA_BITS, GIGA_BITS, TERA_BITS, PERCENT, COUNT, BYTES_PER_SECOND, KILO_BYTES_PER_SECOND, MEGA_BYTES_PER_SECOND, GIGA_BYTES_PER_SECOND, TERA_BYTES_PER_SECOND, BITS_PER_SECOND, KILO_BITS_PER_SECOND, MEGA_BITS_PER_SECOND, GIGA_BITS_PER_SECOND, TERA_BITS_PER_SECOND, COUNT_PER_SECOND
    #                   dimensions: [
    #                     {
    #                       key: "String",
    #                       value: "String",
    #                     },
    #                   ],
    #                 },
    #               },
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] cluster_id
    #   Specifies the ID of a cluster. The instance group to which the
    #   automatic scaling policy is applied is within this cluster.
    #   @return [String]
    #
    # @!attribute [rw] instance_group_id
    #   Specifies the ID of the instance group to which the automatic
    #   scaling policy is applied.
    #   @return [String]
    #
    # @!attribute [rw] auto_scaling_policy
    #   Specifies the definition of the automatic scaling policy.
    #   @return [Types::AutoScalingPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/PutAutoScalingPolicyInput AWS API Documentation
    #
    class PutAutoScalingPolicyInput < Struct.new(
      :cluster_id,
      :instance_group_id,
      :auto_scaling_policy)
      include Aws::Structure
    end

    # @!attribute [rw] cluster_id
    #   Specifies the ID of a cluster. The instance group to which the
    #   automatic scaling policy is applied is within this cluster.
    #   @return [String]
    #
    # @!attribute [rw] instance_group_id
    #   Specifies the ID of the instance group to which the scaling policy
    #   is applied.
    #   @return [String]
    #
    # @!attribute [rw] auto_scaling_policy
    #   The automatic scaling policy definition.
    #   @return [Types::AutoScalingPolicyDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/PutAutoScalingPolicyOutput AWS API Documentation
    #
    class PutAutoScalingPolicyOutput < Struct.new(
      :cluster_id,
      :instance_group_id,
      :auto_scaling_policy)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RemoveAutoScalingPolicyInput
    #   data as a hash:
    #
    #       {
    #         cluster_id: "ClusterId", # required
    #         instance_group_id: "InstanceGroupId", # required
    #       }
    #
    # @!attribute [rw] cluster_id
    #   Specifies the ID of a cluster. The instance group to which the
    #   automatic scaling policy is applied is within this cluster.
    #   @return [String]
    #
    # @!attribute [rw] instance_group_id
    #   Specifies the ID of the instance group to which the scaling policy
    #   is applied.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/RemoveAutoScalingPolicyInput AWS API Documentation
    #
    class RemoveAutoScalingPolicyInput < Struct.new(
      :cluster_id,
      :instance_group_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/RemoveAutoScalingPolicyOutput AWS API Documentation
    #
    class RemoveAutoScalingPolicyOutput < Aws::EmptyStructure; end

    # This input identifies a cluster and a list of tags to remove.
    #
    # @note When making an API call, you may pass RemoveTagsInput
    #   data as a hash:
    #
    #       {
    #         resource_id: "ResourceId", # required
    #         tag_keys: ["String"], # required
    #       }
    #
    # @!attribute [rw] resource_id
    #   The Amazon EMR resource identifier from which tags will be removed.
    #   This value must be a cluster identifier.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of tag keys to remove from a resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/RemoveTagsInput AWS API Documentation
    #
    class RemoveTagsInput < Struct.new(
      :resource_id,
      :tag_keys)
      include Aws::Structure
    end

    # This output indicates the result of removing tags from a resource.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/RemoveTagsOutput AWS API Documentation
    #
    class RemoveTagsOutput < Aws::EmptyStructure; end

    # Input to the RunJobFlow operation.
    #
    # @note When making an API call, you may pass RunJobFlowInput
    #   data as a hash:
    #
    #       {
    #         name: "XmlStringMaxLen256", # required
    #         log_uri: "XmlString",
    #         additional_info: "XmlString",
    #         ami_version: "XmlStringMaxLen256",
    #         release_label: "XmlStringMaxLen256",
    #         instances: { # required
    #           master_instance_type: "InstanceType",
    #           slave_instance_type: "InstanceType",
    #           instance_count: 1,
    #           instance_groups: [
    #             {
    #               name: "XmlStringMaxLen256",
    #               market: "ON_DEMAND", # accepts ON_DEMAND, SPOT
    #               instance_role: "MASTER", # required, accepts MASTER, CORE, TASK
    #               bid_price: "XmlStringMaxLen256",
    #               instance_type: "InstanceType", # required
    #               instance_count: 1, # required
    #               configurations: [
    #                 {
    #                   classification: "String",
    #                   configurations: {
    #                     # recursive ConfigurationList
    #                   },
    #                   properties: {
    #                     "String" => "String",
    #                   },
    #                 },
    #               ],
    #               ebs_configuration: {
    #                 ebs_block_device_configs: [
    #                   {
    #                     volume_specification: { # required
    #                       volume_type: "String", # required
    #                       iops: 1,
    #                       size_in_gb: 1, # required
    #                     },
    #                     volumes_per_instance: 1,
    #                   },
    #                 ],
    #                 ebs_optimized: false,
    #               },
    #               auto_scaling_policy: {
    #                 constraints: { # required
    #                   min_capacity: 1, # required
    #                   max_capacity: 1, # required
    #                 },
    #                 rules: [ # required
    #                   {
    #                     name: "String", # required
    #                     description: "String",
    #                     action: { # required
    #                       market: "ON_DEMAND", # accepts ON_DEMAND, SPOT
    #                       simple_scaling_policy_configuration: { # required
    #                         adjustment_type: "CHANGE_IN_CAPACITY", # accepts CHANGE_IN_CAPACITY, PERCENT_CHANGE_IN_CAPACITY, EXACT_CAPACITY
    #                         scaling_adjustment: 1, # required
    #                         cool_down: 1,
    #                       },
    #                     },
    #                     trigger: { # required
    #                       cloud_watch_alarm_definition: { # required
    #                         comparison_operator: "GREATER_THAN_OR_EQUAL", # required, accepts GREATER_THAN_OR_EQUAL, GREATER_THAN, LESS_THAN, LESS_THAN_OR_EQUAL
    #                         evaluation_periods: 1,
    #                         metric_name: "String", # required
    #                         namespace: "String",
    #                         period: 1, # required
    #                         statistic: "SAMPLE_COUNT", # accepts SAMPLE_COUNT, AVERAGE, SUM, MINIMUM, MAXIMUM
    #                         threshold: 1.0, # required
    #                         unit: "NONE", # accepts NONE, SECONDS, MICRO_SECONDS, MILLI_SECONDS, BYTES, KILO_BYTES, MEGA_BYTES, GIGA_BYTES, TERA_BYTES, BITS, KILO_BITS, MEGA_BITS, GIGA_BITS, TERA_BITS, PERCENT, COUNT, BYTES_PER_SECOND, KILO_BYTES_PER_SECOND, MEGA_BYTES_PER_SECOND, GIGA_BYTES_PER_SECOND, TERA_BYTES_PER_SECOND, BITS_PER_SECOND, KILO_BITS_PER_SECOND, MEGA_BITS_PER_SECOND, GIGA_BITS_PER_SECOND, TERA_BITS_PER_SECOND, COUNT_PER_SECOND
    #                         dimensions: [
    #                           {
    #                             key: "String",
    #                             value: "String",
    #                           },
    #                         ],
    #                       },
    #                     },
    #                   },
    #                 ],
    #               },
    #             },
    #           ],
    #           instance_fleets: [
    #             {
    #               name: "XmlStringMaxLen256",
    #               instance_fleet_type: "MASTER", # required, accepts MASTER, CORE, TASK
    #               target_on_demand_capacity: 1,
    #               target_spot_capacity: 1,
    #               instance_type_configs: [
    #                 {
    #                   instance_type: "InstanceType", # required
    #                   weighted_capacity: 1,
    #                   bid_price: "XmlStringMaxLen256",
    #                   bid_price_as_percentage_of_on_demand_price: 1.0,
    #                   ebs_configuration: {
    #                     ebs_block_device_configs: [
    #                       {
    #                         volume_specification: { # required
    #                           volume_type: "String", # required
    #                           iops: 1,
    #                           size_in_gb: 1, # required
    #                         },
    #                         volumes_per_instance: 1,
    #                       },
    #                     ],
    #                     ebs_optimized: false,
    #                   },
    #                   configurations: [
    #                     {
    #                       classification: "String",
    #                       configurations: {
    #                         # recursive ConfigurationList
    #                       },
    #                       properties: {
    #                         "String" => "String",
    #                       },
    #                     },
    #                   ],
    #                 },
    #               ],
    #               launch_specifications: {
    #                 spot_specification: { # required
    #                   timeout_duration_minutes: 1, # required
    #                   timeout_action: "SWITCH_TO_ON_DEMAND", # required, accepts SWITCH_TO_ON_DEMAND, TERMINATE_CLUSTER
    #                   block_duration_minutes: 1,
    #                 },
    #               },
    #             },
    #           ],
    #           ec2_key_name: "XmlStringMaxLen256",
    #           placement: {
    #             availability_zone: "XmlString",
    #             availability_zones: ["XmlStringMaxLen256"],
    #           },
    #           keep_job_flow_alive_when_no_steps: false,
    #           termination_protected: false,
    #           hadoop_version: "XmlStringMaxLen256",
    #           ec2_subnet_id: "XmlStringMaxLen256",
    #           ec2_subnet_ids: ["XmlStringMaxLen256"],
    #           emr_managed_master_security_group: "XmlStringMaxLen256",
    #           emr_managed_slave_security_group: "XmlStringMaxLen256",
    #           service_access_security_group: "XmlStringMaxLen256",
    #           additional_master_security_groups: ["XmlStringMaxLen256"],
    #           additional_slave_security_groups: ["XmlStringMaxLen256"],
    #         },
    #         steps: [
    #           {
    #             name: "XmlStringMaxLen256", # required
    #             action_on_failure: "TERMINATE_JOB_FLOW", # accepts TERMINATE_JOB_FLOW, TERMINATE_CLUSTER, CANCEL_AND_WAIT, CONTINUE
    #             hadoop_jar_step: { # required
    #               properties: [
    #                 {
    #                   key: "XmlString",
    #                   value: "XmlString",
    #                 },
    #               ],
    #               jar: "XmlString", # required
    #               main_class: "XmlString",
    #               args: ["XmlString"],
    #             },
    #           },
    #         ],
    #         bootstrap_actions: [
    #           {
    #             name: "XmlStringMaxLen256", # required
    #             script_bootstrap_action: { # required
    #               path: "XmlString", # required
    #               args: ["XmlString"],
    #             },
    #           },
    #         ],
    #         supported_products: ["XmlStringMaxLen256"],
    #         new_supported_products: [
    #           {
    #             name: "XmlStringMaxLen256",
    #             args: ["XmlString"],
    #           },
    #         ],
    #         applications: [
    #           {
    #             name: "String",
    #             version: "String",
    #             args: ["String"],
    #             additional_info: {
    #               "String" => "String",
    #             },
    #           },
    #         ],
    #         configurations: [
    #           {
    #             classification: "String",
    #             configurations: {
    #               # recursive ConfigurationList
    #             },
    #             properties: {
    #               "String" => "String",
    #             },
    #           },
    #         ],
    #         visible_to_all_users: false,
    #         job_flow_role: "XmlString",
    #         service_role: "XmlString",
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #         security_configuration: "XmlString",
    #         auto_scaling_role: "XmlString",
    #         scale_down_behavior: "TERMINATE_AT_INSTANCE_HOUR", # accepts TERMINATE_AT_INSTANCE_HOUR, TERMINATE_AT_TASK_COMPLETION
    #         custom_ami_id: "XmlStringMaxLen256",
    #         ebs_root_volume_size: 1,
    #         repo_upgrade_on_boot: "SECURITY", # accepts SECURITY, NONE
    #         kerberos_attributes: {
    #           realm: "XmlStringMaxLen256", # required
    #           kdc_admin_password: "XmlStringMaxLen256", # required
    #           cross_realm_trust_principal_password: "XmlStringMaxLen256",
    #           ad_domain_join_user: "XmlStringMaxLen256",
    #           ad_domain_join_password: "XmlStringMaxLen256",
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the job flow.
    #   @return [String]
    #
    # @!attribute [rw] log_uri
    #   The location in Amazon S3 to write the log files of the job flow. If
    #   a value is not provided, logs are not created.
    #   @return [String]
    #
    # @!attribute [rw] additional_info
    #   A JSON string for selecting additional features.
    #   @return [String]
    #
    # @!attribute [rw] ami_version
    #   Applies only to Amazon EMR AMI versions 3.x and 2.x. For Amazon EMR
    #   releases 4.0 and later, `ReleaseLabel` is used. To specify a custom
    #   AMI, use `CustomAmiID`.
    #   @return [String]
    #
    # @!attribute [rw] release_label
    #   The Amazon EMR release label, which determines the version of
    #   open-source application packages installed on the cluster. Release
    #   labels are in the form `emr-x.x.x`, where x.x.x is an Amazon EMR
    #   release version, for example, `emr-5.14.0`. For more information
    #   about Amazon EMR release versions and included application versions
    #   and features, see
    #   [http://docs.aws.amazon.com/emr/latest/ReleaseGuide/][1]. The
    #   release label applies only to Amazon EMR releases versions 4.x and
    #   later. Earlier versions use `AmiVersion`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/emr/latest/ReleaseGuide/
    #   @return [String]
    #
    # @!attribute [rw] instances
    #   A specification of the number and type of Amazon EC2 instances.
    #   @return [Types::JobFlowInstancesConfig]
    #
    # @!attribute [rw] steps
    #   A list of steps to run.
    #   @return [Array<Types::StepConfig>]
    #
    # @!attribute [rw] bootstrap_actions
    #   A list of bootstrap actions to run before Hadoop starts on the
    #   cluster nodes.
    #   @return [Array<Types::BootstrapActionConfig>]
    #
    # @!attribute [rw] supported_products
    #   <note markdown="1"> For Amazon EMR releases 3.x and 2.x. For Amazon EMR releases 4.x and
    #   later, use Applications.
    #
    #    </note>
    #
    #   A list of strings that indicates third-party software to use. For
    #   more information, see the [Amazon EMR Developer Guide][1]. Currently
    #   supported values are:
    #
    #   * "mapr-m3" - launch the job flow using MapR M3 Edition.
    #
    #   * "mapr-m5" - launch the job flow using MapR M5 Edition.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/emr/latest/DeveloperGuide/emr-dg.pdf
    #   @return [Array<String>]
    #
    # @!attribute [rw] new_supported_products
    #   <note markdown="1"> For Amazon EMR releases 3.x and 2.x. For Amazon EMR releases 4.x and
    #   later, use Applications.
    #
    #    </note>
    #
    #   A list of strings that indicates third-party software to use with
    #   the job flow that accepts a user argument list. EMR accepts and
    #   forwards the argument list to the corresponding installation script
    #   as bootstrap action arguments. For more information, see "Launch a
    #   Job Flow on the MapR Distribution for Hadoop" in the [Amazon EMR
    #   Developer Guide][1]. Supported values are:
    #
    #   * "mapr-m3" - launch the cluster using MapR M3 Edition.
    #
    #   * "mapr-m5" - launch the cluster using MapR M5 Edition.
    #
    #   * "mapr" with the user arguments specifying "--edition,m3" or
    #     "--edition,m5" - launch the job flow using MapR M3 or M5 Edition
    #     respectively.
    #
    #   * "mapr-m7" - launch the cluster using MapR M7 Edition.
    #
    #   * "hunk" - launch the cluster with the Hunk Big Data Analtics
    #     Platform.
    #
    #   * "hue"- launch the cluster with Hue installed.
    #
    #   * "spark" - launch the cluster with Apache Spark installed.
    #
    #   * "ganglia" - launch the cluster with the Ganglia Monitoring
    #     System installed.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/emr/latest/DeveloperGuide/emr-dg.pdf
    #   @return [Array<Types::SupportedProductConfig>]
    #
    # @!attribute [rw] applications
    #   For Amazon EMR releases 4.0 and later. A list of applications for
    #   the cluster. Valid values are: "Hadoop", "Hive", "Mahout",
    #   "Pig", and "Spark." They are case insensitive.
    #   @return [Array<Types::Application>]
    #
    # @!attribute [rw] configurations
    #   For Amazon EMR releases 4.0 and later. The list of configurations
    #   supplied for the EMR cluster you are creating.
    #   @return [Array<Types::Configuration>]
    #
    # @!attribute [rw] visible_to_all_users
    #   Whether the cluster is visible to all IAM users of the AWS account
    #   associated with the cluster. If this value is set to `true`, all IAM
    #   users of that AWS account can view and (if they have the proper
    #   policy permissions set) manage the cluster. If it is set to `false`,
    #   only the IAM user that created the cluster can view and manage it.
    #   @return [Boolean]
    #
    # @!attribute [rw] job_flow_role
    #   Also called instance profile and EC2 role. An IAM role for an EMR
    #   cluster. The EC2 instances of the cluster assume this role. The
    #   default role is `EMR_EC2_DefaultRole`. In order to use the default
    #   role, you must have already created it using the CLI or console.
    #   @return [String]
    #
    # @!attribute [rw] service_role
    #   The IAM role that will be assumed by the Amazon EMR service to
    #   access AWS resources on your behalf.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to associate with a cluster and propagate to Amazon
    #   EC2 instances.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] security_configuration
    #   The name of a security configuration to apply to the cluster.
    #   @return [String]
    #
    # @!attribute [rw] auto_scaling_role
    #   An IAM role for automatic scaling policies. The default role is
    #   `EMR_AutoScaling_DefaultRole`. The IAM role provides permissions
    #   that the automatic scaling feature requires to launch and terminate
    #   EC2 instances in an instance group.
    #   @return [String]
    #
    # @!attribute [rw] scale_down_behavior
    #   Specifies the way that individual Amazon EC2 instances terminate
    #   when an automatic scale-in activity occurs or an instance group is
    #   resized. `TERMINATE_AT_INSTANCE_HOUR` indicates that Amazon EMR
    #   terminates nodes at the instance-hour boundary, regardless of when
    #   the request to terminate the instance was submitted. This option is
    #   only available with Amazon EMR 5.1.0 and later and is the default
    #   for clusters created using that version.
    #   `TERMINATE_AT_TASK_COMPLETION` indicates that Amazon EMR blacklists
    #   and drains tasks from nodes before terminating the Amazon EC2
    #   instances, regardless of the instance-hour boundary. With either
    #   behavior, Amazon EMR removes the least active nodes first and blocks
    #   instance termination if it could lead to HDFS corruption.
    #   `TERMINATE_AT_TASK_COMPLETION` available only in Amazon EMR version
    #   4.1.0 and later, and is the default for versions of Amazon EMR
    #   earlier than 5.1.0.
    #   @return [String]
    #
    # @!attribute [rw] custom_ami_id
    #   Available only in Amazon EMR version 5.7.0 and later. The ID of a
    #   custom Amazon EBS-backed Linux AMI. If specified, Amazon EMR uses
    #   this AMI when it launches cluster EC2 instances. For more
    #   information about custom AMIs in Amazon EMR, see [Using a Custom
    #   AMI][1] in the *Amazon EMR Management Guide*. If omitted, the
    #   cluster uses the base Linux AMI for the `ReleaseLabel` specified.
    #   For Amazon EMR versions 2.x and 3.x, use `AmiVersion` instead.
    #
    #   For information about creating a custom AMI, see [Creating an Amazon
    #   EBS-Backed Linux AMI][2] in the *Amazon Elastic Compute Cloud User
    #   Guide for Linux Instances*. For information about finding an AMI ID,
    #   see [Finding a Linux AMI][3].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-custom-ami.html
    #   [2]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami-ebs.html
    #   [3]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html
    #   @return [String]
    #
    # @!attribute [rw] ebs_root_volume_size
    #   The size, in GiB, of the EBS root device volume of the Linux AMI
    #   that is used for each EC2 instance. Available in Amazon EMR version
    #   4.x and later.
    #   @return [Integer]
    #
    # @!attribute [rw] repo_upgrade_on_boot
    #   Applies only when `CustomAmiID` is used. Specifies which updates
    #   from the Amazon Linux AMI package repositories to apply
    #   automatically when the instance boots using the AMI. If omitted, the
    #   default is `SECURITY`, which indicates that only security updates
    #   are applied. If `NONE` is specified, no updates are applied, and all
    #   updates must be applied manually.
    #   @return [String]
    #
    # @!attribute [rw] kerberos_attributes
    #   Attributes for Kerberos configuration when Kerberos authentication
    #   is enabled using a security configuration. For more information see
    #   [Use Kerberos Authentication][1] in the *EMR Management Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-kerberos.html
    #   @return [Types::KerberosAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/RunJobFlowInput AWS API Documentation
    #
    class RunJobFlowInput < Struct.new(
      :name,
      :log_uri,
      :additional_info,
      :ami_version,
      :release_label,
      :instances,
      :steps,
      :bootstrap_actions,
      :supported_products,
      :new_supported_products,
      :applications,
      :configurations,
      :visible_to_all_users,
      :job_flow_role,
      :service_role,
      :tags,
      :security_configuration,
      :auto_scaling_role,
      :scale_down_behavior,
      :custom_ami_id,
      :ebs_root_volume_size,
      :repo_upgrade_on_boot,
      :kerberos_attributes)
      include Aws::Structure
    end

    # The result of the RunJobFlow operation.
    #
    # @!attribute [rw] job_flow_id
    #   An unique identifier for the job flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/RunJobFlowOutput AWS API Documentation
    #
    class RunJobFlowOutput < Struct.new(
      :job_flow_id)
      include Aws::Structure
    end

    # The type of adjustment the automatic scaling activity makes when
    # triggered, and the periodicity of the adjustment.
    #
    # @note When making an API call, you may pass ScalingAction
    #   data as a hash:
    #
    #       {
    #         market: "ON_DEMAND", # accepts ON_DEMAND, SPOT
    #         simple_scaling_policy_configuration: { # required
    #           adjustment_type: "CHANGE_IN_CAPACITY", # accepts CHANGE_IN_CAPACITY, PERCENT_CHANGE_IN_CAPACITY, EXACT_CAPACITY
    #           scaling_adjustment: 1, # required
    #           cool_down: 1,
    #         },
    #       }
    #
    # @!attribute [rw] market
    #   Not available for instance groups. Instance groups use the market
    #   type specified for the group.
    #   @return [String]
    #
    # @!attribute [rw] simple_scaling_policy_configuration
    #   The type of adjustment the automatic scaling activity makes when
    #   triggered, and the periodicity of the adjustment.
    #   @return [Types::SimpleScalingPolicyConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ScalingAction AWS API Documentation
    #
    class ScalingAction < Struct.new(
      :market,
      :simple_scaling_policy_configuration)
      include Aws::Structure
    end

    # The upper and lower EC2 instance limits for an automatic scaling
    # policy. Automatic scaling activities triggered by automatic scaling
    # rules will not cause an instance group to grow above or below these
    # limits.
    #
    # @note When making an API call, you may pass ScalingConstraints
    #   data as a hash:
    #
    #       {
    #         min_capacity: 1, # required
    #         max_capacity: 1, # required
    #       }
    #
    # @!attribute [rw] min_capacity
    #   The lower boundary of EC2 instances in an instance group below which
    #   scaling activities are not allowed to shrink. Scale-in activities
    #   will not terminate instances below this boundary.
    #   @return [Integer]
    #
    # @!attribute [rw] max_capacity
    #   The upper boundary of EC2 instances in an instance group beyond
    #   which scaling activities are not allowed to grow. Scale-out
    #   activities will not add instances beyond this boundary.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ScalingConstraints AWS API Documentation
    #
    class ScalingConstraints < Struct.new(
      :min_capacity,
      :max_capacity)
      include Aws::Structure
    end

    # A scale-in or scale-out rule that defines scaling activity, including
    # the CloudWatch metric alarm that triggers activity, how EC2 instances
    # are added or removed, and the periodicity of adjustments. The
    # automatic scaling policy for an instance group can comprise one or
    # more automatic scaling rules.
    #
    # @note When making an API call, you may pass ScalingRule
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #         description: "String",
    #         action: { # required
    #           market: "ON_DEMAND", # accepts ON_DEMAND, SPOT
    #           simple_scaling_policy_configuration: { # required
    #             adjustment_type: "CHANGE_IN_CAPACITY", # accepts CHANGE_IN_CAPACITY, PERCENT_CHANGE_IN_CAPACITY, EXACT_CAPACITY
    #             scaling_adjustment: 1, # required
    #             cool_down: 1,
    #           },
    #         },
    #         trigger: { # required
    #           cloud_watch_alarm_definition: { # required
    #             comparison_operator: "GREATER_THAN_OR_EQUAL", # required, accepts GREATER_THAN_OR_EQUAL, GREATER_THAN, LESS_THAN, LESS_THAN_OR_EQUAL
    #             evaluation_periods: 1,
    #             metric_name: "String", # required
    #             namespace: "String",
    #             period: 1, # required
    #             statistic: "SAMPLE_COUNT", # accepts SAMPLE_COUNT, AVERAGE, SUM, MINIMUM, MAXIMUM
    #             threshold: 1.0, # required
    #             unit: "NONE", # accepts NONE, SECONDS, MICRO_SECONDS, MILLI_SECONDS, BYTES, KILO_BYTES, MEGA_BYTES, GIGA_BYTES, TERA_BYTES, BITS, KILO_BITS, MEGA_BITS, GIGA_BITS, TERA_BITS, PERCENT, COUNT, BYTES_PER_SECOND, KILO_BYTES_PER_SECOND, MEGA_BYTES_PER_SECOND, GIGA_BYTES_PER_SECOND, TERA_BYTES_PER_SECOND, BITS_PER_SECOND, KILO_BITS_PER_SECOND, MEGA_BITS_PER_SECOND, GIGA_BITS_PER_SECOND, TERA_BITS_PER_SECOND, COUNT_PER_SECOND
    #             dimensions: [
    #               {
    #                 key: "String",
    #                 value: "String",
    #               },
    #             ],
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name used to identify an automatic scaling rule. Rule names must
    #   be unique within a scaling policy.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A friendly, more verbose description of the automatic scaling rule.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The conditions that trigger an automatic scaling activity.
    #   @return [Types::ScalingAction]
    #
    # @!attribute [rw] trigger
    #   The CloudWatch alarm definition that determines when automatic
    #   scaling activity is triggered.
    #   @return [Types::ScalingTrigger]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ScalingRule AWS API Documentation
    #
    class ScalingRule < Struct.new(
      :name,
      :description,
      :action,
      :trigger)
      include Aws::Structure
    end

    # The conditions that trigger an automatic scaling activity.
    #
    # @note When making an API call, you may pass ScalingTrigger
    #   data as a hash:
    #
    #       {
    #         cloud_watch_alarm_definition: { # required
    #           comparison_operator: "GREATER_THAN_OR_EQUAL", # required, accepts GREATER_THAN_OR_EQUAL, GREATER_THAN, LESS_THAN, LESS_THAN_OR_EQUAL
    #           evaluation_periods: 1,
    #           metric_name: "String", # required
    #           namespace: "String",
    #           period: 1, # required
    #           statistic: "SAMPLE_COUNT", # accepts SAMPLE_COUNT, AVERAGE, SUM, MINIMUM, MAXIMUM
    #           threshold: 1.0, # required
    #           unit: "NONE", # accepts NONE, SECONDS, MICRO_SECONDS, MILLI_SECONDS, BYTES, KILO_BYTES, MEGA_BYTES, GIGA_BYTES, TERA_BYTES, BITS, KILO_BITS, MEGA_BITS, GIGA_BITS, TERA_BITS, PERCENT, COUNT, BYTES_PER_SECOND, KILO_BYTES_PER_SECOND, MEGA_BYTES_PER_SECOND, GIGA_BYTES_PER_SECOND, TERA_BYTES_PER_SECOND, BITS_PER_SECOND, KILO_BITS_PER_SECOND, MEGA_BITS_PER_SECOND, GIGA_BITS_PER_SECOND, TERA_BITS_PER_SECOND, COUNT_PER_SECOND
    #           dimensions: [
    #             {
    #               key: "String",
    #               value: "String",
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] cloud_watch_alarm_definition
    #   The definition of a CloudWatch metric alarm. When the defined alarm
    #   conditions are met along with other trigger parameters, scaling
    #   activity begins.
    #   @return [Types::CloudWatchAlarmDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ScalingTrigger AWS API Documentation
    #
    class ScalingTrigger < Struct.new(
      :cloud_watch_alarm_definition)
      include Aws::Structure
    end

    # Configuration of the script to run during a bootstrap action.
    #
    # @note When making an API call, you may pass ScriptBootstrapActionConfig
    #   data as a hash:
    #
    #       {
    #         path: "XmlString", # required
    #         args: ["XmlString"],
    #       }
    #
    # @!attribute [rw] path
    #   Location of the script to run during a bootstrap action. Can be
    #   either a location in Amazon S3 or on a local file system.
    #   @return [String]
    #
    # @!attribute [rw] args
    #   A list of command line arguments to pass to the bootstrap action
    #   script.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ScriptBootstrapActionConfig AWS API Documentation
    #
    class ScriptBootstrapActionConfig < Struct.new(
      :path,
      :args)
      include Aws::Structure
    end

    # The creation date and time, and name, of a security configuration.
    #
    # @!attribute [rw] name
    #   The name of the security configuration.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time the security configuration was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/SecurityConfigurationSummary AWS API Documentation
    #
    class SecurityConfigurationSummary < Struct.new(
      :name,
      :creation_date_time)
      include Aws::Structure
    end

    # The input argument to the TerminationProtection operation.
    #
    # @note When making an API call, you may pass SetTerminationProtectionInput
    #   data as a hash:
    #
    #       {
    #         job_flow_ids: ["XmlString"], # required
    #         termination_protected: false, # required
    #       }
    #
    # @!attribute [rw] job_flow_ids
    #   A list of strings that uniquely identify the clusters to protect.
    #   This identifier is returned by RunJobFlow and can also be obtained
    #   from DescribeJobFlows .
    #   @return [Array<String>]
    #
    # @!attribute [rw] termination_protected
    #   A Boolean that indicates whether to protect the cluster and prevent
    #   the Amazon EC2 instances in the cluster from shutting down due to
    #   API calls, user intervention, or job-flow error.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/SetTerminationProtectionInput AWS API Documentation
    #
    class SetTerminationProtectionInput < Struct.new(
      :job_flow_ids,
      :termination_protected)
      include Aws::Structure
    end

    # The input to the SetVisibleToAllUsers action.
    #
    # @note When making an API call, you may pass SetVisibleToAllUsersInput
    #   data as a hash:
    #
    #       {
    #         job_flow_ids: ["XmlString"], # required
    #         visible_to_all_users: false, # required
    #       }
    #
    # @!attribute [rw] job_flow_ids
    #   Identifiers of the job flows to receive the new visibility setting.
    #   @return [Array<String>]
    #
    # @!attribute [rw] visible_to_all_users
    #   Whether the specified clusters are visible to all IAM users of the
    #   AWS account associated with the cluster. If this value is set to
    #   True, all IAM users of that AWS account can view and, if they have
    #   the proper IAM policy permissions set, manage the clusters. If it is
    #   set to False, only the IAM user that created a cluster can view and
    #   manage it.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/SetVisibleToAllUsersInput AWS API Documentation
    #
    class SetVisibleToAllUsersInput < Struct.new(
      :job_flow_ids,
      :visible_to_all_users)
      include Aws::Structure
    end

    # Policy for customizing shrink operations. Allows configuration of
    # decommissioning timeout and targeted instance shrinking.
    #
    # @note When making an API call, you may pass ShrinkPolicy
    #   data as a hash:
    #
    #       {
    #         decommission_timeout: 1,
    #         instance_resize_policy: {
    #           instances_to_terminate: ["InstanceId"],
    #           instances_to_protect: ["InstanceId"],
    #           instance_termination_timeout: 1,
    #         },
    #       }
    #
    # @!attribute [rw] decommission_timeout
    #   The desired timeout for decommissioning an instance. Overrides the
    #   default YARN decommissioning timeout.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_resize_policy
    #   Custom policy for requesting termination protection or termination
    #   of specific instances when shrinking an instance group.
    #   @return [Types::InstanceResizePolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ShrinkPolicy AWS API Documentation
    #
    class ShrinkPolicy < Struct.new(
      :decommission_timeout,
      :instance_resize_policy)
      include Aws::Structure
    end

    # An automatic scaling configuration, which describes how the policy
    # adds or removes instances, the cooldown period, and the number of EC2
    # instances that will be added each time the CloudWatch metric alarm
    # condition is satisfied.
    #
    # @note When making an API call, you may pass SimpleScalingPolicyConfiguration
    #   data as a hash:
    #
    #       {
    #         adjustment_type: "CHANGE_IN_CAPACITY", # accepts CHANGE_IN_CAPACITY, PERCENT_CHANGE_IN_CAPACITY, EXACT_CAPACITY
    #         scaling_adjustment: 1, # required
    #         cool_down: 1,
    #       }
    #
    # @!attribute [rw] adjustment_type
    #   The way in which EC2 instances are added (if `ScalingAdjustment` is
    #   a positive number) or terminated (if `ScalingAdjustment` is a
    #   negative number) each time the scaling activity is triggered.
    #   `CHANGE_IN_CAPACITY` is the default. `CHANGE_IN_CAPACITY` indicates
    #   that the EC2 instance count increments or decrements by
    #   `ScalingAdjustment`, which should be expressed as an integer.
    #   `PERCENT_CHANGE_IN_CAPACITY` indicates the instance count increments
    #   or decrements by the percentage specified by `ScalingAdjustment`,
    #   which should be expressed as an integer. For example, 20 indicates
    #   an increase in 20% increments of cluster capacity. `EXACT_CAPACITY`
    #   indicates the scaling activity results in an instance group with the
    #   number of EC2 instances specified by `ScalingAdjustment`, which
    #   should be expressed as a positive integer.
    #   @return [String]
    #
    # @!attribute [rw] scaling_adjustment
    #   The amount by which to scale in or scale out, based on the specified
    #   `AdjustmentType`. A positive value adds to the instance group's EC2
    #   instance count while a negative number removes instances. If
    #   `AdjustmentType` is set to `EXACT_CAPACITY`, the number should only
    #   be a positive integer. If `AdjustmentType` is set to
    #   `PERCENT_CHANGE_IN_CAPACITY`, the value should express the
    #   percentage as an integer. For example, -20 indicates a decrease in
    #   20% increments of cluster capacity.
    #   @return [Integer]
    #
    # @!attribute [rw] cool_down
    #   The amount of time, in seconds, after a scaling activity completes
    #   before any further trigger-related scaling activities can start. The
    #   default value is 0.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/SimpleScalingPolicyConfiguration AWS API Documentation
    #
    class SimpleScalingPolicyConfiguration < Struct.new(
      :adjustment_type,
      :scaling_adjustment,
      :cool_down)
      include Aws::Structure
    end

    # The launch specification for Spot instances in the instance fleet,
    # which determines the defined duration and provisioning timeout
    # behavior.
    #
    # <note markdown="1"> The instance fleet configuration is available only in Amazon EMR
    # versions 4.8.0 and later, excluding 5.0.x versions.
    #
    #  </note>
    #
    # @note When making an API call, you may pass SpotProvisioningSpecification
    #   data as a hash:
    #
    #       {
    #         timeout_duration_minutes: 1, # required
    #         timeout_action: "SWITCH_TO_ON_DEMAND", # required, accepts SWITCH_TO_ON_DEMAND, TERMINATE_CLUSTER
    #         block_duration_minutes: 1,
    #       }
    #
    # @!attribute [rw] timeout_duration_minutes
    #   The spot provisioning timeout period in minutes. If Spot instances
    #   are not provisioned within this time period, the `TimeOutAction` is
    #   taken. Minimum value is 5 and maximum value is 1440. The timeout
    #   applies only during initial provisioning, when the cluster is first
    #   created.
    #   @return [Integer]
    #
    # @!attribute [rw] timeout_action
    #   The action to take when `TargetSpotCapacity` has not been fulfilled
    #   when the `TimeoutDurationMinutes` has expired. Spot instances are
    #   not uprovisioned within the Spot provisioining timeout. Valid values
    #   are `TERMINATE_CLUSTER` and `SWITCH_TO_ON_DEMAND`.
    #   SWITCH\_TO\_ON\_DEMAND specifies that if no Spot instances are
    #   available, On-Demand Instances should be provisioned to fulfill any
    #   remaining Spot capacity.
    #   @return [String]
    #
    # @!attribute [rw] block_duration_minutes
    #   The defined duration for Spot instances (also known as Spot blocks)
    #   in minutes. When specified, the Spot instance does not terminate
    #   before the defined duration expires, and defined duration pricing
    #   for Spot instances applies. Valid values are 60, 120, 180, 240, 300,
    #   or 360. The duration period starts as soon as a Spot instance
    #   receives its instance ID. At the end of the duration, Amazon EC2
    #   marks the Spot instance for termination and provides a Spot instance
    #   termination notice, which gives the instance a two-minute warning
    #   before it terminates.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/SpotProvisioningSpecification AWS API Documentation
    #
    class SpotProvisioningSpecification < Struct.new(
      :timeout_duration_minutes,
      :timeout_action,
      :block_duration_minutes)
      include Aws::Structure
    end

    # This represents a step in a cluster.
    #
    # @!attribute [rw] id
    #   The identifier of the cluster step.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the cluster step.
    #   @return [String]
    #
    # @!attribute [rw] config
    #   The Hadoop job configuration of the cluster step.
    #   @return [Types::HadoopStepConfig]
    #
    # @!attribute [rw] action_on_failure
    #   This specifies what action to take when the cluster step fails.
    #   Possible values are TERMINATE\_CLUSTER, CANCEL\_AND\_WAIT, and
    #   CONTINUE.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current execution status details of the cluster step.
    #   @return [Types::StepStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/Step AWS API Documentation
    #
    class Step < Struct.new(
      :id,
      :name,
      :config,
      :action_on_failure,
      :status)
      include Aws::Structure
    end

    # Specification of a cluster (job flow) step.
    #
    # @note When making an API call, you may pass StepConfig
    #   data as a hash:
    #
    #       {
    #         name: "XmlStringMaxLen256", # required
    #         action_on_failure: "TERMINATE_JOB_FLOW", # accepts TERMINATE_JOB_FLOW, TERMINATE_CLUSTER, CANCEL_AND_WAIT, CONTINUE
    #         hadoop_jar_step: { # required
    #           properties: [
    #             {
    #               key: "XmlString",
    #               value: "XmlString",
    #             },
    #           ],
    #           jar: "XmlString", # required
    #           main_class: "XmlString",
    #           args: ["XmlString"],
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the step.
    #   @return [String]
    #
    # @!attribute [rw] action_on_failure
    #   The action to take if the step fails.
    #   @return [String]
    #
    # @!attribute [rw] hadoop_jar_step
    #   The JAR file used for the step.
    #   @return [Types::HadoopJarStepConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/StepConfig AWS API Documentation
    #
    class StepConfig < Struct.new(
      :name,
      :action_on_failure,
      :hadoop_jar_step)
      include Aws::Structure
    end

    # Combines the execution state and configuration of a step.
    #
    # @!attribute [rw] step_config
    #   The step configuration.
    #   @return [Types::StepConfig]
    #
    # @!attribute [rw] execution_status_detail
    #   The description of the step status.
    #   @return [Types::StepExecutionStatusDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/StepDetail AWS API Documentation
    #
    class StepDetail < Struct.new(
      :step_config,
      :execution_status_detail)
      include Aws::Structure
    end

    # The execution state of a step.
    #
    # @!attribute [rw] state
    #   The state of the step.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The creation date and time of the step.
    #   @return [Time]
    #
    # @!attribute [rw] start_date_time
    #   The start date and time of the step.
    #   @return [Time]
    #
    # @!attribute [rw] end_date_time
    #   The completion date and time of the step.
    #   @return [Time]
    #
    # @!attribute [rw] last_state_change_reason
    #   A description of the step's current state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/StepExecutionStatusDetail AWS API Documentation
    #
    class StepExecutionStatusDetail < Struct.new(
      :state,
      :creation_date_time,
      :start_date_time,
      :end_date_time,
      :last_state_change_reason)
      include Aws::Structure
    end

    # The details of the step state change reason.
    #
    # @!attribute [rw] code
    #   The programmable code for the state change reason. Note: Currently,
    #   the service provides no code for the state change.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The descriptive message for the state change reason.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/StepStateChangeReason AWS API Documentation
    #
    class StepStateChangeReason < Struct.new(
      :code,
      :message)
      include Aws::Structure
    end

    # The execution status details of the cluster step.
    #
    # @!attribute [rw] state
    #   The execution state of the cluster step.
    #   @return [String]
    #
    # @!attribute [rw] state_change_reason
    #   The reason for the step execution status change.
    #   @return [Types::StepStateChangeReason]
    #
    # @!attribute [rw] failure_details
    #   The details for the step failure including reason, message, and log
    #   file path where the root cause was identified.
    #   @return [Types::FailureDetails]
    #
    # @!attribute [rw] timeline
    #   The timeline of the cluster step status over time.
    #   @return [Types::StepTimeline]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/StepStatus AWS API Documentation
    #
    class StepStatus < Struct.new(
      :state,
      :state_change_reason,
      :failure_details,
      :timeline)
      include Aws::Structure
    end

    # The summary of the cluster step.
    #
    # @!attribute [rw] id
    #   The identifier of the cluster step.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the cluster step.
    #   @return [String]
    #
    # @!attribute [rw] config
    #   The Hadoop job configuration of the cluster step.
    #   @return [Types::HadoopStepConfig]
    #
    # @!attribute [rw] action_on_failure
    #   This specifies what action to take when the cluster step fails.
    #   Possible values are TERMINATE\_CLUSTER, CANCEL\_AND\_WAIT, and
    #   CONTINUE.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current execution status details of the cluster step.
    #   @return [Types::StepStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/StepSummary AWS API Documentation
    #
    class StepSummary < Struct.new(
      :id,
      :name,
      :config,
      :action_on_failure,
      :status)
      include Aws::Structure
    end

    # The timeline of the cluster step lifecycle.
    #
    # @!attribute [rw] creation_date_time
    #   The date and time when the cluster step was created.
    #   @return [Time]
    #
    # @!attribute [rw] start_date_time
    #   The date and time when the cluster step execution started.
    #   @return [Time]
    #
    # @!attribute [rw] end_date_time
    #   The date and time when the cluster step execution completed or
    #   failed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/StepTimeline AWS API Documentation
    #
    class StepTimeline < Struct.new(
      :creation_date_time,
      :start_date_time,
      :end_date_time)
      include Aws::Structure
    end

    # The list of supported product configurations which allow user-supplied
    # arguments. EMR accepts these arguments and forwards them to the
    # corresponding installation script as bootstrap action arguments.
    #
    # @note When making an API call, you may pass SupportedProductConfig
    #   data as a hash:
    #
    #       {
    #         name: "XmlStringMaxLen256",
    #         args: ["XmlString"],
    #       }
    #
    # @!attribute [rw] name
    #   The name of the product configuration.
    #   @return [String]
    #
    # @!attribute [rw] args
    #   The list of user-supplied arguments.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/SupportedProductConfig AWS API Documentation
    #
    class SupportedProductConfig < Struct.new(
      :name,
      :args)
      include Aws::Structure
    end

    # A key/value pair containing user-defined metadata that you can
    # associate with an Amazon EMR resource. Tags make it easier to
    # associate clusters in various ways, such as grouping clusters to track
    # your Amazon EMR resource allocation costs. For more information, see
    # [Tag Clusters][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "String",
    #         value: "String",
    #       }
    #
    # @!attribute [rw] key
    #   A user-defined key, which is the minimum required information for a
    #   valid tag. For more information, see [Tag ][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html
    #   @return [String]
    #
    # @!attribute [rw] value
    #   A user-defined value, which is optional in a tag. For more
    #   information, see [Tag Clusters][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # Input to the TerminateJobFlows operation.
    #
    # @note When making an API call, you may pass TerminateJobFlowsInput
    #   data as a hash:
    #
    #       {
    #         job_flow_ids: ["XmlString"], # required
    #       }
    #
    # @!attribute [rw] job_flow_ids
    #   A list of job flows to be shutdown.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/TerminateJobFlowsInput AWS API Documentation
    #
    class TerminateJobFlowsInput < Struct.new(
      :job_flow_ids)
      include Aws::Structure
    end

    # EBS volume specifications such as volume type, IOPS, and size (GiB)
    # that will be requested for the EBS volume attached to an EC2 instance
    # in the cluster.
    #
    # @note When making an API call, you may pass VolumeSpecification
    #   data as a hash:
    #
    #       {
    #         volume_type: "String", # required
    #         iops: 1,
    #         size_in_gb: 1, # required
    #       }
    #
    # @!attribute [rw] volume_type
    #   The volume type. Volume types supported are gp2, io1, standard.
    #   @return [String]
    #
    # @!attribute [rw] iops
    #   The number of I/O operations per second (IOPS) that the volume
    #   supports.
    #   @return [Integer]
    #
    # @!attribute [rw] size_in_gb
    #   The volume size, in gibibytes (GiB). This can be a number from 1 -
    #   1024. If the volume type is EBS-optimized, the minimum value is 10.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/VolumeSpecification AWS API Documentation
    #
    class VolumeSpecification < Struct.new(
      :volume_type,
      :iops,
      :size_in_gb)
      include Aws::Structure
    end

  end
end
