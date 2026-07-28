# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::PartnerCentralRevenueMeasurement
  module Types

    # The request was denied due to insufficient permissions.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the access denial.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary representation of a revenue attribution returned in list
    # operations.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the revenue attribution.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the revenue attribution.
    #   @return [String]
    #
    # @!attribute [rw] catalog
    #   The catalog that the revenue attribution belongs to.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The display name of the revenue attribution.
    #   @return [String]
    #
    # @!attribute [rw] tenancy_model
    #   The tenancy model for this revenue attribution.
    #   @return [String]
    #
    # @!attribute [rw] marketplace_product
    #   The AWS Marketplace product attributes associated with this
    #   attribution, if set.
    #   @return [Types::MarketplaceProductSummary]
    #
    # @!attribute [rw] created_date
    #   The date when the revenue attribution was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_date
    #   The date when the revenue attribution was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] latest_revision
    #   The latest revision of the revenue attribution resource.
    #   @return [String]
    #
    # @!attribute [rw] effective_from
    #   The date from which this revenue attribution is effective, derived
    #   from the earliest allocation start date (YYYY-MM-DD).
    #   @return [String]
    #
    # @!attribute [rw] effective_until
    #   The date until which this revenue attribution is effective, derived
    #   from the latest allocation end date (YYYY-MM-DD).
    #   @return [String]
    #
    # @!attribute [rw] total_active_revenue_attribution_allocation_count
    #   The total number of allocations under this revenue attribution whose
    #   Status is ACTIVE.
    #   @return [Integer]
    #
    # @!attribute [rw] total_revenue_attribution_allocation_count
    #   The total number of allocations under this revenue attribution,
    #   counting both ACTIVE and INACTIVE.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/AttributionSummary AWS API Documentation
    #
    class AttributionSummary < Struct.new(
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
      :total_revenue_attribution_allocation_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request could not be completed due to a conflict with the current
    # state of the resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the conflict.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog in which to create the allocation.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The AWS Marketplace product identifier for the parent revenue share.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique token to ensure idempotency of the create request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] effective_from
    #   The effective start date for the allocation. Must be the first day
    #   of a month.
    #   @return [String]
    #
    # @!attribute [rw] effective_until
    #   The effective end date for the allocation. Must be the last day of a
    #   month (YYYY-MM-DD). Omit for open-ended allocations.
    #   @return [String]
    #
    # @!attribute [rw] revenue_share_percent
    #   The revenue share percentage for this allocation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/CreateMarketplaceRevenueShareAllocationInput AWS API Documentation
    #
    class CreateMarketplaceRevenueShareAllocationInput < Struct.new(
      :catalog,
      :product_id,
      :client_token,
      :effective_from,
      :effective_until,
      :revenue_share_percent)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] marketplace_revenue_share_allocation_id
    #   The unique identifier of the newly created allocation.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The AWS Marketplace product identifier.
    #   @return [String]
    #
    # @!attribute [rw] product_name
    #   The display name of the AWS Marketplace product.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the allocation.
    #   @return [String]
    #
    # @!attribute [rw] effective_from
    #   The effective start date of the allocation.
    #   @return [String]
    #
    # @!attribute [rw] effective_until
    #   The effective end date of the allocation, or null if open-ended.
    #   @return [String]
    #
    # @!attribute [rw] revenue_share_percent
    #   The revenue share percentage.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the allocation.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date when the allocation was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_date
    #   The date when the allocation was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] latest_marketplace_revenue_share_revision
    #   The latest revision of the parent marketplace revenue share.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/CreateMarketplaceRevenueShareAllocationOutput AWS API Documentation
    #
    class CreateMarketplaceRevenueShareAllocationOutput < Struct.new(
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
      :latest_marketplace_revenue_share_revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog in which to create the marketplace revenue share.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique token to ensure idempotency of the create request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The AWS Marketplace product identifier for this revenue share.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to associate with the marketplace revenue share upon creation.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/CreateMarketplaceRevenueShareInput AWS API Documentation
    #
    class CreateMarketplaceRevenueShareInput < Struct.new(
      :catalog,
      :client_token,
      :product_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_id
    #   The AWS Marketplace product identifier of the newly created revenue
    #   share.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the newly created marketplace
    #   revenue share.
    #   @return [String]
    #
    # @!attribute [rw] catalog
    #   The catalog that the marketplace revenue share belongs to.
    #   @return [String]
    #
    # @!attribute [rw] product_code
    #   The AWS Marketplace product code.
    #   @return [String]
    #
    # @!attribute [rw] product_name
    #   The display name of the AWS Marketplace product.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date when the marketplace revenue share was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_date
    #   The date when the marketplace revenue share was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] revision
    #   The revision number of the newly created marketplace revenue share.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/CreateMarketplaceRevenueShareOutput AWS API Documentation
    #
    class CreateMarketplaceRevenueShareOutput < Struct.new(
      :product_id,
      :arn,
      :catalog,
      :product_code,
      :product_name,
      :created_date,
      :last_modified_date,
      :revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog in which to create the revenue attribution.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique token to ensure idempotency of the create request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the revenue attribution. Must be unique within the
    #   catalog and the partner's account.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the revenue attribution.
    #   @return [String]
    #
    # @!attribute [rw] tenancy_model
    #   The tenancy model for this revenue attribution.
    #   @return [String]
    #
    # @!attribute [rw] product_identifier
    #   The unique product identifier in AWS Marketplace. Accepts a product
    #   entity ID (e.g., prod-abc123def4567) or a product ARN.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to associate with the revenue attribution upon creation.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/CreateRevenueAttributionInput AWS API Documentation
    #
    class CreateRevenueAttributionInput < Struct.new(
      :catalog,
      :client_token,
      :name,
      :description,
      :tenancy_model,
      :product_identifier,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the newly created revenue attribution.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the newly created revenue
    #   attribution.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the revenue attribution.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the revenue attribution.
    #   @return [String]
    #
    # @!attribute [rw] tenancy_model
    #   The tenancy model for this revenue attribution.
    #   @return [String]
    #
    # @!attribute [rw] marketplace_product
    #   The associated AWS Marketplace product listing, if set at creation.
    #   @return [Types::MarketplaceProductSummary]
    #
    # @!attribute [rw] revision
    #   The revision of the newly created attribution resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/CreateRevenueAttributionOutput AWS API Documentation
    #
    class CreateRevenueAttributionOutput < Struct.new(
      :id,
      :arn,
      :name,
      :description,
      :tenancy_model,
      :marketplace_product,
      :revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog that the allocation belongs to.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The AWS Marketplace product identifier of the parent revenue share.
    #   @return [String]
    #
    # @!attribute [rw] marketplace_revenue_share_allocation_id
    #   The unique identifier of the allocation to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] marketplace_revenue_share_revision
    #   The revision of the parent marketplace revenue share at which to
    #   retrieve the allocation. Omit to return the latest.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/GetMarketplaceRevenueShareAllocationInput AWS API Documentation
    #
    class GetMarketplaceRevenueShareAllocationInput < Struct.new(
      :catalog,
      :product_id,
      :marketplace_revenue_share_allocation_id,
      :marketplace_revenue_share_revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] marketplace_revenue_share_allocation_id
    #   The unique identifier of the allocation.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The AWS Marketplace product identifier.
    #   @return [String]
    #
    # @!attribute [rw] product_name
    #   The display name of the AWS Marketplace product.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the allocation.
    #   @return [String]
    #
    # @!attribute [rw] effective_from
    #   The effective start date of the allocation.
    #   @return [String]
    #
    # @!attribute [rw] effective_until
    #   The effective end date of the allocation, or null if open-ended.
    #   @return [String]
    #
    # @!attribute [rw] revenue_share_percent
    #   The revenue share percentage.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the allocation.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date when the allocation was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_date
    #   The date when the allocation was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] latest_marketplace_revenue_share_revision
    #   The latest revision of the parent marketplace revenue share.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/GetMarketplaceRevenueShareAllocationOutput AWS API Documentation
    #
    class GetMarketplaceRevenueShareAllocationOutput < Struct.new(
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
      :latest_marketplace_revenue_share_revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog that the marketplace revenue share belongs to.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The AWS Marketplace product identifier of the revenue share to
    #   retrieve.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The revision of the marketplace revenue share to retrieve. Omit to
    #   return the latest revision.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/GetMarketplaceRevenueShareInput AWS API Documentation
    #
    class GetMarketplaceRevenueShareInput < Struct.new(
      :catalog,
      :product_id,
      :revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_id
    #   The AWS Marketplace product identifier of the revenue share.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the marketplace revenue share.
    #   @return [String]
    #
    # @!attribute [rw] catalog
    #   The catalog that the marketplace revenue share belongs to.
    #   @return [String]
    #
    # @!attribute [rw] product_code
    #   The AWS Marketplace product code.
    #   @return [String]
    #
    # @!attribute [rw] product_name
    #   The display name of the AWS Marketplace product.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date when the marketplace revenue share was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_date
    #   The date when the marketplace revenue share was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] revision
    #   The revision number of the retrieved marketplace revenue share.
    #   @return [Integer]
    #
    # @!attribute [rw] latest_revision
    #   The latest revision number of the marketplace revenue share.
    #   @return [Integer]
    #
    # @!attribute [rw] total_active_marketplace_revenue_share_allocation_count
    #   The number of active allocations under this marketplace revenue
    #   share.
    #   @return [Integer]
    #
    # @!attribute [rw] total_marketplace_revenue_share_allocation_count
    #   The total number of allocations under this marketplace revenue
    #   share.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/GetMarketplaceRevenueShareOutput AWS API Documentation
    #
    class GetMarketplaceRevenueShareOutput < Struct.new(
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
      :total_marketplace_revenue_share_allocation_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog that contains the resource.
    #   @return [String]
    #
    # @!attribute [rw] revenue_attribution_identifier
    #   The revenue attribution identifier.
    #   @return [String]
    #
    # @!attribute [rw] revenue_attribution_allocation_id
    #   The allocation identifier.
    #   @return [String]
    #
    # @!attribute [rw] revenue_attribution_revision
    #   Point-in-time revision number to query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/GetRevenueAttributionAllocationInput AWS API Documentation
    #
    class GetRevenueAttributionAllocationInput < Struct.new(
      :catalog,
      :revenue_attribution_identifier,
      :revenue_attribution_allocation_id,
      :revenue_attribution_revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] revenue_attribution_allocation_id
    #   Unique allocation identifier.
    #   @return [String]
    #
    # @!attribute [rw] revenue_attribution_identifier
    #   The revenue attribution identifier.
    #   @return [String]
    #
    # @!attribute [rw] entity_type
    #   The type of the associated deal entity.
    #   @return [String]
    #
    # @!attribute [rw] entity_identifier
    #   The unique identifier of the associated deal entity.
    #   @return [String]
    #
    # @!attribute [rw] entity_name
    #   The display name of the associated deal entity.
    #   @return [String]
    #
    # @!attribute [rw] customer_aws_account_id
    #   The customer AWS account ID for this associated deal entity.
    #   @return [String]
    #
    # @!attribute [rw] revenue_share_percent
    #   Revenue share percentage.
    #   @return [String]
    #
    # @!attribute [rw] effective_from
    #   First day of the effective month.
    #   @return [String]
    #
    # @!attribute [rw] effective_until
    #   Last day of the effective month.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Current allocation status.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   When the allocation was first created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_date
    #   When the allocation was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] revenue_attribution_revision
    #   The revision of this allocation version.
    #   @return [String]
    #
    # @!attribute [rw] revenue_attribution_latest_revision
    #   The latest committed revision.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/GetRevenueAttributionAllocationOutput AWS API Documentation
    #
    class GetRevenueAttributionAllocationOutput < Struct.new(
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
      :revenue_attribution_latest_revision)
      SENSITIVE = [:customer_aws_account_id]
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog that contains the resource.
    #   @return [String]
    #
    # @!attribute [rw] revenue_attribution_identifier
    #   The revenue attribution identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/GetRevenueAttributionAllocationsTaskInput AWS API Documentation
    #
    class GetRevenueAttributionAllocationsTaskInput < Struct.new(
      :catalog,
      :revenue_attribution_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_id
    #   The unique identifier for the asynchronous task.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Current task status.
    #   @return [String]
    #
    # @!attribute [rw] catalog
    #   The catalog used for this task.
    #   @return [String]
    #
    # @!attribute [rw] revenue_attribution_arn
    #   ARN of the revenue attribution resource.
    #   @return [String]
    #
    # @!attribute [rw] started_at
    #   When processing started.
    #   @return [Time]
    #
    # @!attribute [rw] ended_at
    #   When processing ended. Only present when COMPLETE or FAILED.
    #   @return [Time]
    #
    # @!attribute [rw] total_revenue_attribution_allocation_records
    #   Total revenue attribution allocation records in the batch.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   Human-readable description, if provided at creation.
    #   @return [String]
    #
    # @!attribute [rw] revenue_attribution_latest_revision
    #   The revision number assigned to this batch. Only present when
    #   COMPLETE.
    #   @return [String]
    #
    # @!attribute [rw] error_detail_list
    #   All errors discovered during async processing. Only present when
    #   FAILED.
    #   @return [Array<Types::RevenueAttributionAllocationErrorDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/GetRevenueAttributionAllocationsTaskOutput AWS API Documentation
    #
    class GetRevenueAttributionAllocationsTaskOutput < Struct.new(
      :task_id,
      :status,
      :catalog,
      :revenue_attribution_arn,
      :started_at,
      :ended_at,
      :total_revenue_attribution_allocation_records,
      :description,
      :revenue_attribution_latest_revision,
      :error_detail_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog that the revenue attribution belongs to.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The unique identifier of the revenue attribution to retrieve.
    #   Accepts a direct ID or ARN.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The revision of the attribution to retrieve. Omit to return the
    #   latest revision.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/GetRevenueAttributionInput AWS API Documentation
    #
    class GetRevenueAttributionInput < Struct.new(
      :catalog,
      :identifier,
      :revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the revenue attribution.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the revenue attribution.
    #   @return [String]
    #
    # @!attribute [rw] catalog
    #   The catalog that the revenue attribution belongs to.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The display name of the revenue attribution.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the revenue attribution.
    #   @return [String]
    #
    # @!attribute [rw] tenancy_model
    #   The tenancy model for this revenue attribution.
    #   @return [String]
    #
    # @!attribute [rw] marketplace_product
    #   The associated AWS Marketplace product listing, if set.
    #   @return [Types::MarketplaceProductSummary]
    #
    # @!attribute [rw] created_date
    #   The date when the revenue attribution was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_date
    #   The date when the revenue attribution was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] revision
    #   The revision of the retrieved attribution.
    #   @return [String]
    #
    # @!attribute [rw] latest_revision
    #   The latest revision of the attribution.
    #   @return [String]
    #
    # @!attribute [rw] effective_from
    #   The date from which this revenue attribution is effective, derived
    #   from the earliest allocation start date (YYYY-MM-DD).
    #   @return [String]
    #
    # @!attribute [rw] effective_until
    #   The date until which this revenue attribution is effective, derived
    #   from the latest allocation end date (YYYY-MM-DD).
    #   @return [String]
    #
    # @!attribute [rw] total_active_revenue_attribution_allocation_count
    #   The total number of allocations under this revenue attribution whose
    #   Status is ACTIVE.
    #   @return [Integer]
    #
    # @!attribute [rw] total_revenue_attribution_allocation_count
    #   The total number of allocations under this revenue attribution,
    #   counting both ACTIVE and INACTIVE.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/GetRevenueAttributionOutput AWS API Documentation
    #
    class GetRevenueAttributionOutput < Struct.new(
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
      :total_revenue_attribution_allocation_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal server error occurred. Retry your request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog containing the allocations.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The AWS Marketplace product identifier for the parent revenue share.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Filter by allocation status.
    #   @return [String]
    #
    # @!attribute [rw] after_effective_from
    #   Inclusive lower bound for EffectiveFrom date filter.
    #   @return [String]
    #
    # @!attribute [rw] before_effective_from
    #   Exclusive upper bound for EffectiveFrom date filter (half-open
    #   range).
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The field to sort marketplace revenue share allocations by.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The direction to sort results. Defaults to DESCENDING.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token from a previous response.
    #   @return [String]
    #
    # @!attribute [rw] marketplace_revenue_share_revision
    #   Optional share revision for historical list. Returns allocations as
    #   they existed at this revision.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/ListMarketplaceRevenueShareAllocationsInput AWS API Documentation
    #
    class ListMarketplaceRevenueShareAllocationsInput < Struct.new(
      :catalog,
      :product_id,
      :status,
      :after_effective_from,
      :before_effective_from,
      :sort_by,
      :sort_order,
      :max_results,
      :next_token,
      :marketplace_revenue_share_revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] marketplace_revenue_share_allocation_summaries
    #   The list of allocation summaries for the current page.
    #   @return [Array<Types::MarketplaceRevenueShareAllocationSummary>]
    #
    # @!attribute [rw] next_token
    #   Pagination token for the next page. Absent if no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/ListMarketplaceRevenueShareAllocationsOutput AWS API Documentation
    #
    class ListMarketplaceRevenueShareAllocationsOutput < Struct.new(
      :marketplace_revenue_share_allocation_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog to list marketplace revenue shares from.
    #   @return [String]
    #
    # @!attribute [rw] product_ids
    #   Filter results to only include shares with these product
    #   identifiers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] product_codes
    #   Filter results to only include shares with these product codes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token for pagination. Use the value returned in the previous
    #   response to retrieve the next page.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The field to sort marketplace revenue shares by.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The direction to sort results.
    #   @return [String]
    #
    # @!attribute [rw] created_after
    #   Filter results to only include marketplace revenue shares created
    #   after this timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] created_before
    #   Filter results to only include marketplace revenue shares created
    #   before this timestamp.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/ListMarketplaceRevenueSharesInput AWS API Documentation
    #
    class ListMarketplaceRevenueSharesInput < Struct.new(
      :catalog,
      :product_ids,
      :product_codes,
      :max_results,
      :next_token,
      :sort_by,
      :sort_order,
      :created_after,
      :created_before)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] marketplace_revenue_share_summaries
    #   The list of marketplace revenue share summaries.
    #   @return [Array<Types::MarketplaceRevenueShareSummary>]
    #
    # @!attribute [rw] next_token
    #   Token for pagination. Present if there are more results available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/ListMarketplaceRevenueSharesOutput AWS API Documentation
    #
    class ListMarketplaceRevenueSharesOutput < Struct.new(
      :marketplace_revenue_share_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog that contains the resource.
    #   @return [String]
    #
    # @!attribute [rw] revenue_attribution_identifier
    #   The revenue attribution identifier to query.
    #   @return [String]
    #
    # @!attribute [rw] entity_type_filters
    #   Filter by deal entity types.
    #   @return [Array<String>]
    #
    # @!attribute [rw] entity_identifier_filters
    #   Filter by deal entity identifiers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] customer_aws_account_id_filters
    #   Filter by customer AWS account IDs for associated deal entities.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status_filter
    #   Filter by allocation status.
    #   @return [String]
    #
    # @!attribute [rw] after_effective_from
    #   Inclusive lower bound for EffectiveFrom date filter.
    #   @return [String]
    #
    # @!attribute [rw] before_effective_from
    #   Exclusive upper bound for EffectiveFrom date filter (half-open
    #   range).
    #   @return [String]
    #
    # @!attribute [rw] after_effective_until
    #   Inclusive lower bound for EffectiveUntil date filter.
    #   @return [String]
    #
    # @!attribute [rw] before_effective_until
    #   Exclusive upper bound for EffectiveUntil date filter (half-open
    #   range).
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   Field to sort by.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   Sort direction. Defaults to ASCENDING.
    #   @return [String]
    #
    # @!attribute [rw] revenue_attribution_revision
    #   Point-in-time revision number to query.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum results per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token from previous response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/ListRevenueAttributionAllocationsInput AWS API Documentation
    #
    class ListRevenueAttributionAllocationsInput < Struct.new(
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
      :next_token)
      SENSITIVE = [:customer_aws_account_id_filters]
      include Aws::Structure
    end

    # @!attribute [rw] revenue_attribution_allocation_summaries
    #   Paginated list of allocations matching filters.
    #   @return [Array<Types::RevenueAttributionAllocationSummary>]
    #
    # @!attribute [rw] next_token
    #   Token for next page. Absent if no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/ListRevenueAttributionAllocationsOutput AWS API Documentation
    #
    class ListRevenueAttributionAllocationsOutput < Struct.new(
      :revenue_attribution_allocation_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog to list revenue attributions from.
    #   @return [String]
    #
    # @!attribute [rw] identifiers
    #   Filter results to only include revenue attributions with the
    #   specified identifiers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_after
    #   Filter results to only include revenue attributions created after
    #   this timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] created_before
    #   Filter results to only include revenue attributions created before
    #   this timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] sort_by
    #   The field to sort revenue attributions by.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The direction to sort results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token for pagination. Use the value returned in the previous
    #   response to retrieve the next page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/ListRevenueAttributionsInput AWS API Documentation
    #
    class ListRevenueAttributionsInput < Struct.new(
      :catalog,
      :identifiers,
      :created_after,
      :created_before,
      :sort_by,
      :sort_order,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] revenue_attribution_summaries
    #   The list of revenue attribution summaries.
    #   @return [Array<Types::AttributionSummary>]
    #
    # @!attribute [rw] next_token
    #   Token for pagination. Present if there are more results available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/ListRevenueAttributionsOutput AWS API Documentation
    #
    class ListRevenueAttributionsOutput < Struct.new(
      :revenue_attribution_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to list tags for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags associated with the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Read-time AWS Marketplace product attributes returned in revenue
    # attribution responses, including service-resolved fields.
    #
    # @!attribute [rw] product_id
    #   The product identifier provided at attribution creation.
    #   @return [String]
    #
    # @!attribute [rw] product_code
    #   The AWS Marketplace product code resolved using the product
    #   identifier.
    #   @return [String]
    #
    # @!attribute [rw] product_name
    #   The display name of the AWS Marketplace product.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/MarketplaceProductSummary AWS API Documentation
    #
    class MarketplaceProductSummary < Struct.new(
      :product_id,
      :product_code,
      :product_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a marketplace revenue share allocation.
    #
    # @!attribute [rw] marketplace_revenue_share_allocation_id
    #   The unique identifier of the allocation.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The AWS Marketplace product identifier.
    #   @return [String]
    #
    # @!attribute [rw] product_name
    #   The display name of the AWS Marketplace product.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the parent marketplace revenue
    #   share.
    #   @return [String]
    #
    # @!attribute [rw] effective_from
    #   The effective start date of the allocation.
    #   @return [String]
    #
    # @!attribute [rw] effective_until
    #   The effective end date of the allocation, or null if open-ended.
    #   @return [String]
    #
    # @!attribute [rw] revenue_share_percent
    #   The revenue share percentage.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the allocation.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date when the allocation was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_date
    #   The date when the allocation was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/MarketplaceRevenueShareAllocationSummary AWS API Documentation
    #
    class MarketplaceRevenueShareAllocationSummary < Struct.new(
      :marketplace_revenue_share_allocation_id,
      :product_id,
      :product_name,
      :arn,
      :effective_from,
      :effective_until,
      :revenue_share_percent,
      :status,
      :created_date,
      :last_modified_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a marketplace revenue share.
    #
    # @!attribute [rw] product_id
    #   The AWS Marketplace product identifier.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the marketplace revenue share.
    #   @return [String]
    #
    # @!attribute [rw] catalog
    #   The catalog that the marketplace revenue share belongs to.
    #   @return [String]
    #
    # @!attribute [rw] product_code
    #   The AWS Marketplace product code.
    #   @return [String]
    #
    # @!attribute [rw] product_name
    #   The display name of the AWS Marketplace product.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date when the marketplace revenue share was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_date
    #   The date when the marketplace revenue share was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] latest_revision
    #   The latest revision number of the marketplace revenue share.
    #   @return [Integer]
    #
    # @!attribute [rw] total_active_marketplace_revenue_share_allocation_count
    #   The number of active allocations under this share.
    #   @return [Integer]
    #
    # @!attribute [rw] total_marketplace_revenue_share_allocation_count
    #   The total number of allocations under this share.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/MarketplaceRevenueShareSummary AWS API Documentation
    #
    class MarketplaceRevenueShareSummary < Struct.new(
      :product_id,
      :arn,
      :catalog,
      :product_code,
      :product_name,
      :created_date,
      :last_modified_date,
      :latest_revision,
      :total_active_marketplace_revenue_share_allocation_count,
      :total_marketplace_revenue_share_allocation_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason the resource was not found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of a validation error for a single revenue attribution
    # allocation record.
    #
    # @!attribute [rw] revenue_attribution_allocation_id
    #   The allocation identifier. Present for UPDATE actions; absent for
    #   CREATE actions.
    #   @return [String]
    #
    # @!attribute [rw] entity_type
    #   The deal entity type of the failing record.
    #   @return [String]
    #
    # @!attribute [rw] entity_id
    #   The deal entity identifier of the failing record.
    #   @return [String]
    #
    # @!attribute [rw] customer_aws_account_id
    #   The customer AWS account ID of the failing record.
    #   @return [String]
    #
    # @!attribute [rw] effective_from
    #   Effective start date of the failing record.
    #   @return [String]
    #
    # @!attribute [rw] effective_until
    #   Effective end date of the failing record.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The action that was attempted.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   Machine-readable error code.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   Human-readable error description.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/RevenueAttributionAllocationErrorDetail AWS API Documentation
    #
    class RevenueAttributionAllocationErrorDetail < Struct.new(
      :revenue_attribution_allocation_id,
      :entity_type,
      :entity_id,
      :customer_aws_account_id,
      :effective_from,
      :effective_until,
      :action,
      :error_code,
      :error_message)
      SENSITIVE = [:customer_aws_account_id]
      include Aws::Structure
    end

    # Summary information about a revenue attribution allocation.
    #
    # @!attribute [rw] revenue_attribution_allocation_id
    #   Unique allocation identifier.
    #   @return [String]
    #
    # @!attribute [rw] revenue_attribution_identifier
    #   The revenue attribution identifier.
    #   @return [String]
    #
    # @!attribute [rw] entity_type
    #   The type of the associated deal entity.
    #   @return [String]
    #
    # @!attribute [rw] entity_identifier
    #   The unique identifier of the associated deal entity.
    #   @return [String]
    #
    # @!attribute [rw] entity_name
    #   The display name of the associated deal entity.
    #   @return [String]
    #
    # @!attribute [rw] customer_aws_account_id
    #   The customer AWS account ID for this associated deal entity.
    #   @return [String]
    #
    # @!attribute [rw] revenue_share_percent
    #   Revenue share percentage.
    #   @return [String]
    #
    # @!attribute [rw] effective_from
    #   First day of the effective month.
    #   @return [String]
    #
    # @!attribute [rw] effective_until
    #   Last day of the effective month.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Current allocation status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/RevenueAttributionAllocationSummary AWS API Documentation
    #
    class RevenueAttributionAllocationSummary < Struct.new(
      :revenue_attribution_allocation_id,
      :revenue_attribution_identifier,
      :entity_type,
      :entity_identifier,
      :entity_name,
      :customer_aws_account_id,
      :revenue_share_percent,
      :effective_from,
      :effective_until,
      :status)
      SENSITIVE = [:customer_aws_account_id]
      include Aws::Structure
    end

    # A single allocation change within a batch request.
    #
    # @!attribute [rw] action
    #   The operation type: CREATE or UPDATE.
    #   @return [String]
    #
    # @!attribute [rw] revenue_attribution_allocation_id
    #   The allocation to update. Required when Action is UPDATE.
    #   @return [String]
    #
    # @!attribute [rw] entity_type
    #   The type of the associated deal entity.
    #   @return [String]
    #
    # @!attribute [rw] entity_identifier
    #   The unique identifier of the associated deal entity.
    #   @return [String]
    #
    # @!attribute [rw] customer_aws_account_id
    #   The customer AWS account ID for this associated deal entity.
    #   @return [String]
    #
    # @!attribute [rw] revenue_share_percent
    #   Revenue share percentage.
    #   @return [String]
    #
    # @!attribute [rw] effective_from
    #   The effective start date for this allocation.
    #   @return [String]
    #
    # @!attribute [rw] effective_until
    #   The effective end date for this allocation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Allocation status. Defaults to ACTIVE on CREATE.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/RevenueShareAllocation AWS API Documentation
    #
    class RevenueShareAllocation < Struct.new(
      :action,
      :revenue_attribution_allocation_id,
      :entity_type,
      :entity_identifier,
      :customer_aws_account_id,
      :revenue_share_percent,
      :effective_from,
      :effective_until,
      :status)
      SENSITIVE = [:customer_aws_account_id]
      include Aws::Structure
    end

    # The request would exceed a service quota limit.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason the service quota was exceeded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog context for this operation.
    #   @return [String]
    #
    # @!attribute [rw] revenue_attribution_identifier
    #   The revenue attribution identifier.
    #   @return [String]
    #
    # @!attribute [rw] revenue_attribution_revision
    #   Current revision of the revenue attribution for optimistic locking.
    #   @return [String]
    #
    # @!attribute [rw] revenue_share_allocations
    #   The list of allocation changes to process in this batch.
    #   @return [Array<Types::RevenueShareAllocation>]
    #
    # @!attribute [rw] client_token
    #   Idempotency token for deduplication and retry.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Human-readable description of the batch.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/StartRevenueAttributionAllocationsTaskInput AWS API Documentation
    #
    class StartRevenueAttributionAllocationsTaskInput < Struct.new(
      :catalog,
      :revenue_attribution_identifier,
      :revenue_attribution_revision,
      :revenue_share_allocations,
      :client_token,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_id
    #   Unique identifier for the submitted task.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Initial task status. Always IN\_PROGRESS on successful submission.
    #   @return [String]
    #
    # @!attribute [rw] catalog
    #   The catalog used for this task.
    #   @return [String]
    #
    # @!attribute [rw] revenue_attribution_arn
    #   ARN of the revenue attribution resource.
    #   @return [String]
    #
    # @!attribute [rw] started_at
    #   When processing started.
    #   @return [Time]
    #
    # @!attribute [rw] total_revenue_attribution_allocation_records
    #   Total revenue attribution allocation records in the batch.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/StartRevenueAttributionAllocationsTaskOutput AWS API Documentation
    #
    class StartRevenueAttributionAllocationsTaskOutput < Struct.new(
      :task_id,
      :status,
      :catalog,
      :revenue_attribution_arn,
      :started_at,
      :total_revenue_attribution_allocation_records)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key-value pair used for organizing and managing resources through
    # metadata tags.
    #
    # @!attribute [rw] key
    #   The key portion of the tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value portion of the tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was throttled due to too many requests. Retry your
    # request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The service code associated with the throttling error.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The quota code associated with the throttling error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :service_code,
      :quota_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to remove tags from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog containing the allocation.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The AWS Marketplace product identifier for the parent revenue share.
    #   @return [String]
    #
    # @!attribute [rw] marketplace_revenue_share_allocation_id
    #   The identifier of the allocation to update.
    #   @return [String]
    #
    # @!attribute [rw] marketplace_revenue_share_revision
    #   The current revision of the parent share. Must match for optimistic
    #   concurrency control.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique token to ensure idempotency of the update request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] effective_from
    #   The new effective start date. Must be the first day of a month. Only
    #   modifiable on future-dated allocations.
    #   @return [String]
    #
    # @!attribute [rw] effective_until
    #   The new effective end date. Must be the last day of a month and on
    #   or after today.
    #   @return [String]
    #
    # @!attribute [rw] revenue_share_percent
    #   The new revenue share percentage. Only modifiable on future-dated
    #   allocations.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The new status. Set to INACTIVE for soft-delete. Only modifiable on
    #   future-dated allocations.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/UpdateMarketplaceRevenueShareAllocationInput AWS API Documentation
    #
    class UpdateMarketplaceRevenueShareAllocationInput < Struct.new(
      :catalog,
      :product_id,
      :marketplace_revenue_share_allocation_id,
      :marketplace_revenue_share_revision,
      :client_token,
      :effective_from,
      :effective_until,
      :revenue_share_percent,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] marketplace_revenue_share_allocation_id
    #   The unique identifier of the updated allocation.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The AWS Marketplace product identifier.
    #   @return [String]
    #
    # @!attribute [rw] product_name
    #   The display name of the AWS Marketplace product.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the parent marketplace revenue
    #   share.
    #   @return [String]
    #
    # @!attribute [rw] effective_from
    #   The effective start date of the allocation.
    #   @return [String]
    #
    # @!attribute [rw] effective_until
    #   The effective end date of the allocation, or null if open-ended.
    #   @return [String]
    #
    # @!attribute [rw] revenue_share_percent
    #   The revenue share percentage.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the allocation.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date when the allocation was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_date
    #   The date when the allocation was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] latest_marketplace_revenue_share_revision
    #   The latest revision of the parent marketplace revenue share after
    #   the update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/UpdateMarketplaceRevenueShareAllocationOutput AWS API Documentation
    #
    class UpdateMarketplaceRevenueShareAllocationOutput < Struct.new(
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
      :latest_marketplace_revenue_share_revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog that the revenue attribution belongs to.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The unique identifier of the revenue attribution to update. Accepts
    #   a direct ID or ARN.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique token to ensure idempotency of the update request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description of the revenue attribution.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The current revision of the revenue attribution. Must match the
    #   server's current value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/UpdateRevenueAttributionInput AWS API Documentation
    #
    class UpdateRevenueAttributionInput < Struct.new(
      :catalog,
      :identifier,
      :client_token,
      :description,
      :revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the updated revenue attribution.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the updated revenue attribution.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description of the revenue attribution.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date when the attribution was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] latest_revision
    #   The latest revision of the attribution after the update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/UpdateRevenueAttributionOutput AWS API Documentation
    #
    class UpdateRevenueAttributionOutput < Struct.new(
      :id,
      :arn,
      :description,
      :last_modified_date,
      :latest_revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request failed validation due to invalid input parameters.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the validation failure.
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   A list of fields that failed validation.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a specific field that failed validation.
    #
    # @!attribute [rw] name
    #   The name of the field that failed validation.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A human-readable message describing why the field validation failed.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The specific validation error code indicating the type of validation
    #   failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

