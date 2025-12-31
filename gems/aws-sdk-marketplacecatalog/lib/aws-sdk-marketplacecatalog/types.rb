# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MarketplaceCatalog
  module Types

    # Access is denied.
    #
    # HTTP status code: 403
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that allows filtering on entity id of an AMI product.
    #
    # @!attribute [rw] value_list
    #   A string array of unique entity id values to be filtered on.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/AmiProductEntityIdFilter AWS API Documentation
    #
    class AmiProductEntityIdFilter < Struct.new(
      :value_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object containing all the filter fields for AMI products. Client can
    # add only one wildcard filter and a maximum of 8 filters in a single
    # `ListEntities` request.
    #
    # @!attribute [rw] entity_id
    #   Unique identifier for the AMI product.
    #   @return [Types::AmiProductEntityIdFilter]
    #
    # @!attribute [rw] last_modified_date
    #   The last date on which the AMI product was modified.
    #   @return [Types::AmiProductLastModifiedDateFilter]
    #
    # @!attribute [rw] product_title
    #   The title of the AMI product.
    #   @return [Types::AmiProductTitleFilter]
    #
    # @!attribute [rw] visibility
    #   The visibility of the AMI product.
    #   @return [Types::AmiProductVisibilityFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/AmiProductFilters AWS API Documentation
    #
    class AmiProductFilters < Struct.new(
      :entity_id,
      :last_modified_date,
      :product_title,
      :visibility)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that allows filtering based on the last modified date of AMI
    # products.
    #
    # @!attribute [rw] date_range
    #   Dates between which the AMI product was last modified.
    #   @return [Types::AmiProductLastModifiedDateFilterDateRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/AmiProductLastModifiedDateFilter AWS API Documentation
    #
    class AmiProductLastModifiedDateFilter < Struct.new(
      :date_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that contains date range of the last modified date to be
    # filtered on. You can optionally provide a `BeforeValue` and/or
    # `AfterValue`. Both are inclusive.
    #
    # @!attribute [rw] after_value
    #   Date after which the AMI product was last modified.
    #   @return [String]
    #
    # @!attribute [rw] before_value
    #   Date before which the AMI product was last modified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/AmiProductLastModifiedDateFilterDateRange AWS API Documentation
    #
    class AmiProductLastModifiedDateFilterDateRange < Struct.new(
      :after_value,
      :before_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Objects that allows sorting on AMI products based on certain fields
    # and sorting order.
    #
    # @!attribute [rw] sort_by
    #   Field to sort the AMI products by.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sorting order. Can be `ASCENDING` or `DESCENDING`. The default
    #   value is `DESCENDING`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/AmiProductSort AWS API Documentation
    #
    class AmiProductSort < Struct.new(
      :sort_by,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that contains summarized information about an AMI product.
    #
    # @!attribute [rw] product_title
    #   The title of the AMI product.
    #   @return [String]
    #
    # @!attribute [rw] visibility
    #   The lifecycle of the AMI product.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/AmiProductSummary AWS API Documentation
    #
    class AmiProductSummary < Struct.new(
      :product_title,
      :visibility)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that allows filtering on product title.
    #
    # @!attribute [rw] value_list
    #   A string array of unique product title values to be filtered on.
    #   @return [Array<String>]
    #
    # @!attribute [rw] wild_card_value
    #   A string that will be the `wildCard` input for product tile filter.
    #   It matches the provided value as a substring in the actual value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/AmiProductTitleFilter AWS API Documentation
    #
    class AmiProductTitleFilter < Struct.new(
      :value_list,
      :wild_card_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that allows filtering on the visibility of the product in the
    # AWS Marketplace.
    #
    # @!attribute [rw] value_list
    #   A string array of unique visibility values to be filtered on.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/AmiProductVisibilityFilter AWS API Documentation
    #
    class AmiProductVisibilityFilter < Struct.new(
      :value_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entity_request_list
    #   List of entity IDs and the catalogs the entities are present in.
    #   @return [Array<Types::EntityRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/BatchDescribeEntitiesRequest AWS API Documentation
    #
    class BatchDescribeEntitiesRequest < Struct.new(
      :entity_request_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entity_details
    #   Details about each entity.
    #   @return [Hash<String,Types::EntityDetail>]
    #
    # @!attribute [rw] errors
    #   A map of errors returned, with `EntityId` as the key and
    #   `errorDetail` as the value.
    #   @return [Hash<String,Types::BatchDescribeErrorDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/BatchDescribeEntitiesResponse AWS API Documentation
    #
    class BatchDescribeEntitiesResponse < Struct.new(
      :entity_details,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains an error code and error message.
    #
    # @!attribute [rw] error_code
    #   The error code returned.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/BatchDescribeErrorDetail AWS API Documentation
    #
    class BatchDescribeErrorDetail < Struct.new(
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   Required. The catalog related to the request. Fixed value:
    #   `AWSMarketplace`.
    #   @return [String]
    #
    # @!attribute [rw] change_set_id
    #   Required. The unique identifier of the `StartChangeSet` request that
    #   you want to cancel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/CancelChangeSetRequest AWS API Documentation
    #
    class CancelChangeSetRequest < Struct.new(
      :catalog,
      :change_set_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] change_set_id
    #   The unique identifier for the change set referenced in this request.
    #   @return [String]
    #
    # @!attribute [rw] change_set_arn
    #   The ARN associated with the change set referenced in this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/CancelChangeSetResponse AWS API Documentation
    #
    class CancelChangeSetResponse < Struct.new(
      :change_set_id,
      :change_set_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains the `ChangeType`, `Details`, and `Entity`.
    #
    # @!attribute [rw] change_type
    #   Change types are single string values that describe your intention
    #   for the change. Each change type is unique for each `EntityType`
    #   provided in the change's scope. For more information about change
    #   types available for single-AMI products, see [Working with
    #   single-AMI products][1]. Also, for more information about change
    #   types available for container-based products, see [Working with
    #   container products][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/ami-products.html#working-with-single-AMI-products
    #   [2]: https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/container-products.html#working-with-container-products
    #   @return [String]
    #
    # @!attribute [rw] entity
    #   The entity to be changed.
    #   @return [Types::Entity]
    #
    # @!attribute [rw] entity_tags
    #   The tags associated with the change.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] details
    #   This object contains details specific to the change type of the
    #   requested change. For more information about change types available
    #   for single-AMI products, see [Working with single-AMI products][1].
    #   Also, for more information about change types available for
    #   container-based products, see [Working with container products][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/ami-products.html#working-with-single-AMI-products
    #   [2]: https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/container-products.html#working-with-container-products
    #   @return [String]
    #
    # @!attribute [rw] details_document
    #   Alternative field that accepts a JSON value instead of a string for
    #   `ChangeType` details. You can use either `Details` or
    #   `DetailsDocument`, but not both.
    #
    #   To download the "DetailsDocument" shapes, see the [Python][1] and
    #   [Java][2] shapes on GitHub.
    #
    #
    #
    #   [1]: https://github.com/awslabs/aws-marketplace-catalog-api-shapes-for-python
    #   [2]: https://github.com/awslabs/aws-marketplace-catalog-api-shapes-for-java/tree/main
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] change_name
    #   Optional name for the change.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/Change AWS API Documentation
    #
    class Change < Struct.new(
      :change_type,
      :entity,
      :entity_tags,
      :details,
      :details_document,
      :change_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of a change set returned in a list of change sets when the
    # `ListChangeSets` action is called.
    #
    # @!attribute [rw] change_set_id
    #   The unique identifier for a change set.
    #   @return [String]
    #
    # @!attribute [rw] change_set_arn
    #   The ARN associated with the unique identifier for the change set
    #   referenced in this request.
    #   @return [String]
    #
    # @!attribute [rw] change_set_name
    #   The non-unique name for the change set.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time, in ISO 8601 format (2018-02-27T13:45:22Z), when the change
    #   set was started.
    #   @return [String]
    #
    # @!attribute [rw] end_time
    #   The time, in ISO 8601 format (2018-02-27T13:45:22Z), when the change
    #   set was finished.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the change set.
    #   @return [String]
    #
    # @!attribute [rw] entity_id_list
    #   This object is a list of entity IDs (string) that are a part of a
    #   change set. The entity ID list is a maximum of 20 entities. It must
    #   contain at least one entity.
    #   @return [Array<String>]
    #
    # @!attribute [rw] failure_code
    #   Returned if the change set is in `FAILED` status. Can be either
    #   `CLIENT_ERROR`, which means that there are issues with the request
    #   (see the `ErrorDetailList` of `DescribeChangeSet`), or
    #   `SERVER_FAULT`, which means that there is a problem in the system,
    #   and you should retry your request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ChangeSetSummaryListItem AWS API Documentation
    #
    class ChangeSetSummaryListItem < Struct.new(
      :change_set_id,
      :change_set_arn,
      :change_set_name,
      :start_time,
      :end_time,
      :status,
      :entity_id_list,
      :failure_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # This object is a container for common summary information about the
    # change. The summary doesn't contain the whole change structure.
    #
    # @!attribute [rw] change_type
    #   The type of the change.
    #   @return [String]
    #
    # @!attribute [rw] entity
    #   The entity to be changed.
    #   @return [Types::Entity]
    #
    # @!attribute [rw] details
    #   This object contains details specific to the change type of the
    #   requested change.
    #   @return [String]
    #
    # @!attribute [rw] details_document
    #   The JSON value of the details specific to the change type of the
    #   requested change.
    #
    #   To download the "DetailsDocument" shapes, see the [Python][1] and
    #   [Java][2] shapes on GitHub.
    #
    #
    #
    #   [1]: https://github.com/awslabs/aws-marketplace-catalog-api-shapes-for-python
    #   [2]: https://github.com/awslabs/aws-marketplace-catalog-api-shapes-for-java/tree/main
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] error_detail_list
    #   An array of `ErrorDetail` objects associated with the change.
    #   @return [Array<Types::ErrorDetail>]
    #
    # @!attribute [rw] change_name
    #   Optional name for the change.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ChangeSummary AWS API Documentation
    #
    class ChangeSummary < Struct.new(
      :change_type,
      :entity,
      :details,
      :details_document,
      :error_detail_list,
      :change_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that allows filtering on entity id of a container product.
    #
    # @!attribute [rw] value_list
    #   A string array of unique entity id values to be filtered on.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ContainerProductEntityIdFilter AWS API Documentation
    #
    class ContainerProductEntityIdFilter < Struct.new(
      :value_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object containing all the filter fields for container products. Client
    # can add only one wildcard filter and a maximum of 8 filters in a
    # single `ListEntities` request.
    #
    # @!attribute [rw] entity_id
    #   Unique identifier for the container product.
    #   @return [Types::ContainerProductEntityIdFilter]
    #
    # @!attribute [rw] last_modified_date
    #   The last date on which the container product was modified.
    #   @return [Types::ContainerProductLastModifiedDateFilter]
    #
    # @!attribute [rw] product_title
    #   The title of the container product.
    #   @return [Types::ContainerProductTitleFilter]
    #
    # @!attribute [rw] visibility
    #   The visibility of the container product.
    #   @return [Types::ContainerProductVisibilityFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ContainerProductFilters AWS API Documentation
    #
    class ContainerProductFilters < Struct.new(
      :entity_id,
      :last_modified_date,
      :product_title,
      :visibility)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that allows filtering based on the last modified date of
    # container products.
    #
    # @!attribute [rw] date_range
    #   Dates between which the container product was last modified.
    #   @return [Types::ContainerProductLastModifiedDateFilterDateRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ContainerProductLastModifiedDateFilter AWS API Documentation
    #
    class ContainerProductLastModifiedDateFilter < Struct.new(
      :date_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that contains date range of the last modified date to be
    # filtered on. You can optionally provide a `BeforeValue` and/or
    # `AfterValue`. Both are inclusive.
    #
    # @!attribute [rw] after_value
    #   Date after which the container product was last modified.
    #   @return [String]
    #
    # @!attribute [rw] before_value
    #   Date before which the container product was last modified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ContainerProductLastModifiedDateFilterDateRange AWS API Documentation
    #
    class ContainerProductLastModifiedDateFilterDateRange < Struct.new(
      :after_value,
      :before_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Objects that allows sorting on container products based on certain
    # fields and sorting order.
    #
    # @!attribute [rw] sort_by
    #   Field to sort the container products by.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sorting order. Can be `ASCENDING` or `DESCENDING`. The default
    #   value is `DESCENDING`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ContainerProductSort AWS API Documentation
    #
    class ContainerProductSort < Struct.new(
      :sort_by,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that contains summarized information about a container product.
    #
    # @!attribute [rw] product_title
    #   The title of the container product.
    #   @return [String]
    #
    # @!attribute [rw] visibility
    #   The lifecycle of the product.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ContainerProductSummary AWS API Documentation
    #
    class ContainerProductSummary < Struct.new(
      :product_title,
      :visibility)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that allows filtering on product title.
    #
    # @!attribute [rw] value_list
    #   A string array of unique product title values to be filtered on.
    #   @return [Array<String>]
    #
    # @!attribute [rw] wild_card_value
    #   A string that will be the `wildCard` input for product tile filter.
    #   It matches the provided value as a substring in the actual value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ContainerProductTitleFilter AWS API Documentation
    #
    class ContainerProductTitleFilter < Struct.new(
      :value_list,
      :wild_card_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that allows filtering on the visibility of the product in the
    # AWS Marketplace.
    #
    # @!attribute [rw] value_list
    #   A string array of unique visibility values to be filtered on.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ContainerProductVisibilityFilter AWS API Documentation
    #
    class ContainerProductVisibilityFilter < Struct.new(
      :value_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that allows filtering on entity id of a data product.
    #
    # @!attribute [rw] value_list
    #   A string array of unique entity id values to be filtered on.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/DataProductEntityIdFilter AWS API Documentation
    #
    class DataProductEntityIdFilter < Struct.new(
      :value_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object containing all the filter fields for data products. Client can
    # add only one wildcard filter and a maximum of 8 filters in a single
    # `ListEntities` request.
    #
    # @!attribute [rw] entity_id
    #   Unique identifier for the data product.
    #   @return [Types::DataProductEntityIdFilter]
    #
    # @!attribute [rw] product_title
    #   The title of the data product.
    #   @return [Types::DataProductTitleFilter]
    #
    # @!attribute [rw] visibility
    #   The visibility of the data product.
    #   @return [Types::DataProductVisibilityFilter]
    #
    # @!attribute [rw] last_modified_date
    #   The last date on which the data product was modified.
    #   @return [Types::DataProductLastModifiedDateFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/DataProductFilters AWS API Documentation
    #
    class DataProductFilters < Struct.new(
      :entity_id,
      :product_title,
      :visibility,
      :last_modified_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that allows filtering based on the last modified date of data
    # products.
    #
    # @!attribute [rw] date_range
    #   Dates between which the data product was last modified.
    #   @return [Types::DataProductLastModifiedDateFilterDateRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/DataProductLastModifiedDateFilter AWS API Documentation
    #
    class DataProductLastModifiedDateFilter < Struct.new(
      :date_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that contains date range of the last modified date to be
    # filtered on. You can optionally provide a `BeforeValue` and/or
    # `AfterValue`. Both are inclusive.
    #
    # @!attribute [rw] after_value
    #   Date after which the data product was last modified.
    #   @return [String]
    #
    # @!attribute [rw] before_value
    #   Date before which the data product was last modified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/DataProductLastModifiedDateFilterDateRange AWS API Documentation
    #
    class DataProductLastModifiedDateFilterDateRange < Struct.new(
      :after_value,
      :before_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Objects that allows sorting on data products based on certain fields
    # and sorting order.
    #
    # @!attribute [rw] sort_by
    #   Field to sort the data products by.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sorting order. Can be `ASCENDING` or `DESCENDING`. The default
    #   value is `DESCENDING`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/DataProductSort AWS API Documentation
    #
    class DataProductSort < Struct.new(
      :sort_by,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that contains summarized information about a data product.
    #
    # @!attribute [rw] product_title
    #   The title of the data product.
    #   @return [String]
    #
    # @!attribute [rw] visibility
    #   The lifecycle of the data product.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/DataProductSummary AWS API Documentation
    #
    class DataProductSummary < Struct.new(
      :product_title,
      :visibility)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that allows filtering on product title.
    #
    # @!attribute [rw] value_list
    #   A string array of unique product title values to be filtered on.
    #   @return [Array<String>]
    #
    # @!attribute [rw] wild_card_value
    #   A string that will be the `wildCard` input for product tile filter.
    #   It matches the provided value as a substring in the actual value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/DataProductTitleFilter AWS API Documentation
    #
    class DataProductTitleFilter < Struct.new(
      :value_list,
      :wild_card_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that allows filtering on the visibility of the product in the
    # AWS Marketplace.
    #
    # @!attribute [rw] value_list
    #   A string array of unique visibility values to be filtered on.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/DataProductVisibilityFilter AWS API Documentation
    #
    class DataProductVisibilityFilter < Struct.new(
      :value_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the entity resource that is
    #   associated with the resource policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/DeleteResourcePolicyRequest AWS API Documentation
    #
    class DeleteResourcePolicyRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/DeleteResourcePolicyResponse AWS API Documentation
    #
    class DeleteResourcePolicyResponse < Aws::EmptyStructure; end

    # @!attribute [rw] catalog
    #   Required. The catalog related to the request. Fixed value:
    #   `AWSMarketplace`
    #   @return [String]
    #
    # @!attribute [rw] change_set_id
    #   Required. The unique identifier for the `StartChangeSet` request
    #   that you want to describe the details for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/DescribeChangeSetRequest AWS API Documentation
    #
    class DescribeChangeSetRequest < Struct.new(
      :catalog,
      :change_set_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] change_set_id
    #   Required. The unique identifier for the change set referenced in
    #   this request.
    #   @return [String]
    #
    # @!attribute [rw] change_set_arn
    #   The ARN associated with the unique identifier for the change set
    #   referenced in this request.
    #   @return [String]
    #
    # @!attribute [rw] change_set_name
    #   The optional name provided in the `StartChangeSet` request. If you
    #   do not provide a name, one is set by default.
    #   @return [String]
    #
    # @!attribute [rw] intent
    #   The optional intent provided in the `StartChangeSet` request. If you
    #   do not provide an intent, `APPLY` is set by default.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The date and time, in ISO 8601 format (2018-02-27T13:45:22Z), the
    #   request started.
    #   @return [String]
    #
    # @!attribute [rw] end_time
    #   The date and time, in ISO 8601 format (2018-02-27T13:45:22Z), the
    #   request transitioned to a terminal state. The change cannot
    #   transition to a different state. Null if the request is not in a
    #   terminal state.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the change request.
    #   @return [String]
    #
    # @!attribute [rw] failure_code
    #   Returned if the change set is in `FAILED` status. Can be either
    #   `CLIENT_ERROR`, which means that there are issues with the request
    #   (see the `ErrorDetailList`), or `SERVER_FAULT`, which means that
    #   there is a problem in the system, and you should retry your request.
    #   @return [String]
    #
    # @!attribute [rw] failure_description
    #   Returned if there is a failure on the change set, but that failure
    #   is not related to any of the changes in the request.
    #   @return [String]
    #
    # @!attribute [rw] change_set
    #   An array of `ChangeSummary` objects.
    #   @return [Array<Types::ChangeSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/DescribeChangeSetResponse AWS API Documentation
    #
    class DescribeChangeSetResponse < Struct.new(
      :change_set_id,
      :change_set_arn,
      :change_set_name,
      :intent,
      :start_time,
      :end_time,
      :status,
      :failure_code,
      :failure_description,
      :change_set)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   Required. The catalog related to the request. Fixed value:
    #   `AWSMarketplace`
    #   @return [String]
    #
    # @!attribute [rw] entity_id
    #   Required. The unique ID of the entity to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/DescribeEntityRequest AWS API Documentation
    #
    class DescribeEntityRequest < Struct.new(
      :catalog,
      :entity_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entity_type
    #   The named type of the entity, in the format of `EntityType@Version`.
    #   @return [String]
    #
    # @!attribute [rw] entity_identifier
    #   The identifier of the entity, in the format of
    #   `EntityId@RevisionId`.
    #   @return [String]
    #
    # @!attribute [rw] entity_arn
    #   The ARN associated to the unique identifier for the entity
    #   referenced in this request.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The last modified date of the entity, in ISO 8601 format
    #   (2018-02-27T13:45:22Z).
    #   @return [String]
    #
    # @!attribute [rw] details
    #   This stringified JSON object includes the details of the entity.
    #   @return [String]
    #
    # @!attribute [rw] details_document
    #   The JSON value of the details specific to the entity.
    #
    #   To download "DetailsDocument" shapes, see the [Python][1] and
    #   [Java][2] shapes on GitHub.
    #
    #
    #
    #   [1]: https://github.com/awslabs/aws-marketplace-catalog-api-shapes-for-python
    #   [2]: https://github.com/awslabs/aws-marketplace-catalog-api-shapes-for-java/tree/main
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/DescribeEntityResponse AWS API Documentation
    #
    class DescribeEntityResponse < Struct.new(
      :entity_type,
      :entity_identifier,
      :entity_arn,
      :last_modified_date,
      :details,
      :details_document)
      SENSITIVE = []
      include Aws::Structure
    end

    # An entity contains data that describes your product, its supported
    # features, and how it can be used or launched by your customer.
    #
    # @!attribute [rw] type
    #   The type of entity.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The identifier for the entity.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/Entity AWS API Documentation
    #
    class Entity < Struct.new(
      :type,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains metadata and details about the entity.
    #
    # @!attribute [rw] entity_type
    #   The entity type of the entity, in the format of
    #   `EntityType@Version`.
    #   @return [String]
    #
    # @!attribute [rw] entity_arn
    #   The Amazon Resource Name (ARN) of the entity.
    #   @return [String]
    #
    # @!attribute [rw] entity_identifier
    #   The ID of the entity, in the format of `EntityId@RevisionId`.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The last time the entity was modified.
    #   @return [String]
    #
    # @!attribute [rw] details_document
    #   An object that contains all the details of the entity.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/EntityDetail AWS API Documentation
    #
    class EntityDetail < Struct.new(
      :entity_type,
      :entity_arn,
      :entity_identifier,
      :last_modified_date,
      :details_document)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains entity ID and the catalog in which the entity
    # is present.
    #
    # @!attribute [rw] catalog
    #   The name of the catalog the entity is present in. The only value at
    #   this time is `AWSMarketplace`.
    #   @return [String]
    #
    # @!attribute [rw] entity_id
    #   The ID of the entity.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/EntityRequest AWS API Documentation
    #
    class EntityRequest < Struct.new(
      :catalog,
      :entity_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # This object is a container for common summary information about the
    # entity. The summary doesn't contain the whole entity structure, but
    # it does contain information common across all entities.
    #
    # @!attribute [rw] name
    #   The name for the entity. This value is not unique. It is defined by
    #   the seller.
    #   @return [String]
    #
    # @!attribute [rw] entity_type
    #   The type of the entity.
    #   @return [String]
    #
    # @!attribute [rw] entity_id
    #   The unique identifier for the entity.
    #   @return [String]
    #
    # @!attribute [rw] entity_arn
    #   The ARN associated with the unique identifier for the entity.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The last time the entity was published, using ISO 8601 format
    #   (2018-02-27T13:45:22Z).
    #   @return [String]
    #
    # @!attribute [rw] visibility
    #   The visibility status of the entity to buyers. This value can be
    #   `Public` (everyone can view the entity), `Limited` (the entity is
    #   visible to limited accounts only), or `Restricted` (the entity was
    #   published and then unpublished and only existing buyers can view
    #   it).
    #   @return [String]
    #
    # @!attribute [rw] ami_product_summary
    #   An object that contains summary information about the AMI product.
    #   @return [Types::AmiProductSummary]
    #
    # @!attribute [rw] container_product_summary
    #   An object that contains summary information about the container
    #   product.
    #   @return [Types::ContainerProductSummary]
    #
    # @!attribute [rw] data_product_summary
    #   An object that contains summary information about the data product.
    #   @return [Types::DataProductSummary]
    #
    # @!attribute [rw] saa_s_product_summary
    #   An object that contains summary information about the SaaS product.
    #   @return [Types::SaaSProductSummary]
    #
    # @!attribute [rw] offer_summary
    #   An object that contains summary information about the offer.
    #   @return [Types::OfferSummary]
    #
    # @!attribute [rw] resale_authorization_summary
    #   An object that contains summary information about the Resale
    #   Authorization.
    #   @return [Types::ResaleAuthorizationSummary]
    #
    # @!attribute [rw] machine_learning_product_summary
    #   A summary of a machine learning product.
    #   @return [Types::MachineLearningProductSummary]
    #
    # @!attribute [rw] offer_set_summary
    #   An object that contains summary information about the offer set.
    #   @return [Types::OfferSetSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/EntitySummary AWS API Documentation
    #
    class EntitySummary < Struct.new(
      :name,
      :entity_type,
      :entity_id,
      :entity_arn,
      :last_modified_date,
      :visibility,
      :ami_product_summary,
      :container_product_summary,
      :data_product_summary,
      :saa_s_product_summary,
      :offer_summary,
      :resale_authorization_summary,
      :machine_learning_product_summary,
      :offer_set_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object containing all the filter fields per entity type.
    #
    # @note EntityTypeFilters is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] data_product_filters
    #   A filter for data products.
    #   @return [Types::DataProductFilters]
    #
    # @!attribute [rw] saa_s_product_filters
    #   A filter for SaaS products.
    #   @return [Types::SaaSProductFilters]
    #
    # @!attribute [rw] ami_product_filters
    #   A filter for AMI products.
    #   @return [Types::AmiProductFilters]
    #
    # @!attribute [rw] offer_filters
    #   A filter for offers.
    #   @return [Types::OfferFilters]
    #
    # @!attribute [rw] container_product_filters
    #   A filter for container products.
    #   @return [Types::ContainerProductFilters]
    #
    # @!attribute [rw] resale_authorization_filters
    #   A filter for Resale Authorizations.
    #   @return [Types::ResaleAuthorizationFilters]
    #
    # @!attribute [rw] machine_learning_product_filters
    #   The filters that you can use with the ListEntities operation to
    #   filter machine learning products. You can filter by `EntityId`,
    #   `astModifiedDate`, `ProductTitle`, and `Visibility`.
    #   @return [Types::MachineLearningProductFilters]
    #
    # @!attribute [rw] offer_set_filters
    #   A filter for offer sets.
    #   @return [Types::OfferSetFilters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/EntityTypeFilters AWS API Documentation
    #
    class EntityTypeFilters < Struct.new(
      :data_product_filters,
      :saa_s_product_filters,
      :ami_product_filters,
      :offer_filters,
      :container_product_filters,
      :resale_authorization_filters,
      :machine_learning_product_filters,
      :offer_set_filters,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class DataProductFilters < EntityTypeFilters; end
      class SaaSProductFilters < EntityTypeFilters; end
      class AmiProductFilters < EntityTypeFilters; end
      class OfferFilters < EntityTypeFilters; end
      class ContainerProductFilters < EntityTypeFilters; end
      class ResaleAuthorizationFilters < EntityTypeFilters; end
      class MachineLearningProductFilters < EntityTypeFilters; end
      class OfferSetFilters < EntityTypeFilters; end
      class Unknown < EntityTypeFilters; end
    end

    # Object containing all the sort fields per entity type.
    #
    # @note EntityTypeSort is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] data_product_sort
    #   A sort for data products.
    #   @return [Types::DataProductSort]
    #
    # @!attribute [rw] saa_s_product_sort
    #   A sort for SaaS products.
    #   @return [Types::SaaSProductSort]
    #
    # @!attribute [rw] ami_product_sort
    #   A sort for AMI products.
    #   @return [Types::AmiProductSort]
    #
    # @!attribute [rw] offer_sort
    #   A sort for offers.
    #   @return [Types::OfferSort]
    #
    # @!attribute [rw] container_product_sort
    #   A sort for container products.
    #   @return [Types::ContainerProductSort]
    #
    # @!attribute [rw] resale_authorization_sort
    #   A sort for Resale Authorizations.
    #   @return [Types::ResaleAuthorizationSort]
    #
    # @!attribute [rw] machine_learning_product_sort
    #   The sort options for machine learning products.
    #   @return [Types::MachineLearningProductSort]
    #
    # @!attribute [rw] offer_set_sort
    #   A sort for offer sets.
    #   @return [Types::OfferSetSort]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/EntityTypeSort AWS API Documentation
    #
    class EntityTypeSort < Struct.new(
      :data_product_sort,
      :saa_s_product_sort,
      :ami_product_sort,
      :offer_sort,
      :container_product_sort,
      :resale_authorization_sort,
      :machine_learning_product_sort,
      :offer_set_sort,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class DataProductSort < EntityTypeSort; end
      class SaaSProductSort < EntityTypeSort; end
      class AmiProductSort < EntityTypeSort; end
      class OfferSort < EntityTypeSort; end
      class ContainerProductSort < EntityTypeSort; end
      class ResaleAuthorizationSort < EntityTypeSort; end
      class MachineLearningProductSort < EntityTypeSort; end
      class OfferSetSort < EntityTypeSort; end
      class Unknown < EntityTypeSort; end
    end

    # Details about the error.
    #
    # @!attribute [rw] error_code
    #   The error code that identifies the type of error.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The message for the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ErrorDetail AWS API Documentation
    #
    class ErrorDetail < Struct.new(
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter object, used to optionally filter results from calls to the
    # `ListEntities` and `ListChangeSets` actions.
    #
    # @!attribute [rw] name
    #   For `ListEntities`, the supported value for this is an `EntityId`.
    #
    #   For `ListChangeSets`, the supported values are as follows:
    #   @return [String]
    #
    # @!attribute [rw] value_list
    #   `ListEntities` - This is a list of unique `EntityId`s.
    #
    #   `ListChangeSets` - The supported filter names and associated
    #   `ValueList`s is as follows:
    #
    #   * `ChangeSetName` - The supported `ValueList` is a list of
    #     non-unique `ChangeSetName`s. These are defined when you call the
    #     `StartChangeSet` action.
    #
    #   * `Status` - The supported `ValueList` is a list of statuses for all
    #     change set requests.
    #
    #   * `EntityId` - The supported `ValueList` is a list of unique
    #     `EntityId`s.
    #
    #   * `BeforeStartTime` - The supported `ValueList` is a list of all
    #     change sets that started before the filter value.
    #
    #   * `AfterStartTime` - The supported `ValueList` is a list of all
    #     change sets that started after the filter value.
    #
    #   * `BeforeEndTime` - The supported `ValueList` is a list of all
    #     change sets that ended before the filter value.
    #
    #   * `AfterEndTime` - The supported `ValueList` is a list of all change
    #     sets that ended after the filter value.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :name,
      :value_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the entity resource that is
    #   associated with the resource policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/GetResourcePolicyRequest AWS API Documentation
    #
    class GetResourcePolicyRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   The policy document to set; formatted in JSON.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/GetResourcePolicyResponse AWS API Documentation
    #
    class GetResourcePolicyResponse < Struct.new(
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # There was an internal service exception.
    #
    # HTTP status code: 500
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/InternalServiceException AWS API Documentation
    #
    class InternalServiceException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog related to the request. Fixed value: `AWSMarketplace`
    #   @return [String]
    #
    # @!attribute [rw] filter_list
    #   An array of filter objects.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] sort
    #   An object that contains two attributes, `SortBy` and `SortOrder`.
    #   @return [Types::Sort]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results returned by a single call. This value
    #   must be provided in the next call to retrieve the next set of
    #   results. By default, this value is 20.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token value retrieved from a previous call to access the next
    #   page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ListChangeSetsRequest AWS API Documentation
    #
    class ListChangeSetsRequest < Struct.new(
      :catalog,
      :filter_list,
      :sort,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] change_set_summary_list
    #   Array of `ChangeSetSummaryListItem` objects.
    #   @return [Array<Types::ChangeSetSummaryListItem>]
    #
    # @!attribute [rw] next_token
    #   The value of the next token, if it exists. Null if there are no more
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ListChangeSetsResponse AWS API Documentation
    #
    class ListChangeSetsResponse < Struct.new(
      :change_set_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog related to the request. Fixed value: `AWSMarketplace`
    #   @return [String]
    #
    # @!attribute [rw] entity_type
    #   The type of entities to retrieve. Valid values are: `AmiProduct`,
    #   `ContainerProduct`, `DataProduct`, `SaaSProduct`,
    #   `ProcurementPolicy`, `Experience`, `Audience`, `BrandingSettings`,
    #   `Offer`, `OfferSet`, `Seller`, `ResaleAuthorization`, `Solution`.
    #   @return [String]
    #
    # @!attribute [rw] filter_list
    #   An array of filter objects. Each filter object contains two
    #   attributes, `filterName` and `filterValues`.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] sort
    #   An object that contains two attributes, `SortBy` and `SortOrder`.
    #   @return [Types::Sort]
    #
    # @!attribute [rw] next_token
    #   The value of the next token, if it exists. Null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the upper limit of the elements on a single page. If a
    #   value isn't provided, the default value is 20.
    #   @return [Integer]
    #
    # @!attribute [rw] ownership_type
    #   Filters the returned set of entities based on their owner. The
    #   default is `SELF`. To list entities shared with you through AWS
    #   Resource Access Manager (AWS RAM), set to `SHARED`. Entities shared
    #   through the AWS Marketplace Catalog API `PutResourcePolicy`
    #   operation can't be discovered through the `SHARED` parameter.
    #   @return [String]
    #
    # @!attribute [rw] entity_type_filters
    #   A Union object containing filter shapes for all `EntityType`s. Each
    #   `EntityTypeFilter` shape will have filters applicable for that
    #   `EntityType` that can be used to search or filter entities.
    #   @return [Types::EntityTypeFilters]
    #
    # @!attribute [rw] entity_type_sort
    #   A Union object containing `Sort` shapes for all `EntityType`s. Each
    #   `EntityTypeSort` shape will have `SortBy` and `SortOrder` applicable
    #   for fields on that `EntityType`. This can be used to sort the
    #   results of the filter query.
    #   @return [Types::EntityTypeSort]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ListEntitiesRequest AWS API Documentation
    #
    class ListEntitiesRequest < Struct.new(
      :catalog,
      :entity_type,
      :filter_list,
      :sort,
      :next_token,
      :max_results,
      :ownership_type,
      :entity_type_filters,
      :entity_type_sort)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entity_summary_list
    #   Array of `EntitySummary` objects.
    #   @return [Array<Types::EntitySummary>]
    #
    # @!attribute [rw] next_token
    #   The value of the next token if it exists. Null if there is no more
    #   result.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ListEntitiesResponse AWS API Documentation
    #
    class ListEntitiesResponse < Struct.new(
      :entity_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Required. The Amazon Resource Name (ARN) associated with the
    #   resource you want to list tags on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Required. The ARN associated with the resource you want to list tags
    #   on.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Required. A list of objects specifying each key name and value.
    #   Number of objects allowed: 1-50.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The filter for machine learning product entity IDs.
    #
    # @!attribute [rw] value_list
    #   A list of entity IDs to filter by. The operation returns machine
    #   learning products with entity IDs that match the values in this
    #   list.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/MachineLearningProductEntityIdFilter AWS API Documentation
    #
    class MachineLearningProductEntityIdFilter < Struct.new(
      :value_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The filters that you can use with the ListEntities operation to filter
    # machine learning products. You can filter by `EntityId`,
    # `astModifiedDate`, `ProductTitle`, and `Visibility`.
    #
    # @!attribute [rw] entity_id
    #   Filter machine learning products by their entity IDs.
    #   @return [Types::MachineLearningProductEntityIdFilter]
    #
    # @!attribute [rw] last_modified_date
    #   Filter machine learning products by their last modified date.
    #   @return [Types::MachineLearningProductLastModifiedDateFilter]
    #
    # @!attribute [rw] product_title
    #   Filter machine learning products by their product titles.
    #   @return [Types::MachineLearningProductTitleFilter]
    #
    # @!attribute [rw] visibility
    #   Filter machine learning products by their visibility status.
    #   @return [Types::MachineLearningProductVisibilityFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/MachineLearningProductFilters AWS API Documentation
    #
    class MachineLearningProductFilters < Struct.new(
      :entity_id,
      :last_modified_date,
      :product_title,
      :visibility)
      SENSITIVE = []
      include Aws::Structure
    end

    # The filter for machine learning product last modified date.
    #
    # @!attribute [rw] date_range
    #   A date range to filter by. The operation returns machine learning
    #   products with last modified dates that fall within this range.
    #   @return [Types::MachineLearningProductLastModifiedDateFilterDateRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/MachineLearningProductLastModifiedDateFilter AWS API Documentation
    #
    class MachineLearningProductLastModifiedDateFilter < Struct.new(
      :date_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # A date range for filtering machine learning products by their last
    # modified date.
    #
    # @!attribute [rw] after_value
    #   The start date (inclusive) of the date range. The operation returns
    #   machine learning products with last modified dates on or after this
    #   date.
    #   @return [String]
    #
    # @!attribute [rw] before_value
    #   The end date (inclusive) of the date range. The operation returns
    #   machine learning products with last modified dates on or before this
    #   date.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/MachineLearningProductLastModifiedDateFilterDateRange AWS API Documentation
    #
    class MachineLearningProductLastModifiedDateFilterDateRange < Struct.new(
      :after_value,
      :before_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The sort options for machine learning products.
    #
    # @!attribute [rw] sort_by
    #   The field to sort by. Valid values: `EntityId`, `LastModifiedDate`,
    #   `ProductTitle`, and `Visibility`.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order. Valid values are `ASC` (ascending) and `DESC`
    #   (descending).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/MachineLearningProductSort AWS API Documentation
    #
    class MachineLearningProductSort < Struct.new(
      :sort_by,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of a machine learning product.
    #
    # @!attribute [rw] product_title
    #   The title of the machine learning product.
    #   @return [String]
    #
    # @!attribute [rw] visibility
    #   The visibility status of the machine learning product. Valid values
    #   are `Limited`, `Public`, `Restricted`, and `Draft`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/MachineLearningProductSummary AWS API Documentation
    #
    class MachineLearningProductSummary < Struct.new(
      :product_title,
      :visibility)
      SENSITIVE = []
      include Aws::Structure
    end

    # The filter for machine learning product titles.
    #
    # @!attribute [rw] value_list
    #   A list of product titles to filter by. The operation returns machine
    #   learning products with titles that exactly match the values in this
    #   list.
    #   @return [Array<String>]
    #
    # @!attribute [rw] wild_card_value
    #   A wildcard value to filter product titles. The operation returns
    #   machine learning products with titles that match this wildcard
    #   pattern.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/MachineLearningProductTitleFilter AWS API Documentation
    #
    class MachineLearningProductTitleFilter < Struct.new(
      :value_list,
      :wild_card_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The filter for machine learning product visibility status.
    #
    # @!attribute [rw] value_list
    #   A list of visibility values to filter by. The operation returns
    #   machine learning products with visibility status that match the
    #   values in this list.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/MachineLearningProductVisibilityFilter AWS API Documentation
    #
    class MachineLearningProductVisibilityFilter < Struct.new(
      :value_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows filtering on the `AvailabilityEndDate` of an offer.
    #
    # @!attribute [rw] date_range
    #   Allows filtering on the `AvailabilityEndDate` of an offer with date
    #   range as input.
    #   @return [Types::OfferAvailabilityEndDateFilterDateRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/OfferAvailabilityEndDateFilter AWS API Documentation
    #
    class OfferAvailabilityEndDateFilter < Struct.new(
      :date_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows filtering on the `AvailabilityEndDate` of an offer with date
    # range as input.
    #
    # @!attribute [rw] after_value
    #   Allows filtering on the `AvailabilityEndDate` of an offer after a
    #   date.
    #   @return [String]
    #
    # @!attribute [rw] before_value
    #   Allows filtering on the `AvailabilityEndDate` of an offer before a
    #   date.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/OfferAvailabilityEndDateFilterDateRange AWS API Documentation
    #
    class OfferAvailabilityEndDateFilterDateRange < Struct.new(
      :after_value,
      :before_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows filtering on the `BuyerAccounts` of an offer.
    #
    # @!attribute [rw] wild_card_value
    #   Allows filtering on the `BuyerAccounts` of an offer with wild card
    #   input.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/OfferBuyerAccountsFilter AWS API Documentation
    #
    class OfferBuyerAccountsFilter < Struct.new(
      :wild_card_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows filtering on the entity id of an offer.
    #
    # @!attribute [rw] value_list
    #   Allows filtering on entity id of an offer with list input.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/OfferEntityIdFilter AWS API Documentation
    #
    class OfferEntityIdFilter < Struct.new(
      :value_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object containing all the filter fields for offers entity. Client can
    # add only one wildcard filter and a maximum of 8 filters in a single
    # `ListEntities` request.
    #
    # @!attribute [rw] entity_id
    #   Allows filtering on `EntityId` of an offer.
    #   @return [Types::OfferEntityIdFilter]
    #
    # @!attribute [rw] name
    #   Allows filtering on the `Name` of an offer.
    #   @return [Types::OfferNameFilter]
    #
    # @!attribute [rw] product_id
    #   Allows filtering on the `ProductId` of an offer.
    #   @return [Types::OfferProductIdFilter]
    #
    # @!attribute [rw] resale_authorization_id
    #   Allows filtering on the `ResaleAuthorizationId` of an offer.
    #
    #   <note markdown="1"> Not all offers have a `ResaleAuthorizationId`. The response will
    #   only include offers for which you have permissions.
    #
    #    </note>
    #   @return [Types::OfferResaleAuthorizationIdFilter]
    #
    # @!attribute [rw] release_date
    #   Allows filtering on the `ReleaseDate` of an offer.
    #   @return [Types::OfferReleaseDateFilter]
    #
    # @!attribute [rw] availability_end_date
    #   Allows filtering on the `AvailabilityEndDate` of an offer.
    #   @return [Types::OfferAvailabilityEndDateFilter]
    #
    # @!attribute [rw] buyer_accounts
    #   Allows filtering on the `BuyerAccounts` of an offer.
    #   @return [Types::OfferBuyerAccountsFilter]
    #
    # @!attribute [rw] state
    #   Allows filtering on the `State` of an offer.
    #   @return [Types::OfferStateFilter]
    #
    # @!attribute [rw] targeting
    #   Allows filtering on the `Targeting` of an offer.
    #   @return [Types::OfferTargetingFilter]
    #
    # @!attribute [rw] last_modified_date
    #   Allows filtering on the `LastModifiedDate` of an offer.
    #   @return [Types::OfferLastModifiedDateFilter]
    #
    # @!attribute [rw] offer_set_id
    #   Allows filtering on the `OfferSetId` of an offer.
    #   @return [Types::OfferSetIdFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/OfferFilters AWS API Documentation
    #
    class OfferFilters < Struct.new(
      :entity_id,
      :name,
      :product_id,
      :resale_authorization_id,
      :release_date,
      :availability_end_date,
      :buyer_accounts,
      :state,
      :targeting,
      :last_modified_date,
      :offer_set_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows filtering on the `LastModifiedDate` of an offer.
    #
    # @!attribute [rw] date_range
    #   Allows filtering on the `LastModifiedDate` of an offer with date
    #   range as input.
    #   @return [Types::OfferLastModifiedDateFilterDateRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/OfferLastModifiedDateFilter AWS API Documentation
    #
    class OfferLastModifiedDateFilter < Struct.new(
      :date_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows filtering on the `LastModifiedDate` of an offer with date range
    # as input.
    #
    # @!attribute [rw] after_value
    #   Allows filtering on the `LastModifiedDate` of an offer after a date.
    #   @return [String]
    #
    # @!attribute [rw] before_value
    #   Allows filtering on the `LastModifiedDate` of an offer before a
    #   date.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/OfferLastModifiedDateFilterDateRange AWS API Documentation
    #
    class OfferLastModifiedDateFilterDateRange < Struct.new(
      :after_value,
      :before_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows filtering on the `Name` of an offer.
    #
    # @!attribute [rw] value_list
    #   Allows filtering on the `Name` of an offer with list input.
    #   @return [Array<String>]
    #
    # @!attribute [rw] wild_card_value
    #   Allows filtering on the `Name` of an offer with wild card input.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/OfferNameFilter AWS API Documentation
    #
    class OfferNameFilter < Struct.new(
      :value_list,
      :wild_card_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows filtering on the `ProductId` of an offer.
    #
    # @!attribute [rw] value_list
    #   Allows filtering on the `ProductId` of an offer with list input.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/OfferProductIdFilter AWS API Documentation
    #
    class OfferProductIdFilter < Struct.new(
      :value_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows filtering on the `ReleaseDate` of an offer.
    #
    # @!attribute [rw] date_range
    #   Allows filtering on the `ReleaseDate` of an offer with date range as
    #   input.
    #   @return [Types::OfferReleaseDateFilterDateRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/OfferReleaseDateFilter AWS API Documentation
    #
    class OfferReleaseDateFilter < Struct.new(
      :date_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows filtering on the `ReleaseDate` of an offer with date range as
    # input.
    #
    # @!attribute [rw] after_value
    #   Allows filtering on the `ReleaseDate` of offers after a date.
    #   @return [String]
    #
    # @!attribute [rw] before_value
    #   Allows filtering on the `ReleaseDate` of offers before a date.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/OfferReleaseDateFilterDateRange AWS API Documentation
    #
    class OfferReleaseDateFilterDateRange < Struct.new(
      :after_value,
      :before_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows filtering on the `ResaleAuthorizationId` of an offer.
    #
    # <note markdown="1"> Not all offers have a `ResaleAuthorizationId`. The response will only
    # include offers for which you have permissions.
    #
    #  </note>
    #
    # @!attribute [rw] value_list
    #   Allows filtering on the `ResaleAuthorizationId` of an offer with
    #   list input.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/OfferResaleAuthorizationIdFilter AWS API Documentation
    #
    class OfferResaleAuthorizationIdFilter < Struct.new(
      :value_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows filtering on the `AssociatedOfferIds` of an offer set.
    #
    # @!attribute [rw] value_list
    #   Allows filtering on the `AssociatedOfferIds` of an offer set with
    #   list input.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/OfferSetAssociatedOfferIdsFilter AWS API Documentation
    #
    class OfferSetAssociatedOfferIdsFilter < Struct.new(
      :value_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows filtering on the entity id of an offer set.
    #
    # @!attribute [rw] value_list
    #   Allows filtering on entity id of an offer set with list input.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/OfferSetEntityIdFilter AWS API Documentation
    #
    class OfferSetEntityIdFilter < Struct.new(
      :value_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object containing all the filter fields for offer sets entity. Client
    # can add a maximum of 8 filters in a single `ListEntities` request.
    #
    # @!attribute [rw] entity_id
    #   Allows filtering on `EntityId` of an offer set.
    #   @return [Types::OfferSetEntityIdFilter]
    #
    # @!attribute [rw] name
    #   Allows filtering on the `Name` of an offer set.
    #   @return [Types::OfferSetNameFilter]
    #
    # @!attribute [rw] state
    #   Allows filtering on the `State` of an offer set.
    #   @return [Types::OfferSetStateFilter]
    #
    # @!attribute [rw] release_date
    #   Allows filtering on the `ReleaseDate` of an offer set.
    #   @return [Types::OfferSetReleaseDateFilter]
    #
    # @!attribute [rw] associated_offer_ids
    #   Allows filtering on the `AssociatedOfferIds` of an offer set.
    #   @return [Types::OfferSetAssociatedOfferIdsFilter]
    #
    # @!attribute [rw] solution_id
    #   Allows filtering on the `SolutionId` of an offer set.
    #   @return [Types::OfferSetSolutionIdFilter]
    #
    # @!attribute [rw] last_modified_date
    #   Allows filtering on the `LastModifiedDate` of an offer set.
    #   @return [Types::OfferSetLastModifiedDateFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/OfferSetFilters AWS API Documentation
    #
    class OfferSetFilters < Struct.new(
      :entity_id,
      :name,
      :state,
      :release_date,
      :associated_offer_ids,
      :solution_id,
      :last_modified_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows filtering on the `OfferSetId` of an offer.
    #
    # @!attribute [rw] value_list
    #   Allows filtering on the `OfferSetId` of an offer.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/OfferSetIdFilter AWS API Documentation
    #
    class OfferSetIdFilter < Struct.new(
      :value_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows filtering on the `LastModifiedDate` of an offer set.
    #
    # @!attribute [rw] date_range
    #   Allows filtering on the `LastModifiedDate` of an offer set with date
    #   range as input.
    #   @return [Types::OfferSetLastModifiedDateFilterDateRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/OfferSetLastModifiedDateFilter AWS API Documentation
    #
    class OfferSetLastModifiedDateFilter < Struct.new(
      :date_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows filtering on the `LastModifiedDate` of an offer set with date
    # range as input.
    #
    # @!attribute [rw] after_value
    #   Allows filtering on the `LastModifiedDate` of an offer set after a
    #   date.
    #   @return [String]
    #
    # @!attribute [rw] before_value
    #   Allows filtering on the `LastModifiedDate` of an offer set before a
    #   date.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/OfferSetLastModifiedDateFilterDateRange AWS API Documentation
    #
    class OfferSetLastModifiedDateFilterDateRange < Struct.new(
      :after_value,
      :before_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows filtering on the `Name` of an offer set.
    #
    # @!attribute [rw] value_list
    #   Allows filtering on the `Name` of an offer set with list input.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/OfferSetNameFilter AWS API Documentation
    #
    class OfferSetNameFilter < Struct.new(
      :value_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows filtering on the `ReleaseDate` of an offer set.
    #
    # @!attribute [rw] date_range
    #   Allows filtering on the `ReleaseDate` of an offer set with date
    #   range as input.
    #   @return [Types::OfferSetReleaseDateFilterDateRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/OfferSetReleaseDateFilter AWS API Documentation
    #
    class OfferSetReleaseDateFilter < Struct.new(
      :date_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows filtering on the `ReleaseDate` of an offer set with date range
    # as input.
    #
    # @!attribute [rw] after_value
    #   Allows filtering on the `ReleaseDate` of offer set after a date.
    #   @return [String]
    #
    # @!attribute [rw] before_value
    #   Allows filtering on the `ReleaseDate` of offer set before a date.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/OfferSetReleaseDateFilterDateRange AWS API Documentation
    #
    class OfferSetReleaseDateFilterDateRange < Struct.new(
      :after_value,
      :before_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows filtering on the `SolutionId` of an offer set.
    #
    # @!attribute [rw] value_list
    #   Allows filtering on the `SolutionId` of an offer set with list
    #   input.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/OfferSetSolutionIdFilter AWS API Documentation
    #
    class OfferSetSolutionIdFilter < Struct.new(
      :value_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows to sort offer sets.
    #
    # @!attribute [rw] sort_by
    #   Allows to sort offer sets.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   Allows to sort offer sets.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/OfferSetSort AWS API Documentation
    #
    class OfferSetSort < Struct.new(
      :sort_by,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows filtering on the `State` of an offer set.
    #
    # @!attribute [rw] value_list
    #   Allows filtering on the `State` of an offer set with list input.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/OfferSetStateFilter AWS API Documentation
    #
    class OfferSetStateFilter < Struct.new(
      :value_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summarized information about an offer set.
    #
    # @!attribute [rw] name
    #   The name of the offer set.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the offer set.
    #   @return [String]
    #
    # @!attribute [rw] release_date
    #   The release date of the offer set.
    #   @return [String]
    #
    # @!attribute [rw] associated_offer_ids
    #   The list of offer IDs associated with the offer set.
    #   @return [Array<String>]
    #
    # @!attribute [rw] solution_id
    #   The solution ID associated with the offer set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/OfferSetSummary AWS API Documentation
    #
    class OfferSetSummary < Struct.new(
      :name,
      :state,
      :release_date,
      :associated_offer_ids,
      :solution_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows to sort offers.
    #
    # @!attribute [rw] sort_by
    #   Allows to sort offers.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   Allows to sort offers.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/OfferSort AWS API Documentation
    #
    class OfferSort < Struct.new(
      :sort_by,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows filtering on the `State` of an offer.
    #
    # @!attribute [rw] value_list
    #   Allows filtering on the `State` of an offer with list input.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/OfferStateFilter AWS API Documentation
    #
    class OfferStateFilter < Struct.new(
      :value_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summarized information about an offer.
    #
    # @!attribute [rw] name
    #   The name of the offer.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The product ID of the offer.
    #   @return [String]
    #
    # @!attribute [rw] resale_authorization_id
    #   The ResaleAuthorizationId of the offer.
    #   @return [String]
    #
    # @!attribute [rw] release_date
    #   The release date of the offer.
    #   @return [String]
    #
    # @!attribute [rw] availability_end_date
    #   The availability end date of the offer.
    #   @return [String]
    #
    # @!attribute [rw] buyer_accounts
    #   The buyer accounts in the offer.
    #   @return [Array<String>]
    #
    # @!attribute [rw] state
    #   The status of the offer.
    #   @return [String]
    #
    # @!attribute [rw] targeting
    #   The targeting in the offer.
    #   @return [Array<String>]
    #
    # @!attribute [rw] offer_set_id
    #   The offer set ID of the offer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/OfferSummary AWS API Documentation
    #
    class OfferSummary < Struct.new(
      :name,
      :product_id,
      :resale_authorization_id,
      :release_date,
      :availability_end_date,
      :buyer_accounts,
      :state,
      :targeting,
      :offer_set_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows filtering on the `Targeting` of an offer.
    #
    # @!attribute [rw] value_list
    #   Allows filtering on the `Targeting` of an offer with list input.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/OfferTargetingFilter AWS API Documentation
    #
    class OfferTargetingFilter < Struct.new(
      :value_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the entity resource you want to
    #   associate with a resource policy.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The policy document to set; formatted in JSON.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/PutResourcePolicyRequest AWS API Documentation
    #
    class PutResourcePolicyRequest < Struct.new(
      :resource_arn,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/PutResourcePolicyResponse AWS API Documentation
    #
    class PutResourcePolicyResponse < Aws::EmptyStructure; end

    # Allows filtering on `AvailabilityEndDate` of a ResaleAuthorization.
    #
    # @!attribute [rw] date_range
    #   Allows filtering on `AvailabilityEndDate` of a ResaleAuthorization
    #   with date range as input
    #   @return [Types::ResaleAuthorizationAvailabilityEndDateFilterDateRange]
    #
    # @!attribute [rw] value_list
    #   Allows filtering on `AvailabilityEndDate` of a ResaleAuthorization
    #   with date value as input.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ResaleAuthorizationAvailabilityEndDateFilter AWS API Documentation
    #
    class ResaleAuthorizationAvailabilityEndDateFilter < Struct.new(
      :date_range,
      :value_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows filtering on `AvailabilityEndDate` of a ResaleAuthorization
    # with date range as input.
    #
    # @!attribute [rw] after_value
    #   Allows filtering on `AvailabilityEndDate` of a ResaleAuthorization
    #   after a date.
    #   @return [String]
    #
    # @!attribute [rw] before_value
    #   Allows filtering on `AvailabilityEndDate` of a ResaleAuthorization
    #   before a date.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ResaleAuthorizationAvailabilityEndDateFilterDateRange AWS API Documentation
    #
    class ResaleAuthorizationAvailabilityEndDateFilterDateRange < Struct.new(
      :after_value,
      :before_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows filtering on `CreatedDate` of a ResaleAuthorization.
    #
    # @!attribute [rw] date_range
    #   Allows filtering on `CreatedDate` of a ResaleAuthorization with date
    #   range as input.
    #   @return [Types::ResaleAuthorizationCreatedDateFilterDateRange]
    #
    # @!attribute [rw] value_list
    #   Allows filtering on `CreatedDate` of a ResaleAuthorization with date
    #   value as input.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ResaleAuthorizationCreatedDateFilter AWS API Documentation
    #
    class ResaleAuthorizationCreatedDateFilter < Struct.new(
      :date_range,
      :value_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows filtering on `CreatedDate` of a ResaleAuthorization with date
    # range as input.
    #
    # @!attribute [rw] after_value
    #   Allows filtering on `CreatedDate` of a ResaleAuthorization after a
    #   date.
    #   @return [String]
    #
    # @!attribute [rw] before_value
    #   Allows filtering on `CreatedDate` of a ResaleAuthorization before a
    #   date.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ResaleAuthorizationCreatedDateFilterDateRange AWS API Documentation
    #
    class ResaleAuthorizationCreatedDateFilterDateRange < Struct.new(
      :after_value,
      :before_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows filtering on `EntityId` of a ResaleAuthorization.
    #
    # @!attribute [rw] value_list
    #   Allows filtering on `EntityId` of a ResaleAuthorization with list
    #   input.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ResaleAuthorizationEntityIdFilter AWS API Documentation
    #
    class ResaleAuthorizationEntityIdFilter < Struct.new(
      :value_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object containing all the filter fields for resale authorization
    # entity. Client can add only one wildcard filter and a maximum of 8
    # filters in a single `ListEntities` request.
    #
    # @!attribute [rw] entity_id
    #   Allows filtering on the `EntityId` of a ResaleAuthorization.
    #   @return [Types::ResaleAuthorizationEntityIdFilter]
    #
    # @!attribute [rw] name
    #   Allows filtering on the `Name` of a ResaleAuthorization.
    #   @return [Types::ResaleAuthorizationNameFilter]
    #
    # @!attribute [rw] product_id
    #   Allows filtering on the `ProductId` of a ResaleAuthorization.
    #   @return [Types::ResaleAuthorizationProductIdFilter]
    #
    # @!attribute [rw] created_date
    #   Allows filtering on the `CreatedDate` of a ResaleAuthorization.
    #   @return [Types::ResaleAuthorizationCreatedDateFilter]
    #
    # @!attribute [rw] availability_end_date
    #   Allows filtering on the `AvailabilityEndDate` of a
    #   ResaleAuthorization.
    #   @return [Types::ResaleAuthorizationAvailabilityEndDateFilter]
    #
    # @!attribute [rw] manufacturer_account_id
    #   Allows filtering on the `ManufacturerAccountId` of a
    #   ResaleAuthorization.
    #   @return [Types::ResaleAuthorizationManufacturerAccountIdFilter]
    #
    # @!attribute [rw] product_name
    #   Allows filtering on the `ProductName` of a ResaleAuthorization.
    #   @return [Types::ResaleAuthorizationProductNameFilter]
    #
    # @!attribute [rw] manufacturer_legal_name
    #   Allows filtering on the `ManufacturerLegalName` of a
    #   ResaleAuthorization.
    #   @return [Types::ResaleAuthorizationManufacturerLegalNameFilter]
    #
    # @!attribute [rw] reseller_account_id
    #   Allows filtering on the `ResellerAccountID` of a
    #   ResaleAuthorization.
    #   @return [Types::ResaleAuthorizationResellerAccountIDFilter]
    #
    # @!attribute [rw] reseller_legal_name
    #   Allows filtering on the `ResellerLegalName` of a
    #   ResaleAuthorization.
    #   @return [Types::ResaleAuthorizationResellerLegalNameFilter]
    #
    # @!attribute [rw] status
    #   Allows filtering on the `Status` of a ResaleAuthorization.
    #   @return [Types::ResaleAuthorizationStatusFilter]
    #
    # @!attribute [rw] offer_extended_status
    #   Allows filtering on the `OfferExtendedStatus` of a
    #   ResaleAuthorization.
    #   @return [Types::ResaleAuthorizationOfferExtendedStatusFilter]
    #
    # @!attribute [rw] last_modified_date
    #   Allows filtering on the `LastModifiedDate` of a ResaleAuthorization.
    #   @return [Types::ResaleAuthorizationLastModifiedDateFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ResaleAuthorizationFilters AWS API Documentation
    #
    class ResaleAuthorizationFilters < Struct.new(
      :entity_id,
      :name,
      :product_id,
      :created_date,
      :availability_end_date,
      :manufacturer_account_id,
      :product_name,
      :manufacturer_legal_name,
      :reseller_account_id,
      :reseller_legal_name,
      :status,
      :offer_extended_status,
      :last_modified_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows filtering on the `LastModifiedDate` of a ResaleAuthorization.
    #
    # @!attribute [rw] date_range
    #   Allows filtering on the `LastModifiedDate` of a ResaleAuthorization
    #   with date range as input.
    #   @return [Types::ResaleAuthorizationLastModifiedDateFilterDateRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ResaleAuthorizationLastModifiedDateFilter AWS API Documentation
    #
    class ResaleAuthorizationLastModifiedDateFilter < Struct.new(
      :date_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows filtering on the `LastModifiedDate` of a ResaleAuthorization
    # with date range as input.
    #
    # @!attribute [rw] after_value
    #   Allows filtering on the `LastModifiedDate` of a ResaleAuthorization
    #   after a date.
    #   @return [String]
    #
    # @!attribute [rw] before_value
    #   Allows filtering on the `LastModifiedDate` of a ResaleAuthorization
    #   before a date.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ResaleAuthorizationLastModifiedDateFilterDateRange AWS API Documentation
    #
    class ResaleAuthorizationLastModifiedDateFilterDateRange < Struct.new(
      :after_value,
      :before_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows filtering on the `ManufacturerAccountId` of a
    # ResaleAuthorization.
    #
    # @!attribute [rw] value_list
    #   Allows filtering on the `ManufacturerAccountId` of a
    #   ResaleAuthorization with list input.
    #   @return [Array<String>]
    #
    # @!attribute [rw] wild_card_value
    #   Allows filtering on the `ManufacturerAccountId` of a
    #   ResaleAuthorization with wild card input.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ResaleAuthorizationManufacturerAccountIdFilter AWS API Documentation
    #
    class ResaleAuthorizationManufacturerAccountIdFilter < Struct.new(
      :value_list,
      :wild_card_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows filtering on the `ManufacturerLegalName` of a
    # ResaleAuthorization.
    #
    # @!attribute [rw] value_list
    #   Allows filtering on the `ManufacturerLegalName` of a
    #   ResaleAuthorization with list input.
    #   @return [Array<String>]
    #
    # @!attribute [rw] wild_card_value
    #   Allows filtering on the `ManufacturerLegalName` of a
    #   ResaleAuthorization with wild card input.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ResaleAuthorizationManufacturerLegalNameFilter AWS API Documentation
    #
    class ResaleAuthorizationManufacturerLegalNameFilter < Struct.new(
      :value_list,
      :wild_card_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows filtering on the `Name` of a ResaleAuthorization.
    #
    # @!attribute [rw] value_list
    #   Allows filtering on the `Name` of a ResaleAuthorization with list
    #   input.
    #   @return [Array<String>]
    #
    # @!attribute [rw] wild_card_value
    #   Allows filtering on the `Name` of a ResaleAuthorization with wild
    #   card input.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ResaleAuthorizationNameFilter AWS API Documentation
    #
    class ResaleAuthorizationNameFilter < Struct.new(
      :value_list,
      :wild_card_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows filtering on the `OfferExtendedStatus` of a
    # ResaleAuthorization.
    #
    # @!attribute [rw] value_list
    #   Allows filtering on the `OfferExtendedStatus` of a
    #   ResaleAuthorization with list input.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ResaleAuthorizationOfferExtendedStatusFilter AWS API Documentation
    #
    class ResaleAuthorizationOfferExtendedStatusFilter < Struct.new(
      :value_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows filtering on the `ProductId` of a ResaleAuthorization.
    #
    # @!attribute [rw] value_list
    #   Allows filtering on the `ProductId` of a ResaleAuthorization with
    #   list input.
    #   @return [Array<String>]
    #
    # @!attribute [rw] wild_card_value
    #   Allows filtering on the `ProductId` of a ResaleAuthorization with
    #   wild card input.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ResaleAuthorizationProductIdFilter AWS API Documentation
    #
    class ResaleAuthorizationProductIdFilter < Struct.new(
      :value_list,
      :wild_card_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows filtering on the `ProductName` of a ResaleAuthorization.
    #
    # @!attribute [rw] value_list
    #   Allows filtering on the `ProductName` of a ResaleAuthorization with
    #   list input.
    #   @return [Array<String>]
    #
    # @!attribute [rw] wild_card_value
    #   Allows filtering on the `ProductName` of a ResaleAuthorization with
    #   wild card input.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ResaleAuthorizationProductNameFilter AWS API Documentation
    #
    class ResaleAuthorizationProductNameFilter < Struct.new(
      :value_list,
      :wild_card_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows filtering on the `ResellerAccountID` of a ResaleAuthorization.
    #
    # @!attribute [rw] value_list
    #   Allows filtering on the `ResellerAccountID` of a ResaleAuthorization
    #   with list input.
    #   @return [Array<String>]
    #
    # @!attribute [rw] wild_card_value
    #   Allows filtering on the `ResellerAccountID` of a ResaleAuthorization
    #   with wild card input.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ResaleAuthorizationResellerAccountIDFilter AWS API Documentation
    #
    class ResaleAuthorizationResellerAccountIDFilter < Struct.new(
      :value_list,
      :wild_card_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows filtering on the ResellerLegalName of a ResaleAuthorization.
    #
    # @!attribute [rw] value_list
    #   Allows filtering on the ResellerLegalNameProductName of a
    #   ResaleAuthorization with list input.
    #   @return [Array<String>]
    #
    # @!attribute [rw] wild_card_value
    #   Allows filtering on the ResellerLegalName of a ResaleAuthorization
    #   with wild card input.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ResaleAuthorizationResellerLegalNameFilter AWS API Documentation
    #
    class ResaleAuthorizationResellerLegalNameFilter < Struct.new(
      :value_list,
      :wild_card_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows to sort ResaleAuthorization.
    #
    # @!attribute [rw] sort_by
    #   Allows to sort ResaleAuthorization.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   Allows to sort ResaleAuthorization.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ResaleAuthorizationSort AWS API Documentation
    #
    class ResaleAuthorizationSort < Struct.new(
      :sort_by,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows filtering on the `Status` of a ResaleAuthorization.
    #
    # @!attribute [rw] value_list
    #   Allows filtering on the `Status` of a ResaleAuthorization with list
    #   input.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ResaleAuthorizationStatusFilter AWS API Documentation
    #
    class ResaleAuthorizationStatusFilter < Struct.new(
      :value_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summarized information about a Resale Authorization.
    #
    # @!attribute [rw] name
    #   The name of the ResaleAuthorization.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The product ID of the ResaleAuthorization.
    #   @return [String]
    #
    # @!attribute [rw] product_name
    #   The product name of the ResaleAuthorization.
    #   @return [String]
    #
    # @!attribute [rw] manufacturer_account_id
    #   The manufacturer account ID of the ResaleAuthorization.
    #   @return [String]
    #
    # @!attribute [rw] manufacturer_legal_name
    #   The manufacturer legal name of the ResaleAuthorization.
    #   @return [String]
    #
    # @!attribute [rw] reseller_account_id
    #   The reseller account ID of the ResaleAuthorization.
    #   @return [String]
    #
    # @!attribute [rw] reseller_legal_name
    #   The reseller legal name of the ResaleAuthorization
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the ResaleAuthorization.
    #   @return [String]
    #
    # @!attribute [rw] offer_extended_status
    #   The offer extended status of the ResaleAuthorization
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The created date of the ResaleAuthorization.
    #   @return [String]
    #
    # @!attribute [rw] availability_end_date
    #   The availability end date of the ResaleAuthorization.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ResaleAuthorizationSummary AWS API Documentation
    #
    class ResaleAuthorizationSummary < Struct.new(
      :name,
      :product_id,
      :product_name,
      :manufacturer_account_id,
      :manufacturer_legal_name,
      :reseller_account_id,
      :reseller_legal_name,
      :status,
      :offer_extended_status,
      :created_date,
      :availability_end_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource is currently in use.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ResourceInUseException AWS API Documentation
    #
    class ResourceInUseException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource wasn't found.
    #
    # HTTP status code: 404
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Currently, the specified resource is not supported.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ResourceNotSupportedException AWS API Documentation
    #
    class ResourceNotSupportedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that allows filtering on entity id of a SaaS product.
    #
    # @!attribute [rw] value_list
    #   A string array of unique entity id values to be filtered on.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/SaaSProductEntityIdFilter AWS API Documentation
    #
    class SaaSProductEntityIdFilter < Struct.new(
      :value_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object containing all the filter fields for SaaS products. Client can
    # add only one wildcard filter and a maximum of 8 filters in a single
    # `ListEntities` request.
    #
    # @!attribute [rw] entity_id
    #   Unique identifier for the SaaS product.
    #   @return [Types::SaaSProductEntityIdFilter]
    #
    # @!attribute [rw] product_title
    #   The title of the SaaS product.
    #   @return [Types::SaaSProductTitleFilter]
    #
    # @!attribute [rw] visibility
    #   The visibility of the SaaS product.
    #   @return [Types::SaaSProductVisibilityFilter]
    #
    # @!attribute [rw] last_modified_date
    #   The last date on which the SaaS product was modified.
    #   @return [Types::SaaSProductLastModifiedDateFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/SaaSProductFilters AWS API Documentation
    #
    class SaaSProductFilters < Struct.new(
      :entity_id,
      :product_title,
      :visibility,
      :last_modified_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that allows filtering based on the last modified date of SaaS
    # products
    #
    # @!attribute [rw] date_range
    #   Dates between which the SaaS product was last modified.
    #   @return [Types::SaaSProductLastModifiedDateFilterDateRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/SaaSProductLastModifiedDateFilter AWS API Documentation
    #
    class SaaSProductLastModifiedDateFilter < Struct.new(
      :date_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that contains date range of the last modified date to be
    # filtered on. You can optionally provide a `BeforeValue` and/or
    # `AfterValue`. Both are inclusive.
    #
    # @!attribute [rw] after_value
    #   Date after which the SaaS product was last modified.
    #   @return [String]
    #
    # @!attribute [rw] before_value
    #   Date before which the SaaS product was last modified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/SaaSProductLastModifiedDateFilterDateRange AWS API Documentation
    #
    class SaaSProductLastModifiedDateFilterDateRange < Struct.new(
      :after_value,
      :before_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Objects that allows sorting on SaaS products based on certain fields
    # and sorting order.
    #
    # @!attribute [rw] sort_by
    #   Field to sort the SaaS products by.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sorting order. Can be `ASCENDING` or `DESCENDING`. The default
    #   value is `DESCENDING`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/SaaSProductSort AWS API Documentation
    #
    class SaaSProductSort < Struct.new(
      :sort_by,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that contains summarized information about a SaaS product.
    #
    # @!attribute [rw] product_title
    #   The title of the SaaS product.
    #   @return [String]
    #
    # @!attribute [rw] visibility
    #   The lifecycle of the SaaS product.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/SaaSProductSummary AWS API Documentation
    #
    class SaaSProductSummary < Struct.new(
      :product_title,
      :visibility)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that allows filtering on product title.
    #
    # @!attribute [rw] value_list
    #   A string array of unique product title values to be filtered on.
    #   @return [Array<String>]
    #
    # @!attribute [rw] wild_card_value
    #   A string that will be the `wildCard` input for product tile filter.
    #   It matches the provided value as a substring in the actual value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/SaaSProductTitleFilter AWS API Documentation
    #
    class SaaSProductTitleFilter < Struct.new(
      :value_list,
      :wild_card_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that allows filtering on the visibility of the product in the
    # AWS Marketplace.
    #
    # @!attribute [rw] value_list
    #   A string array of unique visibility values to be filtered on.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/SaaSProductVisibilityFilter AWS API Documentation
    #
    class SaaSProductVisibilityFilter < Struct.new(
      :value_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum number of open requests per account has been exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains two attributes, `SortBy` and `SortOrder`.
    #
    # @!attribute [rw] sort_by
    #   For `ListEntities`, supported attributes include `LastModifiedDate`
    #   (default) and `EntityId`. In addition to `LastModifiedDate` and
    #   `EntityId`, each `EntityType` might support additional fields.
    #
    #   For `ListChangeSets`, supported attributes include `StartTime` and
    #   `EndTime`.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sorting order. Can be `ASCENDING` or `DESCENDING`. The default
    #   value is `DESCENDING`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/Sort AWS API Documentation
    #
    class Sort < Struct.new(
      :sort_by,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog related to the request. Fixed value: `AWSMarketplace`
    #   @return [String]
    #
    # @!attribute [rw] change_set
    #   Array of `change` object.
    #   @return [Array<Types::Change>]
    #
    # @!attribute [rw] change_set_name
    #   Optional case sensitive string of up to 100 ASCII characters. The
    #   change set name can be used to filter the list of change sets.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique token to identify the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] change_set_tags
    #   A list of objects specifying each key name and value for the
    #   `ChangeSetTags` property.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] intent
    #   The intent related to the request. The default is `APPLY`. To test
    #   your request before applying changes to your entities, use
    #   `VALIDATE`. This feature is currently available for adding versions
    #   to single-AMI products. For more information, see [Add a new
    #   version][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/ami-products.html#ami-add-version
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/StartChangeSetRequest AWS API Documentation
    #
    class StartChangeSetRequest < Struct.new(
      :catalog,
      :change_set,
      :change_set_name,
      :client_request_token,
      :change_set_tags,
      :intent)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] change_set_id
    #   Unique identifier generated for the request.
    #   @return [String]
    #
    # @!attribute [rw] change_set_arn
    #   The ARN associated to the unique identifier generated for the
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/StartChangeSetResponse AWS API Documentation
    #
    class StartChangeSetResponse < Struct.new(
      :change_set_id,
      :change_set_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of objects specifying each key name and value.
    #
    # @!attribute [rw] key
    #   The key associated with the tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value associated with the tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Required. The Amazon Resource Name (ARN) associated with the
    #   resource you want to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Required. A list of objects specifying each key name and value.
    #   Number of objects allowed: 1-50.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Too many requests.
    #
    # HTTP status code: 429
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Required. The Amazon Resource Name (ARN) associated with the
    #   resource you want to remove the tag from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Required. A list of key names of tags to be removed. Number of
    #   strings allowed: 0-256.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # An error occurred during validation.
    #
    # HTTP status code: 422
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

