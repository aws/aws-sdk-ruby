# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EMR
  module Types

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
      SENSITIVE = []
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
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name of the cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/AddInstanceFleetOutput AWS API Documentation
    #
    class AddInstanceFleetOutput < Struct.new(
      :cluster_id,
      :instance_fleet_id,
      :cluster_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input to an AddInstanceGroups call.
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
      SENSITIVE = []
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
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name of the cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/AddInstanceGroupsOutput AWS API Documentation
    #
    class AddInstanceGroupsOutput < Struct.new(
      :job_flow_id,
      :instance_group_ids,
      :cluster_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input argument to the AddJobFlowSteps operation.
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
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the runtime role for a step on the
    #   cluster. The runtime role can be a cross-account IAM role. The
    #   runtime role ARN is a combination of account ID, role name, and role
    #   type using the following format:
    #   `arn:partition:service:region:account:resource`.
    #
    #   For example, `arn:aws:IAM::1234567890:role/ReadOnly` is a correctly
    #   formatted runtime role ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/AddJobFlowStepsInput AWS API Documentation
    #
    class AddJobFlowStepsInput < Struct.new(
      :job_flow_id,
      :steps,
      :execution_role_arn)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # This input identifies an Amazon EMR resource and a list of tags to
    # attach.
    #
    # @!attribute [rw] resource_id
    #   The Amazon EMR resource identifier to which tags will be added. For
    #   example, a cluster identifier or an Amazon EMR Studio ID.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to associate with a resource. Tags are user-defined
    #   key-value pairs that consist of a required key string with a maximum
    #   of 128 characters, and an optional value string with a maximum of
    #   256 characters.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/AddTagsInput AWS API Documentation
    #
    class AddTagsInput < Struct.new(
      :resource_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # This output indicates the result of adding tags to a resource.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/AddTagsOutput AWS API Documentation
    #
    class AddTagsOutput < Aws::EmptyStructure; end

    # With Amazon EMR release version 4.0 and later, the only accepted
    # parameter is the application name. To pass arguments to applications,
    # you use configuration classifications specified using configuration
    # JSON objects. For more information, see [Configuring Applications][1].
    #
    # With earlier Amazon EMR releases, the application is any Amazon or
    # third-party software that you can add to the cluster. This structure
    # contains a list of strings that indicates the software to use with the
    # cluster and accepts a user argument list. Amazon EMR accepts and
    # forwards the argument list to the corresponding installation script as
    # bootstrap action argument.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/emr/latest/ReleaseGuide/emr-configure-apps.html
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
      SENSITIVE = []
      include Aws::Structure
    end

    # An automatic scaling policy for a core instance group or task instance
    # group in an Amazon EMR cluster. An automatic scaling policy defines
    # how an instance group dynamically adds and terminates Amazon EC2
    # instances in response to the value of a CloudWatch metric. See
    # PutAutoScalingPolicy.
    #
    # @!attribute [rw] constraints
    #   The upper and lower Amazon EC2 instance limits for an automatic
    #   scaling policy. Automatic scaling activity will not cause an
    #   instance group to grow above or below these limits.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # An automatic scaling policy for a core instance group or task instance
    # group in an Amazon EMR cluster. The automatic scaling policy defines
    # how an instance group dynamically adds and terminates Amazon EC2
    # instances in response to the value of a CloudWatch metric. See
    # PutAutoScalingPolicy.
    #
    # @!attribute [rw] status
    #   The status of an automatic scaling policy.
    #   @return [Types::AutoScalingPolicyStatus]
    #
    # @!attribute [rw] constraints
    #   The upper and lower Amazon EC2 instance limits for an automatic
    #   scaling policy. Automatic scaling activity will not cause an
    #   instance group to grow above or below these limits.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # An auto-termination policy for an Amazon EMR cluster. An
    # auto-termination policy defines the amount of idle time in seconds
    # after which a cluster automatically terminates. For alternative
    # cluster termination options, see [Control cluster termination][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-termination.html
    #
    # @!attribute [rw] idle_timeout
    #   Specifies the amount of idle time in seconds after which the cluster
    #   automatically terminates. You can specify a minimum of 60 seconds
    #   and a maximum of 604800 seconds (seven days).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/AutoTerminationPolicy AWS API Documentation
    #
    class AutoTerminationPolicy < Struct.new(
      :idle_timeout)
      SENSITIVE = []
      include Aws::Structure
    end

    # A configuration for Amazon EMR block public access. When
    # `BlockPublicSecurityGroupRules` is set to `true`, Amazon EMR prevents
    # cluster creation if one of the cluster's security groups has a rule
    # that allows inbound traffic from 0.0.0.0/0 or ::/0 on a port, unless
    # the port is specified as an exception using
    # `PermittedPublicSecurityGroupRuleRanges`.
    #
    # @!attribute [rw] block_public_security_group_rules
    #   Indicates whether Amazon EMR block public access is enabled (`true`)
    #   or disabled (`false`). By default, the value is `false` for accounts
    #   that have created Amazon EMR clusters before July 2019. For accounts
    #   created after this, the default is `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] permitted_public_security_group_rule_ranges
    #   Specifies ports and port ranges that are permitted to have security
    #   group rules that allow inbound traffic from all public sources. For
    #   example, if Port 23 (Telnet) is specified for
    #   `PermittedPublicSecurityGroupRuleRanges`, Amazon EMR allows cluster
    #   creation if a security group associated with the cluster has a rule
    #   that allows inbound traffic on Port 23 from IPv4 0.0.0.0/0 or IPv6
    #   port ::/0 as the source.
    #
    #   By default, Port 22, which is used for SSH access to the cluster
    #   Amazon EC2 instances, is in the list of
    #   `PermittedPublicSecurityGroupRuleRanges`.
    #   @return [Array<Types::PortRange>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/BlockPublicAccessConfiguration AWS API Documentation
    #
    class BlockPublicAccessConfiguration < Struct.new(
      :block_public_security_group_rules,
      :permitted_public_security_group_rule_ranges)
      SENSITIVE = []
      include Aws::Structure
    end

    # Properties that describe the Amazon Web Services principal that
    # created the `BlockPublicAccessConfiguration` using the
    # `PutBlockPublicAccessConfiguration` action as well as the date and
    # time that the configuration was created. Each time a configuration for
    # block public access is updated, Amazon EMR updates this metadata.
    #
    # @!attribute [rw] creation_date_time
    #   The date and time that the configuration was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by_arn
    #   The Amazon Resource Name that created or last modified the
    #   configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/BlockPublicAccessConfigurationMetadata AWS API Documentation
    #
    class BlockPublicAccessConfigurationMetadata < Struct.new(
      :creation_date_time,
      :created_by_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration of a bootstrap action.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The input argument to the CancelSteps operation.
    #
    # @!attribute [rw] cluster_id
    #   The `ClusterID` for the specified steps that will be canceled. Use
    #   RunJobFlow and ListClusters to get ClusterIDs.
    #   @return [String]
    #
    # @!attribute [rw] step_ids
    #   The list of `StepIDs` to cancel. Use ListSteps to get steps and
    #   their states for the specified cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] step_cancellation_option
    #   The option to choose to cancel `RUNNING` steps. By default, the
    #   value is `SEND_INTERRUPT`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/CancelStepsInput AWS API Documentation
    #
    class CancelStepsInput < Struct.new(
      :cluster_id,
      :step_ids,
      :step_cancellation_option)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The definition of a CloudWatch metric alarm, which determines when an
    # automatic scaling activity is triggered. When the defined alarm
    # conditions are satisfied, scaling activity begins.
    #
    # @!attribute [rw] comparison_operator
    #   Determines how the metric specified by `MetricName` is compared to
    #   the value specified by `Threshold`.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_periods
    #   The number of periods, in five-minute increments, during which the
    #   alarm condition must exist before the alarm triggers automatic
    #   scaling activity. The default value is `1`.
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
    #   The period, in seconds, over which the statistic is applied.
    #   CloudWatch metrics for Amazon EMR are emitted every five minutes
    #   (300 seconds), so if you specify a CloudWatch metric, specify `300`.
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
      SENSITIVE = []
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
    #   Provides information about the Amazon EC2 instances in a cluster
    #   grouped by category. For example, key name, subnet ID, IAM instance
    #   profile, and so on.
    #   @return [Types::Ec2InstanceAttributes]
    #
    # @!attribute [rw] instance_collection_type
    #   <note markdown="1"> The instance fleet configuration is available only in Amazon EMR
    #   releases 4.8.0 and later, excluding 5.0.x versions.
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
    # @!attribute [rw] log_encryption_kms_key_id
    #   The KMS key used for encrypting log files. This attribute is only
    #   available with Amazon EMR 5.30.0 and later, excluding Amazon EMR
    #   6.0.0.
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
    #   release version such as `emr-5.14.0`. For more information about
    #   Amazon EMR release versions and included application versions and
    #   features, see
    #   [https://docs.aws.amazon.com/emr/latest/ReleaseGuide/][1]. The
    #   release label applies only to Amazon EMR releases version 4.0 and
    #   later. Earlier versions use `AmiVersion`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/emr/latest/ReleaseGuide/
    #   @return [String]
    #
    # @!attribute [rw] auto_terminate
    #   Specifies whether the cluster should terminate after completing all
    #   steps.
    #   @return [Boolean]
    #
    # @!attribute [rw] termination_protected
    #   Indicates whether Amazon EMR will lock the cluster to prevent the
    #   Amazon EC2 instances from being terminated by an API call or user
    #   intervention, or in the event of a cluster error.
    #   @return [Boolean]
    #
    # @!attribute [rw] visible_to_all_users
    #   Indicates whether the cluster is visible to IAM principals in the
    #   Amazon Web Services account associated with the cluster. When
    #   `true`, IAM principals in the Amazon Web Services account can
    #   perform Amazon EMR cluster actions on the cluster that their IAM
    #   policies allow. When `false`, only the IAM principal that created
    #   the cluster and the Amazon Web Services account root user can
    #   perform Amazon EMR actions, regardless of IAM permissions policies
    #   attached to other IAM principals.
    #
    #   The default value is `true` if a value is not provided when creating
    #   a cluster using the Amazon EMR API RunJobFlow command, the CLI
    #   [create-cluster][1] command, or the Amazon Web Services Management
    #   Console.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cli/latest/reference/emr/create-cluster.html
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
    #   The IAM role that Amazon EMR assumes in order to access Amazon Web
    #   Services resources on your behalf.
    #   @return [String]
    #
    # @!attribute [rw] normalized_instance_hours
    #   An approximation of the cost of the cluster, represented in
    #   m1.small/hours. This value is incremented one time for every hour an
    #   m1.small instance runs. Larger instances are weighted more, so an
    #   Amazon EC2 instance that is roughly four times more expensive would
    #   result in the normalized instance hours being incremented by four.
    #   This result is only an approximation and does not reflect the actual
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
    #   configurations that are supplied to the Amazon EMR cluster.
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
    #   Amazon EC2 instances in an instance group.
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
    #   indicates that Amazon EMR adds nodes to a deny list and drains tasks
    #   from nodes before terminating the Amazon EC2 instances, regardless
    #   of the instance-hour boundary. With either behavior, Amazon EMR
    #   removes the least active nodes first and blocks instance termination
    #   if it could lead to HDFS corruption. `TERMINATE_AT_TASK_COMPLETION`
    #   is available only in Amazon EMR releases 4.1.0 and later, and is the
    #   default for versions of Amazon EMR earlier than 5.1.0.
    #   @return [String]
    #
    # @!attribute [rw] custom_ami_id
    #   Available only in Amazon EMR releases 5.7.0 and later. The ID of a
    #   custom Amazon EBS-backed Linux AMI if the cluster uses a custom AMI.
    #   @return [String]
    #
    # @!attribute [rw] ebs_root_volume_size
    #   The size, in GiB, of the Amazon EBS root device volume of the Linux
    #   AMI that is used for each Amazon EC2 instance. Available in Amazon
    #   EMR releases 4.x and later.
    #   @return [Integer]
    #
    # @!attribute [rw] repo_upgrade_on_boot
    #   Applies only when `CustomAmiID` is used. Specifies the type of
    #   updates that the Amazon Linux AMI package repositories apply when an
    #   instance boots using the AMI.
    #   @return [String]
    #
    # @!attribute [rw] kerberos_attributes
    #   Attributes for Kerberos configuration when Kerberos authentication
    #   is enabled using a security configuration. For more information see
    #   [Use Kerberos Authentication][1] in the *Amazon EMR Management
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-kerberos.html
    #   @return [Types::KerberosAttributes]
    #
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] outpost_arn
    #   The Amazon Resource Name (ARN) of the Outpost where the cluster is
    #   launched.
    #   @return [String]
    #
    # @!attribute [rw] step_concurrency_level
    #   Specifies the number of steps that can be executed concurrently.
    #   @return [Integer]
    #
    # @!attribute [rw] placement_groups
    #   Placement group configured for an Amazon EMR cluster.
    #   @return [Array<Types::PlacementGroupConfig>]
    #
    # @!attribute [rw] os_release_label
    #   The Amazon Linux release specified in a cluster launch RunJobFlow
    #   request. If no Amazon Linux release was specified, the default
    #   Amazon Linux release is shown in the response.
    #   @return [String]
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
      :log_encryption_kms_key_id,
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
      :kerberos_attributes,
      :cluster_arn,
      :outpost_arn,
      :step_concurrency_level,
      :placement_groups,
      :os_release_label)
      SENSITIVE = []
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
      SENSITIVE = []
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
    # @!attribute [rw] error_details
    #   A list of tuples that provides information about the errors that
    #   caused a cluster to terminate. This structure can contain up to 10
    #   different `ErrorDetail` tuples.
    #   @return [Array<Types::ErrorDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ClusterStatus AWS API Documentation
    #
    class ClusterStatus < Struct.new(
      :state,
      :state_change_reason,
      :timeline,
      :error_details)
      SENSITIVE = []
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
    #   Amazon EC2 instance that is roughly four times more expensive would
    #   result in the normalized instance hours being incremented by four.
    #   This result is only an approximation and does not reflect the actual
    #   billing rate.
    #   @return [Integer]
    #
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] outpost_arn
    #   The Amazon Resource Name (ARN) of the Outpost where the cluster is
    #   launched.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ClusterSummary AWS API Documentation
    #
    class ClusterSummary < Struct.new(
      :id,
      :name,
      :status,
      :normalized_instance_hours,
      :cluster_arn,
      :outpost_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the timeline of the cluster's lifecycle.
    #
    # @!attribute [rw] creation_date_time
    #   The creation date and time of the cluster.
    #   @return [Time]
    #
    # @!attribute [rw] ready_date_time
    #   The date and time when the cluster was ready to run steps.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon EC2 unit limits for a managed scaling policy. The managed
    # scaling activity of a cluster can not be above or below these limits.
    # The limit only applies to the core and task nodes. The master node
    # cannot be scaled after initial configuration.
    #
    # @!attribute [rw] unit_type
    #   The unit type used for specifying a managed scaling policy.
    #   @return [String]
    #
    # @!attribute [rw] minimum_capacity_units
    #   The lower boundary of Amazon EC2 units. It is measured through vCPU
    #   cores or instances for instance groups and measured through units
    #   for instance fleets. Managed scaling activities are not allowed
    #   beyond this boundary. The limit only applies to the core and task
    #   nodes. The master node cannot be scaled after initial configuration.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_capacity_units
    #   The upper boundary of Amazon EC2 units. It is measured through vCPU
    #   cores or instances for instance groups and measured through units
    #   for instance fleets. Managed scaling activities are not allowed
    #   beyond this boundary. The limit only applies to the core and task
    #   nodes. The master node cannot be scaled after initial configuration.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_on_demand_capacity_units
    #   The upper boundary of On-Demand Amazon EC2 units. It is measured
    #   through vCPU cores or instances for instance groups and measured
    #   through units for instance fleets. The On-Demand units are not
    #   allowed to scale beyond this boundary. The parameter is used to
    #   split capacity allocation between On-Demand and Spot Instances.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_core_capacity_units
    #   The upper boundary of Amazon EC2 units for core node type in a
    #   cluster. It is measured through vCPU cores or instances for instance
    #   groups and measured through units for instance fleets. The core
    #   units are not allowed to scale beyond this boundary. The parameter
    #   is used to split capacity allocation between core and task nodes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ComputeLimits AWS API Documentation
    #
    class ComputeLimits < Struct.new(
      :unit_type,
      :minimum_capacity_units,
      :maximum_capacity_units,
      :maximum_on_demand_capacity_units,
      :maximum_core_capacity_units)
      SENSITIVE = []
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
    # [1]: https://docs.aws.amazon.com/emr/latest/ReleaseGuide/emr-configure-apps.html
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
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   [1]: https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-security-configurations.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/CreateSecurityConfigurationInput AWS API Documentation
    #
    class CreateSecurityConfigurationInput < Struct.new(
      :name,
      :security_configuration)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A descriptive name for the Amazon EMR Studio.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A detailed description of the Amazon EMR Studio.
    #   @return [String]
    #
    # @!attribute [rw] auth_mode
    #   Specifies whether the Studio authenticates users using IAM or IAM
    #   Identity Center.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the Amazon Virtual Private Cloud (Amazon VPC) to associate
    #   with the Studio.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   A list of subnet IDs to associate with the Amazon EMR Studio. A
    #   Studio can have a maximum of 5 subnets. The subnets must belong to
    #   the VPC specified by `VpcId`. Studio users can create a Workspace in
    #   any of the specified subnets.
    #   @return [Array<String>]
    #
    # @!attribute [rw] service_role
    #   The IAM role that the Amazon EMR Studio assumes. The service role
    #   provides a way for Amazon EMR Studio to interoperate with other
    #   Amazon Web Services services.
    #   @return [String]
    #
    # @!attribute [rw] user_role
    #   The IAM user role that users and groups assume when logged in to an
    #   Amazon EMR Studio. Only specify a `UserRole` when you use IAM
    #   Identity Center authentication. The permissions attached to the
    #   `UserRole` can be scoped down for each user or group using session
    #   policies.
    #   @return [String]
    #
    # @!attribute [rw] workspace_security_group_id
    #   The ID of the Amazon EMR Studio Workspace security group. The
    #   Workspace security group allows outbound network traffic to
    #   resources in the Engine security group, and it must be in the same
    #   VPC specified by `VpcId`.
    #   @return [String]
    #
    # @!attribute [rw] engine_security_group_id
    #   The ID of the Amazon EMR Studio Engine security group. The Engine
    #   security group allows inbound network traffic from the Workspace
    #   security group, and it must be in the same VPC specified by `VpcId`.
    #   @return [String]
    #
    # @!attribute [rw] default_s3_location
    #   The Amazon S3 location to back up Amazon EMR Studio Workspaces and
    #   notebook files.
    #   @return [String]
    #
    # @!attribute [rw] idp_auth_url
    #   The authentication endpoint of your identity provider (IdP). Specify
    #   this value when you use IAM authentication and want to let federated
    #   users log in to a Studio with the Studio URL and credentials from
    #   your IdP. Amazon EMR Studio redirects users to this endpoint to
    #   enter credentials.
    #   @return [String]
    #
    # @!attribute [rw] idp_relay_state_parameter_name
    #   The name that your identity provider (IdP) uses for its `RelayState`
    #   parameter. For example, `RelayState` or `TargetSource`. Specify this
    #   value when you use IAM authentication and want to let federated
    #   users log in to a Studio using the Studio URL. The `RelayState`
    #   parameter differs by IdP.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to associate with the Amazon EMR Studio. Tags are
    #   user-defined key-value pairs that consist of a required key string
    #   with a maximum of 128 characters, and an optional value string with
    #   a maximum of 256 characters.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/CreateStudioInput AWS API Documentation
    #
    class CreateStudioInput < Struct.new(
      :name,
      :description,
      :auth_mode,
      :vpc_id,
      :subnet_ids,
      :service_role,
      :user_role,
      :workspace_security_group_id,
      :engine_security_group_id,
      :default_s3_location,
      :idp_auth_url,
      :idp_relay_state_parameter_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] studio_id
    #   The ID of the Amazon EMR Studio.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The unique Studio access URL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/CreateStudioOutput AWS API Documentation
    #
    class CreateStudioOutput < Struct.new(
      :studio_id,
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] studio_id
    #   The ID of the Amazon EMR Studio to which the user or group will be
    #   mapped.
    #   @return [String]
    #
    # @!attribute [rw] identity_id
    #   The globally unique identifier (GUID) of the user or group from the
    #   IAM Identity Center Identity Store. For more information, see
    #   [UserId][1] and [GroupId][2] in the *IAM Identity Center Identity
    #   Store API Reference*. Either `IdentityName` or `IdentityId` must be
    #   specified, but not both.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserId
    #   [2]: https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-GroupId
    #   @return [String]
    #
    # @!attribute [rw] identity_name
    #   The name of the user or group. For more information, see
    #   [UserName][1] and [DisplayName][2] in the *IAM Identity Center
    #   Identity Store API Reference*. Either `IdentityName` or `IdentityId`
    #   must be specified, but not both.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserName
    #   [2]: https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-DisplayName
    #   @return [String]
    #
    # @!attribute [rw] identity_type
    #   Specifies whether the identity to map to the Amazon EMR Studio is a
    #   user or a group.
    #   @return [String]
    #
    # @!attribute [rw] session_policy_arn
    #   The Amazon Resource Name (ARN) for the session policy that will be
    #   applied to the user or group. You should specify the ARN for the
    #   session policy that you want to apply, not the ARN of your user
    #   role. For more information, see [Create an Amazon EMR Studio User
    #   Role with Session Policies][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-studio-user-role.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/CreateStudioSessionMappingInput AWS API Documentation
    #
    class CreateStudioSessionMappingInput < Struct.new(
      :studio_id,
      :identity_id,
      :identity_name,
      :identity_type,
      :session_policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The credentials that you can use to connect to cluster endpoints.
    # Credentials consist of a username and a password.
    #
    # @note Credentials is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Credentials corresponding to the set member.
    #
    # @!attribute [rw] username_password
    #   The username and password that you use to connect to cluster
    #   endpoints.
    #   @return [Types::UsernamePassword]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/Credentials AWS API Documentation
    #
    class Credentials < Struct.new(
      :username_password,
      :unknown)
      SENSITIVE = [:username_password]
      include Aws::Structure
      include Aws::Structure::Union

      class UsernamePassword < Credentials; end
      class Unknown < Credentials; end
    end

    # @!attribute [rw] name
    #   The name of the security configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/DeleteSecurityConfigurationInput AWS API Documentation
    #
    class DeleteSecurityConfigurationInput < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/DeleteSecurityConfigurationOutput AWS API Documentation
    #
    class DeleteSecurityConfigurationOutput < Aws::EmptyStructure; end

    # @!attribute [rw] studio_id
    #   The ID of the Amazon EMR Studio.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/DeleteStudioInput AWS API Documentation
    #
    class DeleteStudioInput < Struct.new(
      :studio_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] studio_id
    #   The ID of the Amazon EMR Studio.
    #   @return [String]
    #
    # @!attribute [rw] identity_id
    #   The globally unique identifier (GUID) of the user or group to remove
    #   from the Amazon EMR Studio. For more information, see [UserId][1]
    #   and [GroupId][2] in the *IAM Identity Center Identity Store API
    #   Reference*. Either `IdentityName` or `IdentityId` must be specified.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserId
    #   [2]: https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-GroupId
    #   @return [String]
    #
    # @!attribute [rw] identity_name
    #   The name of the user name or group to remove from the Amazon EMR
    #   Studio. For more information, see [UserName][1] and [DisplayName][2]
    #   in the *IAM Identity Center Store API Reference*. Either
    #   `IdentityName` or `IdentityId` must be specified.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserName
    #   [2]: https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-DisplayName
    #   @return [String]
    #
    # @!attribute [rw] identity_type
    #   Specifies whether the identity to delete from the Amazon EMR Studio
    #   is a user or a group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/DeleteStudioSessionMappingInput AWS API Documentation
    #
    class DeleteStudioSessionMappingInput < Struct.new(
      :studio_id,
      :identity_id,
      :identity_name,
      :identity_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # This input determines which cluster to describe.
    #
    # @!attribute [rw] cluster_id
    #   The identifier of the cluster to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/DescribeClusterInput AWS API Documentation
    #
    class DescribeClusterInput < Struct.new(
      :cluster_id)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the DescribeJobFlows operation.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] notebook_execution_id
    #   The unique identifier of the notebook execution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/DescribeNotebookExecutionInput AWS API Documentation
    #
    class DescribeNotebookExecutionInput < Struct.new(
      :notebook_execution_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] notebook_execution
    #   Properties of the notebook execution.
    #   @return [Types::NotebookExecution]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/DescribeNotebookExecutionOutput AWS API Documentation
    #
    class DescribeNotebookExecutionOutput < Struct.new(
      :notebook_execution)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] release_label
    #   The target release label to be described.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token. Reserved for future use. Currently set to
    #   null.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Reserved for future use. Currently set to null.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/DescribeReleaseLabelInput AWS API Documentation
    #
    class DescribeReleaseLabelInput < Struct.new(
      :release_label,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] release_label
    #   The target release label described in the response.
    #   @return [String]
    #
    # @!attribute [rw] applications
    #   The list of applications available for the target release label.
    #   `Name` is the name of the application. `Version` is the concise
    #   version of the application.
    #   @return [Array<Types::SimplifiedApplication>]
    #
    # @!attribute [rw] next_token
    #   The pagination token. Reserved for future use. Currently set to
    #   null.
    #   @return [String]
    #
    # @!attribute [rw] available_os_releases
    #   The list of available Amazon Linux release versions for an Amazon
    #   EMR release. Contains a Label field that is formatted as shown in [
    #   *Amazon Linux 2 Release Notes* ][1]. For example,
    #   [2.0.20220218.1][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AL2/latest/relnotes/relnotes-al2.html
    #   [2]: https://docs.aws.amazon.com/AL2/latest/relnotes/relnotes-20220218.html
    #   @return [Array<Types::OSRelease>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/DescribeReleaseLabelOutput AWS API Documentation
    #
    class DescribeReleaseLabelOutput < Struct.new(
      :release_label,
      :applications,
      :next_token,
      :available_os_releases)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the security configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/DescribeSecurityConfigurationInput AWS API Documentation
    #
    class DescribeSecurityConfigurationInput < Struct.new(
      :name)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # This input determines which step to describe.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] studio_id
    #   The Amazon EMR Studio ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/DescribeStudioInput AWS API Documentation
    #
    class DescribeStudioInput < Struct.new(
      :studio_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] studio
    #   The Amazon EMR Studio details.
    #   @return [Types::Studio]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/DescribeStudioOutput AWS API Documentation
    #
    class DescribeStudioOutput < Struct.new(
      :studio)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration of requested EBS block device associated with the
    # instance group.
    #
    # @!attribute [rw] volume_specification
    #   EBS volume specifications such as volume type, IOPS, size (GiB) and
    #   throughput (MiB/s) that are requested for the EBS volume attached to
    #   an Amazon EC2 instance in the cluster.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration of requested EBS block device associated with the
    # instance group with count of volumes that are associated to every
    # instance.
    #
    # @!attribute [rw] volume_specification
    #   EBS volume specifications such as volume type, IOPS, size (GiB) and
    #   throughput (MiB/s) that are requested for the EBS volume attached to
    #   an Amazon EC2 instance in the cluster.
    #   @return [Types::VolumeSpecification]
    #
    # @!attribute [rw] volumes_per_instance
    #   Number of EBS volumes with a specific volume configuration that are
    #   associated with every instance in the instance group
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/EbsBlockDeviceConfig AWS API Documentation
    #
    class EbsBlockDeviceConfig < Struct.new(
      :volume_specification,
      :volumes_per_instance)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon EBS configuration of a cluster instance.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # EBS block device that's attached to an Amazon EC2 instance.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the Amazon EC2 instances in a cluster
    # grouped by category. For example, key name, subnet ID, IAM instance
    # profile, and so on.
    #
    # @!attribute [rw] ec2_key_name
    #   The name of the Amazon EC2 key pair to use when connecting with SSH
    #   into the master node as a user named "hadoop".
    #   @return [String]
    #
    # @!attribute [rw] ec2_subnet_id
    #   Set this parameter to the identifier of the Amazon VPC subnet where
    #   you want the cluster to launch. If you do not specify this value,
    #   and your account supports EC2-Classic, the cluster launches in
    #   EC2-Classic.
    #   @return [String]
    #
    # @!attribute [rw] requested_ec2_subnet_ids
    #   Applies to clusters configured with the instance fleets option.
    #   Specifies the unique identifier of one or more Amazon EC2 subnets in
    #   which to launch Amazon EC2 cluster instances. Subnets must exist
    #   within the same VPC. Amazon EMR chooses the Amazon EC2 subnet with
    #   the best fit from among the list of `RequestedEc2SubnetIds`, and
    #   then launches all cluster instances within that Subnet. If this
    #   value is not specified, and the account and Region support
    #   EC2-Classic networks, the cluster launches instances in the
    #   EC2-Classic network and uses `RequestedEc2AvailabilityZones` instead
    #   of this setting. If EC2-Classic is not supported, and no Subnet is
    #   specified, Amazon EMR chooses the subnet for you.
    #   `RequestedEc2SubnetIDs` and `RequestedEc2AvailabilityZones` cannot
    #   be specified together.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ec2_availability_zone
    #   The Availability Zone in which the cluster will run.
    #   @return [String]
    #
    # @!attribute [rw] requested_ec2_availability_zones
    #   Applies to clusters configured with the instance fleets option.
    #   Specifies one or more Availability Zones in which to launch Amazon
    #   EC2 cluster instances when the EC2-Classic network configuration is
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
    #   Amazon EC2 instances of the cluster assume this role.
    #   @return [String]
    #
    # @!attribute [rw] emr_managed_master_security_group
    #   The identifier of the Amazon EC2 security group for the master node.
    #   @return [String]
    #
    # @!attribute [rw] emr_managed_slave_security_group
    #   The identifier of the Amazon EC2 security group for the core and
    #   task nodes.
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
    #   A list of additional Amazon EC2 security group IDs for the core and
    #   task nodes.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # A tuple that provides information about an error that caused a cluster
    # to terminate.
    #
    # @!attribute [rw] error_code
    #   The name or code associated with the error.
    #   @return [String]
    #
    # @!attribute [rw] error_data
    #   A list of key value pairs that provides contextual information about
    #   why an error occured.
    #   @return [Array<Hash<String,String>>]
    #
    # @!attribute [rw] error_message
    #   A message that describes the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ErrorDetail AWS API Documentation
    #
    class ErrorDetail < Struct.new(
      :error_code,
      :error_data,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the execution engine (cluster) to run the notebook and
    # perform the notebook execution, for example, an Amazon EMR cluster.
    #
    # @!attribute [rw] id
    #   The unique identifier of the execution engine. For an Amazon EMR
    #   cluster, this is the cluster ID.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of execution engine. A value of `EMR` specifies an Amazon
    #   EMR cluster.
    #   @return [String]
    #
    # @!attribute [rw] master_instance_security_group_id
    #   An optional unique ID of an Amazon EC2 security group to associate
    #   with the master instance of the Amazon EMR cluster for this notebook
    #   execution. For more information see [Specifying Amazon EC2 Security
    #   Groups for Amazon EMR Notebooks][1] in the *EMR Management Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-managed-notebooks-security-groups.html
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The execution role ARN required for the notebook execution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ExecutionEngineConfig AWS API Documentation
    #
    class ExecutionEngineConfig < Struct.new(
      :id,
      :type,
      :master_instance_security_group_id,
      :execution_role_arn)
      SENSITIVE = []
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
    #   The descriptive message including the error the Amazon EMR service
    #   has identified as the cause of step failure. This is text from an
    #   error log that describes the root cause of the failure.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_id
    #   Specifies the ID of the Amazon EMR cluster for which the
    #   auto-termination policy will be fetched.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/GetAutoTerminationPolicyInput AWS API Documentation
    #
    class GetAutoTerminationPolicyInput < Struct.new(
      :cluster_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_termination_policy
    #   Specifies the auto-termination policy that is attached to an Amazon
    #   EMR cluster.
    #   @return [Types::AutoTerminationPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/GetAutoTerminationPolicyOutput AWS API Documentation
    #
    class GetAutoTerminationPolicyOutput < Struct.new(
      :auto_termination_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/GetBlockPublicAccessConfigurationInput AWS API Documentation
    #
    class GetBlockPublicAccessConfigurationInput < Aws::EmptyStructure; end

    # @!attribute [rw] block_public_access_configuration
    #   A configuration for Amazon EMR block public access. The
    #   configuration applies to all clusters created in your account for
    #   the current Region. The configuration specifies whether block public
    #   access is enabled. If block public access is enabled, security
    #   groups associated with the cluster cannot have rules that allow
    #   inbound traffic from 0.0.0.0/0 or ::/0 on a port, unless the port is
    #   specified as an exception using
    #   `PermittedPublicSecurityGroupRuleRanges` in the
    #   `BlockPublicAccessConfiguration`. By default, Port 22 (SSH) is an
    #   exception, and public access is allowed on this port. You can change
    #   this by updating the block public access configuration to remove the
    #   exception.
    #
    #   <note markdown="1"> For accounts that created clusters in a Region before November 25,
    #   2019, block public access is disabled by default in that Region. To
    #   use this feature, you must manually enable and configure it. For
    #   accounts that did not create an Amazon EMR cluster in a Region
    #   before this date, block public access is enabled by default in that
    #   Region.
    #
    #    </note>
    #   @return [Types::BlockPublicAccessConfiguration]
    #
    # @!attribute [rw] block_public_access_configuration_metadata
    #   Properties that describe the Amazon Web Services principal that
    #   created the `BlockPublicAccessConfiguration` using the
    #   `PutBlockPublicAccessConfiguration` action as well as the date and
    #   time that the configuration was created. Each time a configuration
    #   for block public access is updated, Amazon EMR updates this
    #   metadata.
    #   @return [Types::BlockPublicAccessConfigurationMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/GetBlockPublicAccessConfigurationOutput AWS API Documentation
    #
    class GetBlockPublicAccessConfigurationOutput < Struct.new(
      :block_public_access_configuration,
      :block_public_access_configuration_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_id
    #   The unique identifier of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the runtime role for interactive
    #   workload submission on the cluster. The runtime role can be a
    #   cross-account IAM role. The runtime role ARN is a combination of
    #   account ID, role name, and role type using the following format:
    #   `arn:partition:service:region:account:resource`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/GetClusterSessionCredentialsInput AWS API Documentation
    #
    class GetClusterSessionCredentialsInput < Struct.new(
      :cluster_id,
      :execution_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] credentials
    #   The credentials that you can use to connect to cluster endpoints
    #   that support username and password authentication.
    #   @return [Types::Credentials]
    #
    # @!attribute [rw] expires_at
    #   The time when the credentials that are returned by the
    #   `GetClusterSessionCredentials` API expire.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/GetClusterSessionCredentialsOutput AWS API Documentation
    #
    class GetClusterSessionCredentialsOutput < Struct.new(
      :credentials,
      :expires_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_id
    #   Specifies the ID of the cluster for which the managed scaling policy
    #   will be fetched.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/GetManagedScalingPolicyInput AWS API Documentation
    #
    class GetManagedScalingPolicyInput < Struct.new(
      :cluster_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] managed_scaling_policy
    #   Specifies the managed scaling policy that is attached to an Amazon
    #   EMR cluster.
    #   @return [Types::ManagedScalingPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/GetManagedScalingPolicyOutput AWS API Documentation
    #
    class GetManagedScalingPolicyOutput < Struct.new(
      :managed_scaling_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] studio_id
    #   The ID of the Amazon EMR Studio.
    #   @return [String]
    #
    # @!attribute [rw] identity_id
    #   The globally unique identifier (GUID) of the user or group. For more
    #   information, see [UserId][1] and [GroupId][2] in the *IAM Identity
    #   Center Identity Store API Reference*. Either `IdentityName` or
    #   `IdentityId` must be specified.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserId
    #   [2]: https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-GroupId
    #   @return [String]
    #
    # @!attribute [rw] identity_name
    #   The name of the user or group to fetch. For more information, see
    #   [UserName][1] and [DisplayName][2] in the *IAM Identity Center
    #   Identity Store API Reference*. Either `IdentityName` or `IdentityId`
    #   must be specified.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserName
    #   [2]: https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-DisplayName
    #   @return [String]
    #
    # @!attribute [rw] identity_type
    #   Specifies whether the identity to fetch is a user or a group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/GetStudioSessionMappingInput AWS API Documentation
    #
    class GetStudioSessionMappingInput < Struct.new(
      :studio_id,
      :identity_id,
      :identity_name,
      :identity_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_mapping
    #   The session mapping details for the specified Amazon EMR Studio and
    #   identity, including session policy ARN and creation time.
    #   @return [Types::SessionMappingDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/GetStudioSessionMappingOutput AWS API Documentation
    #
    class GetStudioSessionMappingOutput < Struct.new(
      :session_mapping)
      SENSITIVE = []
      include Aws::Structure
    end

    # A job flow step consisting of a JAR file whose main function will be
    # executed. The main function submits a job for Hadoop to execute and
    # waits for the job to finish or fail.
    #
    # @!attribute [rw] properties
    #   A list of Java properties that are set when the step runs. You can
    #   use these properties to pass key-value pairs to your main function.
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
      SENSITIVE = []
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
    #   use these properties to pass key-value pairs to your main function.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an Amazon EC2 instance provisioned as part of cluster.
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
    #   The unique identifier of the instance fleet to which an Amazon EC2
    #   instance belongs.
    #   @return [String]
    #
    # @!attribute [rw] market
    #   The instance purchasing option. Valid values are `ON_DEMAND` or
    #   `SPOT`.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The Amazon EC2 instance type, for example `m3.xlarge`.
    #   @return [String]
    #
    # @!attribute [rw] ebs_volumes
    #   The list of Amazon EBS volumes that are attached to this instance.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an instance fleet, which is a group of Amazon EC2 instances
    # that host a particular node type (master, core, or task) in an Amazon
    # EMR cluster. Instance fleets can consist of a mix of instance types
    # and On-Demand and Spot Instances, which are provisioned to meet a
    # defined target capacity.
    #
    # <note markdown="1"> The instance fleet configuration is available only in Amazon EMR
    # releases 4.8.0 and later, excluding 5.0.x versions.
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
    #   determines how many On-Demand Instances to provision. When the
    #   instance fleet launches, Amazon EMR tries to provision On-Demand
    #   Instances as specified by InstanceTypeConfig. Each instance
    #   configuration has a specified `WeightedCapacity`. When an On-Demand
    #   Instance is provisioned, the `WeightedCapacity` units count toward
    #   the target capacity. Amazon EMR provisions instances until the
    #   target capacity is totally fulfilled, even if this results in an
    #   overage. For example, if there are 2 units remaining to fulfill
    #   capacity, and Amazon EMR can only provision an instance with a
    #   `WeightedCapacity` of 5 units, the instance is provisioned, and the
    #   target capacity is exceeded by 3 units. You can use
    #   InstanceFleet$ProvisionedOnDemandCapacity to determine the Spot
    #   capacity units that have been provisioned for the instance fleet.
    #
    #   <note markdown="1"> If not specified or set to 0, only Spot Instances are provisioned
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
    #   determines how many Spot Instances to provision. When the instance
    #   fleet launches, Amazon EMR tries to provision Spot Instances as
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
    #   <note markdown="1"> If not specified or set to 0, only On-Demand Instances are
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
    #   An array of specifications for the instance types that comprise an
    #   instance fleet.
    #   @return [Array<Types::InstanceTypeSpecification>]
    #
    # @!attribute [rw] launch_specifications
    #   Describes the launch specification for an instance fleet.
    #   @return [Types::InstanceFleetProvisioningSpecifications]
    #
    # @!attribute [rw] resize_specifications
    #   The resize specification for the instance fleet.
    #   @return [Types::InstanceFleetResizingSpecifications]
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
      :launch_specifications,
      :resize_specifications)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration that defines an instance fleet.
    #
    # <note markdown="1"> The instance fleet configuration is available only in Amazon EMR
    # releases 4.8.0 and later, excluding 5.0.x versions.
    #
    #  </note>
    #
    # @!attribute [rw] name
    #   The friendly name of the instance fleet.
    #   @return [String]
    #
    # @!attribute [rw] instance_fleet_type
    #   The node type that the instance fleet hosts. Valid values are
    #   MASTER, CORE, and TASK.
    #   @return [String]
    #
    # @!attribute [rw] target_on_demand_capacity
    #   The target capacity of On-Demand units for the instance fleet, which
    #   determines how many On-Demand Instances to provision. When the
    #   instance fleet launches, Amazon EMR tries to provision On-Demand
    #   Instances as specified by InstanceTypeConfig. Each instance
    #   configuration has a specified `WeightedCapacity`. When an On-Demand
    #   Instance is provisioned, the `WeightedCapacity` units count toward
    #   the target capacity. Amazon EMR provisions instances until the
    #   target capacity is totally fulfilled, even if this results in an
    #   overage. For example, if there are 2 units remaining to fulfill
    #   capacity, and Amazon EMR can only provision an instance with a
    #   `WeightedCapacity` of 5 units, the instance is provisioned, and the
    #   target capacity is exceeded by 3 units.
    #
    #   <note markdown="1"> If not specified or set to 0, only Spot Instances are provisioned
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
    #   determines how many Spot Instances to provision. When the instance
    #   fleet launches, Amazon EMR tries to provision Spot Instances as
    #   specified by InstanceTypeConfig. Each instance configuration has a
    #   specified `WeightedCapacity`. When a Spot Instance is provisioned,
    #   the `WeightedCapacity` units count toward the target capacity.
    #   Amazon EMR provisions instances until the target capacity is totally
    #   fulfilled, even if this results in an overage. For example, if there
    #   are 2 units remaining to fulfill capacity, and Amazon EMR can only
    #   provision an instance with a `WeightedCapacity` of 5 units, the
    #   instance is provisioned, and the target capacity is exceeded by 3
    #   units.
    #
    #   <note markdown="1"> If not specified or set to 0, only On-Demand Instances are
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
    #   The instance type configurations that define the Amazon EC2
    #   instances in the instance fleet.
    #   @return [Array<Types::InstanceTypeConfig>]
    #
    # @!attribute [rw] launch_specifications
    #   The launch specification for the instance fleet.
    #   @return [Types::InstanceFleetProvisioningSpecifications]
    #
    # @!attribute [rw] resize_specifications
    #   The resize specification for the instance fleet.
    #   @return [Types::InstanceFleetResizingSpecifications]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/InstanceFleetConfig AWS API Documentation
    #
    class InstanceFleetConfig < Struct.new(
      :name,
      :instance_fleet_type,
      :target_on_demand_capacity,
      :target_spot_capacity,
      :instance_type_configs,
      :launch_specifications,
      :resize_specifications)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration parameters for an instance fleet modification request.
    #
    # <note markdown="1"> The instance fleet configuration is available only in Amazon EMR
    # releases 4.8.0 and later, excluding 5.0.x versions.
    #
    #  </note>
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
    # @!attribute [rw] resize_specifications
    #   The resize specification for the instance fleet.
    #   @return [Types::InstanceFleetResizingSpecifications]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/InstanceFleetModifyConfig AWS API Documentation
    #
    class InstanceFleetModifyConfig < Struct.new(
      :instance_fleet_id,
      :target_on_demand_capacity,
      :target_spot_capacity,
      :resize_specifications)
      SENSITIVE = []
      include Aws::Structure
    end

    # The launch specification for Spot Instances in the fleet, which
    # determines the defined duration, provisioning timeout behavior, and
    # allocation strategy.
    #
    # <note markdown="1"> The instance fleet configuration is available only in Amazon EMR
    # releases 4.8.0 and later, excluding 5.0.x versions. On-Demand and Spot
    # instance allocation strategies are available in Amazon EMR releases
    # 5.12.1 and later.
    #
    #  </note>
    #
    # @!attribute [rw] spot_specification
    #   The launch specification for Spot instances in the fleet, which
    #   determines the defined duration, provisioning timeout behavior, and
    #   allocation strategy.
    #   @return [Types::SpotProvisioningSpecification]
    #
    # @!attribute [rw] on_demand_specification
    #   The launch specification for On-Demand Instances in the instance
    #   fleet, which determines the allocation strategy.
    #
    #   <note markdown="1"> The instance fleet configuration is available only in Amazon EMR
    #   releases 4.8.0 and later, excluding 5.0.x versions. On-Demand
    #   Instances allocation strategy is available in Amazon EMR releases
    #   5.12.1 and later.
    #
    #    </note>
    #   @return [Types::OnDemandProvisioningSpecification]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/InstanceFleetProvisioningSpecifications AWS API Documentation
    #
    class InstanceFleetProvisioningSpecifications < Struct.new(
      :spot_specification,
      :on_demand_specification)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resize specification for On-Demand and Spot Instances in the
    # fleet.
    #
    # @!attribute [rw] spot_resize_specification
    #   The resize specification for Spot Instances in the instance fleet,
    #   which contains the resize timeout period.
    #   @return [Types::SpotResizingSpecification]
    #
    # @!attribute [rw] on_demand_resize_specification
    #   The resize specification for On-Demand Instances in the instance
    #   fleet, which contains the resize timeout period.
    #   @return [Types::OnDemandResizingSpecification]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/InstanceFleetResizingSpecifications AWS API Documentation
    #
    class InstanceFleetResizingSpecifications < Struct.new(
      :spot_resize_specification,
      :on_demand_resize_specification)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides status change reason details for the instance fleet.
    #
    # <note markdown="1"> The instance fleet configuration is available only in Amazon EMR
    # releases 4.8.0 and later, excluding 5.0.x versions.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The status of the instance fleet.
    #
    # <note markdown="1"> The instance fleet configuration is available only in Amazon EMR
    # releases 4.8.0 and later, excluding 5.0.x versions.
    #
    #  </note>
    #
    # @!attribute [rw] state
    #   A code representing the instance fleet status.
    #
    #   * `PROVISIONING`—The instance fleet is provisioning Amazon EC2
    #     resources and is not yet ready to run jobs.
    #
    #   * `BOOTSTRAPPING`—Amazon EC2 instances and other resources have been
    #     provisioned and the bootstrap actions specified for the instances
    #     are underway.
    #
    #   * `RUNNING`—Amazon EC2 instances and other resources are running.
    #     They are either executing jobs or waiting to execute jobs.
    #
    #   * `RESIZING`—A resize operation is underway. Amazon EC2 instances
    #     are either being added or removed.
    #
    #   * `SUSPENDED`—A resize operation could not complete. Existing Amazon
    #     EC2 instances are running, but instances can't be added or
    #     removed.
    #
    #   * `TERMINATING`—The instance fleet is terminating Amazon EC2
    #     instances.
    #
    #   * `TERMINATED`—The instance fleet is no longer active, and all
    #     Amazon EC2 instances have been terminated.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides historical timestamps for the instance fleet, including the
    # time of creation, the time it became ready to run jobs, and the time
    # of termination.
    #
    # <note markdown="1"> The instance fleet configuration is available only in Amazon EMR
    # releases 4.8.0 and later, excluding 5.0.x versions.
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
      SENSITIVE = []
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
    #   If specified, indicates that the instance group uses Spot Instances.
    #   This is the maximum price you are willing to pay for Spot Instances.
    #   Specify `OnDemandPrice` to set the amount equal to the On-Demand
    #   price, or specify an amount in USD.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The Amazon EC2 instance type for all instances in the instance
    #   group.
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
    #   The list of configurations supplied for an Amazon EMR cluster
    #   instance group. You can specify a separate configuration for each
    #   instance group (master, core, and task).
    #   @return [Array<Types::Configuration>]
    #
    # @!attribute [rw] configurations_version
    #   The version number of the requested configuration specification for
    #   this instance group.
    #   @return [Integer]
    #
    # @!attribute [rw] last_successfully_applied_configurations
    #   A list of configurations that were successfully applied for an
    #   instance group last time.
    #   @return [Array<Types::Configuration>]
    #
    # @!attribute [rw] last_successfully_applied_configurations_version
    #   The version number of a configuration specification that was
    #   successfully applied for an instance group last time.
    #   @return [Integer]
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
    #   Amazon EC2 instances in response to the value of a CloudWatch
    #   metric. See PutAutoScalingPolicy.
    #   @return [Types::AutoScalingPolicyDescription]
    #
    # @!attribute [rw] custom_ami_id
    #   The custom AMI ID to use for the provisioned instance group.
    #   @return [String]
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
      :configurations_version,
      :last_successfully_applied_configurations,
      :last_successfully_applied_configurations_version,
      :ebs_block_devices,
      :ebs_optimized,
      :shrink_policy,
      :auto_scaling_policy,
      :custom_ami_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration defining a new instance group.
    #
    # @!attribute [rw] name
    #   Friendly name given to the instance group.
    #   @return [String]
    #
    # @!attribute [rw] market
    #   Market type of the Amazon EC2 instances used to create a cluster
    #   node.
    #   @return [String]
    #
    # @!attribute [rw] instance_role
    #   The role of the instance group in the cluster.
    #   @return [String]
    #
    # @!attribute [rw] bid_price
    #   If specified, indicates that the instance group uses Spot Instances.
    #   This is the maximum price you are willing to pay for Spot Instances.
    #   Specify `OnDemandPrice` to set the amount equal to the On-Demand
    #   price, or specify an amount in USD.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The Amazon EC2 instance type for all instances in the instance
    #   group.
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
    #   The list of configurations supplied for an Amazon EMR cluster
    #   instance group. You can specify a separate configuration for each
    #   instance group (master, core, and task).
    #   @return [Array<Types::Configuration>]
    #
    # @!attribute [rw] ebs_configuration
    #   EBS configurations that will be attached to each Amazon EC2 instance
    #   in the instance group.
    #   @return [Types::EbsConfiguration]
    #
    # @!attribute [rw] auto_scaling_policy
    #   An automatic scaling policy for a core instance group or task
    #   instance group in an Amazon EMR cluster. The automatic scaling
    #   policy defines how an instance group dynamically adds and terminates
    #   Amazon EC2 instances in response to the value of a CloudWatch
    #   metric. See PutAutoScalingPolicy.
    #   @return [Types::AutoScalingPolicy]
    #
    # @!attribute [rw] custom_ami_id
    #   The custom AMI ID to use for the provisioned instance group.
    #   @return [String]
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
      :auto_scaling_policy,
      :custom_ami_id)
      SENSITIVE = []
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
    #   Market type of the Amazon EC2 instances used to create a cluster
    #   node.
    #   @return [String]
    #
    # @!attribute [rw] instance_role
    #   Instance group role in the cluster
    #   @return [String]
    #
    # @!attribute [rw] bid_price
    #   If specified, indicates that the instance group uses Spot Instances.
    #   This is the maximum price you are willing to pay for Spot Instances.
    #   Specify `OnDemandPrice` to set the amount equal to the On-Demand
    #   price, or specify an amount in USD.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   Amazon EC2 instance type.
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
    #   State of instance group. The following values are no longer
    #   supported: STARTING, TERMINATED, and FAILED.
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
    # @!attribute [rw] custom_ami_id
    #   The custom AMI ID to use for the provisioned instance group.
    #   @return [String]
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
      :end_date_time,
      :custom_ami_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Modify the size or configurations of an instance group.
    #
    # @!attribute [rw] instance_group_id
    #   Unique ID of the instance group to modify.
    #   @return [String]
    #
    # @!attribute [rw] instance_count
    #   Target size for the instance group.
    #   @return [Integer]
    #
    # @!attribute [rw] ec2_instance_ids_to_terminate
    #   The Amazon EC2 InstanceIds to terminate. After you terminate the
    #   instances, the instance group will not return to its original
    #   requested size.
    #   @return [Array<String>]
    #
    # @!attribute [rw] shrink_policy
    #   Policy for customizing shrink operations.
    #   @return [Types::ShrinkPolicy]
    #
    # @!attribute [rw] reconfiguration_type
    #   Type of reconfiguration requested. Valid values are MERGE and
    #   OVERWRITE.
    #   @return [String]
    #
    # @!attribute [rw] configurations
    #   A list of new or modified configurations to apply for an instance
    #   group.
    #   @return [Array<Types::Configuration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/InstanceGroupModifyConfig AWS API Documentation
    #
    class InstanceGroupModifyConfig < Struct.new(
      :instance_group_id,
      :instance_count,
      :ec2_instance_ids_to_terminate,
      :shrink_policy,
      :reconfiguration_type,
      :configurations)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Custom policy for requesting termination protection or termination of
    # specific instances when shrinking an instance group.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # An instance type configuration for each instance type in an instance
    # fleet, which determines the Amazon EC2 instances Amazon EMR attempts
    # to provision to fulfill On-Demand and Spot target capacities. When you
    # use an allocation strategy, you can include a maximum of 30 instance
    # type configurations for a fleet. For more information about how to use
    # an allocation strategy, see [Configure Instance Fleets][1]. Without an
    # allocation strategy, you may specify a maximum of five instance type
    # configurations for a fleet.
    #
    # <note markdown="1"> The instance fleet configuration is available only in Amazon EMR
    # releases 4.8.0 and later, excluding 5.0.x versions.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-instance-fleet.html
    #
    # @!attribute [rw] instance_type
    #   An Amazon EC2 instance type, such as `m3.xlarge`.
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
    #   The bid price for each Amazon EC2 Spot Instance type as defined by
    #   `InstanceType`. Expressed in USD. If neither `BidPrice` nor
    #   `BidPriceAsPercentageOfOnDemandPrice` is provided,
    #   `BidPriceAsPercentageOfOnDemandPrice` defaults to 100%.
    #   @return [String]
    #
    # @!attribute [rw] bid_price_as_percentage_of_on_demand_price
    #   The bid price, as a percentage of On-Demand price, for each Amazon
    #   EC2 Spot Instance as defined by `InstanceType`. Expressed as a
    #   number (for example, 20 specifies 20%). If neither `BidPrice` nor
    #   `BidPriceAsPercentageOfOnDemandPrice` is provided,
    #   `BidPriceAsPercentageOfOnDemandPrice` defaults to 100%.
    #   @return [Float]
    #
    # @!attribute [rw] ebs_configuration
    #   The configuration of Amazon Elastic Block Store (Amazon EBS)
    #   attached to each instance as defined by `InstanceType`.
    #   @return [Types::EbsConfiguration]
    #
    # @!attribute [rw] configurations
    #   A configuration classification that applies when provisioning
    #   cluster instances, which can include configurations for applications
    #   and software that run on the cluster.
    #   @return [Array<Types::Configuration>]
    #
    # @!attribute [rw] custom_ami_id
    #   The custom AMI ID to use for the instance type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/InstanceTypeConfig AWS API Documentation
    #
    class InstanceTypeConfig < Struct.new(
      :instance_type,
      :weighted_capacity,
      :bid_price,
      :bid_price_as_percentage_of_on_demand_price,
      :ebs_configuration,
      :configurations,
      :custom_ami_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration specification for each instance type in an instance
    # fleet.
    #
    # <note markdown="1"> The instance fleet configuration is available only in Amazon EMR
    # releases 4.8.0 and later, excluding 5.0.x versions.
    #
    #  </note>
    #
    # @!attribute [rw] instance_type
    #   The Amazon EC2 instance type, for example `m3.xlarge`.
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
    #   The bid price for each Amazon EC2 Spot Instance type as defined by
    #   `InstanceType`. Expressed in USD.
    #   @return [String]
    #
    # @!attribute [rw] bid_price_as_percentage_of_on_demand_price
    #   The bid price, as a percentage of On-Demand price, for each Amazon
    #   EC2 Spot Instance as defined by `InstanceType`. Expressed as a
    #   number (for example, 20 specifies 20%).
    #   @return [Float]
    #
    # @!attribute [rw] configurations
    #   A configuration classification that applies when provisioning
    #   cluster instances, which can include configurations for applications
    #   and software bundled with Amazon EMR.
    #   @return [Array<Types::Configuration>]
    #
    # @!attribute [rw] ebs_block_devices
    #   The configuration of Amazon Elastic Block Store (Amazon EBS)
    #   attached to each instance as defined by `InstanceType`.
    #   @return [Array<Types::EbsBlockDevice>]
    #
    # @!attribute [rw] ebs_optimized
    #   Evaluates to `TRUE` when the specified `InstanceType` is
    #   EBS-optimized.
    #   @return [Boolean]
    #
    # @!attribute [rw] custom_ami_id
    #   The custom AMI ID to use for the instance type.
    #   @return [String]
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
      :ebs_optimized,
      :custom_ami_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates that an error occurred while processing the request and that
    # the request was not completed.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/InternalServerError AWS API Documentation
    #
    class InternalServerError < Aws::EmptyStructure; end

    # This exception occurs when there is an internal failure in the Amazon
    # EMR service.
    #
    # @!attribute [rw] message
    #   The message associated with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception occurs when there is something wrong with user input.
    #
    # @!attribute [rw] error_code
    #   The error code associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message associated with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/InvalidRequestException AWS API Documentation
    #
    class InvalidRequestException < Struct.new(
      :error_code,
      :message)
      SENSITIVE = []
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
    # @!attribute [rw] log_encryption_kms_key_id
    #   The KMS key used for encrypting log files. This attribute is only
    #   available with Amazon EMR 5.30.0 and later, excluding 6.0.0.
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
    #   A list of strings set by third-party software when the job flow is
    #   launched. If you are not using third-party software to manage the
    #   job flow, this value is empty.
    #   @return [Array<String>]
    #
    # @!attribute [rw] visible_to_all_users
    #   Indicates whether the cluster is visible to IAM principals in the
    #   Amazon Web Services account associated with the cluster. When
    #   `true`, IAM principals in the Amazon Web Services account can
    #   perform Amazon EMR cluster actions that their IAM policies allow.
    #   When `false`, only the IAM principal that created the cluster and
    #   the Amazon Web Services account root user can perform Amazon EMR
    #   actions, regardless of IAM permissions policies attached to other
    #   IAM principals.
    #
    #   The default value is `true` if a value is not provided when creating
    #   a cluster using the Amazon EMR API RunJobFlow command, the CLI
    #   [create-cluster][1] command, or the Amazon Web Services Management
    #   Console.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cli/latest/reference/emr/create-cluster.html
    #   @return [Boolean]
    #
    # @!attribute [rw] job_flow_role
    #   The IAM role that was specified when the job flow was launched. The
    #   Amazon EC2 instances of the job flow assume this role.
    #   @return [String]
    #
    # @!attribute [rw] service_role
    #   The IAM role that is assumed by the Amazon EMR service to access
    #   Amazon Web Services resources on your behalf.
    #   @return [String]
    #
    # @!attribute [rw] auto_scaling_role
    #   An IAM role for automatic scaling policies. The default role is
    #   `EMR_AutoScaling_DefaultRole`. The IAM role provides a way for the
    #   automatic scaling feature to get the required permissions it needs
    #   to launch and terminate Amazon EC2 instances in an instance group.
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
    #   indicates that Amazon EMR adds nodes to a deny list and drains tasks
    #   from nodes before terminating the Amazon EC2 instances, regardless
    #   of the instance-hour boundary. With either behavior, Amazon EMR
    #   removes the least active nodes first and blocks instance termination
    #   if it could lead to HDFS corruption. `TERMINATE_AT_TASK_COMPLETION`
    #   available only in Amazon EMR releases 4.1.0 and later, and is the
    #   default for releases of Amazon EMR earlier than 5.1.0.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/JobFlowDetail AWS API Documentation
    #
    class JobFlowDetail < Struct.new(
      :job_flow_id,
      :name,
      :log_uri,
      :log_encryption_kms_key_id,
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # A description of the Amazon EC2 instance on which the cluster (job
    # flow) runs. A valid JobFlowInstancesConfig must contain either
    # InstanceGroups or InstanceFleets. They cannot be used together. You
    # may also have MasterInstanceType, SlaveInstanceType, and InstanceCount
    # (all three must be present), but we don't recommend this
    # configuration.
    #
    # @!attribute [rw] master_instance_type
    #   The Amazon EC2 instance type of the master node.
    #   @return [String]
    #
    # @!attribute [rw] slave_instance_type
    #   The Amazon EC2 instance type of the core and task nodes.
    #   @return [String]
    #
    # @!attribute [rw] instance_count
    #   The number of Amazon EC2 instances in the cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_groups
    #   Configuration for the instance groups in a cluster.
    #   @return [Array<Types::InstanceGroupConfig>]
    #
    # @!attribute [rw] instance_fleets
    #   <note markdown="1"> The instance fleet configuration is available only in Amazon EMR
    #   releases 4.8.0 and later, excluding 5.0.x versions.
    #
    #    </note>
    #
    #   Describes the Amazon EC2 instances and instance configurations for
    #   clusters that use the instance fleet configuration.
    #   @return [Array<Types::InstanceFleetConfig>]
    #
    # @!attribute [rw] ec2_key_name
    #   The name of the Amazon EC2 key pair that can be used to connect to
    #   the master node using SSH as the user called "hadoop."
    #   @return [String]
    #
    # @!attribute [rw] placement
    #   The Availability Zone in which the cluster runs.
    #   @return [Types::PlacementType]
    #
    # @!attribute [rw] keep_job_flow_alive_when_no_steps
    #   Specifies whether the cluster should remain available after
    #   completing all steps. Defaults to `true`. For more information about
    #   configuring cluster termination, see [Control Cluster
    #   Termination][1] in the *EMR Management Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-termination.html
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
    #   Hadoop version for the cluster. Valid inputs are "0.18" (no longer
    #   maintained), "0.20" (no longer maintained), "0.20.205" (no
    #   longer maintained), "1.0.3", "2.2.0", or "2.4.0". If you do
    #   not set this value, the default of 0.18 is used, unless the
    #   `AmiVersion` parameter is set in the RunJobFlow call, in which case
    #   the default version of Hadoop for that AMI version is used.
    #   @return [String]
    #
    # @!attribute [rw] ec2_subnet_id
    #   Applies to clusters that use the uniform instance group
    #   configuration. To launch the cluster in Amazon Virtual Private Cloud
    #   (Amazon VPC), set this parameter to the identifier of the Amazon VPC
    #   subnet where you want the cluster to launch. If you do not specify
    #   this value and your account supports EC2-Classic, the cluster
    #   launches in EC2-Classic.
    #   @return [String]
    #
    # @!attribute [rw] ec2_subnet_ids
    #   Applies to clusters that use the instance fleet configuration. When
    #   multiple Amazon EC2 subnet IDs are specified, Amazon EMR evaluates
    #   them and launches instances in the optimal subnet.
    #
    #   <note markdown="1"> The instance fleet configuration is available only in Amazon EMR
    #   releases 4.8.0 and later, excluding 5.0.x versions.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] emr_managed_master_security_group
    #   The identifier of the Amazon EC2 security group for the master node.
    #   If you specify `EmrManagedMasterSecurityGroup`, you must also
    #   specify `EmrManagedSlaveSecurityGroup`.
    #   @return [String]
    #
    # @!attribute [rw] emr_managed_slave_security_group
    #   The identifier of the Amazon EC2 security group for the core and
    #   task nodes. If you specify `EmrManagedSlaveSecurityGroup`, you must
    #   also specify `EmrManagedMasterSecurityGroup`.
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
    #   A list of additional Amazon EC2 security group IDs for the core and
    #   task nodes.
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
      SENSITIVE = []
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
    #   The Amazon EC2 core and task node instance type.
    #   @return [String]
    #
    # @!attribute [rw] instance_count
    #   The number of Amazon EC2 instances in the cluster. If the value is
    #   1, the same instance serves as both the master and core and task
    #   node. If the value is greater than 1, one instance is the master
    #   node and all others are core and task nodes.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_groups
    #   Details about the instance groups in a cluster.
    #   @return [Array<Types::InstanceGroupDetail>]
    #
    # @!attribute [rw] normalized_instance_hours
    #   An approximation of the cost of the cluster, represented in
    #   m1.small/hours. This value is increased one time for every hour that
    #   an m1.small instance runs. Larger instances are weighted more
    #   heavily, so an Amazon EC2 instance that is roughly four times more
    #   expensive would result in the normalized instance hours being
    #   increased incrementally four times. This result is only an
    #   approximation and does not reflect the actual billing rate.
    #   @return [Integer]
    #
    # @!attribute [rw] ec2_key_name
    #   The name of an Amazon EC2 key pair that can be used to connect to
    #   the master node using SSH.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Attributes for Kerberos configuration when Kerberos authentication is
    # enabled using a security configuration. For more information see [Use
    # Kerberos Authentication][1] in the *Amazon EMR Management Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-kerberos.html
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
      SENSITIVE = []
      include Aws::Structure
    end

    # A key-value pair.
    #
    # @!attribute [rw] key
    #   The unique identifier of a key-value pair.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # This input determines which bootstrap actions to retrieve.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # This input determines how the ListClusters action filters the list of
    # clusters that it returns.
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
    #   The cluster state filters to apply when listing clusters. Clusters
    #   that change state while this action runs may be not be returned as
    #   expected in the list of clusters.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # This input determines which instance groups to retrieve.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # This input determines which instances to list.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] editor_id
    #   The unique ID of the editor associated with the notebook execution.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status filter for listing notebook executions.
    #
    #   * `START_PENDING` indicates that the cluster has received the
    #     execution request but execution has not begun.
    #
    #   * `STARTING` indicates that the execution is starting on the
    #     cluster.
    #
    #   * `RUNNING` indicates that the execution is being processed by the
    #     cluster.
    #
    #   * `FINISHING` indicates that execution processing is in the final
    #     stages.
    #
    #   * `FINISHED` indicates that the execution has completed without
    #     error.
    #
    #   * `FAILING` indicates that the execution is failing and will not
    #     finish successfully.
    #
    #   * `FAILED` indicates that the execution failed.
    #
    #   * `STOP_PENDING` indicates that the cluster has received a
    #     `StopNotebookExecution` request and the stop is pending.
    #
    #   * `STOPPING` indicates that the cluster is in the process of
    #     stopping the execution as a result of a `StopNotebookExecution`
    #     request.
    #
    #   * `STOPPED` indicates that the execution stopped because of a
    #     `StopNotebookExecution` request.
    #   @return [String]
    #
    # @!attribute [rw] from
    #   The beginning of time range filter for listing notebook executions.
    #   The default is the timestamp of 30 days ago.
    #   @return [Time]
    #
    # @!attribute [rw] to
    #   The end of time range filter for listing notebook executions. The
    #   default is the current timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] marker
    #   The pagination token, returned by a previous
    #   `ListNotebookExecutions` call, that indicates the start of the list
    #   for this `ListNotebookExecutions` call.
    #   @return [String]
    #
    # @!attribute [rw] execution_engine_id
    #   The unique ID of the execution engine.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListNotebookExecutionsInput AWS API Documentation
    #
    class ListNotebookExecutionsInput < Struct.new(
      :editor_id,
      :status,
      :from,
      :to,
      :marker,
      :execution_engine_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] notebook_executions
    #   A list of notebook executions.
    #   @return [Array<Types::NotebookExecutionSummary>]
    #
    # @!attribute [rw] marker
    #   A pagination token that a subsequent `ListNotebookExecutions` can
    #   use to determine the next set of results to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListNotebookExecutionsOutput AWS API Documentation
    #
    class ListNotebookExecutionsOutput < Struct.new(
      :notebook_executions,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   Filters the results of the request. `Prefix` specifies the prefix of
    #   release labels to return. `Application` specifies the application
    #   (with/without version) of release labels to return.
    #   @return [Types::ReleaseLabelFilter]
    #
    # @!attribute [rw] next_token
    #   Specifies the next page of results. If `NextToken` is not specified,
    #   which is usually the case for the first request of
    #   ListReleaseLabels, the first page of results are determined by other
    #   filtering parameters or by the latest version. The
    #   `ListReleaseLabels` request fails if the identity (Amazon Web
    #   Services account ID) and all filtering parameters are different from
    #   the original request, or if the `NextToken` is expired or tampered
    #   with.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Defines the maximum number of release labels to return in a single
    #   response. The default is `100`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListReleaseLabelsInput AWS API Documentation
    #
    class ListReleaseLabelsInput < Struct.new(
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] release_labels
    #   The returned release labels.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   Used to paginate the next page of results if specified in the next
    #   `ListReleaseLabels` request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListReleaseLabelsOutput AWS API Documentation
    #
    class ListReleaseLabelsOutput < Struct.new(
      :release_labels,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   The pagination token that indicates the set of results to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListSecurityConfigurationsInput AWS API Documentation
    #
    class ListSecurityConfigurationsInput < Struct.new(
      :marker)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # This input determines which steps to list.
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
    #   steps. You can specify a maximum of ten Step IDs. The character
    #   constraint applies to the overall length of the array.
    #   @return [Array<String>]
    #
    # @!attribute [rw] marker
    #   The maximum number of steps that a single `ListSteps` action returns
    #   is 50. To return a longer list of steps, use multiple `ListSteps`
    #   actions along with the `Marker` parameter, which is a pagination
    #   token that indicates the next set of results to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListStepsInput AWS API Documentation
    #
    class ListStepsInput < Struct.new(
      :cluster_id,
      :step_states,
      :step_ids,
      :marker)
      SENSITIVE = []
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
    #   The maximum number of steps that a single `ListSteps` action returns
    #   is 50. To return a longer list of steps, use multiple `ListSteps`
    #   actions along with the `Marker` parameter, which is a pagination
    #   token that indicates the next set of results to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListStepsOutput AWS API Documentation
    #
    class ListStepsOutput < Struct.new(
      :steps,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] studio_id
    #   The ID of the Amazon EMR Studio.
    #   @return [String]
    #
    # @!attribute [rw] identity_type
    #   Specifies whether to return session mappings for users or groups. If
    #   not specified, the results include session mapping details for both
    #   users and groups.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   The pagination token that indicates the set of results to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListStudioSessionMappingsInput AWS API Documentation
    #
    class ListStudioSessionMappingsInput < Struct.new(
      :studio_id,
      :identity_type,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_mappings
    #   A list of session mapping summary objects. Each object includes
    #   session mapping details such as creation time, identity type (user
    #   or group), and Amazon EMR Studio ID.
    #   @return [Array<Types::SessionMappingSummary>]
    #
    # @!attribute [rw] marker
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListStudioSessionMappingsOutput AWS API Documentation
    #
    class ListStudioSessionMappingsOutput < Struct.new(
      :session_mappings,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   The pagination token that indicates the set of results to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListStudiosInput AWS API Documentation
    #
    class ListStudiosInput < Struct.new(
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] studios
    #   The list of Studio summary objects.
    #   @return [Array<Types::StudioSummary>]
    #
    # @!attribute [rw] marker
    #   The pagination token that indicates the next set of results to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListStudiosOutput AWS API Documentation
    #
    class ListStudiosOutput < Struct.new(
      :studios,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] release_label
    #   The Amazon EMR release label determines the [versions of open-source
    #   application packages][1] that Amazon EMR has installed on the
    #   cluster. Release labels are in the format `emr-x.x.x`, where x.x.x
    #   is an Amazon EMR release number such as `emr-6.10.0`. For more
    #   information about Amazon EMR releases and their included application
    #   versions and features, see the <i> <a
    #   href="https://docs.aws.amazon.com/emr/latest/ReleaseGuide/emr-release-components.html">Amazon
    #   EMR Release Guide</a> </i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/emr/latest/ReleaseGuide/emr-release-app-versions-6.x.html
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   The pagination token that marks the next set of results to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListSupportedInstanceTypesInput AWS API Documentation
    #
    class ListSupportedInstanceTypesInput < Struct.new(
      :release_label,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] supported_instance_types
    #   The list of instance types that the release specified in
    #   `ListSupportedInstanceTypesInput$ReleaseLabel` supports, filtered by
    #   Amazon Web Services Region.
    #   @return [Array<Types::SupportedInstanceType>]
    #
    # @!attribute [rw] marker
    #   The pagination token that marks the next set of results to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ListSupportedInstanceTypesOutput AWS API Documentation
    #
    class ListSupportedInstanceTypesOutput < Struct.new(
      :supported_instance_types,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # Managed scaling policy for an Amazon EMR cluster. The policy specifies
    # the limits for resources that can be added or terminated from a
    # cluster. The policy only applies to the core and task nodes. The
    # master node cannot be scaled after initial configuration.
    #
    # @!attribute [rw] compute_limits
    #   The Amazon EC2 unit limits for a managed scaling policy. The managed
    #   scaling activity of a cluster is not allowed to go above or below
    #   these limits. The limit only applies to the core and task nodes. The
    #   master node cannot be scaled after initial configuration.
    #   @return [Types::ComputeLimits]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ManagedScalingPolicy AWS API Documentation
    #
    class ManagedScalingPolicy < Struct.new(
      :compute_limits)
      SENSITIVE = []
      include Aws::Structure
    end

    # A CloudWatch dimension, which is specified using a `Key` (known as a
    # `Name` in CloudWatch), `Value` pair. By default, Amazon EMR uses one
    # dimension whose `Key` is `JobFlowID` and `Value` is a variable
    # representing the cluster ID, which is `$\{emr.clusterId\}`. This
    # enables the rule to bootstrap when the cluster ID becomes available.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_id
    #   The unique identifier of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] step_concurrency_level
    #   The number of steps that can be executed concurrently. You can
    #   specify a minimum of 1 step and a maximum of 256 steps. We recommend
    #   that you do not change this parameter while steps are running or the
    #   `ActionOnFailure` setting may not behave as expected. For more
    #   information see Step$ActionOnFailure.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ModifyClusterInput AWS API Documentation
    #
    class ModifyClusterInput < Struct.new(
      :cluster_id,
      :step_concurrency_level)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] step_concurrency_level
    #   The number of steps that can be executed concurrently.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ModifyClusterOutput AWS API Documentation
    #
    class ModifyClusterOutput < Struct.new(
      :step_concurrency_level)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_id
    #   The unique identifier of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] instance_fleet
    #   The configuration parameters of the instance fleet.
    #   @return [Types::InstanceFleetModifyConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ModifyInstanceFleetInput AWS API Documentation
    #
    class ModifyInstanceFleetInput < Struct.new(
      :cluster_id,
      :instance_fleet)
      SENSITIVE = []
      include Aws::Structure
    end

    # Change the size of some instance groups.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # A notebook execution. An execution is a specific instance that an
    # Amazon EMR Notebook is run using the `StartNotebookExecution` action.
    #
    # @!attribute [rw] notebook_execution_id
    #   The unique identifier of a notebook execution.
    #   @return [String]
    #
    # @!attribute [rw] editor_id
    #   The unique identifier of the Amazon EMR Notebook that is used for
    #   the notebook execution.
    #   @return [String]
    #
    # @!attribute [rw] execution_engine
    #   The execution engine, such as an Amazon EMR cluster, used to run the
    #   Amazon EMR notebook and perform the notebook execution.
    #   @return [Types::ExecutionEngineConfig]
    #
    # @!attribute [rw] notebook_execution_name
    #   A name for the notebook execution.
    #   @return [String]
    #
    # @!attribute [rw] notebook_params
    #   Input parameters in JSON format passed to the Amazon EMR Notebook at
    #   runtime for execution.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the notebook execution.
    #
    #   * `START_PENDING` indicates that the cluster has received the
    #     execution request but execution has not begun.
    #
    #   * `STARTING` indicates that the execution is starting on the
    #     cluster.
    #
    #   * `RUNNING` indicates that the execution is being processed by the
    #     cluster.
    #
    #   * `FINISHING` indicates that execution processing is in the final
    #     stages.
    #
    #   * `FINISHED` indicates that the execution has completed without
    #     error.
    #
    #   * `FAILING` indicates that the execution is failing and will not
    #     finish successfully.
    #
    #   * `FAILED` indicates that the execution failed.
    #
    #   * `STOP_PENDING` indicates that the cluster has received a
    #     `StopNotebookExecution` request and the stop is pending.
    #
    #   * `STOPPING` indicates that the cluster is in the process of
    #     stopping the execution as a result of a `StopNotebookExecution`
    #     request.
    #
    #   * `STOPPED` indicates that the execution stopped because of a
    #     `StopNotebookExecution` request.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The timestamp when notebook execution started.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The timestamp when notebook execution ended.
    #   @return [Time]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the notebook execution.
    #   @return [String]
    #
    # @!attribute [rw] output_notebook_uri
    #   The location of the notebook execution's output file in Amazon S3.
    #   @return [String]
    #
    # @!attribute [rw] last_state_change_reason
    #   The reason for the latest status change of the notebook execution.
    #   @return [String]
    #
    # @!attribute [rw] notebook_instance_security_group_id
    #   The unique identifier of the Amazon EC2 security group associated
    #   with the Amazon EMR Notebook instance. For more information see
    #   [Specifying Amazon EC2 Security Groups for Amazon EMR Notebooks][1]
    #   in the *Amazon EMR Management Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-managed-notebooks-security-groups.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags associated with a notebook execution. Tags are
    #   user-defined key-value pairs that consist of a required key string
    #   with a maximum of 128 characters and an optional value string with a
    #   maximum of 256 characters.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] notebook_s3_location
    #   The Amazon S3 location that stores the notebook execution input.
    #   @return [Types::NotebookS3LocationForOutput]
    #
    # @!attribute [rw] output_notebook_s3_location
    #   The Amazon S3 location for the notebook execution output.
    #   @return [Types::OutputNotebookS3LocationForOutput]
    #
    # @!attribute [rw] output_notebook_format
    #   The output format for the notebook execution.
    #   @return [String]
    #
    # @!attribute [rw] environment_variables
    #   The environment variables associated with the notebook execution.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/NotebookExecution AWS API Documentation
    #
    class NotebookExecution < Struct.new(
      :notebook_execution_id,
      :editor_id,
      :execution_engine,
      :notebook_execution_name,
      :notebook_params,
      :status,
      :start_time,
      :end_time,
      :arn,
      :output_notebook_uri,
      :last_state_change_reason,
      :notebook_instance_security_group_id,
      :tags,
      :notebook_s3_location,
      :output_notebook_s3_location,
      :output_notebook_format,
      :environment_variables)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details for a notebook execution. The details include information such
    # as the unique ID and status of the notebook execution.
    #
    # @!attribute [rw] notebook_execution_id
    #   The unique identifier of the notebook execution.
    #   @return [String]
    #
    # @!attribute [rw] editor_id
    #   The unique identifier of the editor associated with the notebook
    #   execution.
    #   @return [String]
    #
    # @!attribute [rw] notebook_execution_name
    #   The name of the notebook execution.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the notebook execution.
    #
    #   * `START_PENDING` indicates that the cluster has received the
    #     execution request but execution has not begun.
    #
    #   * `STARTING` indicates that the execution is starting on the
    #     cluster.
    #
    #   * `RUNNING` indicates that the execution is being processed by the
    #     cluster.
    #
    #   * `FINISHING` indicates that execution processing is in the final
    #     stages.
    #
    #   * `FINISHED` indicates that the execution has completed without
    #     error.
    #
    #   * `FAILING` indicates that the execution is failing and will not
    #     finish successfully.
    #
    #   * `FAILED` indicates that the execution failed.
    #
    #   * `STOP_PENDING` indicates that the cluster has received a
    #     `StopNotebookExecution` request and the stop is pending.
    #
    #   * `STOPPING` indicates that the cluster is in the process of
    #     stopping the execution as a result of a `StopNotebookExecution`
    #     request.
    #
    #   * `STOPPED` indicates that the execution stopped because of a
    #     `StopNotebookExecution` request.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The timestamp when notebook execution started.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The timestamp when notebook execution started.
    #   @return [Time]
    #
    # @!attribute [rw] notebook_s3_location
    #   The Amazon S3 location that stores the notebook execution input.
    #   @return [Types::NotebookS3LocationForOutput]
    #
    # @!attribute [rw] execution_engine_id
    #   The unique ID of the execution engine for the notebook execution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/NotebookExecutionSummary AWS API Documentation
    #
    class NotebookExecutionSummary < Struct.new(
      :notebook_execution_id,
      :editor_id,
      :notebook_execution_name,
      :status,
      :start_time,
      :end_time,
      :notebook_s3_location,
      :execution_engine_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon S3 location that stores the notebook execution input.
    #
    # @!attribute [rw] bucket
    #   The Amazon S3 bucket that stores the notebook execution input.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The key to the Amazon S3 location that stores the notebook execution
    #   input.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/NotebookS3LocationForOutput AWS API Documentation
    #
    class NotebookS3LocationForOutput < Struct.new(
      :bucket,
      :key)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon S3 location that stores the notebook execution input.
    #
    # @!attribute [rw] bucket
    #   The Amazon S3 bucket that stores the notebook execution input.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The key to the Amazon S3 location that stores the notebook execution
    #   input.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/NotebookS3LocationFromInput AWS API Documentation
    #
    class NotebookS3LocationFromInput < Struct.new(
      :bucket,
      :key)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Linux release specified for a cluster in the RunJobFlow
    # request.
    #
    # @!attribute [rw] label
    #   The Amazon Linux release specified for a cluster in the RunJobFlow
    #   request. The format is as shown in [ *Amazon Linux 2 Release Notes*
    #   ][1]. For example, 2.0.20220218.1.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AL2/latest/relnotes/relnotes-20220218.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/OSRelease AWS API Documentation
    #
    class OSRelease < Struct.new(
      :label)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the strategy for using unused Capacity Reservations for
    # fulfilling On-Demand capacity.
    #
    # @!attribute [rw] usage_strategy
    #   Indicates whether to use unused Capacity Reservations for fulfilling
    #   On-Demand capacity.
    #
    #   If you specify `use-capacity-reservations-first`, the fleet uses
    #   unused Capacity Reservations to fulfill On-Demand capacity up to the
    #   target On-Demand capacity. If multiple instance pools have unused
    #   Capacity Reservations, the On-Demand allocation strategy
    #   (`lowest-price`) is applied. If the number of unused Capacity
    #   Reservations is less than the On-Demand target capacity, the
    #   remaining On-Demand target capacity is launched according to the
    #   On-Demand allocation strategy (`lowest-price`).
    #
    #   If you do not specify a value, the fleet fulfills the On-Demand
    #   capacity according to the chosen On-Demand allocation strategy.
    #   @return [String]
    #
    # @!attribute [rw] capacity_reservation_preference
    #   Indicates the instance's Capacity Reservation preferences. Possible
    #   preferences include:
    #
    #   * `open` - The instance can run in any open Capacity Reservation
    #     that has matching attributes (instance type, platform,
    #     Availability Zone).
    #
    #   * `none` - The instance avoids running in a Capacity Reservation
    #     even if one is available. The instance runs as an On-Demand
    #     Instance.
    #   @return [String]
    #
    # @!attribute [rw] capacity_reservation_resource_group_arn
    #   The ARN of the Capacity Reservation resource group in which to run
    #   the instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/OnDemandCapacityReservationOptions AWS API Documentation
    #
    class OnDemandCapacityReservationOptions < Struct.new(
      :usage_strategy,
      :capacity_reservation_preference,
      :capacity_reservation_resource_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The launch specification for On-Demand Instances in the instance
    # fleet, which determines the allocation strategy.
    #
    # <note markdown="1"> The instance fleet configuration is available only in Amazon EMR
    # releases 4.8.0 and later, excluding 5.0.x versions. On-Demand
    # Instances allocation strategy is available in Amazon EMR releases
    # 5.12.1 and later.
    #
    #  </note>
    #
    # @!attribute [rw] allocation_strategy
    #   Specifies the strategy to use in launching On-Demand instance
    #   fleets. Currently, the only option is `lowest-price` (the default),
    #   which launches the lowest price first.
    #   @return [String]
    #
    # @!attribute [rw] capacity_reservation_options
    #   The launch specification for On-Demand instances in the instance
    #   fleet, which determines the allocation strategy.
    #   @return [Types::OnDemandCapacityReservationOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/OnDemandProvisioningSpecification AWS API Documentation
    #
    class OnDemandProvisioningSpecification < Struct.new(
      :allocation_strategy,
      :capacity_reservation_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resize specification for On-Demand Instances in the instance
    # fleet, which contains the resize timeout period.
    #
    # @!attribute [rw] timeout_duration_minutes
    #   On-Demand resize timeout in minutes. If On-Demand Instances are not
    #   provisioned within this time, the resize workflow stops. The minimum
    #   value is 5 minutes, and the maximum value is 10,080 minutes (7
    #   days). The timeout applies to all resize workflows on the Instance
    #   Fleet. The resize could be triggered by Amazon EMR Managed Scaling
    #   or by the customer (via Amazon EMR Console, Amazon EMR CLI
    #   modify-instance-fleet or Amazon EMR SDK ModifyInstanceFleet API) or
    #   by Amazon EMR due to Amazon EC2 Spot Reclamation.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/OnDemandResizingSpecification AWS API Documentation
    #
    class OnDemandResizingSpecification < Struct.new(
      :timeout_duration_minutes)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon S3 location that stores the notebook execution output.
    #
    # @!attribute [rw] bucket
    #   The Amazon S3 bucket that stores the notebook execution output.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The key to the Amazon S3 location that stores the notebook execution
    #   output.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/OutputNotebookS3LocationForOutput AWS API Documentation
    #
    class OutputNotebookS3LocationForOutput < Struct.new(
      :bucket,
      :key)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon S3 location that stores the notebook execution output.
    #
    # @!attribute [rw] bucket
    #   The Amazon S3 bucket that stores the notebook execution output.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The key to the Amazon S3 location that stores the notebook execution
    #   output.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/OutputNotebookS3LocationFromInput AWS API Documentation
    #
    class OutputNotebookS3LocationFromInput < Struct.new(
      :bucket,
      :key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Placement group configuration for an Amazon EMR cluster. The
    # configuration specifies the placement strategy that can be applied to
    # instance roles during cluster creation.
    #
    # To use this configuration, consider attaching managed policy
    # AmazonElasticMapReducePlacementGroupPolicy to the Amazon EMR role.
    #
    # @!attribute [rw] instance_role
    #   Role of the instance in the cluster.
    #
    #   Starting with Amazon EMR release 5.23.0, the only supported instance
    #   role is `MASTER`.
    #   @return [String]
    #
    # @!attribute [rw] placement_strategy
    #   Amazon EC2 Placement Group strategy associated with instance role.
    #
    #   Starting with Amazon EMR release 5.23.0, the only supported
    #   placement strategy is `SPREAD` for the `MASTER` instance role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/PlacementGroupConfig AWS API Documentation
    #
    class PlacementGroupConfig < Struct.new(
      :instance_role,
      :placement_strategy)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon EC2 Availability Zone configuration of the cluster (job
    # flow).
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
    #   releases 4.8.0 and later, excluding 5.0.x versions.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/PlacementType AWS API Documentation
    #
    class PlacementType < Struct.new(
      :availability_zone,
      :availability_zones)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of port ranges that are permitted to allow inbound traffic from
    # all public IP addresses. To specify a single port, use the same value
    # for `MinRange` and `MaxRange`.
    #
    # @!attribute [rw] min_range
    #   The smallest port number in a specified range of port numbers.
    #   @return [Integer]
    #
    # @!attribute [rw] max_range
    #   The smallest port number in a specified range of port numbers.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/PortRange AWS API Documentation
    #
    class PortRange < Struct.new(
      :min_range,
      :max_range)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) of the cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/PutAutoScalingPolicyOutput AWS API Documentation
    #
    class PutAutoScalingPolicyOutput < Struct.new(
      :cluster_id,
      :instance_group_id,
      :auto_scaling_policy,
      :cluster_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_id
    #   Specifies the ID of the Amazon EMR cluster to which the
    #   auto-termination policy will be attached.
    #   @return [String]
    #
    # @!attribute [rw] auto_termination_policy
    #   Specifies the auto-termination policy to attach to the cluster.
    #   @return [Types::AutoTerminationPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/PutAutoTerminationPolicyInput AWS API Documentation
    #
    class PutAutoTerminationPolicyInput < Struct.new(
      :cluster_id,
      :auto_termination_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/PutAutoTerminationPolicyOutput AWS API Documentation
    #
    class PutAutoTerminationPolicyOutput < Aws::EmptyStructure; end

    # @!attribute [rw] block_public_access_configuration
    #   A configuration for Amazon EMR block public access. The
    #   configuration applies to all clusters created in your account for
    #   the current Region. The configuration specifies whether block public
    #   access is enabled. If block public access is enabled, security
    #   groups associated with the cluster cannot have rules that allow
    #   inbound traffic from 0.0.0.0/0 or ::/0 on a port, unless the port is
    #   specified as an exception using
    #   `PermittedPublicSecurityGroupRuleRanges` in the
    #   `BlockPublicAccessConfiguration`. By default, Port 22 (SSH) is an
    #   exception, and public access is allowed on this port. You can change
    #   this by updating `BlockPublicSecurityGroupRules` to remove the
    #   exception.
    #
    #   <note markdown="1"> For accounts that created clusters in a Region before November 25,
    #   2019, block public access is disabled by default in that Region. To
    #   use this feature, you must manually enable and configure it. For
    #   accounts that did not create an Amazon EMR cluster in a Region
    #   before this date, block public access is enabled by default in that
    #   Region.
    #
    #    </note>
    #   @return [Types::BlockPublicAccessConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/PutBlockPublicAccessConfigurationInput AWS API Documentation
    #
    class PutBlockPublicAccessConfigurationInput < Struct.new(
      :block_public_access_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/PutBlockPublicAccessConfigurationOutput AWS API Documentation
    #
    class PutBlockPublicAccessConfigurationOutput < Aws::EmptyStructure; end

    # @!attribute [rw] cluster_id
    #   Specifies the ID of an Amazon EMR cluster where the managed scaling
    #   policy is attached.
    #   @return [String]
    #
    # @!attribute [rw] managed_scaling_policy
    #   Specifies the constraints for the managed scaling policy.
    #   @return [Types::ManagedScalingPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/PutManagedScalingPolicyInput AWS API Documentation
    #
    class PutManagedScalingPolicyInput < Struct.new(
      :cluster_id,
      :managed_scaling_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/PutManagedScalingPolicyOutput AWS API Documentation
    #
    class PutManagedScalingPolicyOutput < Aws::EmptyStructure; end

    # The release label filters by application or version prefix.
    #
    # @!attribute [rw] prefix
    #   Optional release label version prefix filter. For example, `emr-5`.
    #   @return [String]
    #
    # @!attribute [rw] application
    #   Optional release label application filter. For example,
    #   `spark@2.1.0`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ReleaseLabelFilter AWS API Documentation
    #
    class ReleaseLabelFilter < Struct.new(
      :prefix,
      :application)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/RemoveAutoScalingPolicyInput AWS API Documentation
    #
    class RemoveAutoScalingPolicyInput < Struct.new(
      :cluster_id,
      :instance_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/RemoveAutoScalingPolicyOutput AWS API Documentation
    #
    class RemoveAutoScalingPolicyOutput < Aws::EmptyStructure; end

    # @!attribute [rw] cluster_id
    #   Specifies the ID of the Amazon EMR cluster from which the
    #   auto-termination policy will be removed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/RemoveAutoTerminationPolicyInput AWS API Documentation
    #
    class RemoveAutoTerminationPolicyInput < Struct.new(
      :cluster_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/RemoveAutoTerminationPolicyOutput AWS API Documentation
    #
    class RemoveAutoTerminationPolicyOutput < Aws::EmptyStructure; end

    # @!attribute [rw] cluster_id
    #   Specifies the ID of the cluster from which the managed scaling
    #   policy will be removed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/RemoveManagedScalingPolicyInput AWS API Documentation
    #
    class RemoveManagedScalingPolicyInput < Struct.new(
      :cluster_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/RemoveManagedScalingPolicyOutput AWS API Documentation
    #
    class RemoveManagedScalingPolicyOutput < Aws::EmptyStructure; end

    # This input identifies an Amazon EMR resource and a list of tags to
    # remove.
    #
    # @!attribute [rw] resource_id
    #   The Amazon EMR resource identifier from which tags will be removed.
    #   For example, a cluster identifier or an Amazon EMR Studio ID.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of tag keys to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/RemoveTagsInput AWS API Documentation
    #
    class RemoveTagsInput < Struct.new(
      :resource_id,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # This output indicates the result of removing tags from the resource.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/RemoveTagsOutput AWS API Documentation
    #
    class RemoveTagsOutput < Aws::EmptyStructure; end

    # Input to the RunJobFlow operation.
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
    # @!attribute [rw] log_encryption_kms_key_id
    #   The KMS key used for encrypting log files. If a value is not
    #   provided, the logs remain encrypted by AES-256. This attribute is
    #   only available with Amazon EMR releases 5.30.0 and later, excluding
    #   Amazon EMR 6.0.0.
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
    #   release version such as `emr-5.14.0`. For more information about
    #   Amazon EMR release versions and included application versions and
    #   features, see
    #   [https://docs.aws.amazon.com/emr/latest/ReleaseGuide/][1]. The
    #   release label applies only to Amazon EMR releases version 4.0 and
    #   later. Earlier versions use `AmiVersion`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/emr/latest/ReleaseGuide/
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
    #   [1]: https://docs.aws.amazon.com/emr/latest/DeveloperGuide/emr-dg.pdf
    #   @return [Array<String>]
    #
    # @!attribute [rw] new_supported_products
    #   <note markdown="1"> For Amazon EMR releases 3.x and 2.x. For Amazon EMR releases 4.x and
    #   later, use Applications.
    #
    #    </note>
    #
    #   A list of strings that indicates third-party software to use with
    #   the job flow that accepts a user argument list. Amazon EMR accepts
    #   and forwards the argument list to the corresponding installation
    #   script as bootstrap action arguments. For more information, see
    #   "Launch a Job Flow on the MapR Distribution for Hadoop" in the
    #   [Amazon EMR Developer Guide][1]. Supported values are:
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
    #   * "hunk" - launch the cluster with the Hunk Big Data Analytics
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
    #   [1]: https://docs.aws.amazon.com/emr/latest/DeveloperGuide/emr-dg.pdf
    #   @return [Array<Types::SupportedProductConfig>]
    #
    # @!attribute [rw] applications
    #   Applies to Amazon EMR releases 4.0 and later. A case-insensitive
    #   list of applications for Amazon EMR to install and configure when
    #   launching the cluster. For a list of applications available for each
    #   Amazon EMR release version, see the [Amazon EMRRelease Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/emr/latest/ReleaseGuide/
    #   @return [Array<Types::Application>]
    #
    # @!attribute [rw] configurations
    #   For Amazon EMR releases 4.0 and later. The list of configurations
    #   supplied for the Amazon EMR cluster that you are creating.
    #   @return [Array<Types::Configuration>]
    #
    # @!attribute [rw] visible_to_all_users
    #   The VisibleToAllUsers parameter is no longer supported. By default,
    #   the value is set to `true`. Setting it to `false` now has no effect.
    #
    #   Set this value to `true` so that IAM principals in the Amazon Web
    #   Services account associated with the cluster can perform Amazon EMR
    #   actions on the cluster that their IAM policies allow. This value
    #   defaults to `true` for clusters created using the Amazon EMR API or
    #   the CLI [create-cluster][1] command.
    #
    #   When set to `false`, only the IAM principal that created the cluster
    #   and the Amazon Web Services account root user can perform Amazon EMR
    #   actions for the cluster, regardless of the IAM permissions policies
    #   attached to other IAM principals. For more information, see
    #   [Understanding the Amazon EMR cluster VisibleToAllUsers setting][2]
    #   in the *Amazon EMR Management Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cli/latest/reference/emr/create-cluster.html
    #   [2]: https://docs.aws.amazon.com/emr/latest/ManagementGuide/security_IAM_emr-with-IAM.html#security_set_visible_to_all_users
    #   @return [Boolean]
    #
    # @!attribute [rw] job_flow_role
    #   Also called instance profile and Amazon EC2 role. An IAM role for an
    #   Amazon EMR cluster. The Amazon EC2 instances of the cluster assume
    #   this role. The default role is `EMR_EC2_DefaultRole`. In order to
    #   use the default role, you must have already created it using the CLI
    #   or console.
    #   @return [String]
    #
    # @!attribute [rw] service_role
    #   The IAM role that Amazon EMR assumes in order to access Amazon Web
    #   Services resources on your behalf. If you've created a custom
    #   service role path, you must specify it for the service role when you
    #   launch your cluster.
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
    #   Amazon EC2 instances in an instance group.
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
    #   `TERMINATE_AT_TASK_COMPLETION` indicates that Amazon EMR adds nodes
    #   to a deny list and drains tasks from nodes before terminating the
    #   Amazon EC2 instances, regardless of the instance-hour boundary. With
    #   either behavior, Amazon EMR removes the least active nodes first and
    #   blocks instance termination if it could lead to HDFS corruption.
    #   `TERMINATE_AT_TASK_COMPLETION` available only in Amazon EMR releases
    #   4.1.0 and later, and is the default for releases of Amazon EMR
    #   earlier than 5.1.0.
    #   @return [String]
    #
    # @!attribute [rw] custom_ami_id
    #   Available only in Amazon EMR releases 5.7.0 and later. The ID of a
    #   custom Amazon EBS-backed Linux AMI. If specified, Amazon EMR uses
    #   this AMI when it launches cluster Amazon EC2 instances. For more
    #   information about custom AMIs in Amazon EMR, see [Using a Custom
    #   AMI][1] in the *Amazon EMR Management Guide*. If omitted, the
    #   cluster uses the base Linux AMI for the `ReleaseLabel` specified.
    #   For Amazon EMR releases 2.x and 3.x, use `AmiVersion` instead.
    #
    #   For information about creating a custom AMI, see [Creating an Amazon
    #   EBS-Backed Linux AMI][2] in the *Amazon Elastic Compute Cloud User
    #   Guide for Linux Instances*. For information about finding an AMI ID,
    #   see [Finding a Linux AMI][3].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-custom-ami.html
    #   [2]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami-ebs.html
    #   [3]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html
    #   @return [String]
    #
    # @!attribute [rw] ebs_root_volume_size
    #   The size, in GiB, of the Amazon EBS root device volume of the Linux
    #   AMI that is used for each Amazon EC2 instance. Available in Amazon
    #   EMR releases 4.x and later.
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
    #   [Use Kerberos Authentication][1] in the *Amazon EMR Management
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-kerberos.html
    #   @return [Types::KerberosAttributes]
    #
    # @!attribute [rw] step_concurrency_level
    #   Specifies the number of steps that can be executed concurrently. The
    #   default value is `1`. The maximum value is `256`.
    #   @return [Integer]
    #
    # @!attribute [rw] managed_scaling_policy
    #   The specified managed scaling policy for an Amazon EMR cluster.
    #   @return [Types::ManagedScalingPolicy]
    #
    # @!attribute [rw] placement_group_configs
    #   The specified placement group configuration for an Amazon EMR
    #   cluster.
    #   @return [Array<Types::PlacementGroupConfig>]
    #
    # @!attribute [rw] auto_termination_policy
    #   An auto-termination policy for an Amazon EMR cluster. An
    #   auto-termination policy defines the amount of idle time in seconds
    #   after which a cluster automatically terminates. For alternative
    #   cluster termination options, see [Control cluster termination][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-termination.html
    #   @return [Types::AutoTerminationPolicy]
    #
    # @!attribute [rw] os_release_label
    #   Specifies a particular Amazon Linux release for all nodes in a
    #   cluster launch RunJobFlow request. If a release is not specified,
    #   Amazon EMR uses the latest validated Amazon Linux release for
    #   cluster launch.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/RunJobFlowInput AWS API Documentation
    #
    class RunJobFlowInput < Struct.new(
      :name,
      :log_uri,
      :log_encryption_kms_key_id,
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
      :kerberos_attributes,
      :step_concurrency_level,
      :managed_scaling_policy,
      :placement_group_configs,
      :auto_termination_policy,
      :os_release_label)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of the RunJobFlow operation.
    #
    # @!attribute [rw] job_flow_id
    #   A unique identifier for the job flow.
    #   @return [String]
    #
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) of the cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/RunJobFlowOutput AWS API Documentation
    #
    class RunJobFlowOutput < Struct.new(
      :job_flow_id,
      :cluster_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The type of adjustment the automatic scaling activity makes when
    # triggered, and the periodicity of the adjustment.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The upper and lower Amazon EC2 instance limits for an automatic
    # scaling policy. Automatic scaling activities triggered by automatic
    # scaling rules will not cause an instance group to grow above or below
    # these limits.
    #
    # @!attribute [rw] min_capacity
    #   The lower boundary of Amazon EC2 instances in an instance group
    #   below which scaling activities are not allowed to shrink. Scale-in
    #   activities will not terminate instances below this boundary.
    #   @return [Integer]
    #
    # @!attribute [rw] max_capacity
    #   The upper boundary of Amazon EC2 instances in an instance group
    #   beyond which scaling activities are not allowed to grow. Scale-out
    #   activities will not add instances beyond this boundary.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/ScalingConstraints AWS API Documentation
    #
    class ScalingConstraints < Struct.new(
      :min_capacity,
      :max_capacity)
      SENSITIVE = []
      include Aws::Structure
    end

    # A scale-in or scale-out rule that defines scaling activity, including
    # the CloudWatch metric alarm that triggers activity, how Amazon EC2
    # instances are added or removed, and the periodicity of adjustments.
    # The automatic scaling policy for an instance group can comprise one or
    # more automatic scaling rules.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The conditions that trigger an automatic scaling activity.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration of the script to run during a bootstrap action.
    #
    # @!attribute [rw] path
    #   Location in Amazon S3 of the script to run during a bootstrap
    #   action.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Details for an Amazon EMR Studio session mapping including creation
    # time, user or group ID, Studio ID, and so on.
    #
    # @!attribute [rw] studio_id
    #   The ID of the Amazon EMR Studio.
    #   @return [String]
    #
    # @!attribute [rw] identity_id
    #   The globally unique identifier (GUID) of the user or group.
    #   @return [String]
    #
    # @!attribute [rw] identity_name
    #   The name of the user or group. For more information, see
    #   [UserName][1] and [DisplayName][2] in the *IAM Identity Center
    #   Identity Store API Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserName
    #   [2]: https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-DisplayName
    #   @return [String]
    #
    # @!attribute [rw] identity_type
    #   Specifies whether the identity mapped to the Amazon EMR Studio is a
    #   user or a group.
    #   @return [String]
    #
    # @!attribute [rw] session_policy_arn
    #   The Amazon Resource Name (ARN) of the session policy associated with
    #   the user or group.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time the session mapping was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The time the session mapping was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/SessionMappingDetail AWS API Documentation
    #
    class SessionMappingDetail < Struct.new(
      :studio_id,
      :identity_id,
      :identity_name,
      :identity_type,
      :session_policy_arn,
      :creation_time,
      :last_modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details for an Amazon EMR Studio session mapping. The details do not
    # include the time the session mapping was last modified.
    #
    # @!attribute [rw] studio_id
    #   The ID of the Amazon EMR Studio.
    #   @return [String]
    #
    # @!attribute [rw] identity_id
    #   The globally unique identifier (GUID) of the user or group from the
    #   IAM Identity Center Identity Store.
    #   @return [String]
    #
    # @!attribute [rw] identity_name
    #   The name of the user or group. For more information, see
    #   [UserName][1] and [DisplayName][2] in the *IAM Identity Center
    #   Identity Store API Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserName
    #   [2]: https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-DisplayName
    #   @return [String]
    #
    # @!attribute [rw] identity_type
    #   Specifies whether the identity mapped to the Amazon EMR Studio is a
    #   user or a group.
    #   @return [String]
    #
    # @!attribute [rw] session_policy_arn
    #   The Amazon Resource Name (ARN) of the session policy associated with
    #   the user or group.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time the session mapping was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/SessionMappingSummary AWS API Documentation
    #
    class SessionMappingSummary < Struct.new(
      :studio_id,
      :identity_id,
      :identity_name,
      :identity_type,
      :session_policy_arn,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input argument to the TerminationProtection operation.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The input to the SetVisibleToAllUsers action.
    #
    # @!attribute [rw] job_flow_ids
    #   The unique identifier of the job flow (cluster).
    #   @return [Array<String>]
    #
    # @!attribute [rw] visible_to_all_users
    #   A value of `true` indicates that an IAM principal in the Amazon Web
    #   Services account can perform Amazon EMR actions on the cluster that
    #   the IAM policies attached to the principal allow. A value of `false`
    #   indicates that only the IAM principal that created the cluster and
    #   the Amazon Web Services root user can perform Amazon EMR actions on
    #   the cluster.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/SetVisibleToAllUsersInput AWS API Documentation
    #
    class SetVisibleToAllUsersInput < Struct.new(
      :job_flow_ids,
      :visible_to_all_users)
      SENSITIVE = []
      include Aws::Structure
    end

    # Policy for customizing shrink operations. Allows configuration of
    # decommissioning timeout and targeted instance shrinking.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # An automatic scaling configuration, which describes how the policy
    # adds or removes instances, the cooldown period, and the number of
    # Amazon EC2 instances that will be added each time the CloudWatch
    # metric alarm condition is satisfied.
    #
    # @!attribute [rw] adjustment_type
    #   The way in which Amazon EC2 instances are added (if
    #   `ScalingAdjustment` is a positive number) or terminated (if
    #   `ScalingAdjustment` is a negative number) each time the scaling
    #   activity is triggered. `CHANGE_IN_CAPACITY` is the default.
    #   `CHANGE_IN_CAPACITY` indicates that the Amazon EC2 instance count
    #   increments or decrements by `ScalingAdjustment`, which should be
    #   expressed as an integer. `PERCENT_CHANGE_IN_CAPACITY` indicates the
    #   instance count increments or decrements by the percentage specified
    #   by `ScalingAdjustment`, which should be expressed as an integer. For
    #   example, 20 indicates an increase in 20% increments of cluster
    #   capacity. `EXACT_CAPACITY` indicates the scaling activity results in
    #   an instance group with the number of Amazon EC2 instances specified
    #   by `ScalingAdjustment`, which should be expressed as a positive
    #   integer.
    #   @return [String]
    #
    # @!attribute [rw] scaling_adjustment
    #   The amount by which to scale in or scale out, based on the specified
    #   `AdjustmentType`. A positive value adds to the instance group's
    #   Amazon EC2 instance count while a negative number removes instances.
    #   If `AdjustmentType` is set to `EXACT_CAPACITY`, the number should
    #   only be a positive integer. If `AdjustmentType` is set to
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The returned release label application names or versions.
    #
    # @!attribute [rw] name
    #   The returned release label application name. For example, `hadoop`.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The returned release label application version. For example,
    #   `3.2.1`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/SimplifiedApplication AWS API Documentation
    #
    class SimplifiedApplication < Struct.new(
      :name,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # The launch specification for Spot Instances in the instance fleet,
    # which determines the defined duration, provisioning timeout behavior,
    # and allocation strategy.
    #
    # <note markdown="1"> The instance fleet configuration is available only in Amazon EMR
    # releases 4.8.0 and later, excluding 5.0.x versions. Spot Instance
    # allocation strategy is available in Amazon EMR releases 5.12.1 and
    # later.
    #
    #  </note>
    #
    # <note markdown="1"> Spot Instances with a defined duration (also known as Spot blocks) are
    # no longer available to new customers from July 1, 2021. For customers
    # who have previously used the feature, we will continue to support Spot
    # Instances with a defined duration until December 31, 2022.
    #
    #  </note>
    #
    # @!attribute [rw] timeout_duration_minutes
    #   The Spot provisioning timeout period in minutes. If Spot Instances
    #   are not provisioned within this time period, the `TimeOutAction` is
    #   taken. Minimum value is 5 and maximum value is 1440. The timeout
    #   applies only during initial provisioning, when the cluster is first
    #   created.
    #   @return [Integer]
    #
    # @!attribute [rw] timeout_action
    #   The action to take when `TargetSpotCapacity` has not been fulfilled
    #   when the `TimeoutDurationMinutes` has expired; that is, when all
    #   Spot Instances could not be provisioned within the Spot provisioning
    #   timeout. Valid values are `TERMINATE_CLUSTER` and
    #   `SWITCH_TO_ON_DEMAND`. SWITCH\_TO\_ON\_DEMAND specifies that if no
    #   Spot Instances are available, On-Demand Instances should be
    #   provisioned to fulfill any remaining Spot capacity.
    #   @return [String]
    #
    # @!attribute [rw] block_duration_minutes
    #   The defined duration for Spot Instances (also known as Spot blocks)
    #   in minutes. When specified, the Spot Instance does not terminate
    #   before the defined duration expires, and defined duration pricing
    #   for Spot Instances applies. Valid values are 60, 120, 180, 240, 300,
    #   or 360. The duration period starts as soon as a Spot Instance
    #   receives its instance ID. At the end of the duration, Amazon EC2
    #   marks the Spot Instance for termination and provides a Spot Instance
    #   termination notice, which gives the instance a two-minute warning
    #   before it terminates.
    #
    #   <note markdown="1"> Spot Instances with a defined duration (also known as Spot blocks)
    #   are no longer available to new customers from July 1, 2021. For
    #   customers who have previously used the feature, we will continue to
    #   support Spot Instances with a defined duration until December 31,
    #   2022.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] allocation_strategy
    #   Specifies the strategy to use in launching Spot Instance fleets.
    #   Currently, the only option is capacity-optimized (the default),
    #   which launches instances from Spot Instance pools with optimal
    #   capacity for the number of instances that are launching.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/SpotProvisioningSpecification AWS API Documentation
    #
    class SpotProvisioningSpecification < Struct.new(
      :timeout_duration_minutes,
      :timeout_action,
      :block_duration_minutes,
      :allocation_strategy)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resize specification for Spot Instances in the instance fleet,
    # which contains the resize timeout period.
    #
    # @!attribute [rw] timeout_duration_minutes
    #   Spot resize timeout in minutes. If Spot Instances are not
    #   provisioned within this time, the resize workflow will stop
    #   provisioning of Spot instances. Minimum value is 5 minutes and
    #   maximum value is 10,080 minutes (7 days). The timeout applies to all
    #   resize workflows on the Instance Fleet. The resize could be
    #   triggered by Amazon EMR Managed Scaling or by the customer (via
    #   Amazon EMR Console, Amazon EMR CLI modify-instance-fleet or Amazon
    #   EMR SDK ModifyInstanceFleet API) or by Amazon EMR due to Amazon EC2
    #   Spot Reclamation.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/SpotResizingSpecification AWS API Documentation
    #
    class SpotResizingSpecification < Struct.new(
      :timeout_duration_minutes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] editor_id
    #   The unique identifier of the Amazon EMR Notebook to use for notebook
    #   execution.
    #   @return [String]
    #
    # @!attribute [rw] relative_path
    #   The path and file name of the notebook file for this execution,
    #   relative to the path specified for the Amazon EMR Notebook. For
    #   example, if you specify a path of `s3://MyBucket/MyNotebooks` when
    #   you create an Amazon EMR Notebook for a notebook with an ID of
    #   `e-ABCDEFGHIJK1234567890ABCD` (the `EditorID` of this request), and
    #   you specify a `RelativePath` of
    #   `my_notebook_executions/notebook_execution.ipynb`, the location of
    #   the file for the notebook execution is
    #   `s3://MyBucket/MyNotebooks/e-ABCDEFGHIJK1234567890ABCD/my_notebook_executions/notebook_execution.ipynb`.
    #   @return [String]
    #
    # @!attribute [rw] notebook_execution_name
    #   An optional name for the notebook execution.
    #   @return [String]
    #
    # @!attribute [rw] notebook_params
    #   Input parameters in JSON format passed to the Amazon EMR Notebook at
    #   runtime for execution.
    #   @return [String]
    #
    # @!attribute [rw] execution_engine
    #   Specifies the execution engine (cluster) that runs the notebook
    #   execution.
    #   @return [Types::ExecutionEngineConfig]
    #
    # @!attribute [rw] service_role
    #   The name or ARN of the IAM role that is used as the service role for
    #   Amazon EMR (the Amazon EMR role) for the notebook execution.
    #   @return [String]
    #
    # @!attribute [rw] notebook_instance_security_group_id
    #   The unique identifier of the Amazon EC2 security group to associate
    #   with the Amazon EMR Notebook for this notebook execution.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags associated with a notebook execution. Tags are
    #   user-defined key-value pairs that consist of a required key string
    #   with a maximum of 128 characters and an optional value string with a
    #   maximum of 256 characters.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] notebook_s3_location
    #   The Amazon S3 location for the notebook execution input.
    #   @return [Types::NotebookS3LocationFromInput]
    #
    # @!attribute [rw] output_notebook_s3_location
    #   The Amazon S3 location for the notebook execution output.
    #   @return [Types::OutputNotebookS3LocationFromInput]
    #
    # @!attribute [rw] output_notebook_format
    #   The output format for the notebook execution.
    #   @return [String]
    #
    # @!attribute [rw] environment_variables
    #   The environment variables associated with the notebook execution.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/StartNotebookExecutionInput AWS API Documentation
    #
    class StartNotebookExecutionInput < Struct.new(
      :editor_id,
      :relative_path,
      :notebook_execution_name,
      :notebook_params,
      :execution_engine,
      :service_role,
      :notebook_instance_security_group_id,
      :tags,
      :notebook_s3_location,
      :output_notebook_s3_location,
      :output_notebook_format,
      :environment_variables)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] notebook_execution_id
    #   The unique identifier of the notebook execution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/StartNotebookExecutionOutput AWS API Documentation
    #
    class StartNotebookExecutionOutput < Struct.new(
      :notebook_execution_id)
      SENSITIVE = []
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
    #   The action to take when the cluster step fails. Possible values are
    #   `TERMINATE_CLUSTER`, `CANCEL_AND_WAIT`, and `CONTINUE`.
    #   `TERMINATE_JOB_FLOW` is provided for backward compatibility. We
    #   recommend using `TERMINATE_CLUSTER` instead.
    #
    #   If a cluster's `StepConcurrencyLevel` is greater than `1`, do not
    #   use `AddJobFlowSteps` to submit a step with this parameter set to
    #   `CANCEL_AND_WAIT` or `TERMINATE_CLUSTER`. The step is not submitted
    #   and the action fails with a message that the `ActionOnFailure`
    #   setting is not valid.
    #
    #   If you change a cluster's `StepConcurrencyLevel` to be greater than
    #   1 while a step is running, the `ActionOnFailure` parameter may not
    #   behave as you expect. In this case, for a step that fails with this
    #   parameter set to `CANCEL_AND_WAIT`, pending steps and the running
    #   step are not canceled; for a step that fails with this parameter set
    #   to `TERMINATE_CLUSTER`, the cluster does not terminate.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current execution status details of the cluster step.
    #   @return [Types::StepStatus]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the runtime role for a step on the
    #   cluster. The runtime role can be a cross-account IAM role. The
    #   runtime role ARN is a combination of account ID, role name, and role
    #   type using the following format:
    #   `arn:partition:service:region:account:resource`.
    #
    #   For example, `arn:aws:IAM::1234567890:role/ReadOnly` is a correctly
    #   formatted runtime role ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/Step AWS API Documentation
    #
    class Step < Struct.new(
      :id,
      :name,
      :config,
      :action_on_failure,
      :status,
      :execution_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specification for a cluster (job flow) step.
    #
    # @!attribute [rw] name
    #   The name of the step.
    #   @return [String]
    #
    # @!attribute [rw] action_on_failure
    #   The action to take when the step fails. Use one of the following
    #   values:
    #
    #   * `TERMINATE_CLUSTER` - Shuts down the cluster.
    #
    #   * `CANCEL_AND_WAIT` - Cancels any pending steps and returns the
    #     cluster to the `WAITING` state.
    #
    #   * `CONTINUE` - Continues to the next step in the queue.
    #
    #   * `TERMINATE_JOB_FLOW` - Shuts down the cluster.
    #     `TERMINATE_JOB_FLOW` is provided for backward compatibility. We
    #     recommend using `TERMINATE_CLUSTER` instead.
    #
    #   If a cluster's `StepConcurrencyLevel` is greater than `1`, do not
    #   use `AddJobFlowSteps` to submit a step with this parameter set to
    #   `CANCEL_AND_WAIT` or `TERMINATE_CLUSTER`. The step is not submitted
    #   and the action fails with a message that the `ActionOnFailure`
    #   setting is not valid.
    #
    #   If you change a cluster's `StepConcurrencyLevel` to be greater than
    #   1 while a step is running, the `ActionOnFailure` parameter may not
    #   behave as you expect. In this case, for a step that fails with this
    #   parameter set to `CANCEL_AND_WAIT`, pending steps and the running
    #   step are not canceled; for a step that fails with this parameter set
    #   to `TERMINATE_CLUSTER`, the cluster does not terminate.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   The action to take when the cluster step fails. Possible values are
    #   TERMINATE\_CLUSTER, CANCEL\_AND\_WAIT, and CONTINUE.
    #   TERMINATE\_JOB\_FLOW is available for backward compatibility.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] notebook_execution_id
    #   The unique identifier of the notebook execution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/StopNotebookExecutionInput AWS API Documentation
    #
    class StopNotebookExecutionInput < Struct.new(
      :notebook_execution_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details for an Amazon EMR Studio including ID, creation time, name,
    # and so on.
    #
    # @!attribute [rw] studio_id
    #   The ID of the Amazon EMR Studio.
    #   @return [String]
    #
    # @!attribute [rw] studio_arn
    #   The Amazon Resource Name (ARN) of the Amazon EMR Studio.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Amazon EMR Studio.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The detailed description of the Amazon EMR Studio.
    #   @return [String]
    #
    # @!attribute [rw] auth_mode
    #   Specifies whether the Amazon EMR Studio authenticates users with IAM
    #   or IAM Identity Center.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC associated with the Amazon EMR Studio.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The list of IDs of the subnets associated with the Amazon EMR
    #   Studio.
    #   @return [Array<String>]
    #
    # @!attribute [rw] service_role
    #   The name of the IAM role assumed by the Amazon EMR Studio.
    #   @return [String]
    #
    # @!attribute [rw] user_role
    #   The name of the IAM role assumed by users logged in to the Amazon
    #   EMR Studio. A Studio only requires a `UserRole` when you use IAM
    #   authentication.
    #   @return [String]
    #
    # @!attribute [rw] workspace_security_group_id
    #   The ID of the Workspace security group associated with the Amazon
    #   EMR Studio. The Workspace security group allows outbound network
    #   traffic to resources in the Engine security group and to the
    #   internet.
    #   @return [String]
    #
    # @!attribute [rw] engine_security_group_id
    #   The ID of the Engine security group associated with the Amazon EMR
    #   Studio. The Engine security group allows inbound network traffic
    #   from resources in the Workspace security group.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The unique access URL of the Amazon EMR Studio.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time the Amazon EMR Studio was created.
    #   @return [Time]
    #
    # @!attribute [rw] default_s3_location
    #   The Amazon S3 location to back up Amazon EMR Studio Workspaces and
    #   notebook files.
    #   @return [String]
    #
    # @!attribute [rw] idp_auth_url
    #   Your identity provider's authentication endpoint. Amazon EMR Studio
    #   redirects federated users to this endpoint for authentication when
    #   logging in to a Studio with the Studio URL.
    #   @return [String]
    #
    # @!attribute [rw] idp_relay_state_parameter_name
    #   The name of your identity provider's `RelayState` parameter.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags associated with the Amazon EMR Studio.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/Studio AWS API Documentation
    #
    class Studio < Struct.new(
      :studio_id,
      :studio_arn,
      :name,
      :description,
      :auth_mode,
      :vpc_id,
      :subnet_ids,
      :service_role,
      :user_role,
      :workspace_security_group_id,
      :engine_security_group_id,
      :url,
      :creation_time,
      :default_s3_location,
      :idp_auth_url,
      :idp_relay_state_parameter_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details for an Amazon EMR Studio, including ID, Name, VPC, and
    # Description. The details do not include subnets, IAM roles, security
    # groups, or tags associated with the Studio.
    #
    # @!attribute [rw] studio_id
    #   The ID of the Amazon EMR Studio.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Amazon EMR Studio.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the Virtual Private Cloud (Amazon VPC) associated with the
    #   Amazon EMR Studio.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The detailed description of the Amazon EMR Studio.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The unique access URL of the Amazon EMR Studio.
    #   @return [String]
    #
    # @!attribute [rw] auth_mode
    #   Specifies whether the Studio authenticates users using IAM or IAM
    #   Identity Center.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time when the Amazon EMR Studio was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/StudioSummary AWS API Documentation
    #
    class StudioSummary < Struct.new(
      :studio_id,
      :name,
      :vpc_id,
      :description,
      :url,
      :auth_mode,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # An instance type that the specified Amazon EMR release supports.
    #
    # @!attribute [rw] type
    #   The [Amazon EC2 instance type][1], for example `m5.xlarge`, of the
    #   `SupportedInstanceType`.
    #
    #
    #
    #   [1]: http://aws.amazon.com/ec2/instance-types/
    #   @return [String]
    #
    # @!attribute [rw] memory_gb
    #   The amount of memory that is available to Amazon EMR from the
    #   `SupportedInstanceType`. The kernel and hypervisor software consume
    #   some memory, so this value might be lower than the overall memory
    #   for the instance type.
    #   @return [Float]
    #
    # @!attribute [rw] storage_gb
    #   `StorageGB` represents the storage capacity of the
    #   `SupportedInstanceType`. This value is `0` for Amazon EBS-only
    #   instance types.
    #   @return [Integer]
    #
    # @!attribute [rw] vcpu
    #   The number of vCPUs available for the `SupportedInstanceType`.
    #   @return [Integer]
    #
    # @!attribute [rw] is_64_bits_only
    #   Indicates whether the `SupportedInstanceType` only supports 64-bit
    #   architecture.
    #   @return [Boolean]
    #
    # @!attribute [rw] instance_family_id
    #   The Amazon EC2 family and generation for the
    #   `SupportedInstanceType`.
    #   @return [String]
    #
    # @!attribute [rw] ebs_optimized_available
    #   Indicates whether the `SupportedInstanceType` supports Amazon EBS
    #   optimization.
    #   @return [Boolean]
    #
    # @!attribute [rw] ebs_optimized_by_default
    #   Indicates whether the `SupportedInstanceType` uses Amazon EBS
    #   optimization by default.
    #   @return [Boolean]
    #
    # @!attribute [rw] number_of_disks
    #   Number of disks for the `SupportedInstanceType`. This value is `0`
    #   for Amazon EBS-only instance types.
    #   @return [Integer]
    #
    # @!attribute [rw] ebs_storage_only
    #   Indicates whether the `SupportedInstanceType` only supports Amazon
    #   EBS.
    #   @return [Boolean]
    #
    # @!attribute [rw] architecture
    #   The CPU architecture, for example `X86_64` or `AARCH64`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/SupportedInstanceType AWS API Documentation
    #
    class SupportedInstanceType < Struct.new(
      :type,
      :memory_gb,
      :storage_gb,
      :vcpu,
      :is_64_bits_only,
      :instance_family_id,
      :ebs_optimized_available,
      :ebs_optimized_by_default,
      :number_of_disks,
      :ebs_storage_only,
      :architecture)
      SENSITIVE = []
      include Aws::Structure
    end

    # The list of supported product configurations that allow user-supplied
    # arguments. Amazon EMR accepts these arguments and forwards them to the
    # corresponding installation script as bootstrap action arguments.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # A key-value pair containing user-defined metadata that you can
    # associate with an Amazon EMR resource. Tags make it easier to
    # associate clusters in various ways, such as grouping clusters to track
    # your Amazon EMR resource allocation costs. For more information, see
    # [Tag Clusters][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html
    #
    # @!attribute [rw] key
    #   A user-defined key, which is the minimum required information for a
    #   valid tag. For more information, see [Tag][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html
    #   @return [String]
    #
    # @!attribute [rw] value
    #   A user-defined value, which is optional in a tag. For more
    #   information, see [Tag Clusters][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input to the TerminateJobFlows operation.
    #
    # @!attribute [rw] job_flow_ids
    #   A list of job flows to be shut down.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/TerminateJobFlowsInput AWS API Documentation
    #
    class TerminateJobFlowsInput < Struct.new(
      :job_flow_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] studio_id
    #   The ID of the Amazon EMR Studio to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A descriptive name for the Amazon EMR Studio.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A detailed description to assign to the Amazon EMR Studio.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   A list of subnet IDs to associate with the Amazon EMR Studio. The
    #   list can include new subnet IDs, but must also include all of the
    #   subnet IDs previously associated with the Studio. The list order
    #   does not matter. A Studio can have a maximum of 5 subnets. The
    #   subnets must belong to the same VPC as the Studio.
    #   @return [Array<String>]
    #
    # @!attribute [rw] default_s3_location
    #   The Amazon S3 location to back up Workspaces and notebook files for
    #   the Amazon EMR Studio.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/UpdateStudioInput AWS API Documentation
    #
    class UpdateStudioInput < Struct.new(
      :studio_id,
      :name,
      :description,
      :subnet_ids,
      :default_s3_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] studio_id
    #   The ID of the Amazon EMR Studio.
    #   @return [String]
    #
    # @!attribute [rw] identity_id
    #   The globally unique identifier (GUID) of the user or group. For more
    #   information, see [UserId][1] and [GroupId][2] in the *IAM Identity
    #   Center Identity Store API Reference*. Either `IdentityName` or
    #   `IdentityId` must be specified.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserId
    #   [2]: https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-GroupId
    #   @return [String]
    #
    # @!attribute [rw] identity_name
    #   The name of the user or group to update. For more information, see
    #   [UserName][1] and [DisplayName][2] in the *IAM Identity Center
    #   Identity Store API Reference*. Either `IdentityName` or `IdentityId`
    #   must be specified.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserName
    #   [2]: https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-DisplayName
    #   @return [String]
    #
    # @!attribute [rw] identity_type
    #   Specifies whether the identity to update is a user or a group.
    #   @return [String]
    #
    # @!attribute [rw] session_policy_arn
    #   The Amazon Resource Name (ARN) of the session policy to associate
    #   with the specified user or group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/UpdateStudioSessionMappingInput AWS API Documentation
    #
    class UpdateStudioSessionMappingInput < Struct.new(
      :studio_id,
      :identity_id,
      :identity_name,
      :identity_type,
      :session_policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The username and password that you use to connect to cluster
    # endpoints.
    #
    # @!attribute [rw] username
    #   The username associated with the temporary credentials that you use
    #   to connect to cluster endpoints.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password associated with the temporary credentials that you use
    #   to connect to cluster endpoints.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/UsernamePassword AWS API Documentation
    #
    class UsernamePassword < Struct.new(
      :username,
      :password)
      SENSITIVE = []
      include Aws::Structure
    end

    # EBS volume specifications such as volume type, IOPS, size (GiB) and
    # throughput (MiB/s) that are requested for the EBS volume attached to
    # an Amazon EC2 instance in the cluster.
    #
    # @!attribute [rw] volume_type
    #   The volume type. Volume types supported are gp3, gp2, io1, st1, sc1,
    #   and standard.
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
    # @!attribute [rw] throughput
    #   The throughput, in mebibyte per second (MiB/s). This optional
    #   parameter can be a number from 125 - 1000 and is valid only for gp3
    #   volumes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31/VolumeSpecification AWS API Documentation
    #
    class VolumeSpecification < Struct.new(
      :volume_type,
      :iops,
      :size_in_gb,
      :throughput)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
