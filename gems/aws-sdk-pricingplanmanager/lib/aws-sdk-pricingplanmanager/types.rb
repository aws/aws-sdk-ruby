# frozen_string_literal: true

# This is generated code!

module Aws::PricingPlanManager
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have the required permissions to perform this operation. Verify that your IAM policy grants access to this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the subscription to approve.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The <code>ETag</code> value from a previous <code>GetSubscription</code> or <code>ListSubscriptions</code> response. This ensures you are approving the expected version of the subscription.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the request is handled only once.</p>
    #   @return [String]
    class ApprovePaidSubscriptionInput < Struct.new(
      nil,
      :arn,
      :if_match,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscription
    #   <p>The details of the approved subscription.</p>
    #   @return [Types::Subscription]
    # @!attribute e_tag
    #   <p>The updated entity tag for concurrency control.</p>
    #   @return [String]
    class ApprovePaidSubscriptionOutput < Struct.new(
      nil,
      :subscription,
      :e_tag,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the subscription to add resources to.</p>
    #   @return [String]
    # @!attribute resource_arns
    #   <p>The ARNs of the resources to add to the subscription.</p>
    #   @return [Array<String>]
    # @!attribute if_match
    #   <p>The <code>ETag</code> value from a previous <code>GetSubscription</code> or <code>ListSubscriptions</code> response.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the request is handled only once.</p>
    #   @return [String]
    class AssociateResourcesToSubscriptionInput < Struct.new(
      nil,
      :arn,
      :resource_arns,
      :if_match,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscription
    #   <p>The details of the subscription with the newly added resources.</p>
    #   @return [Types::Subscription]
    # @!attribute e_tag
    #   <p>The updated entity tag for concurrency control.</p>
    #   @return [String]
    class AssociateResourcesToSubscriptionOutput < Struct.new(
      nil,
      :subscription,
      :e_tag,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the subscription whose pending change you want to cancel.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The <code>ETag</code> value from a previous <code>GetSubscription</code> or <code>ListSubscriptions</code> response.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the request is handled only once.</p>
    #   @return [String]
    class CancelSubscriptionChangeInput < Struct.new(
      nil,
      :arn,
      :if_match,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscription
    #   <p>The details of the subscription with the pending change removed.</p>
    #   @return [Types::Subscription]
    # @!attribute e_tag
    #   <p>The updated entity tag for concurrency control.</p>
    #   @return [String]
    class CancelSubscriptionChangeOutput < Struct.new(
      nil,
      :subscription,
      :e_tag,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the subscription to cancel.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The <code>ETag</code> value from a previous <code>GetSubscription</code> or <code>ListSubscriptions</code> response.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the request is handled only once.</p>
    #   @return [String]
    class CancelSubscriptionInput < Struct.new(
      nil,
      :arn,
      :if_match,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscription
    #   <p>The details of the subscription with the pending cancellation. For active subscriptions, a <code>scheduledChange</code> of type <code>CANCELLATION</code> is included.</p>
    #   @return [Types::Subscription]
    # @!attribute e_tag
    #   <p>The updated entity tag for concurrency control.</p>
    #   @return [String]
    class CancelSubscriptionOutput < Struct.new(
      nil,
      :subscription,
      :e_tag,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request conflicts with the current state of the resource. This typically occurs when the <code>ETag</code> value in the <code>If-Match</code> header does not match the current version of the subscription. Retrieve the latest version and retry.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource that has a conflicting state.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      :resource_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute plan_family
    #   <p>The pricing plan family to subscribe to, such as <code>CloudFront</code>.</p>
    #   @return [String]
    # @!attribute plan_tier
    #   <p>The tier level for the subscription, such as <code>FREE</code>, <code>PRO</code>, <code>BUSINESS</code>, or <code>PREMIUM</code>.</p>
    #   @return [String]
    # @!attribute usage_level
    #   <p>The usage level within the plan tier. Specify <code>DEFAULT</code> for the base configuration, or a higher level if your plan tier supports it.</p>
    #   @return [String]
    # @!attribute resource_arns
    #   <p>The ARNs of the resources to include in the subscription. Specify one or more supported resources.</p> <note> <p>For subscriptions in the CloudFront plan family, the resources must include exactly one Amazon CloudFront distribution and exactly one WAF web ACL. You can also include other supported resources, such as Amazon Route 53 hosted zones and CloudFront KeyValueStores.</p> </note>
    #   @return [Array<String>]
    # @!attribute approval_mode
    #   <p>Determines whether the subscription requires explicit approval before billing starts. Set to <code>MANUAL</code> to require a separate <code>ApprovePaidSubscription</code> call, or <code>IMMEDIATE</code> to activate the subscription right away. For paid tier plans, this defaults to <code>MANUAL</code> if not specified. For the <code>FREE</code> plan tier, only <code>IMMEDIATE</code> is supported, and it is the default.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure that the request is handled only once. If you send the same request with the same client token, the API returns the original response without creating a duplicate subscription.</p>
    #   @return [String]
    class CreateSubscriptionInput < Struct.new(
      nil,
      :plan_family,
      :plan_tier,
      :usage_level,
      :resource_arns,
      :approval_mode,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscription
    #   <p>The details of the newly created subscription.</p>
    #   @return [Types::Subscription]
    # @!attribute e_tag
    #   <p>The entity tag for concurrency control. Use this value in the <code>If-Match</code> header for subsequent operations on this subscription.</p>
    #   @return [String]
    class CreateSubscriptionOutput < Struct.new(
      nil,
      :subscription,
      :e_tag,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the subscription to remove resources from.</p>
    #   @return [String]
    # @!attribute resource_arns
    #   <p>The ARNs of the resources to remove from the subscription. For subscriptions in the CloudFront plan family, you cannot remove the required CloudFront distribution or WAF web ACL.</p>
    #   @return [Array<String>]
    # @!attribute if_match
    #   <p>The <code>ETag</code> value from a previous <code>GetSubscription</code> or <code>ListSubscriptions</code> response.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the request is handled only once.</p>
    #   @return [String]
    class DisassociateResourcesFromSubscriptionInput < Struct.new(
      nil,
      :arn,
      :resource_arns,
      :if_match,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscription
    #   <p>The details of the subscription with the specified resources removed.</p>
    #   @return [Types::Subscription]
    # @!attribute e_tag
    #   <p>The updated entity tag for concurrency control.</p>
    #   @return [String]
    class DisassociateResourcesFromSubscriptionOutput < Struct.new(
      nil,
      :subscription,
      :e_tag,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the subscription to retrieve.</p>
    #   @return [String]
    class GetSubscriptionInput < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscription
    #   <p>The details of the requested subscription.</p>
    #   @return [Types::Subscription]
    # @!attribute e_tag
    #   <p>The entity tag for concurrency control. Use this value in the <code>If-Match</code> header for subsequent operations on this subscription.</p>
    #   @return [String]
    class GetSubscriptionOutput < Struct.new(
      nil,
      :subscription,
      :e_tag,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An unexpected error occurred on the server. Retry the request.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token from a previous <code>ListSubscriptions</code> response. If the response included a <code>nextToken</code>, there are more results available. Pass this value to retrieve the next page of results.</p>
    #   @return [String]
    class ListSubscriptionsInput < Struct.new(
      nil,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscription_summaries
    #   <p>The list of subscription summaries for the calling account.</p>
    #   @return [Array<Types::SubscriptionSummary>]
    # @!attribute next_token
    #   <p>A token that indicates there are more results available. Pass this value in a subsequent <code>ListSubscriptions</code> request to retrieve the next page of results.</p>
    #   @return [String]
    class ListSubscriptionsOutput < Struct.new(
      nil,
      :subscription_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified subscription was not found. Verify that the ARN is correct and that the subscription belongs to your account.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource that was not found.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      :resource_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A pending change on a subscription that takes effect at the end of the current billing period, such as a tier downgrade or cancellation.</p>
    # @!attribute change_type
    #   <p>The type of pending change. Possible values are <code>DOWNGRADE</code> (a tier change to a lower level) and <code>CANCELLATION</code> (subscription termination).</p>
    #   @return [String]
    # @!attribute effective_date
    #   <p>The date and time when the change takes effect, in ISO 8601 format. This value is populated after the change is confirmed by the billing system.</p>
    #   @return [Time]
    # @!attribute plan_tier
    #   <p>For downgrades, the tier level that the subscription will change to. Not present for cancellations.</p>
    #   @return [String]
    # @!attribute usage_level
    #   <p>For downgrades, the target usage level after the change takes effect.</p>
    #   @return [String]
    class ScheduledChange < Struct.new(
      nil,
      :change_type,
      :effective_date,
      :plan_tier,
      :usage_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request would exceed a service limit. You have reached the maximum number of subscriptions allowed for your account.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The full details of a flat-rate pricing subscription, including its current configuration, status, and associated resources.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies this subscription.</p>
    #   @return [String]
    # @!attribute plan_family
    #   <p>The pricing plan family for the subscription, such as <code>CloudFront</code>.</p>
    #   @return [String]
    # @!attribute plan_tier
    #   <p>The current tier level of the pricing plan, such as <code>FREE</code>, <code>PRO</code>, <code>BUSINESS</code>, or <code>PREMIUM</code>.</p>
    #   @return [String]
    # @!attribute usage_level
    #   <p>The usage level within the plan tier. When present, indicates a specific capacity configuration beyond the base tier.</p>
    #   @return [String]
    # @!attribute scheduled_change
    #   <p>A pending change that will take effect at the end of the current billing period. This field is present only when a downgrade or cancellation is scheduled.</p>
    #   @return [Types::ScheduledChange]
    # @!attribute status
    #   <p>The current status of the subscription. For the list of possible values, see the <code>Status</code> type.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>A human-readable explanation of the current status, present when additional context is available.</p>
    #   @return [String]
    # @!attribute resource_arns
    #   <p>The ARNs of the resources covered by this subscription.</p>
    #   @return [Array<String>]
    # @!attribute created_at
    #   <p>The date and time when the subscription was created, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time when the subscription was last modified, in ISO 8601 format.</p>
    #   @return [Time]
    class Subscription < Struct.new(
      nil,
      :arn,
      :plan_family,
      :plan_tier,
      :usage_level,
      :scheduled_change,
      :status,
      :status_reason,
      :resource_arns,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information for a flat-rate pricing subscription, as returned by list operations.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies this subscription.</p>
    #   @return [String]
    # @!attribute plan_family
    #   <p>The pricing plan family for the subscription, such as <code>CloudFront</code>.</p>
    #   @return [String]
    # @!attribute plan_tier
    #   <p>The current tier level of the pricing plan.</p>
    #   @return [String]
    # @!attribute usage_level
    #   <p>The usage level within the plan tier.</p>
    #   @return [String]
    # @!attribute scheduled_change
    #   <p>A pending change that will take effect at the end of the current billing period, if any.</p>
    #   @return [Types::ScheduledChange]
    # @!attribute status
    #   <p>The current status of the subscription.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>A human-readable explanation of the current status, present when additional context is available.</p>
    #   @return [String]
    # @!attribute resource_arns
    #   <p>The ARNs of the resources covered by this subscription.</p>
    #   @return [Array<String>]
    # @!attribute created_at
    #   <p>The date and time when the subscription was created, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time when the subscription was last modified, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute e_tag
    #   <p>The entity tag for concurrency control. Pass this value in the <code>If-Match</code> header when making changes to this subscription.</p>
    #   @return [String]
    class SubscriptionSummary < Struct.new(
      nil,
      :arn,
      :plan_family,
      :plan_tier,
      :usage_level,
      :scheduled_change,
      :status,
      :status_reason,
      :resource_arns,
      :created_at,
      :updated_at,
      :e_tag,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request rate exceeds the allowed limit. Wait briefly and retry the request.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the subscription to update.</p>
    #   @return [String]
    # @!attribute plan_tier
    #   <p>The new tier level for the subscription.</p>
    #   @return [String]
    # @!attribute usage_level
    #   <p>The usage level within the plan tier. Specify <code>DEFAULT</code> for the base configuration. If omitted, the usage level is reset to the default.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The <code>ETag</code> value from a previous <code>GetSubscription</code> or <code>ListSubscriptions</code> response. This ensures you are updating the expected version of the subscription.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the request is handled only once.</p>
    #   @return [String]
    class UpdateSubscriptionInput < Struct.new(
      nil,
      :arn,
      :plan_tier,
      :usage_level,
      :if_match,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscription
    #   <p>The details of the updated subscription. For downgrades, the current tier remains unchanged and a <code>scheduledChange</code> indicates the pending change.</p>
    #   @return [Types::Subscription]
    # @!attribute e_tag
    #   <p>The updated entity tag for concurrency control.</p>
    #   @return [String]
    class UpdateSubscriptionOutput < Struct.new(
      nil,
      :subscription,
      :e_tag,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request failed a business rule validation. For example, the specified resource might already be associated with another subscription, or the subscription might not be in the required state for this operation.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource that failed validation.</p>
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      :resource_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
