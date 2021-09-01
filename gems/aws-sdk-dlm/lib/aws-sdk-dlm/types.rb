# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DLM
  module Types

    # Specifies an action for an event-based policy.
    #
    # @note When making an API call, you may pass Action
    #   data as a hash:
    #
    #       {
    #         name: "ActionName", # required
    #         cross_region_copy: [ # required
    #           {
    #             target: "Target", # required
    #             encryption_configuration: { # required
    #               encrypted: false, # required
    #               cmk_arn: "CmkArn",
    #             },
    #             retain_rule: {
    #               interval: 1,
    #               interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   A descriptive name for the action.
    #   @return [String]
    #
    # @!attribute [rw] cross_region_copy
    #   The rule for copying shared snapshots across Regions.
    #   @return [Array<Types::CrossRegionCopyAction>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/Action AWS API Documentation
    #
    class Action < Struct.new(
      :name,
      :cross_region_copy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateLifecyclePolicyRequest
    #   data as a hash:
    #
    #       {
    #         execution_role_arn: "ExecutionRoleArn", # required
    #         description: "PolicyDescription", # required
    #         state: "ENABLED", # required, accepts ENABLED, DISABLED
    #         policy_details: { # required
    #           policy_type: "EBS_SNAPSHOT_MANAGEMENT", # accepts EBS_SNAPSHOT_MANAGEMENT, IMAGE_MANAGEMENT, EVENT_BASED_POLICY
    #           resource_types: ["VOLUME"], # accepts VOLUME, INSTANCE
    #           resource_locations: ["CLOUD"], # accepts CLOUD, OUTPOST
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
    #                 location: "CLOUD", # accepts CLOUD, OUTPOST_LOCAL
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
    #                   target_region: "TargetRegion",
    #                   target: "Target",
    #                   encrypted: false, # required
    #                   cmk_arn: "CmkArn",
    #                   copy_tags: false,
    #                   retain_rule: {
    #                     interval: 1,
    #                     interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #                   },
    #                   deprecate_rule: {
    #                     interval: 1,
    #                     interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #                   },
    #                 },
    #               ],
    #               share_rules: [
    #                 {
    #                   target_accounts: ["AwsAccountId"], # required
    #                   unshare_interval: 1,
    #                   unshare_interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #                 },
    #               ],
    #               deprecate_rule: {
    #                 count: 1,
    #                 interval: 1,
    #                 interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #               },
    #             },
    #           ],
    #           parameters: {
    #             exclude_boot_volume: false,
    #             no_reboot: false,
    #           },
    #           event_source: {
    #             type: "MANAGED_CWE", # required, accepts MANAGED_CWE
    #             parameters: {
    #               event_type: "shareSnapshot", # required, accepts shareSnapshot
    #               snapshot_owner: ["AwsAccountId"], # required
    #               description_regex: "DescriptionRegex", # required
    #             },
    #           },
    #           actions: [
    #             {
    #               name: "ActionName", # required
    #               cross_region_copy: [ # required
    #                 {
    #                   target: "Target", # required
    #                   encryption_configuration: { # required
    #                     encrypted: false, # required
    #                     cmk_arn: "CmkArn",
    #                   },
    #                   retain_rule: {
    #                     interval: 1,
    #                     interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #                   },
    #                 },
    #               ],
    #             },
    #           ],
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
    #         location: "CLOUD", # accepts CLOUD, OUTPOST_LOCAL
    #         interval: 1,
    #         interval_unit: "HOURS", # accepts HOURS
    #         times: ["Time"],
    #         cron_expression: "CronExpression",
    #       }
    #
    # @!attribute [rw] location
    #   Specifies the destination for snapshots created by the policy. To
    #   create snapshots in the same Region as the source resource, specify
    #   `CLOUD`. To create snapshots on the same Outpost as the source
    #   resource, specify `OUTPOST_LOCAL`. If you omit this parameter,
    #   `CLOUD` is used by default.
    #
    #   If the policy targets resources in an Amazon Web Services Region,
    #   then you must create snapshots in the same Region as the source
    #   resource.
    #
    #   If the policy targets resources on an Outpost, then you can create
    #   snapshots on the same Outpost as the source resource, or in the
    #   Region of that Outpost.
    #   @return [String]
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
      :location,
      :interval,
      :interval_unit,
      :times,
      :cron_expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a rule for copying shared snapshots across Regions.
    #
    # @note When making an API call, you may pass CrossRegionCopyAction
    #   data as a hash:
    #
    #       {
    #         target: "Target", # required
    #         encryption_configuration: { # required
    #           encrypted: false, # required
    #           cmk_arn: "CmkArn",
    #         },
    #         retain_rule: {
    #           interval: 1,
    #           interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #         },
    #       }
    #
    # @!attribute [rw] target
    #   The target Region.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   The encryption settings for the copied snapshot.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] retain_rule
    #   Specifies the retention rule for cross-Region snapshot copies.
    #   @return [Types::CrossRegionCopyRetainRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/CrossRegionCopyAction AWS API Documentation
    #
    class CrossRegionCopyAction < Struct.new(
      :target,
      :encryption_configuration,
      :retain_rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies an AMI deprecation rule for cross-Region AMI copies created
    # by a cross-Region copy rule.
    #
    # @note When making an API call, you may pass CrossRegionCopyDeprecateRule
    #   data as a hash:
    #
    #       {
    #         interval: 1,
    #         interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #       }
    #
    # @!attribute [rw] interval
    #   The period after which to deprecate the cross-Region AMI copies. The
    #   period must be less than or equal to the cross-Region AMI copy
    #   retention period, and it can't be greater than 10 years. This is
    #   equivalent to 120 months, 520 weeks, or 3650 days.
    #   @return [Integer]
    #
    # @!attribute [rw] interval_unit
    #   The unit of time in which to measure the **Interval**.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/CrossRegionCopyDeprecateRule AWS API Documentation
    #
    class CrossRegionCopyDeprecateRule < Struct.new(
      :interval,
      :interval_unit)
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
    #         target_region: "TargetRegion",
    #         target: "Target",
    #         encrypted: false, # required
    #         cmk_arn: "CmkArn",
    #         copy_tags: false,
    #         retain_rule: {
    #           interval: 1,
    #           interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #         },
    #         deprecate_rule: {
    #           interval: 1,
    #           interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #         },
    #       }
    #
    # @!attribute [rw] target_region
    #   Avoid using this parameter when creating new policies. Instead, use
    #   **Target** to specify a target Region or a target Outpost for
    #   snapshot copies.
    #
    #   For policies created before the **Target** parameter was introduced,
    #   this parameter indicates the target Region for snapshot copies.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The target Region or the Amazon Resource Name (ARN) of the target
    #   Outpost for the snapshot copies.
    #
    #   Use this parameter instead of **TargetRegion**. Do not specify both.
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
    #   The Amazon Resource Name (ARN) of the KMS key to use for EBS
    #   encryption. If this parameter is not specified, the default KMS key
    #   for the account is used.
    #   @return [String]
    #
    # @!attribute [rw] copy_tags
    #   Indicates whether to copy all user-defined tags from the source
    #   snapshot to the cross-Region snapshot copy.
    #   @return [Boolean]
    #
    # @!attribute [rw] retain_rule
    #   The retention rule that indicates how long snapshot copies are to be
    #   retained in the destination Region.
    #   @return [Types::CrossRegionCopyRetainRule]
    #
    # @!attribute [rw] deprecate_rule
    #   The AMI deprecation rule for cross-Region AMI copies created by the
    #   rule.
    #   @return [Types::CrossRegionCopyDeprecateRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/CrossRegionCopyRule AWS API Documentation
    #
    class CrossRegionCopyRule < Struct.new(
      :target_region,
      :target,
      :encrypted,
      :cmk_arn,
      :copy_tags,
      :retain_rule,
      :deprecate_rule)
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

    # Specifies an AMI deprecation rule for a schedule.
    #
    # @note When making an API call, you may pass DeprecateRule
    #   data as a hash:
    #
    #       {
    #         count: 1,
    #         interval: 1,
    #         interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #       }
    #
    # @!attribute [rw] count
    #   If the schedule has a count-based retention rule, this parameter
    #   specifies the number of oldest AMIs to deprecate. The count must be
    #   less than or equal to the schedule's retention count, and it can't
    #   be greater than 1000.
    #   @return [Integer]
    #
    # @!attribute [rw] interval
    #   If the schedule has an age-based retention rule, this parameter
    #   specifies the period after which to deprecate AMIs created by the
    #   schedule. The period must be less than or equal to the schedule's
    #   retention period, and it can't be greater than 10 years. This is
    #   equivalent to 120 months, 520 weeks, or 3650 days.
    #   @return [Integer]
    #
    # @!attribute [rw] interval_unit
    #   The unit of time in which to measure the **Interval**.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/DeprecateRule AWS API Documentation
    #
    class DeprecateRule < Struct.new(
      :count,
      :interval,
      :interval_unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the encryption settings for shared snapshots that are copied
    # across Regions.
    #
    # @note When making an API call, you may pass EncryptionConfiguration
    #   data as a hash:
    #
    #       {
    #         encrypted: false, # required
    #         cmk_arn: "CmkArn",
    #       }
    #
    # @!attribute [rw] encrypted
    #   To encrypt a copy of an unencrypted snapshot when encryption by
    #   default is not enabled, enable encryption using this parameter.
    #   Copies of encrypted snapshots are encrypted, even if this parameter
    #   is false or when encryption by default is not enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] cmk_arn
    #   The Amazon Resource Name (ARN) of the KMS key to use for EBS
    #   encryption. If this parameter is not specified, the default KMS key
    #   for the account is used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/EncryptionConfiguration AWS API Documentation
    #
    class EncryptionConfiguration < Struct.new(
      :encrypted,
      :cmk_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies an event that triggers an event-based policy.
    #
    # @note When making an API call, you may pass EventParameters
    #   data as a hash:
    #
    #       {
    #         event_type: "shareSnapshot", # required, accepts shareSnapshot
    #         snapshot_owner: ["AwsAccountId"], # required
    #         description_regex: "DescriptionRegex", # required
    #       }
    #
    # @!attribute [rw] event_type
    #   The type of event. Currently, only snapshot sharing events are
    #   supported.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_owner
    #   The IDs of the Amazon Web Services accounts that can trigger policy
    #   by sharing snapshots with your account. The policy only runs if one
    #   of the specified Amazon Web Services accounts shares a snapshot with
    #   your account.
    #   @return [Array<String>]
    #
    # @!attribute [rw] description_regex
    #   The snapshot description that can trigger the policy. The
    #   description pattern is specified using a regular expression. The
    #   policy runs only if a snapshot with a description that matches the
    #   specified pattern is shared with your account.
    #
    #   For example, specifying `^.*Created for policy:
    #   policy-1234567890abcdef0.*$` configures the policy to run only if
    #   snapshots created by policy `policy-1234567890abcdef0` are shared
    #   with your account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/EventParameters AWS API Documentation
    #
    class EventParameters < Struct.new(
      :event_type,
      :snapshot_owner,
      :description_regex)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies an event that triggers an event-based policy.
    #
    # @note When making an API call, you may pass EventSource
    #   data as a hash:
    #
    #       {
    #         type: "MANAGED_CWE", # required, accepts MANAGED_CWE
    #         parameters: {
    #           event_type: "shareSnapshot", # required, accepts shareSnapshot
    #           snapshot_owner: ["AwsAccountId"], # required
    #           description_regex: "DescriptionRegex", # required
    #         },
    #       }
    #
    # @!attribute [rw] type
    #   The source of the event. Currently only managed CloudWatch Events
    #   rules are supported.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   Information about the event.
    #   @return [Types::EventParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/EventSource AWS API Documentation
    #
    class EventSource < Struct.new(
      :type,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   These user-defined tags are added in addition to the Amazon Web
    #   Services-added lifecycle tags.
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
    # @!attribute [rw] policy_type
    #   The type of policy. `EBS_SNAPSHOT_MANAGEMENT` indicates that the
    #   policy manages the lifecycle of Amazon EBS snapshots.
    #   `IMAGE_MANAGEMENT` indicates that the policy manages the lifecycle
    #   of EBS-backed AMIs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/LifecyclePolicySummary AWS API Documentation
    #
    class LifecyclePolicySummary < Struct.new(
      :policy_id,
      :description,
      :state,
      :tags,
      :policy_type)
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
    #         no_reboot: false,
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
    # @!attribute [rw] no_reboot
    #   Applies to AMI lifecycle policies only. Indicates whether targeted
    #   instances are rebooted when the lifecycle policy runs. `true`
    #   indicates that targeted instances are not rebooted when the policy
    #   runs. `false` indicates that target instances are rebooted when the
    #   policy runs. The default is `true` (instances are not rebooted).
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/Parameters AWS API Documentation
    #
    class Parameters < Struct.new(
      :exclude_boot_volume,
      :no_reboot)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the configuration of a lifecycle policy.
    #
    # @note When making an API call, you may pass PolicyDetails
    #   data as a hash:
    #
    #       {
    #         policy_type: "EBS_SNAPSHOT_MANAGEMENT", # accepts EBS_SNAPSHOT_MANAGEMENT, IMAGE_MANAGEMENT, EVENT_BASED_POLICY
    #         resource_types: ["VOLUME"], # accepts VOLUME, INSTANCE
    #         resource_locations: ["CLOUD"], # accepts CLOUD, OUTPOST
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
    #               location: "CLOUD", # accepts CLOUD, OUTPOST_LOCAL
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
    #                 target_region: "TargetRegion",
    #                 target: "Target",
    #                 encrypted: false, # required
    #                 cmk_arn: "CmkArn",
    #                 copy_tags: false,
    #                 retain_rule: {
    #                   interval: 1,
    #                   interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #                 },
    #                 deprecate_rule: {
    #                   interval: 1,
    #                   interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #                 },
    #               },
    #             ],
    #             share_rules: [
    #               {
    #                 target_accounts: ["AwsAccountId"], # required
    #                 unshare_interval: 1,
    #                 unshare_interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #               },
    #             ],
    #             deprecate_rule: {
    #               count: 1,
    #               interval: 1,
    #               interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #             },
    #           },
    #         ],
    #         parameters: {
    #           exclude_boot_volume: false,
    #           no_reboot: false,
    #         },
    #         event_source: {
    #           type: "MANAGED_CWE", # required, accepts MANAGED_CWE
    #           parameters: {
    #             event_type: "shareSnapshot", # required, accepts shareSnapshot
    #             snapshot_owner: ["AwsAccountId"], # required
    #             description_regex: "DescriptionRegex", # required
    #           },
    #         },
    #         actions: [
    #           {
    #             name: "ActionName", # required
    #             cross_region_copy: [ # required
    #               {
    #                 target: "Target", # required
    #                 encryption_configuration: { # required
    #                   encrypted: false, # required
    #                   cmk_arn: "CmkArn",
    #                 },
    #                 retain_rule: {
    #                   interval: 1,
    #                   interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #                 },
    #               },
    #             ],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] policy_type
    #   The valid target resource types and actions a policy can manage.
    #   Specify `EBS_SNAPSHOT_MANAGEMENT` to create a lifecycle policy that
    #   manages the lifecycle of Amazon EBS snapshots. Specify
    #   `IMAGE_MANAGEMENT` to create a lifecycle policy that manages the
    #   lifecycle of EBS-backed AMIs. Specify `EVENT_BASED_POLICY ` to
    #   create an event-based policy that performs specific actions when a
    #   defined event occurs in your Amazon Web Services account.
    #
    #   The default is `EBS_SNAPSHOT_MANAGEMENT`.
    #   @return [String]
    #
    # @!attribute [rw] resource_types
    #   The target resource type for snapshot and AMI lifecycle policies.
    #   Use `VOLUME `to create snapshots of individual volumes or use
    #   `INSTANCE` to create multi-volume snapshots from the volumes for an
    #   instance.
    #
    #   This parameter is required for snapshot and AMI policies only. If
    #   you are creating an event-based policy, omit this parameter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_locations
    #   The location of the resources to backup. If the source resources are
    #   located in an Amazon Web Services Region, specify `CLOUD`. If the
    #   source resources are located on an Outpost in your account, specify
    #   `OUTPOST`.
    #
    #   If you specify `OUTPOST`, Amazon Data Lifecycle Manager backs up all
    #   resources of the specified type with matching target tags across all
    #   of the Outposts in your account.
    #   @return [Array<String>]
    #
    # @!attribute [rw] target_tags
    #   The single tag that identifies targeted resources for this policy.
    #
    #   This parameter is required for snapshot and AMI policies only. If
    #   you are creating an event-based policy, omit this parameter.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] schedules
    #   The schedules of policy-defined actions for snapshot and AMI
    #   lifecycle policies. A policy can have up to four schedules—one
    #   mandatory schedule and up to three optional schedules.
    #
    #   This parameter is required for snapshot and AMI policies only. If
    #   you are creating an event-based policy, omit this parameter.
    #   @return [Array<Types::Schedule>]
    #
    # @!attribute [rw] parameters
    #   A set of optional parameters for snapshot and AMI lifecycle
    #   policies.
    #
    #   This parameter is required for snapshot and AMI policies only. If
    #   you are creating an event-based policy, omit this parameter.
    #   @return [Types::Parameters]
    #
    # @!attribute [rw] event_source
    #   The event that triggers the event-based policy.
    #
    #   This parameter is required for event-based policies only. If you are
    #   creating a snapshot or AMI policy, omit this parameter.
    #   @return [Types::EventSource]
    #
    # @!attribute [rw] actions
    #   The actions to be performed when the event-based policy is
    #   triggered. You can specify only one action per policy.
    #
    #   This parameter is required for event-based policies only. If you are
    #   creating a snapshot or AMI policy, omit this parameter.
    #   @return [Array<Types::Action>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/PolicyDetails AWS API Documentation
    #
    class PolicyDetails < Struct.new(
      :policy_type,
      :resource_types,
      :resource_locations,
      :target_tags,
      :schedules,
      :parameters,
      :event_source,
      :actions)
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

    # Specifies a backup schedule for a snapshot or AMI lifecycle policy.
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
    #           location: "CLOUD", # accepts CLOUD, OUTPOST_LOCAL
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
    #             target_region: "TargetRegion",
    #             target: "Target",
    #             encrypted: false, # required
    #             cmk_arn: "CmkArn",
    #             copy_tags: false,
    #             retain_rule: {
    #               interval: 1,
    #               interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #             },
    #             deprecate_rule: {
    #               interval: 1,
    #               interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #             },
    #           },
    #         ],
    #         share_rules: [
    #           {
    #             target_accounts: ["AwsAccountId"], # required
    #             unshare_interval: 1,
    #             unshare_interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #           },
    #         ],
    #         deprecate_rule: {
    #           count: 1,
    #           interval: 1,
    #           interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #         },
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
    #   tags are in addition to the Amazon Web Services-added lifecycle
    #   tags.
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
    #
    #   You can only specify cross-Region copy rules for policies that
    #   create snapshots in a Region. If the policy creates snapshots on an
    #   Outpost, then you cannot copy the snapshots to a Region or to an
    #   Outpost. If the policy creates snapshots in a Region, then snapshots
    #   can be copied to up to three Regions or Outposts.
    #   @return [Array<Types::CrossRegionCopyRule>]
    #
    # @!attribute [rw] share_rules
    #   The rule for sharing snapshots with other Amazon Web Services
    #   accounts.
    #   @return [Array<Types::ShareRule>]
    #
    # @!attribute [rw] deprecate_rule
    #   The AMI deprecation rule for the schedule.
    #   @return [Types::DeprecateRule]
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
      :cross_region_copy_rules,
      :share_rules,
      :deprecate_rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a rule for sharing snapshots across Amazon Web Services
    # accounts.
    #
    # @note When making an API call, you may pass ShareRule
    #   data as a hash:
    #
    #       {
    #         target_accounts: ["AwsAccountId"], # required
    #         unshare_interval: 1,
    #         unshare_interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #       }
    #
    # @!attribute [rw] target_accounts
    #   The IDs of the Amazon Web Services accounts with which to share the
    #   snapshots.
    #   @return [Array<String>]
    #
    # @!attribute [rw] unshare_interval
    #   The period after which snapshots that are shared with other Amazon
    #   Web Services accounts are automatically unshared.
    #   @return [Integer]
    #
    # @!attribute [rw] unshare_interval_unit
    #   The unit of time for the automatic unsharing interval.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/ShareRule AWS API Documentation
    #
    class ShareRule < Struct.new(
      :target_accounts,
      :unshare_interval,
      :unshare_interval_unit)
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
    #           policy_type: "EBS_SNAPSHOT_MANAGEMENT", # accepts EBS_SNAPSHOT_MANAGEMENT, IMAGE_MANAGEMENT, EVENT_BASED_POLICY
    #           resource_types: ["VOLUME"], # accepts VOLUME, INSTANCE
    #           resource_locations: ["CLOUD"], # accepts CLOUD, OUTPOST
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
    #                 location: "CLOUD", # accepts CLOUD, OUTPOST_LOCAL
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
    #                   target_region: "TargetRegion",
    #                   target: "Target",
    #                   encrypted: false, # required
    #                   cmk_arn: "CmkArn",
    #                   copy_tags: false,
    #                   retain_rule: {
    #                     interval: 1,
    #                     interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #                   },
    #                   deprecate_rule: {
    #                     interval: 1,
    #                     interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #                   },
    #                 },
    #               ],
    #               share_rules: [
    #                 {
    #                   target_accounts: ["AwsAccountId"], # required
    #                   unshare_interval: 1,
    #                   unshare_interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #                 },
    #               ],
    #               deprecate_rule: {
    #                 count: 1,
    #                 interval: 1,
    #                 interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #               },
    #             },
    #           ],
    #           parameters: {
    #             exclude_boot_volume: false,
    #             no_reboot: false,
    #           },
    #           event_source: {
    #             type: "MANAGED_CWE", # required, accepts MANAGED_CWE
    #             parameters: {
    #               event_type: "shareSnapshot", # required, accepts shareSnapshot
    #               snapshot_owner: ["AwsAccountId"], # required
    #               description_regex: "DescriptionRegex", # required
    #             },
    #           },
    #           actions: [
    #             {
    #               name: "ActionName", # required
    #               cross_region_copy: [ # required
    #                 {
    #                   target: "Target", # required
    #                   encryption_configuration: { # required
    #                     encrypted: false, # required
    #                     cmk_arn: "CmkArn",
    #                   },
    #                   retain_rule: {
    #                     interval: 1,
    #                     interval_unit: "DAYS", # accepts DAYS, WEEKS, MONTHS, YEARS
    #                   },
    #                 },
    #               ],
    #             },
    #           ],
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
