# frozen_string_literal: true

# This is generated code!

module Aws::PartnerCentralRevenueMeasurement
  # This module contains the types returned by client operations.
  module Types

    # <p>The request was denied due to insufficient permissions.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the access denial.</p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary representation of a revenue attribution returned in list operations.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the revenue attribution.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the revenue attribution.</p>
    #   @return [String]
    # @!attribute catalog
    #   <p>The catalog that the revenue attribution belongs to.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The display name of the revenue attribution.</p>
    #   @return [String]
    # @!attribute tenancy_model
    #   <p>The tenancy model for this revenue attribution.</p>
    #   @return [String]
    # @!attribute marketplace_product
    #   <p>The AWS Marketplace product attributes associated with this attribution, if set.</p>
    #   @return [Types::MarketplaceProductSummary]
    # @!attribute created_date
    #   <p>The date when the revenue attribution was created.</p>
    #   @return [Time]
    # @!attribute last_modified_date
    #   <p>The date when the revenue attribution was last modified.</p>
    #   @return [Time]
    # @!attribute latest_revision
    #   <p>The latest revision of the revenue attribution resource.</p>
    #   @return [String]
    # @!attribute effective_from
    #   <p>The date from which this revenue attribution is effective, derived from the earliest allocation start date (YYYY-MM-DD).</p>
    #   @return [String]
    # @!attribute effective_until
    #   <p>The date until which this revenue attribution is effective, derived from the latest allocation end date (YYYY-MM-DD).</p>
    #   @return [String]
    # @!attribute total_active_revenue_attribution_allocation_count
    #   <p>The total number of allocations under this revenue attribution whose Status is ACTIVE.</p>
    #   @return [Integer]
    # @!attribute total_revenue_attribution_allocation_count
    #   <p>The total number of allocations under this revenue attribution, counting both ACTIVE and INACTIVE.</p>
    #   @return [Integer]
    class AttributionSummary < Struct.new(
      nil,
      :arn,
      :id,
      :catalog,
      :name,
      :tenancy_model,
      :marketplace_product,
      :created_date,
      :last_modified_date,
      :latest_revision,
      :effective_from,
      :effective_until,
      :total_active_revenue_attribution_allocation_count,
      :total_revenue_attribution_allocation_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request could not be completed due to a conflict with the current state of the resource.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the conflict.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog in which to create the allocation.</p>
    #   @return [String]
    # @!attribute product_id
    #   <p>The AWS Marketplace product identifier for the parent revenue share.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique token to ensure idempotency of the create request.</p>
    #   @return [String]
    # @!attribute effective_from
    #   <p>The effective start date for the allocation. Must be the first day of a month.</p>
    #   @return [String]
    # @!attribute effective_until
    #   <p>The effective end date for the allocation. Must be the last day of a month (YYYY-MM-DD). Omit for open-ended allocations.</p>
    #   @return [String]
    # @!attribute revenue_share_percent
    #   <p>The revenue share percentage for this allocation.</p>
    #   @return [String]
    class CreateMarketplaceRevenueShareAllocationInput < Struct.new(
      nil,
      :catalog,
      :product_id,
      :client_token,
      :effective_from,
      :effective_until,
      :revenue_share_percent,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute marketplace_revenue_share_allocation_id
    #   <p>The unique identifier of the newly created allocation.</p>
    #   @return [String]
    # @!attribute product_id
    #   <p>The AWS Marketplace product identifier.</p>
    #   @return [String]
    # @!attribute product_name
    #   <p>The display name of the AWS Marketplace product.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the allocation.</p>
    #   @return [String]
    # @!attribute effective_from
    #   <p>The effective start date of the allocation.</p>
    #   @return [String]
    # @!attribute effective_until
    #   <p>The effective end date of the allocation, or null if open-ended.</p>
    #   @return [String]
    # @!attribute revenue_share_percent
    #   <p>The revenue share percentage.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the allocation.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The date when the allocation was created.</p>
    #   @return [Time]
    # @!attribute last_modified_date
    #   <p>The date when the allocation was last modified.</p>
    #   @return [Time]
    # @!attribute latest_marketplace_revenue_share_revision
    #   <p>The latest revision of the parent marketplace revenue share.</p>
    #   @return [String]
    class CreateMarketplaceRevenueShareAllocationOutput < Struct.new(
      nil,
      :marketplace_revenue_share_allocation_id,
      :product_id,
      :product_name,
      :arn,
      :effective_from,
      :effective_until,
      :revenue_share_percent,
      :status,
      :created_date,
      :last_modified_date,
      :latest_marketplace_revenue_share_revision,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog in which to create the marketplace revenue share.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique token to ensure idempotency of the create request.</p>
    #   @return [String]
    # @!attribute product_id
    #   <p>The AWS Marketplace product identifier for this revenue share.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags to associate with the marketplace revenue share upon creation.</p>
    #   @return [Array<Types::Tag>]
    class CreateMarketplaceRevenueShareInput < Struct.new(
      nil,
      :catalog,
      :client_token,
      :product_id,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute product_id
    #   <p>The AWS Marketplace product identifier of the newly created revenue share.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the newly created marketplace revenue share.</p>
    #   @return [String]
    # @!attribute catalog
    #   <p>The catalog that the marketplace revenue share belongs to.</p>
    #   @return [String]
    # @!attribute product_code
    #   <p>The AWS Marketplace product code.</p>
    #   @return [String]
    # @!attribute product_name
    #   <p>The display name of the AWS Marketplace product.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The date when the marketplace revenue share was created.</p>
    #   @return [Time]
    # @!attribute last_modified_date
    #   <p>The date when the marketplace revenue share was last modified.</p>
    #   @return [Time]
    # @!attribute revision
    #   <p>The revision number of the newly created marketplace revenue share.</p>
    #   @return [Integer]
    class CreateMarketplaceRevenueShareOutput < Struct.new(
      nil,
      :product_id,
      :arn,
      :catalog,
      :product_code,
      :product_name,
      :created_date,
      :last_modified_date,
      :revision,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog in which to create the revenue attribution.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique token to ensure idempotency of the create request.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the revenue attribution. Must be unique within the catalog and the partner's account.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the revenue attribution.</p>
    #   @return [String]
    # @!attribute tenancy_model
    #   <p>The tenancy model for this revenue attribution.</p>
    #   @return [String]
    # @!attribute product_identifier
    #   <p>The unique product identifier in AWS Marketplace. Accepts a product entity ID (e.g., prod-abc123def4567) or a product ARN.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags to associate with the revenue attribution upon creation.</p>
    #   @return [Array<Types::Tag>]
    class CreateRevenueAttributionInput < Struct.new(
      nil,
      :catalog,
      :client_token,
      :name,
      :description,
      :tenancy_model,
      :product_identifier,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the newly created revenue attribution.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the newly created revenue attribution.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the revenue attribution.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the revenue attribution.</p>
    #   @return [String]
    # @!attribute tenancy_model
    #   <p>The tenancy model for this revenue attribution.</p>
    #   @return [String]
    # @!attribute marketplace_product
    #   <p>The associated AWS Marketplace product listing, if set at creation.</p>
    #   @return [Types::MarketplaceProductSummary]
    # @!attribute revision
    #   <p>The revision of the newly created attribution resource.</p>
    #   @return [String]
    class CreateRevenueAttributionOutput < Struct.new(
      nil,
      :id,
      :arn,
      :name,
      :description,
      :tenancy_model,
      :marketplace_product,
      :revision,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog that the allocation belongs to.</p>
    #   @return [String]
    # @!attribute product_id
    #   <p>The AWS Marketplace product identifier of the parent revenue share.</p>
    #   @return [String]
    # @!attribute marketplace_revenue_share_allocation_id
    #   <p>The unique identifier of the allocation to retrieve.</p>
    #   @return [String]
    # @!attribute marketplace_revenue_share_revision
    #   <p>The revision of the parent marketplace revenue share at which to retrieve the allocation. Omit to return the latest.</p>
    #   @return [String]
    class GetMarketplaceRevenueShareAllocationInput < Struct.new(
      nil,
      :catalog,
      :product_id,
      :marketplace_revenue_share_allocation_id,
      :marketplace_revenue_share_revision,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute marketplace_revenue_share_allocation_id
    #   <p>The unique identifier of the allocation.</p>
    #   @return [String]
    # @!attribute product_id
    #   <p>The AWS Marketplace product identifier.</p>
    #   @return [String]
    # @!attribute product_name
    #   <p>The display name of the AWS Marketplace product.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the allocation.</p>
    #   @return [String]
    # @!attribute effective_from
    #   <p>The effective start date of the allocation.</p>
    #   @return [String]
    # @!attribute effective_until
    #   <p>The effective end date of the allocation, or null if open-ended.</p>
    #   @return [String]
    # @!attribute revenue_share_percent
    #   <p>The revenue share percentage.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the allocation.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The date when the allocation was created.</p>
    #   @return [Time]
    # @!attribute last_modified_date
    #   <p>The date when the allocation was last modified.</p>
    #   @return [Time]
    # @!attribute latest_marketplace_revenue_share_revision
    #   <p>The latest revision of the parent marketplace revenue share.</p>
    #   @return [String]
    class GetMarketplaceRevenueShareAllocationOutput < Struct.new(
      nil,
      :marketplace_revenue_share_allocation_id,
      :product_id,
      :product_name,
      :arn,
      :effective_from,
      :effective_until,
      :revenue_share_percent,
      :status,
      :created_date,
      :last_modified_date,
      :latest_marketplace_revenue_share_revision,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog that the marketplace revenue share belongs to.</p>
    #   @return [String]
    # @!attribute product_id
    #   <p>The AWS Marketplace product identifier of the revenue share to retrieve.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The revision of the marketplace revenue share to retrieve. Omit to return the latest revision.</p>
    #   @return [Integer]
    class GetMarketplaceRevenueShareInput < Struct.new(
      nil,
      :catalog,
      :product_id,
      :revision,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute product_id
    #   <p>The AWS Marketplace product identifier of the revenue share.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the marketplace revenue share.</p>
    #   @return [String]
    # @!attribute catalog
    #   <p>The catalog that the marketplace revenue share belongs to.</p>
    #   @return [String]
    # @!attribute product_code
    #   <p>The AWS Marketplace product code.</p>
    #   @return [String]
    # @!attribute product_name
    #   <p>The display name of the AWS Marketplace product.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The date when the marketplace revenue share was created.</p>
    #   @return [Time]
    # @!attribute last_modified_date
    #   <p>The date when the marketplace revenue share was last modified.</p>
    #   @return [Time]
    # @!attribute revision
    #   <p>The revision number of the retrieved marketplace revenue share.</p>
    #   @return [Integer]
    # @!attribute latest_revision
    #   <p>The latest revision number of the marketplace revenue share.</p>
    #   @return [Integer]
    # @!attribute total_active_marketplace_revenue_share_allocation_count
    #   <p>The number of active allocations under this marketplace revenue share.</p>
    #   @return [Integer]
    # @!attribute total_marketplace_revenue_share_allocation_count
    #   <p>The total number of allocations under this marketplace revenue share.</p>
    #   @return [Integer]
    class GetMarketplaceRevenueShareOutput < Struct.new(
      nil,
      :product_id,
      :arn,
      :catalog,
      :product_code,
      :product_name,
      :created_date,
      :last_modified_date,
      :revision,
      :latest_revision,
      :total_active_marketplace_revenue_share_allocation_count,
      :total_marketplace_revenue_share_allocation_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog that contains the resource.</p>
    #   @return [String]
    # @!attribute revenue_attribution_identifier
    #   <p>The revenue attribution identifier.</p>
    #   @return [String]
    # @!attribute revenue_attribution_allocation_id
    #   <p>The allocation identifier.</p>
    #   @return [String]
    # @!attribute revenue_attribution_revision
    #   <p>Point-in-time revision number to query.</p>
    #   @return [String]
    class GetRevenueAttributionAllocationInput < Struct.new(
      nil,
      :catalog,
      :revenue_attribution_identifier,
      :revenue_attribution_allocation_id,
      :revenue_attribution_revision,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute revenue_attribution_allocation_id
    #   <p>Unique allocation identifier.</p>
    #   @return [String]
    # @!attribute revenue_attribution_identifier
    #   <p>The revenue attribution identifier.</p>
    #   @return [String]
    # @!attribute entity_type
    #   <p>The type of the associated deal entity.</p>
    #   @return [String]
    # @!attribute entity_identifier
    #   <p>The unique identifier of the associated deal entity.</p>
    #   @return [String]
    # @!attribute entity_name
    #   <p>The display name of the associated deal entity.</p>
    #   @return [String]
    # @!attribute customer_aws_account_id
    #   <p>The customer AWS account ID for this associated deal entity.</p>
    #   @return [String]
    # @!attribute revenue_share_percent
    #   <p>Revenue share percentage.</p>
    #   @return [String]
    # @!attribute effective_from
    #   <p>First day of the effective month.</p>
    #   @return [String]
    # @!attribute effective_until
    #   <p>Last day of the effective month.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Current allocation status.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>When the allocation was first created.</p>
    #   @return [Time]
    # @!attribute last_modified_date
    #   <p>When the allocation was last modified.</p>
    #   @return [Time]
    # @!attribute revenue_attribution_revision
    #   <p>The revision of this allocation version.</p>
    #   @return [String]
    # @!attribute revenue_attribution_latest_revision
    #   <p>The latest committed revision.</p>
    #   @return [String]
    class GetRevenueAttributionAllocationOutput < Struct.new(
      nil,
      :revenue_attribution_allocation_id,
      :revenue_attribution_identifier,
      :entity_type,
      :entity_identifier,
      :entity_name,
      :customer_aws_account_id,
      :revenue_share_percent,
      :effective_from,
      :effective_until,
      :status,
      :created_date,
      :last_modified_date,
      :revenue_attribution_revision,
      :revenue_attribution_latest_revision,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog that contains the resource.</p>
    #   @return [String]
    # @!attribute revenue_attribution_identifier
    #   <p>The revenue attribution identifier.</p>
    #   @return [String]
    class GetRevenueAttributionAllocationsTaskInput < Struct.new(
      nil,
      :catalog,
      :revenue_attribution_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>The unique identifier for the asynchronous task.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Current task status.</p>
    #   @return [String]
    # @!attribute catalog
    #   <p>The catalog used for this task.</p>
    #   @return [String]
    # @!attribute revenue_attribution_arn
    #   <p>ARN of the revenue attribution resource.</p>
    #   @return [String]
    # @!attribute started_at
    #   <p>When processing started.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>When processing ended. Only present when COMPLETE or FAILED.</p>
    #   @return [Time]
    # @!attribute total_revenue_attribution_allocation_records
    #   <p>Total revenue attribution allocation records in the batch.</p>
    #   @return [Integer]
    # @!attribute description
    #   <p>Human-readable description, if provided at creation.</p>
    #   @return [String]
    # @!attribute revenue_attribution_latest_revision
    #   <p>The revision number assigned to this batch. Only present when COMPLETE.</p>
    #   @return [String]
    # @!attribute error_detail_list
    #   <p>All errors discovered during async processing. Only present when FAILED.</p>
    #   @return [Array<Types::RevenueAttributionAllocationErrorDetail>]
    class GetRevenueAttributionAllocationsTaskOutput < Struct.new(
      nil,
      :task_id,
      :status,
      :catalog,
      :revenue_attribution_arn,
      :started_at,
      :ended_at,
      :total_revenue_attribution_allocation_records,
      :description,
      :revenue_attribution_latest_revision,
      :error_detail_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog that the revenue attribution belongs to.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The unique identifier of the revenue attribution to retrieve. Accepts a direct ID or ARN.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The revision of the attribution to retrieve. Omit to return the latest revision.</p>
    #   @return [String]
    class GetRevenueAttributionInput < Struct.new(
      nil,
      :catalog,
      :identifier,
      :revision,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the revenue attribution.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the revenue attribution.</p>
    #   @return [String]
    # @!attribute catalog
    #   <p>The catalog that the revenue attribution belongs to.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The display name of the revenue attribution.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the revenue attribution.</p>
    #   @return [String]
    # @!attribute tenancy_model
    #   <p>The tenancy model for this revenue attribution.</p>
    #   @return [String]
    # @!attribute marketplace_product
    #   <p>The associated AWS Marketplace product listing, if set.</p>
    #   @return [Types::MarketplaceProductSummary]
    # @!attribute created_date
    #   <p>The date when the revenue attribution was created.</p>
    #   @return [Time]
    # @!attribute last_modified_date
    #   <p>The date when the revenue attribution was last modified.</p>
    #   @return [Time]
    # @!attribute revision
    #   <p>The revision of the retrieved attribution.</p>
    #   @return [String]
    # @!attribute latest_revision
    #   <p>The latest revision of the attribution.</p>
    #   @return [String]
    # @!attribute effective_from
    #   <p>The date from which this revenue attribution is effective, derived from the earliest allocation start date (YYYY-MM-DD).</p>
    #   @return [String]
    # @!attribute effective_until
    #   <p>The date until which this revenue attribution is effective, derived from the latest allocation end date (YYYY-MM-DD).</p>
    #   @return [String]
    # @!attribute total_active_revenue_attribution_allocation_count
    #   <p>The total number of allocations under this revenue attribution whose Status is ACTIVE.</p>
    #   @return [Integer]
    # @!attribute total_revenue_attribution_allocation_count
    #   <p>The total number of allocations under this revenue attribution, counting both ACTIVE and INACTIVE.</p>
    #   @return [Integer]
    class GetRevenueAttributionOutput < Struct.new(
      nil,
      :arn,
      :id,
      :catalog,
      :name,
      :description,
      :tenancy_model,
      :marketplace_product,
      :created_date,
      :last_modified_date,
      :revision,
      :latest_revision,
      :effective_from,
      :effective_until,
      :total_active_revenue_attribution_allocation_count,
      :total_revenue_attribution_allocation_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An internal server error occurred. Retry your request.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog containing the allocations.</p>
    #   @return [String]
    # @!attribute product_id
    #   <p>The AWS Marketplace product identifier for the parent revenue share.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Filter by allocation status.</p>
    #   @return [String]
    # @!attribute after_effective_from
    #   <p>Inclusive lower bound for EffectiveFrom date filter.</p>
    #   @return [String]
    # @!attribute before_effective_from
    #   <p>Exclusive upper bound for EffectiveFrom date filter (half-open range).</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>The field to sort marketplace revenue share allocations by.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The direction to sort results. Defaults to DESCENDING.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token from a previous response.</p>
    #   @return [String]
    # @!attribute marketplace_revenue_share_revision
    #   <p>Optional share revision for historical list. Returns allocations as they existed at this revision.</p>
    #   @return [String]
    class ListMarketplaceRevenueShareAllocationsInput < Struct.new(
      nil,
      :catalog,
      :product_id,
      :status,
      :after_effective_from,
      :before_effective_from,
      :sort_by,
      :sort_order,
      :max_results,
      :next_token,
      :marketplace_revenue_share_revision,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute marketplace_revenue_share_allocation_summaries
    #   <p>The list of allocation summaries for the current page.</p>
    #   @return [Array<Types::MarketplaceRevenueShareAllocationSummary>]
    # @!attribute next_token
    #   <p>Pagination token for the next page. Absent if no more results.</p>
    #   @return [String]
    class ListMarketplaceRevenueShareAllocationsOutput < Struct.new(
      nil,
      :marketplace_revenue_share_allocation_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog to list marketplace revenue shares from.</p>
    #   @return [String]
    # @!attribute product_ids
    #   <p>Filter results to only include shares with these product identifiers.</p>
    #   @return [Array<String>]
    # @!attribute product_codes
    #   <p>Filter results to only include shares with these product codes.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Token for pagination. Use the value returned in the previous response to retrieve the next page.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>The field to sort marketplace revenue shares by.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The direction to sort results.</p>
    #   @return [String]
    # @!attribute created_after
    #   <p>Filter results to only include marketplace revenue shares created after this timestamp.</p>
    #   @return [Time]
    # @!attribute created_before
    #   <p>Filter results to only include marketplace revenue shares created before this timestamp.</p>
    #   @return [Time]
    class ListMarketplaceRevenueSharesInput < Struct.new(
      nil,
      :catalog,
      :product_ids,
      :product_codes,
      :max_results,
      :next_token,
      :sort_by,
      :sort_order,
      :created_after,
      :created_before,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute marketplace_revenue_share_summaries
    #   <p>The list of marketplace revenue share summaries.</p>
    #   @return [Array<Types::MarketplaceRevenueShareSummary>]
    # @!attribute next_token
    #   <p>Token for pagination. Present if there are more results available.</p>
    #   @return [String]
    class ListMarketplaceRevenueSharesOutput < Struct.new(
      nil,
      :marketplace_revenue_share_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog that contains the resource.</p>
    #   @return [String]
    # @!attribute revenue_attribution_identifier
    #   <p>The revenue attribution identifier to query.</p>
    #   @return [String]
    # @!attribute entity_type_filters
    #   <p>Filter by deal entity types.</p>
    #   @return [Array<String>]
    # @!attribute entity_identifier_filters
    #   <p>Filter by deal entity identifiers.</p>
    #   @return [Array<String>]
    # @!attribute customer_aws_account_id_filters
    #   <p>Filter by customer AWS account IDs for associated deal entities.</p>
    #   @return [Array<String>]
    # @!attribute status_filter
    #   <p>Filter by allocation status.</p>
    #   @return [String]
    # @!attribute after_effective_from
    #   <p>Inclusive lower bound for EffectiveFrom date filter.</p>
    #   @return [String]
    # @!attribute before_effective_from
    #   <p>Exclusive upper bound for EffectiveFrom date filter (half-open range).</p>
    #   @return [String]
    # @!attribute after_effective_until
    #   <p>Inclusive lower bound for EffectiveUntil date filter.</p>
    #   @return [String]
    # @!attribute before_effective_until
    #   <p>Exclusive upper bound for EffectiveUntil date filter (half-open range).</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>Field to sort by.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>Sort direction. Defaults to ASCENDING.</p>
    #   @return [String]
    # @!attribute revenue_attribution_revision
    #   <p>Point-in-time revision number to query.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum results per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token from previous response.</p>
    #   @return [String]
    class ListRevenueAttributionAllocationsInput < Struct.new(
      nil,
      :catalog,
      :revenue_attribution_identifier,
      :entity_type_filters,
      :entity_identifier_filters,
      :customer_aws_account_id_filters,
      :status_filter,
      :after_effective_from,
      :before_effective_from,
      :after_effective_until,
      :before_effective_until,
      :sort_by,
      :sort_order,
      :revenue_attribution_revision,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute revenue_attribution_allocation_summaries
    #   <p>Paginated list of allocations matching filters.</p>
    #   @return [Array<Types::RevenueAttributionAllocationSummary>]
    # @!attribute next_token
    #   <p>Token for next page. Absent if no more results.</p>
    #   @return [String]
    class ListRevenueAttributionAllocationsOutput < Struct.new(
      nil,
      :revenue_attribution_allocation_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog to list revenue attributions from.</p>
    #   @return [String]
    # @!attribute identifiers
    #   <p>Filter results to only include revenue attributions with the specified identifiers.</p>
    #   @return [Array<String>]
    # @!attribute created_after
    #   <p>Filter results to only include revenue attributions created after this timestamp.</p>
    #   @return [Time]
    # @!attribute created_before
    #   <p>Filter results to only include revenue attributions created before this timestamp.</p>
    #   @return [Time]
    # @!attribute sort_by
    #   <p>The field to sort revenue attributions by.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The direction to sort results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Token for pagination. Use the value returned in the previous response to retrieve the next page.</p>
    #   @return [String]
    class ListRevenueAttributionsInput < Struct.new(
      nil,
      :catalog,
      :identifiers,
      :created_after,
      :created_before,
      :sort_by,
      :sort_order,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute revenue_attribution_summaries
    #   <p>The list of revenue attribution summaries.</p>
    #   @return [Array<Types::AttributionSummary>]
    # @!attribute next_token
    #   <p>Token for pagination. Present if there are more results available.</p>
    #   @return [String]
    class ListRevenueAttributionsOutput < Struct.new(
      nil,
      :revenue_attribution_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to list tags for.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags associated with the resource.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceOutput < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Read-time AWS Marketplace product attributes returned in revenue attribution responses, including service-resolved fields.</p>
    # @!attribute product_id
    #   <p>The product identifier provided at attribution creation.</p>
    #   @return [String]
    # @!attribute product_code
    #   <p>The AWS Marketplace product code resolved using the product identifier.</p>
    #   @return [String]
    # @!attribute product_name
    #   <p>The display name of the AWS Marketplace product.</p>
    #   @return [String]
    class MarketplaceProductSummary < Struct.new(
      nil,
      :product_id,
      :product_code,
      :product_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a marketplace revenue share allocation.</p>
    # @!attribute marketplace_revenue_share_allocation_id
    #   <p>The unique identifier of the allocation.</p>
    #   @return [String]
    # @!attribute product_id
    #   <p>The AWS Marketplace product identifier.</p>
    #   @return [String]
    # @!attribute product_name
    #   <p>The display name of the AWS Marketplace product.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the parent marketplace revenue share.</p>
    #   @return [String]
    # @!attribute effective_from
    #   <p>The effective start date of the allocation.</p>
    #   @return [String]
    # @!attribute effective_until
    #   <p>The effective end date of the allocation, or null if open-ended.</p>
    #   @return [String]
    # @!attribute revenue_share_percent
    #   <p>The revenue share percentage.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the allocation.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The date when the allocation was created.</p>
    #   @return [Time]
    # @!attribute last_modified_date
    #   <p>The date when the allocation was last modified.</p>
    #   @return [Time]
    class MarketplaceRevenueShareAllocationSummary < Struct.new(
      nil,
      :marketplace_revenue_share_allocation_id,
      :product_id,
      :product_name,
      :arn,
      :effective_from,
      :effective_until,
      :revenue_share_percent,
      :status,
      :created_date,
      :last_modified_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a marketplace revenue share.</p>
    # @!attribute product_id
    #   <p>The AWS Marketplace product identifier.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the marketplace revenue share.</p>
    #   @return [String]
    # @!attribute catalog
    #   <p>The catalog that the marketplace revenue share belongs to.</p>
    #   @return [String]
    # @!attribute product_code
    #   <p>The AWS Marketplace product code.</p>
    #   @return [String]
    # @!attribute product_name
    #   <p>The display name of the AWS Marketplace product.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The date when the marketplace revenue share was created.</p>
    #   @return [Time]
    # @!attribute last_modified_date
    #   <p>The date when the marketplace revenue share was last modified.</p>
    #   @return [Time]
    # @!attribute latest_revision
    #   <p>The latest revision number of the marketplace revenue share.</p>
    #   @return [Integer]
    # @!attribute total_active_marketplace_revenue_share_allocation_count
    #   <p>The number of active allocations under this share.</p>
    #   @return [Integer]
    # @!attribute total_marketplace_revenue_share_allocation_count
    #   <p>The total number of allocations under this share.</p>
    #   @return [Integer]
    class MarketplaceRevenueShareSummary < Struct.new(
      nil,
      :product_id,
      :arn,
      :catalog,
      :product_code,
      :product_name,
      :created_date,
      :last_modified_date,
      :latest_revision,
      :total_active_marketplace_revenue_share_allocation_count,
      :total_marketplace_revenue_share_allocation_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource was not found.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason the resource was not found.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details of a validation error for a single revenue attribution allocation record.</p>
    # @!attribute revenue_attribution_allocation_id
    #   <p>The allocation identifier. Present for UPDATE actions; absent for CREATE actions.</p>
    #   @return [String]
    # @!attribute entity_type
    #   <p>The deal entity type of the failing record.</p>
    #   @return [String]
    # @!attribute entity_id
    #   <p>The deal entity identifier of the failing record.</p>
    #   @return [String]
    # @!attribute customer_aws_account_id
    #   <p>The customer AWS account ID of the failing record.</p>
    #   @return [String]
    # @!attribute effective_from
    #   <p>Effective start date of the failing record.</p>
    #   @return [String]
    # @!attribute effective_until
    #   <p>Effective end date of the failing record.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The action that was attempted.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>Machine-readable error code.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>Human-readable error description.</p>
    #   @return [String]
    class RevenueAttributionAllocationErrorDetail < Struct.new(
      nil,
      :revenue_attribution_allocation_id,
      :entity_type,
      :entity_id,
      :customer_aws_account_id,
      :effective_from,
      :effective_until,
      :action,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a revenue attribution allocation.</p>
    # @!attribute revenue_attribution_allocation_id
    #   <p>Unique allocation identifier.</p>
    #   @return [String]
    # @!attribute revenue_attribution_identifier
    #   <p>The revenue attribution identifier.</p>
    #   @return [String]
    # @!attribute entity_type
    #   <p>The type of the associated deal entity.</p>
    #   @return [String]
    # @!attribute entity_identifier
    #   <p>The unique identifier of the associated deal entity.</p>
    #   @return [String]
    # @!attribute entity_name
    #   <p>The display name of the associated deal entity.</p>
    #   @return [String]
    # @!attribute customer_aws_account_id
    #   <p>The customer AWS account ID for this associated deal entity.</p>
    #   @return [String]
    # @!attribute revenue_share_percent
    #   <p>Revenue share percentage.</p>
    #   @return [String]
    # @!attribute effective_from
    #   <p>First day of the effective month.</p>
    #   @return [String]
    # @!attribute effective_until
    #   <p>Last day of the effective month.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Current allocation status.</p>
    #   @return [String]
    class RevenueAttributionAllocationSummary < Struct.new(
      nil,
      :revenue_attribution_allocation_id,
      :revenue_attribution_identifier,
      :entity_type,
      :entity_identifier,
      :entity_name,
      :customer_aws_account_id,
      :revenue_share_percent,
      :effective_from,
      :effective_until,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A single allocation change within a batch request.</p>
    # @!attribute action
    #   <p>The operation type: CREATE or UPDATE.</p>
    #   @return [String]
    # @!attribute revenue_attribution_allocation_id
    #   <p>The allocation to update. Required when Action is UPDATE.</p>
    #   @return [String]
    # @!attribute entity_type
    #   <p>The type of the associated deal entity.</p>
    #   @return [String]
    # @!attribute entity_identifier
    #   <p>The unique identifier of the associated deal entity.</p>
    #   @return [String]
    # @!attribute customer_aws_account_id
    #   <p>The customer AWS account ID for this associated deal entity.</p>
    #   @return [String]
    # @!attribute revenue_share_percent
    #   <p>Revenue share percentage.</p>
    #   @return [String]
    # @!attribute effective_from
    #   <p>The effective start date for this allocation.</p>
    #   @return [String]
    # @!attribute effective_until
    #   <p>The effective end date for this allocation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Allocation status. Defaults to ACTIVE on CREATE.</p>
    #   @return [String]
    class RevenueShareAllocation < Struct.new(
      nil,
      :action,
      :revenue_attribution_allocation_id,
      :entity_type,
      :entity_identifier,
      :customer_aws_account_id,
      :revenue_share_percent,
      :effective_from,
      :effective_until,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request would exceed a service quota limit.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason the service quota was exceeded.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog context for this operation.</p>
    #   @return [String]
    # @!attribute revenue_attribution_identifier
    #   <p>The revenue attribution identifier.</p>
    #   @return [String]
    # @!attribute revenue_attribution_revision
    #   <p>Current revision of the revenue attribution for optimistic locking.</p>
    #   @return [String]
    # @!attribute revenue_share_allocations
    #   <p>The list of allocation changes to process in this batch.</p>
    #   @return [Array<Types::RevenueShareAllocation>]
    # @!attribute client_token
    #   <p>Idempotency token for deduplication and retry.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Human-readable description of the batch.</p>
    #   @return [String]
    class StartRevenueAttributionAllocationsTaskInput < Struct.new(
      nil,
      :catalog,
      :revenue_attribution_identifier,
      :revenue_attribution_revision,
      :revenue_share_allocations,
      :client_token,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>Unique identifier for the submitted task.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Initial task status. Always IN_PROGRESS on successful submission.</p>
    #   @return [String]
    # @!attribute catalog
    #   <p>The catalog used for this task.</p>
    #   @return [String]
    # @!attribute revenue_attribution_arn
    #   <p>ARN of the revenue attribution resource.</p>
    #   @return [String]
    # @!attribute started_at
    #   <p>When processing started.</p>
    #   @return [Time]
    # @!attribute total_revenue_attribution_allocation_records
    #   <p>Total revenue attribution allocation records in the batch.</p>
    #   @return [Integer]
    class StartRevenueAttributionAllocationsTaskOutput < Struct.new(
      nil,
      :task_id,
      :status,
      :catalog,
      :revenue_attribution_arn,
      :started_at,
      :total_revenue_attribution_allocation_records,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A key-value pair used for organizing and managing resources through metadata tags.</p>
    # @!attribute key
    #   <p>The key portion of the tag.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value portion of the tag.</p>
    #   @return [String]
    class Tag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to tag.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to add to the resource.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was throttled due to too many requests. Retry your request.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute service_code
    #   <p>The service code associated with the throttling error.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The quota code associated with the throttling error.</p>
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      :service_code,
      :quota_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to remove tags from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag keys to remove from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog containing the allocation.</p>
    #   @return [String]
    # @!attribute product_id
    #   <p>The AWS Marketplace product identifier for the parent revenue share.</p>
    #   @return [String]
    # @!attribute marketplace_revenue_share_allocation_id
    #   <p>The identifier of the allocation to update.</p>
    #   @return [String]
    # @!attribute marketplace_revenue_share_revision
    #   <p>The current revision of the parent share. Must match for optimistic concurrency control.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique token to ensure idempotency of the update request.</p>
    #   @return [String]
    # @!attribute effective_from
    #   <p>The new effective start date. Must be the first day of a month. Only modifiable on future-dated allocations.</p>
    #   @return [String]
    # @!attribute effective_until
    #   <p>The new effective end date. Must be the last day of a month and on or after today.</p>
    #   @return [String]
    # @!attribute revenue_share_percent
    #   <p>The new revenue share percentage. Only modifiable on future-dated allocations.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The new status. Set to INACTIVE for soft-delete. Only modifiable on future-dated allocations.</p>
    #   @return [String]
    class UpdateMarketplaceRevenueShareAllocationInput < Struct.new(
      nil,
      :catalog,
      :product_id,
      :marketplace_revenue_share_allocation_id,
      :marketplace_revenue_share_revision,
      :client_token,
      :effective_from,
      :effective_until,
      :revenue_share_percent,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute marketplace_revenue_share_allocation_id
    #   <p>The unique identifier of the updated allocation.</p>
    #   @return [String]
    # @!attribute product_id
    #   <p>The AWS Marketplace product identifier.</p>
    #   @return [String]
    # @!attribute product_name
    #   <p>The display name of the AWS Marketplace product.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the parent marketplace revenue share.</p>
    #   @return [String]
    # @!attribute effective_from
    #   <p>The effective start date of the allocation.</p>
    #   @return [String]
    # @!attribute effective_until
    #   <p>The effective end date of the allocation, or null if open-ended.</p>
    #   @return [String]
    # @!attribute revenue_share_percent
    #   <p>The revenue share percentage.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the allocation.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The date when the allocation was created.</p>
    #   @return [Time]
    # @!attribute last_modified_date
    #   <p>The date when the allocation was last modified.</p>
    #   @return [Time]
    # @!attribute latest_marketplace_revenue_share_revision
    #   <p>The latest revision of the parent marketplace revenue share after the update.</p>
    #   @return [String]
    class UpdateMarketplaceRevenueShareAllocationOutput < Struct.new(
      nil,
      :marketplace_revenue_share_allocation_id,
      :product_id,
      :product_name,
      :arn,
      :effective_from,
      :effective_until,
      :revenue_share_percent,
      :status,
      :created_date,
      :last_modified_date,
      :latest_marketplace_revenue_share_revision,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog that the revenue attribution belongs to.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The unique identifier of the revenue attribution to update. Accepts a direct ID or ARN.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique token to ensure idempotency of the update request.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated description of the revenue attribution.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The current revision of the revenue attribution. Must match the server's current value.</p>
    #   @return [String]
    class UpdateRevenueAttributionInput < Struct.new(
      nil,
      :catalog,
      :identifier,
      :client_token,
      :description,
      :revision,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the updated revenue attribution.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the updated revenue attribution.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated description of the revenue attribution.</p>
    #   @return [String]
    # @!attribute last_modified_date
    #   <p>The date when the attribution was last modified.</p>
    #   @return [Time]
    # @!attribute latest_revision
    #   <p>The latest revision of the attribution after the update.</p>
    #   @return [String]
    class UpdateRevenueAttributionOutput < Struct.new(
      nil,
      :id,
      :arn,
      :description,
      :last_modified_date,
      :latest_revision,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request failed validation due to invalid input parameters.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the validation failure.</p>
    #   @return [String]
    # @!attribute field_list
    #   <p>A list of fields that failed validation.</p>
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

    # <p>Details about a specific field that failed validation.</p>
    # @!attribute name
    #   <p>The name of the field that failed validation.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A human-readable message describing why the field validation failed.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The specific validation error code indicating the type of validation failure.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :name,
      :message,
      :code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
