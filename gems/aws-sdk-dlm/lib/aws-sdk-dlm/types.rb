# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DLM
  module Types

    # @note When making an API call, you may pass CreateLifecyclePolicyRequest
    #   data as a hash:
    #
    #       {
    #         execution_role_arn: "ExecutionRoleArn", # required
    #         description: "PolicyDescription", # required
    #         state: "ENABLED", # required, accepts ENABLED, DISABLED
    #         policy_details: { # required
    #           policy_type: "EBS_SNAPSHOT_MANAGEMENT", # accepts EBS_SNAPSHOT_MANAGEMENT
    #           resource_types: ["VOLUME"], # accepts VOLUME, INSTANCE
    #           target_tags: [
    #             {
    #               key: "String", # required
    #               value: "String", # required
    #             },
    #           ],
    #           schedules: [
    #             {
    #               name: "ScheduleName",
    #               copy_tags: false,
    #               tags_to_add: [
    #                 {
    #                   key: "String", # required
    #                   value: "String", # required
    #                 },
    #               ],
    #               variable_tags: [
    #                 {
    #                   key: "String", # required
    #                   value: "String", # required
    #                 },
    #               ],
    #               create_rule: {
    #                 interval: 1,
    #                 interval_unit: "HOURS", # accepts HOURS
    #                 times: ["Time"],
    #                 cron_expression: "CronExpression",
    #               },
    #               retain_rule: {
    #                 count: 1,
    #                 interval: 1,
    #                 interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #               },
    #               fast_restore_rule: {
    #                 count: 1,
    #                 interval: 1,
    #                 interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #                 availability_zones: ["AvailabilityZone"], # required
    #               },
    #               cross_region_copy_rules: [
    #                 {
    #                   target_region: "TargetRegion", # required
    #                   encrypted: false, # required
    #                   cmk_arn: "CmkArn",
    #                   copy_tags: false,
    #                   retain_rule: {
    #                     interval: 1,
    #                     interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #                   },
    #                 },
    #               ],
    #             },
    #           ],
    #           parameters: {
    #             exclude_boot_volume: false,
    #           },
    #         },
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role used to run the
    #   operations specified by the lifecycle policy.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the lifecycle policy. The characters ^\[0-9A-Za-z
    #   \_-\]+$ are supported.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The desired activation state of the lifecycle policy after creation.
    #   @return [String]
    #
    # @!attribute [rw] policy_details
    #   The configuration details of the lifecycle policy.
    #   @return [Types::PolicyDetails]
    #
    # @!attribute [rw] tags
    #   The tags to apply to the lifecycle policy during creation.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/CreateLifecyclePolicyRequest AWS API Documentation
    #
    class CreateLifecyclePolicyRequest < Struct.new(
      :execution_role_arn,
      :description,
      :state,
      :policy_details,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_id
    #   The identifier of the lifecycle policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/CreateLifecyclePolicyResponse AWS API Documentation
    #
    class CreateLifecyclePolicyResponse < Struct.new(
      :policy_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies when to create snapshots of EBS volumes.
    #
    # You must specify either a Cron expression or an interval, interval
    # unit, and start time. You cannot specify both.
    #
    # @note When making an API call, you may pass CreateRule
    #   data as a hash:
    #
    #       {
    #         interval: 1,
    #         interval_unit: "HOURS", # accepts HOURS
    #         times: ["Time"],
    #         cron_expression: "CronExpression",
    #       }
    #
    # @!attribute [rw] interval
    #   The interval between snapshots. The supported values are 1, 2, 3, 4,
    #   6, 8, 12, and 24.
    #   @return [Integer]
    #
    # @!attribute [rw] interval_unit
    #   The interval unit.
    #   @return [String]
    #
    # @!attribute [rw] times
    #   The time, in UTC, to start the operation. The supported format is
    #   hh:mm.
    #
    #   The operation occurs within a one-hour window following the
    #   specified time. If you do not specify a time, Amazon DLM selects a
    #   time within the next 24 hours.
    #   @return [Array<String>]
    #
    # @!attribute [rw] cron_expression
    #   The schedule, as a Cron expression. The schedule interval must be
    #   between 1 hour and 1 year. For more information, see [Cron
    #   expressions][1] in the *Amazon CloudWatch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html#CronExpressions
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/CreateRule AWS API Documentation
    #
    class CreateRule < Struct.new(
      :interval,
      :interval_unit,
      :times,
      :cron_expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the retention rule for cross-Region snapshot copies.
    #
    # @note When making an API call, you may pass CrossRegionCopyRetainRule
    #   data as a hash:
    #
    #       {
    #         interval: 1,
    #         interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #       }
    #
    # @!attribute [rw] interval
    #   The amount of time to retain each snapshot. The maximum is 100
    #   years. This is equivalent to 1200 months, 5200 weeks, or 36500 days.
    #   @return [Integer]
    #
    # @!attribute [rw] interval_unit
    #   The unit of time for time-based retention.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/CrossRegionCopyRetainRule AWS API Documentation
    #
    class CrossRegionCopyRetainRule < Struct.new(
      :interval,
      :interval_unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a rule for cross-Region snapshot copies.
    #
    # @note When making an API call, you may pass CrossRegionCopyRule
    #   data as a hash:
    #
    #       {
    #         target_region: "TargetRegion", # required
    #         encrypted: false, # required
    #         cmk_arn: "CmkArn",
    #         copy_tags: false,
    #         retain_rule: {
    #           interval: 1,
    #           interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #         },
    #       }
    #
    # @!attribute [rw] target_region
    #   The target Region.
    #   @return [String]
    #
    # @!attribute [rw] encrypted
    #   To encrypt a copy of an unencrypted snapshot if encryption by
    #   default is not enabled, enable encryption using this parameter.
    #   Copies of encrypted snapshots are encrypted, even if this parameter
    #   is false or if encryption by default is not enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] cmk_arn
    #   The Amazon Resource Name (ARN) of the AWS KMS customer master key
    #   (CMK) to use for EBS encryption. If this parameter is not specified,
    #   your AWS managed CMK for EBS is used.
    #   @return [String]
    #
    # @!attribute [rw] copy_tags
    #   Copy all user-defined tags from the source snapshot to the copied
    #   snapshot.
    #   @return [Boolean]
    #
    # @!attribute [rw] retain_rule
    #   The retention rule.
    #   @return [Types::CrossRegionCopyRetainRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/CrossRegionCopyRule AWS API Documentation
    #
    class CrossRegionCopyRule < Struct.new(
      :target_region,
      :encrypted,
      :cmk_arn,
      :copy_tags,
      :retain_rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteLifecyclePolicyRequest
    #   data as a hash:
    #
    #       {
    #         policy_id: "PolicyId", # required
    #       }
    #
    # @!attribute [rw] policy_id
    #   The identifier of the lifecycle policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/DeleteLifecyclePolicyRequest AWS API Documentation
    #
    class DeleteLifecyclePolicyRequest < Struct.new(
      :policy_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/DeleteLifecyclePolicyResponse AWS API Documentation
    #
    class DeleteLifecyclePolicyResponse < Aws::EmptyStructure; end

    # Specifies a rule for enabling fast snapshot restore. You can enable
    # fast snapshot restore based on either a count or a time interval.
    #
    # @note When making an API call, you may pass FastRestoreRule
    #   data as a hash:
    #
    #       {
    #         count: 1,
    #         interval: 1,
    #         interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #         availability_zones: ["AvailabilityZone"], # required
    #       }
    #
    # @!attribute [rw] count
    #   The number of snapshots to be enabled with fast snapshot restore.
    #   @return [Integer]
    #
    # @!attribute [rw] interval
    #   The amount of time to enable fast snapshot restore. The maximum is
    #   100 years. This is equivalent to 1200 months, 5200 weeks, or 36500
    #   days.
    #   @return [Integer]
    #
    # @!attribute [rw] interval_unit
    #   The unit of time for enabling fast snapshot restore.
    #   @return [String]
    #
    # @!attribute [rw] availability_zones
    #   The Availability Zones in which to enable fast snapshot restore.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/FastRestoreRule AWS API Documentation
    #
    class FastRestoreRule < Struct.new(
      :count,
      :interval,
      :interval_unit,
      :availability_zones)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetLifecyclePoliciesRequest
    #   data as a hash:
    #
    #       {
    #         policy_ids: ["PolicyId"],
    #         state: "ENABLED", # accepts ENABLED, DISABLED, ERROR
    #         resource_types: ["VOLUME"], # accepts VOLUME, INSTANCE
    #         target_tags: ["TagFilter"],
    #         tags_to_add: ["TagFilter"],
    #       }
    #
    # @!attribute [rw] policy_ids
    #   The identifiers of the data lifecycle policies.
    #   @return [Array<String>]
    #
    # @!attribute [rw] state
    #   The activation state.
    #   @return [String]
    #
    # @!attribute [rw] resource_types
    #   The resource type.
    #   @return [Array<String>]
    #
    # @!attribute [rw] target_tags
    #   The target tag for a policy.
    #
    #   Tags are strings in the format `key=value`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags_to_add
    #   The tags to add to objects created by the policy.
    #
    #   Tags are strings in the format `key=value`.
    #
    #   These user-defined tags are added in addition to the AWS-added
    #   lifecycle tags.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/GetLifecyclePoliciesRequest AWS API Documentation
    #
    class GetLifecyclePoliciesRequest < Struct.new(
      :policy_ids,
      :state,
      :resource_types,
      :target_tags,
      :tags_to_add)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policies
    #   Summary information about the lifecycle policies.
    #   @return [Array<Types::LifecyclePolicySummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/GetLifecyclePoliciesResponse AWS API Documentation
    #
    class GetLifecyclePoliciesResponse < Struct.new(
      :policies)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetLifecyclePolicyRequest
    #   data as a hash:
    #
    #       {
    #         policy_id: "PolicyId", # required
    #       }
    #
    # @!attribute [rw] policy_id
    #   The identifier of the lifecycle policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/GetLifecyclePolicyRequest AWS API Documentation
    #
    class GetLifecyclePolicyRequest < Struct.new(
      :policy_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   Detailed information about the lifecycle policy.
    #   @return [Types::LifecyclePolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/GetLifecyclePolicyResponse AWS API Documentation
    #
    class GetLifecyclePolicyResponse < Struct.new(
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service failed in an unexpected way.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Bad request. The request is missing required parameters or has invalid
    # parameters.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] required_parameters
    #   The request omitted one or more required parameters.
    #   @return [Array<String>]
    #
    # @!attribute [rw] mutually_exclusive_parameters
    #   The request included parameters that cannot be provided together.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/InvalidRequestException AWS API Documentation
    #
    class InvalidRequestException < Struct.new(
      :message,
      :code,
      :required_parameters,
      :mutually_exclusive_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detailed information about a lifecycle policy.
    #
    # @!attribute [rw] policy_id
    #   The identifier of the lifecycle policy.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the lifecycle policy.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The activation state of the lifecycle policy.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The description of the status.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role used to run the
    #   operations specified by the lifecycle policy.
    #   @return [String]
    #
    # @!attribute [rw] date_created
    #   The local date and time when the lifecycle policy was created.
    #   @return [Time]
    #
    # @!attribute [rw] date_modified
    #   The local date and time when the lifecycle policy was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] policy_details
    #   The configuration of the lifecycle policy
    #   @return [Types::PolicyDetails]
    #
    # @!attribute [rw] tags
    #   The tags.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/LifecyclePolicy AWS API Documentation
    #
    class LifecyclePolicy < Struct.new(
      :policy_id,
      :description,
      :state,
      :status_message,
      :execution_role_arn,
      :date_created,
      :date_modified,
      :policy_details,
      :tags,
      :policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a lifecycle policy.
    #
    # @!attribute [rw] policy_id
    #   The identifier of the lifecycle policy.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the lifecycle policy.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The activation state of the lifecycle policy.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/LifecyclePolicySummary AWS API Documentation
    #
    class LifecyclePolicySummary < Struct.new(
      :policy_id,
      :description,
      :state,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request failed because a limit was exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Value is the type of resource for which a limit was exceeded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message,
      :code,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "PolicyArn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   Information about the tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies optional parameters to add to a policy. The set of valid
    # parameters depends on the combination of policy type and resource
    # type.
    #
    # @note When making an API call, you may pass Parameters
    #   data as a hash:
    #
    #       {
    #         exclude_boot_volume: false,
    #       }
    #
    # @!attribute [rw] exclude_boot_volume
    #   \[EBS Snapshot Management – Instance policies only\] Indicates
    #   whether to exclude the root volume from snapshots created using
    #   [CreateSnapshots][1]. The default is false.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateSnapshots.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/Parameters AWS API Documentation
    #
    class Parameters < Struct.new(
      :exclude_boot_volume)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the configuration of a lifecycle policy.
    #
    # @note When making an API call, you may pass PolicyDetails
    #   data as a hash:
    #
    #       {
    #         policy_type: "EBS_SNAPSHOT_MANAGEMENT", # accepts EBS_SNAPSHOT_MANAGEMENT
    #         resource_types: ["VOLUME"], # accepts VOLUME, INSTANCE
    #         target_tags: [
    #           {
    #             key: "String", # required
    #             value: "String", # required
    #           },
    #         ],
    #         schedules: [
    #           {
    #             name: "ScheduleName",
    #             copy_tags: false,
    #             tags_to_add: [
    #               {
    #                 key: "String", # required
    #                 value: "String", # required
    #               },
    #             ],
    #             variable_tags: [
    #               {
    #                 key: "String", # required
    #                 value: "String", # required
    #               },
    #             ],
    #             create_rule: {
    #               interval: 1,
    #               interval_unit: "HOURS", # accepts HOURS
    #               times: ["Time"],
    #               cron_expression: "CronExpression",
    #             },
    #             retain_rule: {
    #               count: 1,
    #               interval: 1,
    #               interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #             },
    #             fast_restore_rule: {
    #               count: 1,
    #               interval: 1,
    #               interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #               availability_zones: ["AvailabilityZone"], # required
    #             },
    #             cross_region_copy_rules: [
    #               {
    #                 target_region: "TargetRegion", # required
    #                 encrypted: false, # required
    #                 cmk_arn: "CmkArn",
    #                 copy_tags: false,
    #                 retain_rule: {
    #                   interval: 1,
    #                   interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #                 },
    #               },
    #             ],
    #           },
    #         ],
    #         parameters: {
    #           exclude_boot_volume: false,
    #         },
    #       }
    #
    # @!attribute [rw] policy_type
    #   The valid target resource types and actions a policy can manage. The
    #   default is EBS\_SNAPSHOT\_MANAGEMENT.
    #   @return [String]
    #
    # @!attribute [rw] resource_types
    #   The resource type. Use VOLUME to create snapshots of individual
    #   volumes or use INSTANCE to create multi-volume snapshots from the
    #   volumes for an instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] target_tags
    #   The single tag that identifies targeted resources for this policy.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] schedules
    #   The schedules of policy-defined actions. A policy can have up to
    #   four schedules - one mandatory schedule and up to three optional
    #   schedules.
    #   @return [Array<Types::Schedule>]
    #
    # @!attribute [rw] parameters
    #   A set of optional parameters for the policy.
    #   @return [Types::Parameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/PolicyDetails AWS API Documentation
    #
    class PolicyDetails < Struct.new(
      :policy_type,
      :resource_types,
      :target_tags,
      :schedules,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # A requested resource was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Value is the type of resource that was not found.
    #   @return [String]
    #
    # @!attribute [rw] resource_ids
    #   Value is a list of resource IDs that were not found.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :code,
      :resource_type,
      :resource_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the retention rule for a lifecycle policy. You can retain
    # snapshots based on either a count or a time interval.
    #
    # @note When making an API call, you may pass RetainRule
    #   data as a hash:
    #
    #       {
    #         count: 1,
    #         interval: 1,
    #         interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #       }
    #
    # @!attribute [rw] count
    #   The number of snapshots to retain for each volume, up to a maximum
    #   of 1000.
    #   @return [Integer]
    #
    # @!attribute [rw] interval
    #   The amount of time to retain each snapshot. The maximum is 100
    #   years. This is equivalent to 1200 months, 5200 weeks, or 36500 days.
    #   @return [Integer]
    #
    # @!attribute [rw] interval_unit
    #   The unit of time for time-based retention.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/RetainRule AWS API Documentation
    #
    class RetainRule < Struct.new(
      :count,
      :interval,
      :interval_unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a backup schedule.
    #
    # @note When making an API call, you may pass Schedule
    #   data as a hash:
    #
    #       {
    #         name: "ScheduleName",
    #         copy_tags: false,
    #         tags_to_add: [
    #           {
    #             key: "String", # required
    #             value: "String", # required
    #           },
    #         ],
    #         variable_tags: [
    #           {
    #             key: "String", # required
    #             value: "String", # required
    #           },
    #         ],
    #         create_rule: {
    #           interval: 1,
    #           interval_unit: "HOURS", # accepts HOURS
    #           times: ["Time"],
    #           cron_expression: "CronExpression",
    #         },
    #         retain_rule: {
    #           count: 1,
    #           interval: 1,
    #           interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #         },
    #         fast_restore_rule: {
    #           count: 1,
    #           interval: 1,
    #           interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #           availability_zones: ["AvailabilityZone"], # required
    #         },
    #         cross_region_copy_rules: [
    #           {
    #             target_region: "TargetRegion", # required
    #             encrypted: false, # required
    #             cmk_arn: "CmkArn",
    #             copy_tags: false,
    #             retain_rule: {
    #               interval: 1,
    #               interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   The name of the schedule.
    #   @return [String]
    #
    # @!attribute [rw] copy_tags
    #   Copy all user-defined tags on a source volume to snapshots of the
    #   volume created by this policy.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags_to_add
    #   The tags to apply to policy-created resources. These user-defined
    #   tags are in addition to the AWS-added lifecycle tags.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] variable_tags
    #   A collection of key/value pairs with values determined dynamically
    #   when the policy is executed. Keys may be any valid Amazon EC2 tag
    #   key. Values must be in one of the two following formats:
    #   `$(instance-id)` or `$(timestamp)`. Variable tags are only valid for
    #   EBS Snapshot Management – Instance policies.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] create_rule
    #   The creation rule.
    #   @return [Types::CreateRule]
    #
    # @!attribute [rw] retain_rule
    #   The retention rule.
    #   @return [Types::RetainRule]
    #
    # @!attribute [rw] fast_restore_rule
    #   The rule for enabling fast snapshot restore.
    #   @return [Types::FastRestoreRule]
    #
    # @!attribute [rw] cross_region_copy_rules
    #   The rule for cross-Region snapshot copies.
    #   @return [Array<Types::CrossRegionCopyRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/Schedule AWS API Documentation
    #
    class Schedule < Struct.new(
      :name,
      :copy_tags,
      :tags_to_add,
      :variable_tags,
      :create_rule,
      :retain_rule,
      :fast_restore_rule,
      :cross_region_copy_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a tag for a resource.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "String", # required
    #         value: "String", # required
    #       }
    #
    # @!attribute [rw] key
    #   The tag key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The tag value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "PolicyArn", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   One or more tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "PolicyArn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateLifecyclePolicyRequest
    #   data as a hash:
    #
    #       {
    #         policy_id: "PolicyId", # required
    #         execution_role_arn: "ExecutionRoleArn",
    #         state: "ENABLED", # accepts ENABLED, DISABLED
    #         description: "PolicyDescription",
    #         policy_details: {
    #           policy_type: "EBS_SNAPSHOT_MANAGEMENT", # accepts EBS_SNAPSHOT_MANAGEMENT
    #           resource_types: ["VOLUME"], # accepts VOLUME, INSTANCE
    #           target_tags: [
    #             {
    #               key: "String", # required
    #               value: "String", # required
    #             },
    #           ],
    #           schedules: [
    #             {
    #               name: "ScheduleName",
    #               copy_tags: false,
    #               tags_to_add: [
    #                 {
    #                   key: "String", # required
    #                   value: "String", # required
    #                 },
    #               ],
    #               variable_tags: [
    #                 {
    #                   key: "String", # required
    #                   value: "String", # required
    #                 },
    #               ],
    #               create_rule: {
    #                 interval: 1,
    #                 interval_unit: "HOURS", # accepts HOURS
    #                 times: ["Time"],
    #                 cron_expression: "CronExpression",
    #               },
    #               retain_rule: {
    #                 count: 1,
    #                 interval: 1,
    #                 interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #               },
    #               fast_restore_rule: {
    #                 count: 1,
    #                 interval: 1,
    #                 interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #                 availability_zones: ["AvailabilityZone"], # required
    #               },
    #               cross_region_copy_rules: [
    #                 {
    #                   target_region: "TargetRegion", # required
    #                   encrypted: false, # required
    #                   cmk_arn: "CmkArn",
    #                   copy_tags: false,
    #                   retain_rule: {
    #                     interval: 1,
    #                     interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #                   },
    #                 },
    #               ],
    #             },
    #           ],
    #           parameters: {
    #             exclude_boot_volume: false,
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] policy_id
    #   The identifier of the lifecycle policy.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role used to run the
    #   operations specified by the lifecycle policy.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The desired activation state of the lifecycle policy after creation.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the lifecycle policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_details
    #   The configuration of the lifecycle policy. You cannot update the
    #   policy type or the resource type.
    #   @return [Types::PolicyDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/UpdateLifecyclePolicyRequest AWS API Documentation
    #
    class UpdateLifecyclePolicyRequest < Struct.new(
      :policy_id,
      :execution_role_arn,
      :state,
      :description,
      :policy_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/UpdateLifecyclePolicyResponse AWS API Documentation
    #
    class UpdateLifecyclePolicyResponse < Aws::EmptyStructure; end

  end
end
