# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::PricingPlanManager
  module Types

    # You do not have the required permissions to perform this operation.
    # Verify that your IAM policy grants access to this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-plan-manager-2025-08-05/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the subscription to approve.
    #   @return [String]
    #
    # @!attribute [rw] if_match
    #   The `ETag` value from a previous `GetSubscription` or
    #   `ListSubscriptions` response. This ensures you are approving the
    #   expected version of the subscription.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   request is handled only once.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-plan-manager-2025-08-05/ApprovePaidSubscriptionInput AWS API Documentation
    #
    class ApprovePaidSubscriptionInput < Struct.new(
      :arn,
      :if_match,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscription
    #   The details of the approved subscription.
    #   @return [Types::Subscription]
    #
    # @!attribute [rw] e_tag
    #   The updated entity tag for concurrency control.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-plan-manager-2025-08-05/ApprovePaidSubscriptionOutput AWS API Documentation
    #
    class ApprovePaidSubscriptionOutput < Struct.new(
      :subscription,
      :e_tag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the subscription to add resources to.
    #   @return [String]
    #
    # @!attribute [rw] resource_arns
    #   The ARNs of the resources to add to the subscription.
    #   @return [Array<String>]
    #
    # @!attribute [rw] if_match
    #   The `ETag` value from a previous `GetSubscription` or
    #   `ListSubscriptions` response.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   request is handled only once.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-plan-manager-2025-08-05/AssociateResourcesToSubscriptionInput AWS API Documentation
    #
    class AssociateResourcesToSubscriptionInput < Struct.new(
      :arn,
      :resource_arns,
      :if_match,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscription
    #   The details of the subscription with the newly added resources.
    #   @return [Types::Subscription]
    #
    # @!attribute [rw] e_tag
    #   The updated entity tag for concurrency control.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-plan-manager-2025-08-05/AssociateResourcesToSubscriptionOutput AWS API Documentation
    #
    class AssociateResourcesToSubscriptionOutput < Struct.new(
      :subscription,
      :e_tag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the subscription whose pending change you want to cancel.
    #   @return [String]
    #
    # @!attribute [rw] if_match
    #   The `ETag` value from a previous `GetSubscription` or
    #   `ListSubscriptions` response.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   request is handled only once.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-plan-manager-2025-08-05/CancelSubscriptionChangeInput AWS API Documentation
    #
    class CancelSubscriptionChangeInput < Struct.new(
      :arn,
      :if_match,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscription
    #   The details of the subscription with the pending change removed.
    #   @return [Types::Subscription]
    #
    # @!attribute [rw] e_tag
    #   The updated entity tag for concurrency control.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-plan-manager-2025-08-05/CancelSubscriptionChangeOutput AWS API Documentation
    #
    class CancelSubscriptionChangeOutput < Struct.new(
      :subscription,
      :e_tag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the subscription to cancel.
    #   @return [String]
    #
    # @!attribute [rw] if_match
    #   The `ETag` value from a previous `GetSubscription` or
    #   `ListSubscriptions` response.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   request is handled only once.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-plan-manager-2025-08-05/CancelSubscriptionInput AWS API Documentation
    #
    class CancelSubscriptionInput < Struct.new(
      :arn,
      :if_match,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscription
    #   The details of the subscription with the pending cancellation. For
    #   active subscriptions, a `scheduledChange` of type `CANCELLATION` is
    #   included.
    #   @return [Types::Subscription]
    #
    # @!attribute [rw] e_tag
    #   The updated entity tag for concurrency control.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-plan-manager-2025-08-05/CancelSubscriptionOutput AWS API Documentation
    #
    class CancelSubscriptionOutput < Struct.new(
      :subscription,
      :e_tag)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request conflicts with the current state of the resource. This
    # typically occurs when the `ETag` value in the `If-Match` header does
    # not match the current version of the subscription. Retrieve the latest
    # version and retry.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource that has a conflicting state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-plan-manager-2025-08-05/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] plan_family
    #   The pricing plan family to subscribe to, such as `CloudFront`.
    #   @return [String]
    #
    # @!attribute [rw] plan_tier
    #   The tier level for the subscription, such as `FREE`, `PRO`,
    #   `BUSINESS`, or `PREMIUM`.
    #   @return [String]
    #
    # @!attribute [rw] usage_level
    #   The usage level within the plan tier. Specify `DEFAULT` for the base
    #   configuration, or a higher level if your plan tier supports it.
    #   @return [String]
    #
    # @!attribute [rw] resource_arns
    #   The ARNs of the resources to include in the subscription. Specify
    #   one or more supported resources.
    #
    #   <note markdown="1"> For subscriptions in the CloudFront plan family, the resources must
    #   include exactly one Amazon CloudFront distribution and exactly one
    #   WAF web ACL. You can also include other supported resources, such as
    #   Amazon Route 53 hosted zones and CloudFront KeyValueStores.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] approval_mode
    #   Determines whether the subscription requires explicit approval
    #   before billing starts. Set to `MANUAL` to require a separate
    #   `ApprovePaidSubscription` call, or `IMMEDIATE` to activate the
    #   subscription right away. For paid tier plans, this defaults to
    #   `MANUAL` if not specified. For the `FREE` plan tier, only
    #   `IMMEDIATE` is supported, and it is the default.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure that
    #   the request is handled only once. If you send the same request with
    #   the same client token, the API returns the original response without
    #   creating a duplicate subscription.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-plan-manager-2025-08-05/CreateSubscriptionInput AWS API Documentation
    #
    class CreateSubscriptionInput < Struct.new(
      :plan_family,
      :plan_tier,
      :usage_level,
      :resource_arns,
      :approval_mode,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscription
    #   The details of the newly created subscription.
    #   @return [Types::Subscription]
    #
    # @!attribute [rw] e_tag
    #   The entity tag for concurrency control. Use this value in the
    #   `If-Match` header for subsequent operations on this subscription.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-plan-manager-2025-08-05/CreateSubscriptionOutput AWS API Documentation
    #
    class CreateSubscriptionOutput < Struct.new(
      :subscription,
      :e_tag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the subscription to remove resources from.
    #   @return [String]
    #
    # @!attribute [rw] resource_arns
    #   The ARNs of the resources to remove from the subscription. For
    #   subscriptions in the CloudFront plan family, you cannot remove the
    #   required CloudFront distribution or WAF web ACL.
    #   @return [Array<String>]
    #
    # @!attribute [rw] if_match
    #   The `ETag` value from a previous `GetSubscription` or
    #   `ListSubscriptions` response.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   request is handled only once.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-plan-manager-2025-08-05/DisassociateResourcesFromSubscriptionInput AWS API Documentation
    #
    class DisassociateResourcesFromSubscriptionInput < Struct.new(
      :arn,
      :resource_arns,
      :if_match,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscription
    #   The details of the subscription with the specified resources
    #   removed.
    #   @return [Types::Subscription]
    #
    # @!attribute [rw] e_tag
    #   The updated entity tag for concurrency control.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-plan-manager-2025-08-05/DisassociateResourcesFromSubscriptionOutput AWS API Documentation
    #
    class DisassociateResourcesFromSubscriptionOutput < Struct.new(
      :subscription,
      :e_tag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the subscription to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-plan-manager-2025-08-05/GetSubscriptionInput AWS API Documentation
    #
    class GetSubscriptionInput < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscription
    #   The details of the requested subscription.
    #   @return [Types::Subscription]
    #
    # @!attribute [rw] e_tag
    #   The entity tag for concurrency control. Use this value in the
    #   `If-Match` header for subsequent operations on this subscription.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-plan-manager-2025-08-05/GetSubscriptionOutput AWS API Documentation
    #
    class GetSubscriptionOutput < Struct.new(
      :subscription,
      :e_tag)
      SENSITIVE = []
      include Aws::Structure
    end

    # An unexpected error occurred on the server. Retry the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-plan-manager-2025-08-05/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token from a previous `ListSubscriptions` response. If the
    #   response included a `nextToken`, there are more results available.
    #   Pass this value to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-plan-manager-2025-08-05/ListSubscriptionsInput AWS API Documentation
    #
    class ListSubscriptionsInput < Struct.new(
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscription_summaries
    #   The list of subscription summaries for the calling account.
    #   @return [Array<Types::SubscriptionSummary>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates there are more results available. Pass this
    #   value in a subsequent `ListSubscriptions` request to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-plan-manager-2025-08-05/ListSubscriptionsOutput AWS API Documentation
    #
    class ListSubscriptionsOutput < Struct.new(
      :subscription_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified subscription was not found. Verify that the ARN is
    # correct and that the subscription belongs to your account.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource that was not found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-plan-manager-2025-08-05/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A pending change on a subscription that takes effect at the end of the
    # current billing period, such as a tier downgrade or cancellation.
    #
    # @!attribute [rw] change_type
    #   The type of pending change. Possible values are `DOWNGRADE` (a tier
    #   change to a lower level) and `CANCELLATION` (subscription
    #   termination).
    #   @return [String]
    #
    # @!attribute [rw] effective_date
    #   The date and time when the change takes effect, in ISO 8601 format.
    #   This value is populated after the change is confirmed by the billing
    #   system.
    #   @return [Time]
    #
    # @!attribute [rw] plan_tier
    #   For downgrades, the tier level that the subscription will change to.
    #   Not present for cancellations.
    #   @return [String]
    #
    # @!attribute [rw] usage_level
    #   For downgrades, the target usage level after the change takes
    #   effect.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-plan-manager-2025-08-05/ScheduledChange AWS API Documentation
    #
    class ScheduledChange < Struct.new(
      :change_type,
      :effective_date,
      :plan_tier,
      :usage_level)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request would exceed a service limit. You have reached the maximum
    # number of subscriptions allowed for your account.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-plan-manager-2025-08-05/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The full details of a flat-rate pricing subscription, including its
    # current configuration, status, and associated resources.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that uniquely identifies this
    #   subscription.
    #   @return [String]
    #
    # @!attribute [rw] plan_family
    #   The pricing plan family for the subscription, such as `CloudFront`.
    #   @return [String]
    #
    # @!attribute [rw] plan_tier
    #   The current tier level of the pricing plan, such as `FREE`, `PRO`,
    #   `BUSINESS`, or `PREMIUM`.
    #   @return [String]
    #
    # @!attribute [rw] usage_level
    #   The usage level within the plan tier. When present, indicates a
    #   specific capacity configuration beyond the base tier.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_change
    #   A pending change that will take effect at the end of the current
    #   billing period. This field is present only when a downgrade or
    #   cancellation is scheduled.
    #   @return [Types::ScheduledChange]
    #
    # @!attribute [rw] status
    #   The current status of the subscription. For the list of possible
    #   values, see the `Status` type.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   A human-readable explanation of the current status, present when
    #   additional context is available.
    #   @return [String]
    #
    # @!attribute [rw] resource_arns
    #   The ARNs of the resources covered by this subscription.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_at
    #   The date and time when the subscription was created, in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the subscription was last modified, in ISO
    #   8601 format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-plan-manager-2025-08-05/Subscription AWS API Documentation
    #
    class Subscription < Struct.new(
      :arn,
      :plan_family,
      :plan_tier,
      :usage_level,
      :scheduled_change,
      :status,
      :status_reason,
      :resource_arns,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information for a flat-rate pricing subscription, as returned
    # by list operations.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that uniquely identifies this
    #   subscription.
    #   @return [String]
    #
    # @!attribute [rw] plan_family
    #   The pricing plan family for the subscription, such as `CloudFront`.
    #   @return [String]
    #
    # @!attribute [rw] plan_tier
    #   The current tier level of the pricing plan.
    #   @return [String]
    #
    # @!attribute [rw] usage_level
    #   The usage level within the plan tier.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_change
    #   A pending change that will take effect at the end of the current
    #   billing period, if any.
    #   @return [Types::ScheduledChange]
    #
    # @!attribute [rw] status
    #   The current status of the subscription.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   A human-readable explanation of the current status, present when
    #   additional context is available.
    #   @return [String]
    #
    # @!attribute [rw] resource_arns
    #   The ARNs of the resources covered by this subscription.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_at
    #   The date and time when the subscription was created, in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the subscription was last modified, in ISO
    #   8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] e_tag
    #   The entity tag for concurrency control. Pass this value in the
    #   `If-Match` header when making changes to this subscription.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-plan-manager-2025-08-05/SubscriptionSummary AWS API Documentation
    #
    class SubscriptionSummary < Struct.new(
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
      :e_tag)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request rate exceeds the allowed limit. Wait briefly and retry the
    # request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-plan-manager-2025-08-05/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the subscription to update.
    #   @return [String]
    #
    # @!attribute [rw] plan_tier
    #   The new tier level for the subscription.
    #   @return [String]
    #
    # @!attribute [rw] usage_level
    #   The usage level within the plan tier. Specify `DEFAULT` for the base
    #   configuration. If omitted, the usage level is reset to the default.
    #   @return [String]
    #
    # @!attribute [rw] if_match
    #   The `ETag` value from a previous `GetSubscription` or
    #   `ListSubscriptions` response. This ensures you are updating the
    #   expected version of the subscription.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   request is handled only once.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-plan-manager-2025-08-05/UpdateSubscriptionInput AWS API Documentation
    #
    class UpdateSubscriptionInput < Struct.new(
      :arn,
      :plan_tier,
      :usage_level,
      :if_match,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscription
    #   The details of the updated subscription. For downgrades, the current
    #   tier remains unchanged and a `scheduledChange` indicates the pending
    #   change.
    #   @return [Types::Subscription]
    #
    # @!attribute [rw] e_tag
    #   The updated entity tag for concurrency control.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-plan-manager-2025-08-05/UpdateSubscriptionOutput AWS API Documentation
    #
    class UpdateSubscriptionOutput < Struct.new(
      :subscription,
      :e_tag)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request failed a business rule validation. For example, the
    # specified resource might already be associated with another
    # subscription, or the subscription might not be in the required state
    # for this operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource that failed validation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-plan-manager-2025-08-05/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

