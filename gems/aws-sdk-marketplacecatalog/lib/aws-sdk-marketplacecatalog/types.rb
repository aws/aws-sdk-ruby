# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MarketplaceCatalog
  module Types

    # Access is denied.
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

    # @note When making an API call, you may pass CancelChangeSetRequest
    #   data as a hash:
    #
    #       {
    #         catalog: "Catalog", # required
    #         change_set_id: "ResourceId", # required
    #       }
    #
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
    # @note When making an API call, you may pass Change
    #   data as a hash:
    #
    #       {
    #         change_type: "ChangeType", # required
    #         entity: { # required
    #           type: "EntityType", # required
    #           identifier: "Identifier",
    #         },
    #         details: "Json", # required
    #       }
    #
    # @!attribute [rw] change_type
    #   Change types are single string values that describe your intention
    #   for the change. Each change type is unique for each `EntityType`
    #   provided in the change's scope.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/Change AWS API Documentation
    #
    class Change < Struct.new(
      :change_type,
      :entity,
      :details)
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
    # @!attribute [rw] error_detail_list
    #   An array of `ErrorDetail` objects associated with the change.
    #   @return [Array<Types::ErrorDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ChangeSummary AWS API Documentation
    #
    class ChangeSummary < Struct.new(
      :change_type,
      :entity,
      :details,
      :error_detail_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeChangeSetRequest
    #   data as a hash:
    #
    #       {
    #         catalog: "Catalog", # required
    #         change_set_id: "ResourceId", # required
    #       }
    #
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
      :start_time,
      :end_time,
      :status,
      :failure_code,
      :failure_description,
      :change_set)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeEntityRequest
    #   data as a hash:
    #
    #       {
    #         catalog: "Catalog", # required
    #         entity_id: "ResourceId", # required
    #       }
    #
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
    #   The ARN associated to the unique identifier for the change set
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/DescribeEntityResponse AWS API Documentation
    #
    class DescribeEntityResponse < Struct.new(
      :entity_type,
      :entity_identifier,
      :entity_arn,
      :last_modified_date,
      :details)
      SENSITIVE = []
      include Aws::Structure
    end

    # A product entity contains data that describes your product, its
    # supported features, and how it can be used or launched by your
    # customer.
    #
    # @note When making an API call, you may pass Entity
    #   data as a hash:
    #
    #       {
    #         type: "EntityType", # required
    #         identifier: "Identifier",
    #       }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/EntitySummary AWS API Documentation
    #
    class EntitySummary < Struct.new(
      :name,
      :entity_type,
      :entity_id,
      :entity_arn,
      :last_modified_date,
      :visibility)
      SENSITIVE = []
      include Aws::Structure
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
    # @note When making an API call, you may pass Filter
    #   data as a hash:
    #
    #       {
    #         name: "FilterName",
    #         value_list: ["StringValue"],
    #       }
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

    # There was an internal service exception.
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

    # @note When making an API call, you may pass ListChangeSetsRequest
    #   data as a hash:
    #
    #       {
    #         catalog: "Catalog", # required
    #         filter_list: [
    #           {
    #             name: "FilterName",
    #             value_list: ["StringValue"],
    #           },
    #         ],
    #         sort: {
    #           sort_by: "SortBy",
    #           sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #         },
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
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

    # @note When making an API call, you may pass ListEntitiesRequest
    #   data as a hash:
    #
    #       {
    #         catalog: "Catalog", # required
    #         entity_type: "EntityType", # required
    #         filter_list: [
    #           {
    #             name: "FilterName",
    #             value_list: ["StringValue"],
    #           },
    #         ],
    #         sort: {
    #           sort_by: "SortBy",
    #           sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #         },
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] catalog
    #   The catalog related to the request. Fixed value: `AWSMarketplace`
    #   @return [String]
    #
    # @!attribute [rw] entity_type
    #   The type of entities to retrieve.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ListEntitiesRequest AWS API Documentation
    #
    class ListEntitiesRequest < Struct.new(
      :catalog,
      :entity_type,
      :filter_list,
      :sort,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entity_summary_list
    #   Array of `EntitySummary` object.
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
    # @note When making an API call, you may pass Sort
    #   data as a hash:
    #
    #       {
    #         sort_by: "SortBy",
    #         sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #       }
    #
    # @!attribute [rw] sort_by
    #   For `ListEntities`, supported attributes include `LastModifiedDate`
    #   (default), `Visibility`, `EntityId`, and `Name`.
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

    # @note When making an API call, you may pass StartChangeSetRequest
    #   data as a hash:
    #
    #       {
    #         catalog: "Catalog", # required
    #         change_set: [ # required
    #           {
    #             change_type: "ChangeType", # required
    #             entity: { # required
    #               type: "EntityType", # required
    #               identifier: "Identifier",
    #             },
    #             details: "Json", # required
    #           },
    #         ],
    #         change_set_name: "ChangeSetName",
    #         client_request_token: "ClientRequestToken",
    #       }
    #
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
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/StartChangeSetRequest AWS API Documentation
    #
    class StartChangeSetRequest < Struct.new(
      :catalog,
      :change_set,
      :change_set_name,
      :client_request_token)
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

    # Too many requests.
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

    # An error occurred during validation.
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
