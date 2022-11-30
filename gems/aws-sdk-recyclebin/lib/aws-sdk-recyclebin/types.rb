# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RecycleBin
  module Types

    # The specified retention rule lock request can't be completed.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rbin-2021-06-15/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] retention_period
    #   Information about the retention period for which the retention rule
    #   is to retain resources.
    #   @return [Types::RetentionPeriod]
    #
    # @!attribute [rw] description
    #   The retention rule description.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Information about the tags to assign to the retention rule.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] resource_type
    #   The resource type to be retained by the retention rule. Currently,
    #   only Amazon EBS snapshots and EBS-backed AMIs are supported. To
    #   retain snapshots, specify `EBS_SNAPSHOT`. To retain EBS-backed AMIs,
    #   specify `EC2_IMAGE`.
    #   @return [String]
    #
    # @!attribute [rw] resource_tags
    #   Specifies the resource tags to use to identify resources that are to
    #   be retained by a tag-level retention rule. For tag-level retention
    #   rules, only deleted resources, of the specified resource type, that
    #   have one or more of the specified tag key and value pairs are
    #   retained. If a resource is deleted, but it does not have any of the
    #   specified tag key and value pairs, it is immediately deleted without
    #   being retained by the retention rule.
    #
    #   You can add the same tag key and value pair to a maximum or five
    #   retention rules.
    #
    #   To create a Region-level retention rule, omit this parameter. A
    #   Region-level retention rule does not have any resource tags
    #   specified. It retains all deleted resources of the specified
    #   resource type in the Region in which the rule is created, even if
    #   the resources are not tagged.
    #   @return [Array<Types::ResourceTag>]
    #
    # @!attribute [rw] lock_configuration
    #   Information about the retention rule lock configuration.
    #   @return [Types::LockConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rbin-2021-06-15/CreateRuleRequest AWS API Documentation
    #
    class CreateRuleRequest < Struct.new(
      :retention_period,
      :description,
      :tags,
      :resource_type,
      :resource_tags,
      :lock_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The unique ID of the retention rule.
    #   @return [String]
    #
    # @!attribute [rw] retention_period
    #   Information about the retention period for which the retention rule
    #   is to retain resources.
    #   @return [Types::RetentionPeriod]
    #
    # @!attribute [rw] description
    #   The retention rule description.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Information about the tags assigned to the retention rule.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] resource_type
    #   The resource type retained by the retention rule.
    #   @return [String]
    #
    # @!attribute [rw] resource_tags
    #   Information about the resource tags used to identify resources that
    #   are retained by the retention rule.
    #   @return [Array<Types::ResourceTag>]
    #
    # @!attribute [rw] status
    #   The state of the retention rule. Only retention rules that are in
    #   the `available` state retain resources.
    #   @return [String]
    #
    # @!attribute [rw] lock_configuration
    #   Information about the retention rule lock configuration.
    #   @return [Types::LockConfiguration]
    #
    # @!attribute [rw] lock_state
    #   The lock state for the retention rule.
    #
    #   * `locked` - The retention rule is locked and can't be modified or
    #     deleted.
    #
    #   * `pending_unlock` - The retention rule has been unlocked but it is
    #     still within the unlock delay period. The retention rule can be
    #     modified or deleted only after the unlock delay period has
    #     expired.
    #
    #   * `unlocked` - The retention rule is unlocked and it can be modified
    #     or deleted by any user with the required permissions.
    #
    #   * `null` - The retention rule has never been locked. Once a
    #     retention rule has been locked, it can transition between the
    #     `locked` and `unlocked` states only; it can never transition back
    #     to `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rbin-2021-06-15/CreateRuleResponse AWS API Documentation
    #
    class CreateRuleResponse < Struct.new(
      :identifier,
      :retention_period,
      :description,
      :tags,
      :resource_type,
      :resource_tags,
      :status,
      :lock_configuration,
      :lock_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The unique ID of the retention rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rbin-2021-06-15/DeleteRuleRequest AWS API Documentation
    #
    class DeleteRuleRequest < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/rbin-2021-06-15/DeleteRuleResponse AWS API Documentation
    #
    class DeleteRuleResponse < Aws::EmptyStructure; end

    # @!attribute [rw] identifier
    #   The unique ID of the retention rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rbin-2021-06-15/GetRuleRequest AWS API Documentation
    #
    class GetRuleRequest < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The unique ID of the retention rule.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The retention rule description.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type retained by the retention rule.
    #   @return [String]
    #
    # @!attribute [rw] retention_period
    #   Information about the retention period for which the retention rule
    #   is to retain resources.
    #   @return [Types::RetentionPeriod]
    #
    # @!attribute [rw] resource_tags
    #   Information about the resource tags used to identify resources that
    #   are retained by the retention rule.
    #   @return [Array<Types::ResourceTag>]
    #
    # @!attribute [rw] status
    #   The state of the retention rule. Only retention rules that are in
    #   the `available` state retain resources.
    #   @return [String]
    #
    # @!attribute [rw] lock_configuration
    #   Information about the retention rule lock configuration.
    #   @return [Types::LockConfiguration]
    #
    # @!attribute [rw] lock_state
    #   The lock state for the retention rule.
    #
    #   * `locked` - The retention rule is locked and can't be modified or
    #     deleted.
    #
    #   * `pending_unlock` - The retention rule has been unlocked but it is
    #     still within the unlock delay period. The retention rule can be
    #     modified or deleted only after the unlock delay period has
    #     expired.
    #
    #   * `unlocked` - The retention rule is unlocked and it can be modified
    #     or deleted by any user with the required permissions.
    #
    #   * `null` - The retention rule has never been locked. Once a
    #     retention rule has been locked, it can transition between the
    #     `locked` and `unlocked` states only; it can never transition back
    #     to `null`.
    #   @return [String]
    #
    # @!attribute [rw] lock_end_time
    #   The date and time at which the unlock delay is set to expire. Only
    #   returned for retention rules that have been unlocked and that are
    #   still within the unlock delay period.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rbin-2021-06-15/GetRuleResponse AWS API Documentation
    #
    class GetRuleResponse < Struct.new(
      :identifier,
      :description,
      :resource_type,
      :retention_period,
      :resource_tags,
      :status,
      :lock_configuration,
      :lock_state,
      :lock_end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service could not respond to the request due to an internal
    # problem.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rbin-2021-06-15/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `NextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type retained by the retention rule. Only retention
    #   rules that retain the specified resource type are listed. Currently,
    #   only Amazon EBS snapshots and EBS-backed AMIs are supported. To list
    #   retention rules that retain snapshots, specify `EBS_SNAPSHOT`. To
    #   list retention rules that retain EBS-backed AMIs, specify
    #   `EC2_IMAGE`.
    #   @return [String]
    #
    # @!attribute [rw] resource_tags
    #   Information about the resource tags used to identify resources that
    #   are retained by the retention rule.
    #   @return [Array<Types::ResourceTag>]
    #
    # @!attribute [rw] lock_state
    #   The lock state of the retention rules to list. Only retention rules
    #   with the specified lock state are returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rbin-2021-06-15/ListRulesRequest AWS API Documentation
    #
    class ListRulesRequest < Struct.new(
      :max_results,
      :next_token,
      :resource_type,
      :resource_tags,
      :lock_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rules
    #   Information about the retention rules.
    #   @return [Array<Types::RuleSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rbin-2021-06-15/ListRulesResponse AWS API Documentation
    #
    class ListRulesResponse < Struct.new(
      :rules,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the retention rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rbin-2021-06-15/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   Information about the tags assigned to the retention rule.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rbin-2021-06-15/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a retention rule lock configuration.
    #
    # @!attribute [rw] unlock_delay
    #   Information about the retention rule unlock delay.
    #   @return [Types::UnlockDelay]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rbin-2021-06-15/LockConfiguration AWS API Documentation
    #
    class LockConfiguration < Struct.new(
      :unlock_delay)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The unique ID of the retention rule.
    #   @return [String]
    #
    # @!attribute [rw] lock_configuration
    #   Information about the retention rule lock configuration.
    #   @return [Types::LockConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rbin-2021-06-15/LockRuleRequest AWS API Documentation
    #
    class LockRuleRequest < Struct.new(
      :identifier,
      :lock_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The unique ID of the retention rule.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The retention rule description.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type retained by the retention rule.
    #   @return [String]
    #
    # @!attribute [rw] retention_period
    #   Information about the retention period for which the retention rule
    #   is to retain resources.
    #   @return [Types::RetentionPeriod]
    #
    # @!attribute [rw] resource_tags
    #   Information about the resource tags used to identify resources that
    #   are retained by the retention rule.
    #   @return [Array<Types::ResourceTag>]
    #
    # @!attribute [rw] status
    #   The state of the retention rule. Only retention rules that are in
    #   the `available` state retain resources.
    #   @return [String]
    #
    # @!attribute [rw] lock_configuration
    #   Information about the retention rule lock configuration.
    #   @return [Types::LockConfiguration]
    #
    # @!attribute [rw] lock_state
    #   The lock state for the retention rule.
    #
    #   * `locked` - The retention rule is locked and can't be modified or
    #     deleted.
    #
    #   * `pending_unlock` - The retention rule has been unlocked but it is
    #     still within the unlock delay period. The retention rule can be
    #     modified or deleted only after the unlock delay period has
    #     expired.
    #
    #   * `unlocked` - The retention rule is unlocked and it can be modified
    #     or deleted by any user with the required permissions.
    #
    #   * `null` - The retention rule has never been locked. Once a
    #     retention rule has been locked, it can transition between the
    #     `locked` and `unlocked` states only; it can never transition back
    #     to `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rbin-2021-06-15/LockRuleResponse AWS API Documentation
    #
    class LockRuleResponse < Struct.new(
      :identifier,
      :description,
      :resource_type,
      :retention_period,
      :resource_tags,
      :status,
      :lock_configuration,
      :lock_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rbin-2021-06-15/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the resource tags used to identify resources that
    # are retained by the retention rule.
    #
    # @!attribute [rw] resource_tag_key
    #   The tag key.
    #   @return [String]
    #
    # @!attribute [rw] resource_tag_value
    #   The tag value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rbin-2021-06-15/ResourceTag AWS API Documentation
    #
    class ResourceTag < Struct.new(
      :resource_tag_key,
      :resource_tag_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the retention period for which the retention rule is
    # to retain resources.
    #
    # @!attribute [rw] retention_period_value
    #   The period value for which the retention rule is to retain
    #   resources. The period is measured using the unit specified for
    #   **RetentionPeriodUnit**.
    #   @return [Integer]
    #
    # @!attribute [rw] retention_period_unit
    #   The unit of time in which the retention period is measured.
    #   Currently, only `DAYS` is supported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rbin-2021-06-15/RetentionPeriod AWS API Documentation
    #
    class RetentionPeriod < Struct.new(
      :retention_period_value,
      :retention_period_unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a Recycle Bin retention rule.
    #
    # @!attribute [rw] identifier
    #   The unique ID of the retention rule.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The retention rule description.
    #   @return [String]
    #
    # @!attribute [rw] retention_period
    #   Information about the retention period for which the retention rule
    #   is to retain resources.
    #   @return [Types::RetentionPeriod]
    #
    # @!attribute [rw] lock_state
    #   The lock state for the retention rule.
    #
    #   * `locked` - The retention rule is locked and can't be modified or
    #     deleted.
    #
    #   * `pending_unlock` - The retention rule has been unlocked but it is
    #     still within the unlock delay period. The retention rule can be
    #     modified or deleted only after the unlock delay period has
    #     expired.
    #
    #   * `unlocked` - The retention rule is unlocked and it can be modified
    #     or deleted by any user with the required permissions.
    #
    #   * `null` - The retention rule has never been locked. Once a
    #     retention rule has been locked, it can transition between the
    #     `locked` and `unlocked` states only; it can never transition back
    #     to `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rbin-2021-06-15/RuleSummary AWS API Documentation
    #
    class RuleSummary < Struct.new(
      :identifier,
      :description,
      :retention_period,
      :lock_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request would cause a service quota for the number of tags per
    # resource to be exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rbin-2021-06-15/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the tags to assign to the retention rule.
    #
    # @!attribute [rw] key
    #   The tag key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The tag value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rbin-2021-06-15/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the retention rule.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Information about the tags to assign to the retention rule.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rbin-2021-06-15/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/rbin-2021-06-15/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Information about the retention rule unlock delay. The unlock delay is
    # the period after which a retention rule can be modified or edited
    # after it has been unlocked by a user with the required permissions.
    # The retention rule can't be modified or deleted during the unlock
    # delay.
    #
    # @!attribute [rw] unlock_delay_value
    #   The unlock delay period, measured in the unit specified for <b>
    #   UnlockDelayUnit</b>.
    #   @return [Integer]
    #
    # @!attribute [rw] unlock_delay_unit
    #   The unit of time in which to measure the unlock delay. Currently,
    #   the unlock delay can be measure only in days.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rbin-2021-06-15/UnlockDelay AWS API Documentation
    #
    class UnlockDelay < Struct.new(
      :unlock_delay_value,
      :unlock_delay_unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The unique ID of the retention rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rbin-2021-06-15/UnlockRuleRequest AWS API Documentation
    #
    class UnlockRuleRequest < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The unique ID of the retention rule.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The retention rule description.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type retained by the retention rule.
    #   @return [String]
    #
    # @!attribute [rw] retention_period
    #   Information about the retention period for which the retention rule
    #   is to retain resources.
    #   @return [Types::RetentionPeriod]
    #
    # @!attribute [rw] resource_tags
    #   Information about the resource tags used to identify resources that
    #   are retained by the retention rule.
    #   @return [Array<Types::ResourceTag>]
    #
    # @!attribute [rw] status
    #   The state of the retention rule. Only retention rules that are in
    #   the `available` state retain resources.
    #   @return [String]
    #
    # @!attribute [rw] lock_configuration
    #   Information about the retention rule lock configuration.
    #   @return [Types::LockConfiguration]
    #
    # @!attribute [rw] lock_state
    #   The lock state for the retention rule.
    #
    #   * `locked` - The retention rule is locked and can't be modified or
    #     deleted.
    #
    #   * `pending_unlock` - The retention rule has been unlocked but it is
    #     still within the unlock delay period. The retention rule can be
    #     modified or deleted only after the unlock delay period has
    #     expired.
    #
    #   * `unlocked` - The retention rule is unlocked and it can be modified
    #     or deleted by any user with the required permissions.
    #
    #   * `null` - The retention rule has never been locked. Once a
    #     retention rule has been locked, it can transition between the
    #     `locked` and `unlocked` states only; it can never transition back
    #     to `null`.
    #   @return [String]
    #
    # @!attribute [rw] lock_end_time
    #   The date and time at which the unlock delay is set to expire. Only
    #   returned for retention rules that have been unlocked and that are
    #   still within the unlock delay period.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rbin-2021-06-15/UnlockRuleResponse AWS API Documentation
    #
    class UnlockRuleResponse < Struct.new(
      :identifier,
      :description,
      :resource_type,
      :retention_period,
      :resource_tags,
      :status,
      :lock_configuration,
      :lock_state,
      :lock_end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the retention rule.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys of the tags to unassign. All tags that have the
    #   specified tag key are unassigned.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rbin-2021-06-15/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/rbin-2021-06-15/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] identifier
    #   The unique ID of the retention rule.
    #   @return [String]
    #
    # @!attribute [rw] retention_period
    #   Information about the retention period for which the retention rule
    #   is to retain resources.
    #   @return [Types::RetentionPeriod]
    #
    # @!attribute [rw] description
    #   The retention rule description.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   <note markdown="1"> This parameter is currently not supported. You can't update a
    #   retention rule's resource type after creation.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] resource_tags
    #   Specifies the resource tags to use to identify resources that are to
    #   be retained by a tag-level retention rule. For tag-level retention
    #   rules, only deleted resources, of the specified resource type, that
    #   have one or more of the specified tag key and value pairs are
    #   retained. If a resource is deleted, but it does not have any of the
    #   specified tag key and value pairs, it is immediately deleted without
    #   being retained by the retention rule.
    #
    #   You can add the same tag key and value pair to a maximum or five
    #   retention rules.
    #
    #   To create a Region-level retention rule, omit this parameter. A
    #   Region-level retention rule does not have any resource tags
    #   specified. It retains all deleted resources of the specified
    #   resource type in the Region in which the rule is created, even if
    #   the resources are not tagged.
    #   @return [Array<Types::ResourceTag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rbin-2021-06-15/UpdateRuleRequest AWS API Documentation
    #
    class UpdateRuleRequest < Struct.new(
      :identifier,
      :retention_period,
      :description,
      :resource_type,
      :resource_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The unique ID of the retention rule.
    #   @return [String]
    #
    # @!attribute [rw] retention_period
    #   Information about the retention period for which the retention rule
    #   is to retain resources.
    #   @return [Types::RetentionPeriod]
    #
    # @!attribute [rw] description
    #   The retention rule description.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type retained by the retention rule.
    #   @return [String]
    #
    # @!attribute [rw] resource_tags
    #   Information about the resource tags used to identify resources that
    #   are retained by the retention rule.
    #   @return [Array<Types::ResourceTag>]
    #
    # @!attribute [rw] status
    #   The state of the retention rule. Only retention rules that are in
    #   the `available` state retain resources.
    #   @return [String]
    #
    # @!attribute [rw] lock_state
    #   The lock state for the retention rule.
    #
    #   * `locked` - The retention rule is locked and can't be modified or
    #     deleted.
    #
    #   * `pending_unlock` - The retention rule has been unlocked but it is
    #     still within the unlock delay period. The retention rule can be
    #     modified or deleted only after the unlock delay period has
    #     expired.
    #
    #   * `unlocked` - The retention rule is unlocked and it can be modified
    #     or deleted by any user with the required permissions.
    #
    #   * `null` - The retention rule has never been locked. Once a
    #     retention rule has been locked, it can transition between the
    #     `locked` and `unlocked` states only; it can never transition back
    #     to `null`.
    #   @return [String]
    #
    # @!attribute [rw] lock_end_time
    #   The date and time at which the unlock delay is set to expire. Only
    #   returned for retention rules that have been unlocked and that are
    #   still within the unlock delay period.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rbin-2021-06-15/UpdateRuleResponse AWS API Documentation
    #
    class UpdateRuleResponse < Struct.new(
      :identifier,
      :retention_period,
      :description,
      :resource_type,
      :resource_tags,
      :status,
      :lock_state,
      :lock_end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more of the parameters in the request is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rbin-2021-06-15/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
