# frozen_string_literal: true

# This is generated code!

module Aws::Rbin
  # This module contains the types returned by client operations.
  module Types

    # <p>The specified retention rule lock request can't be completed.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the exception.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute retention_period
    #   <p>Information about the retention period for which the retention rule is to retain resources.</p>
    #   @return [Types::RetentionPeriod]
    # @!attribute description
    #   <p>The retention rule description.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Information about the tags to assign to the retention rule.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute resource_type
    #   <p>The resource type to be retained by the retention rule. Currently, only Amazon EBS snapshots 
    #         and EBS-backed AMIs are supported. To retain snapshots, specify <code>EBS_SNAPSHOT</code>. To 
    #         retain EBS-backed AMIs, specify <code>EC2_IMAGE</code>.</p>
    #   @return [String]
    # @!attribute resource_tags
    #   <p>[Tag-level retention rules only] Specifies the resource tags to use to identify resources that are to be retained by a 
    #     tag-level retention rule. For tag-level retention rules, only deleted resources, of the specified resource type, that 
    #     have one or more of the specified tag key and value pairs are retained. If a resource is deleted, but it does not have 
    #     any of the specified tag key and value pairs, it is immediately deleted without being retained by the retention rule.</p>
    #            <p>You can add the same tag key and value pair to a maximum or five retention rules.</p>
    #            <p>To create a Region-level retention rule, omit this parameter. A Region-level retention rule 
    #         does not have any resource tags specified. It retains all deleted resources of the specified 
    #         resource type in the Region in which the rule is created, even if the resources are not tagged.</p>
    #   @return [Array<Types::ResourceTag>]
    # @!attribute lock_configuration
    #   <p>Information about the retention rule lock configuration.</p>
    #   @return [Types::LockConfiguration]
    # @!attribute exclude_resource_tags
    #   <p>[Region-level retention rules only] Specifies the exclusion tags to use to identify resources that are to be excluded, 
    #   or ignored, by a Region-level retention rule. Resources that have any of these tags are not retained by the retention rule 
    #   upon deletion.</p>
    #            <p>You can't specify exclusion tags for tag-level retention rules.</p>
    #   @return [Array<Types::ResourceTag>]
    class CreateRuleRequest < Struct.new(
      :retention_period,
      :description,
      :tags,
      :resource_type,
      :resource_tags,
      :lock_configuration,
      :exclude_resource_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The unique ID of the retention rule.</p>
    #   @return [String]
    # @!attribute retention_period
    #   <p>Information about the retention period for which the retention rule is to retain resources.</p>
    #   @return [Types::RetentionPeriod]
    # @!attribute description
    #   <p>The retention rule description.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Information about the tags assigned to the retention rule.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute resource_type
    #   <p>The resource type retained by the retention rule.</p>
    #   @return [String]
    # @!attribute resource_tags
    #   <p>[Tag-level retention rules only] Information about the resource tags used to identify resources that are retained by the retention 
    #         rule.</p>
    #   @return [Array<Types::ResourceTag>]
    # @!attribute status
    #   <p>The state of the retention rule. Only retention rules that are in the <code>available</code> 
    #         state retain resources.</p>
    #   @return [String]
    # @!attribute lock_configuration
    #   <p>Information about the retention rule lock configuration.</p>
    #   @return [Types::LockConfiguration]
    # @!attribute lock_state
    #   <p>[Region-level retention rules only] The lock state for the retention rule.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>locked</code> - The retention rule is locked and can't be modified or deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending_unlock</code> - The retention rule has been unlocked but it is still within 
    #             the unlock delay period. The retention rule can be modified or deleted only after the unlock 
    #             delay period has expired.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unlocked</code> - The retention rule is unlocked and it can be modified or deleted by 
    #             any user with the required permissions.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>null</code> - The retention rule has never been locked. Once a retention rule has 
    #           been locked, it can transition between the <code>locked</code> and <code>unlocked</code> states 
    #           only; it can never transition back to <code>null</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute rule_arn
    #   <p>The Amazon Resource Name (ARN) of the retention rule.</p>
    #   @return [String]
    # @!attribute exclude_resource_tags
    #   <p>[Region-level retention rules only] Information about the exclusion tags used to identify resources that are to be 
    #   excluded, or ignored, by the retention rule.</p>
    #   @return [Array<Types::ResourceTag>]
    class CreateRuleResponse < Struct.new(
      :identifier,
      :retention_period,
      :description,
      :tags,
      :resource_type,
      :resource_tags,
      :status,
      :lock_configuration,
      :lock_state,
      :rule_arn,
      :exclude_resource_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The unique ID of the retention rule.</p>
    #   @return [String]
    class DeleteRuleRequest < Struct.new(
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteRuleResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The unique ID of the retention rule.</p>
    #   @return [String]
    class GetRuleRequest < Struct.new(
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The unique ID of the retention rule.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The retention rule description.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type retained by the retention rule.</p>
    #   @return [String]
    # @!attribute retention_period
    #   <p>Information about the retention period for which the retention rule is to retain resources.</p>
    #   @return [Types::RetentionPeriod]
    # @!attribute resource_tags
    #   <p>[Tag-level retention rules only] Information about the resource tags used to identify resources that are retained by the retention 
    #         rule.</p>
    #   @return [Array<Types::ResourceTag>]
    # @!attribute status
    #   <p>The state of the retention rule. Only retention rules that are in the <code>available</code> 
    #         state retain resources.</p>
    #   @return [String]
    # @!attribute lock_configuration
    #   <p>Information about the retention rule lock configuration.</p>
    #   @return [Types::LockConfiguration]
    # @!attribute lock_state
    #   <p>[Region-level retention rules only] The lock state for the retention rule.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>locked</code> - The retention rule is locked and can't be modified or deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending_unlock</code> - The retention rule has been unlocked but it is still within 
    #             the unlock delay period. The retention rule can be modified or deleted only after the unlock 
    #             delay period has expired.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unlocked</code> - The retention rule is unlocked and it can be modified or deleted by 
    #             any user with the required permissions.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>null</code> - The retention rule has never been locked. Once a retention rule has 
    #           been locked, it can transition between the <code>locked</code> and <code>unlocked</code> states 
    #           only; it can never transition back to <code>null</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute lock_end_time
    #   <p>The date and time at which the unlock delay is set to expire. Only returned 
    #         for retention rules that have been unlocked and that are still within the unlock 
    #         delay period.</p>
    #   @return [Time]
    # @!attribute rule_arn
    #   <p>The Amazon Resource Name (ARN) of the retention rule.</p>
    #   @return [String]
    # @!attribute exclude_resource_tags
    #   <p>[Region-level retention rules only] Information about the exclusion tags used to identify resources that are to be 
    #   excluded, or ignored, by the retention rule.</p>
    #   @return [Array<Types::ResourceTag>]
    class GetRuleResponse < Struct.new(
      :identifier,
      :description,
      :resource_type,
      :retention_period,
      :resource_tags,
      :status,
      :lock_configuration,
      :lock_state,
      :lock_end_time,
      :rule_arn,
      :exclude_resource_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The service could not respond to the request due to an internal problem.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>NextToken</code> value.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type retained by the retention rule. Only retention rules that retain 
    #         the specified resource type are listed. Currently, only Amazon EBS snapshots and EBS-backed 
    #         AMIs are supported. To list retention rules that retain snapshots, specify 
    #         <code>EBS_SNAPSHOT</code>. To list retention rules that retain EBS-backed AMIs, specify 
    #         <code>EC2_IMAGE</code>.</p>
    #   @return [String]
    # @!attribute resource_tags
    #   <p>[Tag-level retention rules only] Information about the resource tags used to identify resources that are retained by the retention 
    #         rule.</p>
    #   @return [Array<Types::ResourceTag>]
    # @!attribute lock_state
    #   <p>The lock state of the retention rules to list. Only retention rules with the specified 
    #         lock state are returned.</p>
    #   @return [String]
    # @!attribute exclude_resource_tags
    #   <p>[Region-level retention rules only] Information about the exclusion tags used to identify resources that are to be 
    #   excluded, or ignored, by the retention rule.</p>
    #   @return [Array<Types::ResourceTag>]
    class ListRulesRequest < Struct.new(
      :max_results,
      :next_token,
      :resource_type,
      :resource_tags,
      :lock_state,
      :exclude_resource_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rules
    #   <p>Information about the retention rules.</p>
    #   @return [Array<Types::RuleSummary>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
    #   @return [String]
    class ListRulesResponse < Struct.new(
      :rules,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the retention rule.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>Information about the tags assigned to the retention rule.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a retention rule lock configuration.</p>
    # @!attribute unlock_delay
    #   <p>Information about the retention rule unlock delay.</p>
    #   @return [Types::UnlockDelay]
    class LockConfiguration < Struct.new(
      :unlock_delay,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The unique ID of the retention rule.</p>
    #   @return [String]
    # @!attribute lock_configuration
    #   <p>Information about the retention rule lock configuration.</p>
    #   @return [Types::LockConfiguration]
    class LockRuleRequest < Struct.new(
      :identifier,
      :lock_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The unique ID of the retention rule.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The retention rule description.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type retained by the retention rule.</p>
    #   @return [String]
    # @!attribute retention_period
    #   <p>Information about the retention period for which the retention rule is to retain resources.</p>
    #   @return [Types::RetentionPeriod]
    # @!attribute resource_tags
    #   <p>[Tag-level retention rules only] Information about the resource tags used to identify resources that are retained by the retention 
    #         rule.</p>
    #   @return [Array<Types::ResourceTag>]
    # @!attribute status
    #   <p>The state of the retention rule. Only retention rules that are in the <code>available</code> 
    #         state retain resources.</p>
    #   @return [String]
    # @!attribute lock_configuration
    #   <p>Information about the retention rule lock configuration.</p>
    #   @return [Types::LockConfiguration]
    # @!attribute lock_state
    #   <p>[Region-level retention rules only] The lock state for the retention rule.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>locked</code> - The retention rule is locked and can't be modified or deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending_unlock</code> - The retention rule has been unlocked but it is still within 
    #             the unlock delay period. The retention rule can be modified or deleted only after the unlock 
    #             delay period has expired.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unlocked</code> - The retention rule is unlocked and it can be modified or deleted by 
    #             any user with the required permissions.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>null</code> - The retention rule has never been locked. Once a retention rule has 
    #           been locked, it can transition between the <code>locked</code> and <code>unlocked</code> states 
    #           only; it can never transition back to <code>null</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute rule_arn
    #   <p>The Amazon Resource Name (ARN) of the retention rule.</p>
    #   @return [String]
    # @!attribute exclude_resource_tags
    #   <p>[Region-level retention rules only] Information about the exclusion tags used to identify resources that are to be 
    #   excluded, or ignored, by the retention rule.</p>
    #   @return [Array<Types::ResourceTag>]
    class LockRuleResponse < Struct.new(
      :identifier,
      :description,
      :resource_type,
      :retention_period,
      :resource_tags,
      :status,
      :lock_configuration,
      :lock_state,
      :rule_arn,
      :exclude_resource_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource was not found.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the exception.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>[Tag-level retention rules only] Information about the resource tags used to identify resources that are retained by the retention 
    #       rule.</p>
    # @!attribute resource_tag_key
    #   <p>The tag key.</p>
    #   @return [String]
    # @!attribute resource_tag_value
    #   <p>The tag value.</p>
    #   @return [String]
    class ResourceTag < Struct.new(
      :resource_tag_key,
      :resource_tag_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the retention period for which the retention rule is to retain resources.</p>
    # @!attribute retention_period_value
    #   <p>The period value for which the retention rule is to retain resources. The period is measured using 
    #         the unit specified for <b>RetentionPeriodUnit</b>.</p>
    #   @return [Integer]
    # @!attribute retention_period_unit
    #   <p>The unit of time in which the retention period is measured. Currently, only <code>DAYS</code> 
    #         is supported.</p>
    #   @return [String]
    class RetentionPeriod < Struct.new(
      :retention_period_value,
      :retention_period_unit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a Recycle Bin retention rule.</p>
    # @!attribute identifier
    #   <p>The unique ID of the retention rule.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The retention rule description.</p>
    #   @return [String]
    # @!attribute retention_period
    #   <p>Information about the retention period for which the retention rule is to retain resources.</p>
    #   @return [Types::RetentionPeriod]
    # @!attribute lock_state
    #   <p>[Region-level retention rules only] The lock state for the retention rule.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>locked</code> - The retention rule is locked and can't be modified or deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending_unlock</code> - The retention rule has been unlocked but it is still within 
    #             the unlock delay period. The retention rule can be modified or deleted only after the unlock 
    #             delay period has expired.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unlocked</code> - The retention rule is unlocked and it can be modified or deleted by 
    #             any user with the required permissions.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>null</code> - The retention rule has never been locked. Once a retention rule has 
    #           been locked, it can transition between the <code>locked</code> and <code>unlocked</code> states 
    #           only; it can never transition back to <code>null</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute rule_arn
    #   <p>The Amazon Resource Name (ARN) of the retention rule.</p>
    #   @return [String]
    class RuleSummary < Struct.new(
      :identifier,
      :description,
      :retention_period,
      :lock_state,
      :rule_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request would cause a service quota for the number of tags per resource to be exceeded.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the exception.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the tags to assign to the retention rule.</p>
    # @!attribute key
    #   <p>The tag key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The tag value.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the retention rule.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Information about the tags to assign to the retention rule.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the retention rule unlock delay. The unlock delay is the period after which 
    #       a retention rule can be modified or edited after it has been unlocked by a user with the required 
    #       permissions. The retention rule can't be modified or deleted during the unlock delay.</p>
    # @!attribute unlock_delay_value
    #   <p>The unlock delay period, measured in the unit specified for <b>
    #         UnlockDelayUnit</b>.</p>
    #   @return [Integer]
    # @!attribute unlock_delay_unit
    #   <p>The unit of time in which to measure the unlock delay. Currently, the unlock delay can 
    #         be measure only in days.</p>
    #   @return [String]
    class UnlockDelay < Struct.new(
      :unlock_delay_value,
      :unlock_delay_unit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The unique ID of the retention rule.</p>
    #   @return [String]
    class UnlockRuleRequest < Struct.new(
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The unique ID of the retention rule.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The retention rule description.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type retained by the retention rule.</p>
    #   @return [String]
    # @!attribute retention_period
    #   <p>Information about the retention period for which the retention rule is to retain resources.</p>
    #   @return [Types::RetentionPeriod]
    # @!attribute resource_tags
    #   <p>[Tag-level retention rules only] Information about the resource tags used to identify resources that are retained by the retention 
    #         rule.</p>
    #   @return [Array<Types::ResourceTag>]
    # @!attribute status
    #   <p>The state of the retention rule. Only retention rules that are in the <code>available</code> 
    #         state retain resources.</p>
    #   @return [String]
    # @!attribute lock_configuration
    #   <p>Information about the retention rule lock configuration.</p>
    #   @return [Types::LockConfiguration]
    # @!attribute lock_state
    #   <p>[Region-level retention rules only] The lock state for the retention rule.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>locked</code> - The retention rule is locked and can't be modified or deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending_unlock</code> - The retention rule has been unlocked but it is still within 
    #             the unlock delay period. The retention rule can be modified or deleted only after the unlock 
    #             delay period has expired.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unlocked</code> - The retention rule is unlocked and it can be modified or deleted by 
    #             any user with the required permissions.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>null</code> - The retention rule has never been locked. Once a retention rule has 
    #           been locked, it can transition between the <code>locked</code> and <code>unlocked</code> states 
    #           only; it can never transition back to <code>null</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute lock_end_time
    #   <p>The date and time at which the unlock delay is set to expire. Only returned 
    #         for retention rules that have been unlocked and that are still within the unlock 
    #         delay period.</p>
    #   @return [Time]
    # @!attribute rule_arn
    #   <p>The Amazon Resource Name (ARN) of the retention rule.</p>
    #   @return [String]
    # @!attribute exclude_resource_tags
    #   <p>[Region-level retention rules only] Information about the exclusion tags used to identify resources that are to be 
    #   excluded, or ignored, by the retention rule.</p>
    #   @return [Array<Types::ResourceTag>]
    class UnlockRuleResponse < Struct.new(
      :identifier,
      :description,
      :resource_type,
      :retention_period,
      :resource_tags,
      :status,
      :lock_configuration,
      :lock_state,
      :lock_end_time,
      :rule_arn,
      :exclude_resource_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the retention rule.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag keys of the tags to unassign. All tags that have the specified tag key are unassigned.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The unique ID of the retention rule.</p>
    #   @return [String]
    # @!attribute retention_period
    #   <p>Information about the retention period for which the retention rule is to retain resources.</p>
    #   @return [Types::RetentionPeriod]
    # @!attribute description
    #   <p>The retention rule description.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <note>
    #               <p>This parameter is currently not supported. You can't update a retention rule's resource type 
    #         after creation.</p>
    #            </note>
    #   @return [String]
    # @!attribute resource_tags
    #   <p>[Tag-level retention rules only] Specifies the resource tags to use to identify resources that are to be retained by a 
    #     tag-level retention rule. For tag-level retention rules, only deleted resources, of the specified resource type, that 
    #     have one or more of the specified tag key and value pairs are retained. If a resource is deleted, but it does not have 
    #     any of the specified tag key and value pairs, it is immediately deleted without being retained by the retention rule.</p>
    #            <p>You can add the same tag key and value pair to a maximum or five retention rules.</p>
    #            <p>To create a Region-level retention rule, omit this parameter. A Region-level retention rule 
    #         does not have any resource tags specified. It retains all deleted resources of the specified 
    #         resource type in the Region in which the rule is created, even if the resources are not tagged.</p>
    #   @return [Array<Types::ResourceTag>]
    # @!attribute exclude_resource_tags
    #   <p>[Region-level retention rules only] Specifies the exclusion tags to use to identify resources that are to be excluded, 
    #   or ignored, by a Region-level retention rule. Resources that have any of these tags are not retained by the retention rule 
    #   upon deletion.</p>
    #            <p>You can't specify exclusion tags for tag-level retention rules.</p>
    #   @return [Array<Types::ResourceTag>]
    class UpdateRuleRequest < Struct.new(
      :identifier,
      :retention_period,
      :description,
      :resource_type,
      :resource_tags,
      :exclude_resource_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The unique ID of the retention rule.</p>
    #   @return [String]
    # @!attribute retention_period
    #   <p>Information about the retention period for which the retention rule is to retain resources.</p>
    #   @return [Types::RetentionPeriod]
    # @!attribute description
    #   <p>The retention rule description.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type retained by the retention rule.</p>
    #   @return [String]
    # @!attribute resource_tags
    #   <p>[Tag-level retention rules only] Information about the resource tags used to identify resources that are retained by the retention 
    #         rule.</p>
    #   @return [Array<Types::ResourceTag>]
    # @!attribute status
    #   <p>The state of the retention rule. Only retention rules that are in the <code>available</code> 
    #         state retain resources.</p>
    #   @return [String]
    # @!attribute lock_state
    #   <p>[Region-level retention rules only] The lock state for the retention rule.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>locked</code> - The retention rule is locked and can't be modified or deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pending_unlock</code> - The retention rule has been unlocked but it is still within 
    #             the unlock delay period. The retention rule can be modified or deleted only after the unlock 
    #             delay period has expired.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>unlocked</code> - The retention rule is unlocked and it can be modified or deleted by 
    #             any user with the required permissions.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>null</code> - The retention rule has never been locked. Once a retention rule has 
    #           been locked, it can transition between the <code>locked</code> and <code>unlocked</code> states 
    #           only; it can never transition back to <code>null</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute lock_end_time
    #   <p>The date and time at which the unlock delay is set to expire. Only returned 
    #         for retention rules that have been unlocked and that are still within the unlock 
    #         delay period.</p>
    #   @return [Time]
    # @!attribute rule_arn
    #   <p>The Amazon Resource Name (ARN) of the retention rule.</p>
    #   @return [String]
    # @!attribute exclude_resource_tags
    #   <p>[Region-level retention rules only] Information about the exclusion tags used to identify resources that are to be 
    #   excluded, or ignored, by the retention rule.</p>
    #   @return [Array<Types::ResourceTag>]
    class UpdateRuleResponse < Struct.new(
      :identifier,
      :retention_period,
      :description,
      :resource_type,
      :resource_tags,
      :status,
      :lock_state,
      :lock_end_time,
      :rule_arn,
      :exclude_resource_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>One or more of the parameters in the request is not valid.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the exception.</p>
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
