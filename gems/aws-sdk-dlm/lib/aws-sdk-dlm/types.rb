# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DLM
  module Types

    # **\[Event-based policies only\]** Specifies an action for an
    # event-based policy.
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

    # **\[Snapshot policies only\]** Specifies information about the archive
    # storage tier retention period.
    #
    # @!attribute [rw] retention_archive_tier
    #   Information about retention period in the Amazon EBS Snapshots
    #   Archive. For more information, see [Archive Amazon EBS
    #   snapshots][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/snapshot-archive.html
    #   @return [Types::RetentionArchiveTier]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/ArchiveRetainRule AWS API Documentation
    #
    class ArchiveRetainRule < Struct.new(
      :retention_archive_tier)
      SENSITIVE = []
      include Aws::Structure
    end

    # **\[Snapshot policies only\]** Specifies a snapshot archiving rule for
    # a schedule.
    #
    # @!attribute [rw] retain_rule
    #   Information about the retention period for the snapshot archiving
    #   rule.
    #   @return [Types::ArchiveRetainRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/ArchiveRule AWS API Documentation
    #
    class ArchiveRule < Struct.new(
      :retain_rule)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # **\[Snapshot and AMI policies only\]** Specifies when the policy
    # should create snapshots or AMIs.
    #
    # <note markdown="1"> * You must specify either **CronExpression**, or **Interval**,
    #   **IntervalUnit**, and **Times**.
    #
    # * If you need to specify an ArchiveRule for the schedule, then you
    #   must specify a creation frequency of at least 28 days.
    #
    #  </note>
    #
    # @!attribute [rw] location
    #   **\[Snapshot policies only\]** Specifies the destination for
    #   snapshots created by the policy. To create snapshots in the same
    #   Region as the source resource, specify `CLOUD`. To create snapshots
    #   on the same Outpost as the source resource, specify `OUTPOST_LOCAL`.
    #   If you omit this parameter, `CLOUD` is used by default.
    #
    #   If the policy targets resources in an Amazon Web Services Region,
    #   then you must create snapshots in the same Region as the source
    #   resource. If the policy targets resources on an Outpost, then you
    #   can create snapshots on the same Outpost as the source resource, or
    #   in the Region of that Outpost.
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
    #   specified time. If you do not specify a time, Amazon Data Lifecycle
    #   Manager selects a time within the next 24 hours.
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

    # **\[Event-based policies only\]** Specifies a cross-Region copy action
    # for event-based policies.
    #
    # <note markdown="1"> To specify a cross-Region copy rule for snapshot and AMI policies, use
    # CrossRegionCopyRule.
    #
    #  </note>
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
    #   Specifies a retention rule for cross-Region snapshot copies created
    #   by snapshot or event-based policies, or cross-Region AMI copies
    #   created by AMI policies. After the retention period expires, the
    #   cross-Region copy is deleted.
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

    # **\[AMI policies only\]** Specifies an AMI deprecation rule for
    # cross-Region AMI copies created by an AMI policy.
    #
    # @!attribute [rw] interval
    #   The period after which to deprecate the cross-Region AMI copies. The
    #   period must be less than or equal to the cross-Region AMI copy
    #   retention period, and it can't be greater than 10 years. This is
    #   equivalent to 120 months, 520 weeks, or 3650 days.
    #   @return [Integer]
    #
    # @!attribute [rw] interval_unit
    #   The unit of time in which to measure the **Interval**. For example,
    #   to deprecate a cross-Region AMI copy after 3 months, specify
    #   `Interval=3` and `IntervalUnit=MONTHS`.
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

    # Specifies a retention rule for cross-Region snapshot copies created by
    # snapshot or event-based policies, or cross-Region AMI copies created
    # by AMI policies. After the retention period expires, the cross-Region
    # copy is deleted.
    #
    # @!attribute [rw] interval
    #   The amount of time to retain a cross-Region snapshot or AMI copy.
    #   The maximum is 100 years. This is equivalent to 1200 months, 5200
    #   weeks, or 36500 days.
    #   @return [Integer]
    #
    # @!attribute [rw] interval_unit
    #   The unit of time for time-based retention. For example, to retain a
    #   cross-Region copy for 3 months, specify `Interval=3` and
    #   `IntervalUnit=MONTHS`.
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

    # **\[Snapshot and AMI policies only\]** Specifies a cross-Region copy
    # rule for snapshot and AMI policies.
    #
    # <note markdown="1"> To specify a cross-Region copy action for event-based polices, use
    # CrossRegionCopyAction.
    #
    #  </note>
    #
    # @!attribute [rw] target_region
    #   <note markdown="1"> Avoid using this parameter when creating new policies. Instead, use
    #   **Target** to specify a target Region or a target Outpost for
    #   snapshot copies.
    #
    #    For policies created before the **Target** parameter was introduced,
    #   this parameter indicates the target Region for snapshot copies.
    #
    #    </note>
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
    #   snapshot or AMI to the cross-Region copy.
    #   @return [Boolean]
    #
    # @!attribute [rw] retain_rule
    #   The retention rule that indicates how long the cross-Region snapshot
    #   or AMI copies are to be retained in the destination Region.
    #   @return [Types::CrossRegionCopyRetainRule]
    #
    # @!attribute [rw] deprecate_rule
    #   **\[AMI policies only\]** The AMI deprecation rule for cross-Region
    #   AMI copies created by the rule.
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

    # **\[AMI policies only\]** Specifies an AMI deprecation rule for AMIs
    # created by an AMI lifecycle policy.
    #
    # For age-based schedules, you must specify **Interval** and
    # **IntervalUnit**. For count-based schedules, you must specify
    # **Count**.
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

    # **\[Event-based policies only\]** Specifies the encryption settings
    # for cross-Region snapshot copies created by event-based policies.
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

    # **\[Event-based policies only\]** Specifies an event that activates an
    # event-based policy.
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

    # **\[Event-based policies only\]** Specifies an event that activates an
    # event-based policy.
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

    # **\[Snapshot policies only\]** Specifies a rule for enabling fast
    # snapshot restore for snapshots created by snapshot policies. You can
    # enable fast snapshot restore based on either a count or a time
    # interval.
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

    # **\[All policy types\]** Detailed information about a snapshot, AMI,
    # or event-based lifecycle policy.
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
    #   of EBS-backed AMIs. `EVENT_BASED_POLICY` indicates that the policy
    #   automates cross-account snapshot copies for snapshots that are
    #   shared with your account.
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

    # **\[Snapshot and AMI policies only\]** Specifies optional parameters
    # for snapshot and AMI policies. The set of valid parameters depends on
    # the combination of policy type and target resource type.
    #
    # If you choose to exclude boot volumes and you specify tags that
    # consequently exclude all of the additional data volumes attached to an
    # instance, then Amazon Data Lifecycle Manager will not create any
    # snapshots for the affected instance, and it will emit a
    # `SnapshotsCreateFailed` Amazon CloudWatch metric. For more
    # information, see [Monitor your policies using Amazon CloudWatch][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitor-dlm-cw-metrics.html
    #
    # @!attribute [rw] exclude_boot_volume
    #   **\[Snapshot policies that target instances only\]** Indicates
    #   whether to exclude the root volume from multi-volume snapshot sets.
    #   The default is `false`. If you specify `true`, then the root volumes
    #   attached to targeted instances will be excluded from the
    #   multi-volume snapshot sets created by the policy.
    #   @return [Boolean]
    #
    # @!attribute [rw] no_reboot
    #   **\[AMI policies only\]** Indicates whether targeted instances are
    #   rebooted when the lifecycle policy runs. `true` indicates that
    #   targeted instances are not rebooted when the policy runs. `false`
    #   indicates that target instances are rebooted when the policy runs.
    #   The default is `true` (instances are not rebooted).
    #   @return [Boolean]
    #
    # @!attribute [rw] exclude_data_volume_tags
    #   **\[Snapshot policies that target instances only\]** The tags used
    #   to identify data (non-root) volumes to exclude from multi-volume
    #   snapshot sets.
    #
    #   If you create a snapshot lifecycle policy that targets instances and
    #   you specify tags for this parameter, then data volumes with the
    #   specified tags that are attached to targeted instances will be
    #   excluded from the multi-volume snapshot sets created by the policy.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/Parameters AWS API Documentation
    #
    class Parameters < Struct.new(
      :exclude_boot_volume,
      :no_reboot,
      :exclude_data_volume_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # **\[All policy types\]** Specifies the configuration of a lifecycle
    # policy.
    #
    # @!attribute [rw] policy_type
    #   **\[All policy types\]** The valid target resource types and actions
    #   a policy can manage. Specify `EBS_SNAPSHOT_MANAGEMENT` to create a
    #   lifecycle policy that manages the lifecycle of Amazon EBS snapshots.
    #   Specify `IMAGE_MANAGEMENT` to create a lifecycle policy that manages
    #   the lifecycle of EBS-backed AMIs. Specify `EVENT_BASED_POLICY ` to
    #   create an event-based policy that performs specific actions when a
    #   defined event occurs in your Amazon Web Services account.
    #
    #   The default is `EBS_SNAPSHOT_MANAGEMENT`.
    #   @return [String]
    #
    # @!attribute [rw] resource_types
    #   **\[Snapshot policies only\]** The target resource type for snapshot
    #   and AMI lifecycle policies. Use `VOLUME `to create snapshots of
    #   individual volumes or use `INSTANCE` to create multi-volume
    #   snapshots from the volumes for an instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_locations
    #   **\[Snapshot and AMI policies only\]** The location of the resources
    #   to backup. If the source resources are located in an Amazon Web
    #   Services Region, specify `CLOUD`. If the source resources are
    #   located on an Outpost in your account, specify `OUTPOST`.
    #
    #   If you specify `OUTPOST`, Amazon Data Lifecycle Manager backs up all
    #   resources of the specified type with matching target tags across all
    #   of the Outposts in your account.
    #   @return [Array<String>]
    #
    # @!attribute [rw] target_tags
    #   **\[Snapshot and AMI policies only\]** The single tag that
    #   identifies targeted resources for this policy.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] schedules
    #   **\[Snapshot and AMI policies only\]** The schedules of
    #   policy-defined actions for snapshot and AMI lifecycle policies. A
    #   policy can have up to four schedules—one mandatory schedule and up
    #   to three optional schedules.
    #   @return [Array<Types::Schedule>]
    #
    # @!attribute [rw] parameters
    #   **\[Snapshot and AMI policies only\]** A set of optional parameters
    #   for snapshot and AMI lifecycle policies.
    #
    #   <note markdown="1"> If you are modifying a policy that was created or previously
    #   modified using the Amazon Data Lifecycle Manager console, then you
    #   must include this parameter and specify either the default values or
    #   the new values that you require. You can't omit this parameter or
    #   set its values to null.
    #
    #    </note>
    #   @return [Types::Parameters]
    #
    # @!attribute [rw] event_source
    #   **\[Event-based policies only\]** The event that activates the
    #   event-based policy.
    #   @return [Types::EventSource]
    #
    # @!attribute [rw] actions
    #   **\[Event-based policies only\]** The actions to be performed when
    #   the event-based policy is activated. You can specify only one action
    #   per policy.
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

    # **\[Snapshot and AMI policies only\]** Specifies a retention rule for
    # snapshots created by snapshot policies, or for AMIs created by AMI
    # policies.
    #
    # <note markdown="1"> For snapshot policies that have an ArchiveRule, this retention rule
    # applies to standard tier retention. When the retention threshold is
    # met, snapshots are moved from the standard to the archive tier.
    #
    #  For snapshot policies that do not have an **ArchiveRule**, snapshots
    # are permanently deleted when this retention threshold is met.
    #
    #  </note>
    #
    # You can retain snapshots based on either a count or a time interval.
    #
    # * **Count-based retention**
    #
    #   You must specify **Count**. If you specify an ArchiveRule for the
    #   schedule, then you can specify a retention count of `0` to archive
    #   snapshots immediately after creation. If you specify a
    #   FastRestoreRule, ShareRule, or a CrossRegionCopyRule, then you must
    #   specify a retention count of `1` or more.
    #
    # * **Age-based retention**
    #
    #   You must specify **Interval** and **IntervalUnit**. If you specify
    #   an ArchiveRule for the schedule, then you can specify a retention
    #   interval of `0` days to archive snapshots immediately after
    #   creation. If you specify a FastRestoreRule, ShareRule, or a
    #   CrossRegionCopyRule, then you must specify a retention interval of
    #   `1` day or more.
    #
    # @!attribute [rw] count
    #   The number of snapshots to retain for each volume, up to a maximum
    #   of 1000. For example if you want to retain a maximum of three
    #   snapshots, specify `3`. When the fourth snapshot is created, the
    #   oldest retained snapshot is deleted, or it is moved to the archive
    #   tier if you have specified an ArchiveRule.
    #   @return [Integer]
    #
    # @!attribute [rw] interval
    #   The amount of time to retain each snapshot. The maximum is 100
    #   years. This is equivalent to 1200 months, 5200 weeks, or 36500 days.
    #   @return [Integer]
    #
    # @!attribute [rw] interval_unit
    #   The unit of time for time-based retention. For example, to retain
    #   snapshots for 3 months, specify `Interval=3` and
    #   `IntervalUnit=MONTHS`. Once the snapshot has been retained for 3
    #   months, it is deleted, or it is moved to the archive tier if you
    #   have specified an ArchiveRule.
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

    # **\[Snapshot policies only\]** Describes the retention rule for
    # archived snapshots. Once the archive retention threshold is met, the
    # snapshots are permanently deleted from the archive tier.
    #
    # <note markdown="1"> The archive retention rule must retain snapshots in the archive tier
    # for a minimum of 90 days.
    #
    #  </note>
    #
    # For **count-based schedules**, you must specify **Count**. For
    # **age-based schedules**, you must specify **Interval** and <b>
    # IntervalUnit</b>.
    #
    # For more information about using snapshot archiving, see
    # [Considerations for snapshot lifecycle policies][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshot-ami-policy.html#dlm-archive
    #
    # @!attribute [rw] count
    #   The maximum number of snapshots to retain in the archive storage
    #   tier for each volume. The count must ensure that each snapshot
    #   remains in the archive tier for at least 90 days. For example, if
    #   the schedule creates snapshots every 30 days, you must specify a
    #   count of 3 or more to ensure that each snapshot is archived for at
    #   least 90 days.
    #   @return [Integer]
    #
    # @!attribute [rw] interval
    #   Specifies the period of time to retain snapshots in the archive
    #   tier. After this period expires, the snapshot is permanently
    #   deleted.
    #   @return [Integer]
    #
    # @!attribute [rw] interval_unit
    #   The unit of time in which to measure the **Interval**. For example,
    #   to retain a snapshots in the archive tier for 6 months, specify
    #   `Interval=6` and `IntervalUnit=MONTHS`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/RetentionArchiveTier AWS API Documentation
    #
    class RetentionArchiveTier < Struct.new(
      :count,
      :interval,
      :interval_unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # **\[Snapshot and AMI policies only\]** Specifies a schedule for a
    # snapshot or AMI lifecycle policy.
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
    #   **\[AMI policies and snapshot policies that target instances
    #   only\]** A collection of key/value pairs with values determined
    #   dynamically when the policy is executed. Keys may be any valid
    #   Amazon EC2 tag key. Values must be in one of the two following
    #   formats: `$(instance-id)` or `$(timestamp)`. Variable tags are only
    #   valid for EBS Snapshot Management – Instance policies.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] create_rule
    #   The creation rule.
    #   @return [Types::CreateRule]
    #
    # @!attribute [rw] retain_rule
    #   The retention rule for snapshots or AMIs created by the policy.
    #   @return [Types::RetainRule]
    #
    # @!attribute [rw] fast_restore_rule
    #   **\[Snapshot policies only\]** The rule for enabling fast snapshot
    #   restore.
    #   @return [Types::FastRestoreRule]
    #
    # @!attribute [rw] cross_region_copy_rules
    #   Specifies a rule for copying snapshots or AMIs across regions.
    #
    #   <note markdown="1"> You can't specify cross-Region copy rules for policies that create
    #   snapshots on an Outpost. If the policy creates snapshots in a
    #   Region, then snapshots can be copied to up to three Regions or
    #   Outposts.
    #
    #    </note>
    #   @return [Array<Types::CrossRegionCopyRule>]
    #
    # @!attribute [rw] share_rules
    #   **\[Snapshot policies only\]** The rule for sharing snapshots with
    #   other Amazon Web Services accounts.
    #   @return [Array<Types::ShareRule>]
    #
    # @!attribute [rw] deprecate_rule
    #   **\[AMI policies only\]** The AMI deprecation rule for the schedule.
    #   @return [Types::DeprecateRule]
    #
    # @!attribute [rw] archive_rule
    #   **\[Snapshot policies that target volumes only\]** The snapshot
    #   archiving rule for the schedule. When you specify an archiving rule,
    #   snapshots are automatically moved from the standard tier to the
    #   archive tier once the schedule's retention threshold is met.
    #   Snapshots are then retained in the archive tier for the archive
    #   retention period that you specify.
    #
    #   For more information about using snapshot archiving, see
    #   [Considerations for snapshot lifecycle policies][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshot-ami-policy.html#dlm-archive
    #   @return [Types::ArchiveRule]
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
      :deprecate_rule,
      :archive_rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # **\[Snapshot policies only\]** Specifies a rule for sharing snapshots
    # across Amazon Web Services accounts.
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
