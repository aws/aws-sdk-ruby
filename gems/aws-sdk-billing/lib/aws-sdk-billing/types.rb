# frozen_string_literal: true

# This is generated code!

module Aws::Billing
  # This module contains the types returned by client operations.
  module Types

    # <p>You don't have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A time range with a start and end time.</p>
    # @!attribute active_after_inclusive
    #   <p>The inclusive time range start date.</p>
    #   @return [Time]
    # @!attribute active_before_inclusive
    #   <p> The inclusive time range end date. </p>
    #   @return [Time]
    class ActiveTimeRange < Struct.new(
      nil,
      :active_after_inclusive,
      :active_before_inclusive,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the billing view to associate source views with. </p>
    #   @return [String]
    # @!attribute source_views
    #   <p> A list of ARNs of the source billing views to associate. </p>
    #   @return [Array<String>]
    class AssociateSourceViewsRequest < Struct.new(
      nil,
      :arn,
      :source_views,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p> The ARN of the billing view that the source views were associated with. </p>
    #   @return [String]
    class AssociateSourceViewsResponse < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The metadata associated to the billing view. </p>
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) that can be used to uniquely identify the billing view. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The account name of the billing view. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The description of the billing view. </p>
    #   @return [String]
    # @!attribute billing_view_type
    #   <p>The type of billing group. </p>
    #   @return [String]
    # @!attribute owner_account_id
    #   <p>The account owner of the billing view. </p>
    #   @return [String]
    # @!attribute source_account_id
    #   <p> The Amazon Web Services account ID that owns the source billing view, if this is a derived billing view. </p>
    #   @return [String]
    # @!attribute data_filter_expression
    #   <p> See <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_billing_Expression.html">Expression</a>. Billing view only supports <code>LINKED_ACCOUNT</code> and <code>Tags</code>. </p>
    #   @return [Types::Expression]
    # @!attribute created_at
    #   <p>The time when the billing view was created. </p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time when the billing view was last updated. </p>
    #   @return [Time]
    # @!attribute derived_view_count
    #   <p> The number of billing views that use this billing view as a source. </p>
    #   @return [Integer]
    # @!attribute source_view_count
    #   <p> The number of source views associated with this billing view. </p>
    #   @return [Integer]
    # @!attribute view_definition_last_updated_at
    #   <p> The timestamp of when the billing view definition was last updated. </p>
    #   @return [Time]
    # @!attribute health_status
    #   <p> The current health status of the billing view. </p>
    #   @return [Types::BillingViewHealthStatus]
    class BillingViewElement < Struct.new(
      nil,
      :arn,
      :name,
      :description,
      :billing_view_type,
      :owner_account_id,
      :source_account_id,
      :data_filter_expression,
      :created_at,
      :updated_at,
      :derived_view_count,
      :source_view_count,
      :view_definition_last_updated_at,
      :health_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents the health status of a billing view, including a status code and optional reasons for the status. </p>
    # @!attribute status_code
    #   <p>The current health status code of the billing view.</p>
    #   @return [String]
    # @!attribute status_reasons
    #   <p>A list of reasons explaining the current health status, if applicable.</p>
    #   @return [Array<String>]
    class BillingViewHealthStatus < Struct.new(
      nil,
      :status_code,
      :status_reasons,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Exception thrown when a billing view's health status prevents an operation from being performed. This may occur if the billing view is in a state other than <code>HEALTHY</code>.</p>
    # @!attribute message
    #   @return [String]
    class BillingViewHealthStatusException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A representation of a billing view.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) that can be used to uniquely identify the billing view. </p>
    #   @return [String]
    # @!attribute name
    #   <p> A list of names of the Billing view. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The description of the billing view. </p>
    #   @return [String]
    # @!attribute owner_account_id
    #   <p> The list of owners of the Billing view. </p>
    #   @return [String]
    # @!attribute source_account_id
    #   <p> The Amazon Web Services account ID that owns the source billing view, if this is a derived billing view. </p>
    #   @return [String]
    # @!attribute billing_view_type
    #   <p>The type of billing view.</p>
    #   @return [String]
    # @!attribute health_status
    #   <p> The current health status of the billing view. </p>
    #   @return [Types::BillingViewHealthStatus]
    class BillingViewListElement < Struct.new(
      nil,
      :arn,
      :name,
      :description,
      :owner_account_id,
      :source_account_id,
      :billing_view_type,
      :health_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The requested operation would cause a conflict with the current state of a service resource associated with the request. Resolve the conflict before retrying this request. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p> The identifier for the service resource associated with the request. </p>
    #   @return [String]
    # @!attribute resource_type
    #   <p> The type of resource associated with the request. </p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p> The name of the billing view. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The description of the billing view. </p>
    #   @return [String]
    # @!attribute source_views
    #   <p>A list of billing views used as the data source for the custom billing view.</p>
    #   @return [Array<String>]
    # @!attribute data_filter_expression
    #   <p> See <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_billing_Expression.html">Expression</a>. Billing view only supports <code>LINKED_ACCOUNT</code> and <code>Tags</code>. </p>
    #   @return [Types::Expression]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier you specify to ensure idempotency of the request. Idempotency ensures that an API request completes no more than one time. If the original request completes successfully, any subsequent retries complete successfully without performing any further actions with an idempotent request. </p>
    #   @return [String]
    # @!attribute resource_tags
    #   <p>A list of key value map specifying tags associated to the billing view being created. </p>
    #   @return [Array<Types::ResourceTag>]
    class CreateBillingViewRequest < Struct.new(
      nil,
      :name,
      :description,
      :source_views,
      :data_filter_expression,
      :client_token,
      :resource_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) that can be used to uniquely identify the billing view. </p>
    #   @return [String]
    # @!attribute created_at
    #   <p> The time when the billing view was created. </p>
    #   @return [Time]
    class CreateBillingViewResponse < Struct.new(
      nil,
      :arn,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) that can be used to uniquely identify the billing view. </p>
    #   @return [String]
    # @!attribute force
    #   <p> If set to true, forces deletion of the billing view even if it has derived resources (e.g. other billing views or budgets). Use with caution as this may break dependent resources. </p>
    #   @return [Boolean]
    class DeleteBillingViewRequest < Struct.new(
      nil,
      :arn,
      :force,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) that can be used to uniquely identify the billing view. </p>
    #   @return [String]
    class DeleteBillingViewResponse < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The metadata that you can use to filter and group your results. </p>
    # @!attribute key
    #   <p> The names of the metadata types that you can use to filter and group your results. </p>
    #   @return [String]
    # @!attribute values
    #   <p> The metadata values that you can use to filter and group your results. </p>
    #   @return [Array<String>]
    class DimensionValues < Struct.new(
      nil,
      :key,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the billing view to disassociate source views from. </p>
    #   @return [String]
    # @!attribute source_views
    #   <p> A list of ARNs of the source billing views to disassociate. </p>
    #   @return [Array<String>]
    class DisassociateSourceViewsRequest < Struct.new(
      nil,
      :arn,
      :source_views,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p> The ARN of the billing view that the source views were disassociated from. </p>
    #   @return [String]
    class DisassociateSourceViewsResponse < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> See <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_billing_Expression.html">Expression</a>. Billing view only supports <code>LINKED_ACCOUNT</code> and <code>Tags</code>. </p>
    # @!attribute dimensions
    #   <p> The specific <code>Dimension</code> to use for <code>Expression</code>. </p>
    #   @return [Types::DimensionValues]
    # @!attribute tags
    #   <p> The specific <code>Tag</code> to use for <code>Expression</code>. </p>
    #   @return [Types::TagValues]
    # @!attribute time_range
    #   <p> Specifies a time range filter for the billing view data. </p>
    #   @return [Types::TimeRange]
    class Expression < Struct.new(
      nil,
      :dimensions,
      :tags,
      :time_range,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) that can be used to uniquely identify the billing view. </p>
    #   @return [String]
    class GetBillingViewRequest < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute billing_view
    #   <p>The billing view element associated with the specified ARN. </p>
    #   @return [Types::BillingViewElement]
    class GetBillingViewResponse < Struct.new(
      nil,
      :billing_view,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the billing view resource to which the policy is attached to. </p>
    #   @return [String]
    class GetResourcePolicyRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the billing view resource to which the policy is attached to. </p>
    #   @return [String]
    # @!attribute policy
    #   <p>The resource-based policy document attached to the resource in <code>JSON</code> format. </p>
    #   @return [String]
    class GetResourcePolicyResponse < Struct.new(
      nil,
      :resource_arn,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request processing failed because of an unknown error, exception, or failure. </p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute active_time_range
    #   <p> The time range for the billing views listed. <code>PRIMARY</code> billing view is always listed. <code>BILLING_GROUP</code> billing views are listed for time ranges when the associated billing group resource in Billing Conductor is active. The time range must be within one calendar month. </p>
    #   @return [Types::ActiveTimeRange]
    # @!attribute arns
    #   <p>The Amazon Resource Name (ARN) that can be used to uniquely identify the billing view. </p>
    #   @return [Array<String>]
    # @!attribute billing_view_types
    #   <p>The type of billing view.</p>
    #   @return [Array<String>]
    # @!attribute owner_account_id
    #   <p> The list of owners of the billing view. </p>
    #   @return [String]
    # @!attribute source_account_id
    #   <p> Filters the results to include only billing views that use the specified account as a source. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of billing views to retrieve. Default is 100. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token that is used on subsequent calls to list billing views.</p>
    #   @return [String]
    class ListBillingViewsRequest < Struct.new(
      nil,
      :active_time_range,
      :arns,
      :billing_view_types,
      :owner_account_id,
      :source_account_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute billing_views
    #   <p>A list of <code>BillingViewListElement</code> retrieved.</p>
    #   @return [Array<Types::BillingViewListElement>]
    # @!attribute next_token
    #   <p>The pagination token to use on subsequent calls to list billing views. </p>
    #   @return [String]
    class ListBillingViewsResponse < Struct.new(
      nil,
      :billing_views,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) that can be used to uniquely identify the billing view. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The number of entries a paginated response contains. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> The pagination token that is used on subsequent calls to list billing views. </p>
    #   @return [String]
    class ListSourceViewsForBillingViewRequest < Struct.new(
      nil,
      :arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_views
    #   <p>A list of billing views used as the data source for the custom billing view. </p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p> The pagination token that is used on subsequent calls to list billing views. </p>
    #   @return [String]
    class ListSourceViewsForBillingViewResponse < Struct.new(
      nil,
      :source_views,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p> The Amazon Resource Name (ARN) of the resource. </p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_tags
    #   <p> A list of tag key value pairs that are associated with the resource. </p>
    #   @return [Array<Types::ResourceTag>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :resource_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The specified ARN in the request doesn't exist. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p> Value is a list of resource IDs that were not found. </p>
    #   @return [String]
    # @!attribute resource_type
    #   <p> Value is the type of resource that was not found. </p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The tag structure that contains a tag key and value. </p>
    # @!attribute key
    #   <p> The key that's associated with the tag. </p>
    #   @return [String]
    # @!attribute value
    #   <p> The value that's associated with the tag. </p>
    #   @return [String]
    class ResourceTag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> You've reached the limit of resources you can create, or exceeded the size of an individual resource. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p> The ID of the resource. </p>
    #   @return [String]
    # @!attribute resource_type
    #   <p> The type of Amazon Web Services resource. </p>
    #   @return [String]
    # @!attribute service_code
    #   <p> The container for the <code>serviceCode</code>. </p>
    #   @return [String]
    # @!attribute quota_code
    #   <p> The container for the <code>quotaCode</code>. </p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p> The Amazon Resource Name (ARN) of the resource. </p>
    #   @return [String]
    # @!attribute resource_tags
    #   <p> A list of tag key value pairs that are associated with the resource. </p>
    #   @return [Array<Types::ResourceTag>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :resource_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The values that are available for a tag. </p>
    # @!attribute key
    #   <p> The key for the tag. </p>
    #   @return [String]
    # @!attribute values
    #   <p> The specific value of the tag. </p>
    #   @return [Array<String>]
    class TagValues < Struct.new(
      nil,
      :key,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling. </p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Specifies a time range with inclusive begin and end dates. </p>
    # @!attribute begin_date_inclusive
    #   <p> The inclusive start date of the time range. </p>
    #   @return [Time]
    # @!attribute end_date_inclusive
    #   <p> The inclusive end date of the time range. </p>
    #   @return [Time]
    class TimeRange < Struct.new(
      nil,
      :begin_date_inclusive,
      :end_date_inclusive,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p> The Amazon Resource Name (ARN) of the resource. </p>
    #   @return [String]
    # @!attribute resource_tag_keys
    #   <p> A list of tag key value pairs that are associated with the resource. </p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :resource_tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) that can be used to uniquely identify the billing view. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the billing view. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The description of the billing view. </p>
    #   @return [String]
    # @!attribute data_filter_expression
    #   <p>See <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_billing_Expression.html">Expression</a>. Billing view only supports <code>LINKED_ACCOUNT</code> and <code>Tags</code>. </p>
    #   @return [Types::Expression]
    class UpdateBillingViewRequest < Struct.new(
      nil,
      :arn,
      :name,
      :description,
      :data_filter_expression,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) that can be used to uniquely identify the billing view. </p>
    #   @return [String]
    # @!attribute updated_at
    #   <p> The time when the billing view was last updated. </p>
    #   @return [Time]
    class UpdateBillingViewResponse < Struct.new(
      nil,
      :arn,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by an Amazon Web Services service. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The input fails to satisfy the constraints specified by an Amazon Web Services service.</p>
    #   @return [String]
    # @!attribute field_list
    #   <p>The input fails to satisfy the constraints specified by an Amazon Web Services service.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      nil,
      :message,
      :reason,
      :field_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The field's information of a request that resulted in an exception. </p>
    # @!attribute name
    #   <p>The name of the field.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message describing why the field failed validation.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
