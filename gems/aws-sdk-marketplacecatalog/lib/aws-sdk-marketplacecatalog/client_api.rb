# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MarketplaceCatalog
  # @api private
  module ClientApi

    include Seahorse::Model

    ARN = Shapes::StringShape.new(name: 'ARN')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    CancelChangeSetRequest = Shapes::StructureShape.new(name: 'CancelChangeSetRequest')
    CancelChangeSetResponse = Shapes::StructureShape.new(name: 'CancelChangeSetResponse')
    Catalog = Shapes::StringShape.new(name: 'Catalog')
    Change = Shapes::StructureShape.new(name: 'Change')
    ChangeSetDescription = Shapes::ListShape.new(name: 'ChangeSetDescription')
    ChangeSetName = Shapes::StringShape.new(name: 'ChangeSetName')
    ChangeSetSummaryList = Shapes::ListShape.new(name: 'ChangeSetSummaryList')
    ChangeSetSummaryListItem = Shapes::StructureShape.new(name: 'ChangeSetSummaryListItem')
    ChangeStatus = Shapes::StringShape.new(name: 'ChangeStatus')
    ChangeSummary = Shapes::StructureShape.new(name: 'ChangeSummary')
    ChangeType = Shapes::StringShape.new(name: 'ChangeType')
    ClientRequestToken = Shapes::StringShape.new(name: 'ClientRequestToken')
    DateTimeISO8601 = Shapes::StringShape.new(name: 'DateTimeISO8601')
    DescribeChangeSetRequest = Shapes::StructureShape.new(name: 'DescribeChangeSetRequest')
    DescribeChangeSetResponse = Shapes::StructureShape.new(name: 'DescribeChangeSetResponse')
    DescribeEntityRequest = Shapes::StructureShape.new(name: 'DescribeEntityRequest')
    DescribeEntityResponse = Shapes::StructureShape.new(name: 'DescribeEntityResponse')
    Entity = Shapes::StructureShape.new(name: 'Entity')
    EntitySummary = Shapes::StructureShape.new(name: 'EntitySummary')
    EntitySummaryList = Shapes::ListShape.new(name: 'EntitySummaryList')
    EntityType = Shapes::StringShape.new(name: 'EntityType')
    ErrorDetail = Shapes::StructureShape.new(name: 'ErrorDetail')
    ErrorDetailList = Shapes::ListShape.new(name: 'ErrorDetailList')
    FailureCode = Shapes::StringShape.new(name: 'FailureCode')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterList = Shapes::ListShape.new(name: 'FilterList')
    FilterName = Shapes::StringShape.new(name: 'FilterName')
    Identifier = Shapes::StringShape.new(name: 'Identifier')
    InternalServiceException = Shapes::StructureShape.new(name: 'InternalServiceException')
    Json = Shapes::StringShape.new(name: 'Json')
    ListChangeSetsRequest = Shapes::StructureShape.new(name: 'ListChangeSetsRequest')
    ListChangeSetsResponse = Shapes::StructureShape.new(name: 'ListChangeSetsResponse')
    ListEntitiesRequest = Shapes::StructureShape.new(name: 'ListEntitiesRequest')
    ListEntitiesResponse = Shapes::StructureShape.new(name: 'ListEntitiesResponse')
    MaxResultInteger = Shapes::IntegerShape.new(name: 'MaxResultInteger')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    RequestedChangeList = Shapes::ListShape.new(name: 'RequestedChangeList')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceIdList = Shapes::ListShape.new(name: 'ResourceIdList')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceNotSupportedException = Shapes::StructureShape.new(name: 'ResourceNotSupportedException')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    Sort = Shapes::StructureShape.new(name: 'Sort')
    SortBy = Shapes::StringShape.new(name: 'SortBy')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    StartChangeSetRequest = Shapes::StructureShape.new(name: 'StartChangeSetRequest')
    StartChangeSetResponse = Shapes::StructureShape.new(name: 'StartChangeSetResponse')
    StringValue = Shapes::StringShape.new(name: 'StringValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValueList = Shapes::ListShape.new(name: 'ValueList')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: StringValue, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    CancelChangeSetRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location: "querystring", location_name: "catalog"))
    CancelChangeSetRequest.add_member(:change_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "querystring", location_name: "changeSetId"))
    CancelChangeSetRequest.struct_class = Types::CancelChangeSetRequest

    CancelChangeSetResponse.add_member(:change_set_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ChangeSetId"))
    CancelChangeSetResponse.add_member(:change_set_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ChangeSetArn"))
    CancelChangeSetResponse.struct_class = Types::CancelChangeSetResponse

    Change.add_member(:change_type, Shapes::ShapeRef.new(shape: ChangeType, required: true, location_name: "ChangeType"))
    Change.add_member(:entity, Shapes::ShapeRef.new(shape: Entity, required: true, location_name: "Entity"))
    Change.add_member(:details, Shapes::ShapeRef.new(shape: Json, required: true, location_name: "Details"))
    Change.struct_class = Types::Change

    ChangeSetDescription.member = Shapes::ShapeRef.new(shape: ChangeSummary)

    ChangeSetSummaryList.member = Shapes::ShapeRef.new(shape: ChangeSetSummaryListItem)

    ChangeSetSummaryListItem.add_member(:change_set_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ChangeSetId"))
    ChangeSetSummaryListItem.add_member(:change_set_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ChangeSetArn"))
    ChangeSetSummaryListItem.add_member(:change_set_name, Shapes::ShapeRef.new(shape: ChangeSetName, location_name: "ChangeSetName"))
    ChangeSetSummaryListItem.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: "StartTime"))
    ChangeSetSummaryListItem.add_member(:end_time, Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: "EndTime"))
    ChangeSetSummaryListItem.add_member(:status, Shapes::ShapeRef.new(shape: ChangeStatus, location_name: "Status"))
    ChangeSetSummaryListItem.add_member(:entity_id_list, Shapes::ShapeRef.new(shape: ResourceIdList, location_name: "EntityIdList"))
    ChangeSetSummaryListItem.add_member(:failure_code, Shapes::ShapeRef.new(shape: FailureCode, location_name: "FailureCode"))
    ChangeSetSummaryListItem.struct_class = Types::ChangeSetSummaryListItem

    ChangeSummary.add_member(:change_type, Shapes::ShapeRef.new(shape: ChangeType, location_name: "ChangeType"))
    ChangeSummary.add_member(:entity, Shapes::ShapeRef.new(shape: Entity, location_name: "Entity"))
    ChangeSummary.add_member(:details, Shapes::ShapeRef.new(shape: Json, location_name: "Details"))
    ChangeSummary.add_member(:error_detail_list, Shapes::ShapeRef.new(shape: ErrorDetailList, location_name: "ErrorDetailList"))
    ChangeSummary.struct_class = Types::ChangeSummary

    DescribeChangeSetRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location: "querystring", location_name: "catalog"))
    DescribeChangeSetRequest.add_member(:change_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "querystring", location_name: "changeSetId"))
    DescribeChangeSetRequest.struct_class = Types::DescribeChangeSetRequest

    DescribeChangeSetResponse.add_member(:change_set_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ChangeSetId"))
    DescribeChangeSetResponse.add_member(:change_set_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ChangeSetArn"))
    DescribeChangeSetResponse.add_member(:change_set_name, Shapes::ShapeRef.new(shape: ChangeSetName, location_name: "ChangeSetName"))
    DescribeChangeSetResponse.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: "StartTime"))
    DescribeChangeSetResponse.add_member(:end_time, Shapes::ShapeRef.new(shape: DateTimeISO8601, location_name: "EndTime"))
    DescribeChangeSetResponse.add_member(:status, Shapes::ShapeRef.new(shape: ChangeStatus, location_name: "Status"))
    DescribeChangeSetResponse.add_member(:failure_code, Shapes::ShapeRef.new(shape: FailureCode, location_name: "FailureCode"))
    DescribeChangeSetResponse.add_member(:failure_description, Shapes::ShapeRef.new(shape: StringValue, location_name: "FailureDescription"))
    DescribeChangeSetResponse.add_member(:change_set, Shapes::ShapeRef.new(shape: ChangeSetDescription, location_name: "ChangeSet"))
    DescribeChangeSetResponse.struct_class = Types::DescribeChangeSetResponse

    DescribeEntityRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location: "querystring", location_name: "catalog"))
    DescribeEntityRequest.add_member(:entity_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "querystring", location_name: "entityId"))
    DescribeEntityRequest.struct_class = Types::DescribeEntityRequest

    DescribeEntityResponse.add_member(:entity_type, Shapes::ShapeRef.new(shape: EntityType, location_name: "EntityType"))
    DescribeEntityResponse.add_member(:entity_identifier, Shapes::ShapeRef.new(shape: Identifier, location_name: "EntityIdentifier"))
    DescribeEntityResponse.add_member(:entity_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "EntityArn"))
    DescribeEntityResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: StringValue, location_name: "LastModifiedDate"))
    DescribeEntityResponse.add_member(:details, Shapes::ShapeRef.new(shape: Json, location_name: "Details"))
    DescribeEntityResponse.struct_class = Types::DescribeEntityResponse

    Entity.add_member(:type, Shapes::ShapeRef.new(shape: EntityType, required: true, location_name: "Type"))
    Entity.add_member(:identifier, Shapes::ShapeRef.new(shape: Identifier, location_name: "Identifier"))
    Entity.struct_class = Types::Entity

    EntitySummary.add_member(:name, Shapes::ShapeRef.new(shape: StringValue, location_name: "Name"))
    EntitySummary.add_member(:entity_type, Shapes::ShapeRef.new(shape: EntityType, location_name: "EntityType"))
    EntitySummary.add_member(:entity_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "EntityId"))
    EntitySummary.add_member(:entity_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "EntityArn"))
    EntitySummary.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: StringValue, location_name: "LastModifiedDate"))
    EntitySummary.add_member(:visibility, Shapes::ShapeRef.new(shape: StringValue, location_name: "Visibility"))
    EntitySummary.struct_class = Types::EntitySummary

    EntitySummaryList.member = Shapes::ShapeRef.new(shape: EntitySummary)

    ErrorDetail.add_member(:error_code, Shapes::ShapeRef.new(shape: StringValue, location_name: "ErrorCode"))
    ErrorDetail.add_member(:error_message, Shapes::ShapeRef.new(shape: StringValue, location_name: "ErrorMessage"))
    ErrorDetail.struct_class = Types::ErrorDetail

    ErrorDetailList.member = Shapes::ShapeRef.new(shape: ErrorDetail)

    Filter.add_member(:name, Shapes::ShapeRef.new(shape: FilterName, location_name: "Name"))
    Filter.add_member(:value_list, Shapes::ShapeRef.new(shape: ValueList, location_name: "ValueList"))
    Filter.struct_class = Types::Filter

    FilterList.member = Shapes::ShapeRef.new(shape: Filter)

    InternalServiceException.add_member(:message, Shapes::ShapeRef.new(shape: StringValue, location_name: "Message"))
    InternalServiceException.struct_class = Types::InternalServiceException

    ListChangeSetsRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    ListChangeSetsRequest.add_member(:filter_list, Shapes::ShapeRef.new(shape: FilterList, location_name: "FilterList"))
    ListChangeSetsRequest.add_member(:sort, Shapes::ShapeRef.new(shape: Sort, location_name: "Sort"))
    ListChangeSetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultInteger, location_name: "MaxResults"))
    ListChangeSetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListChangeSetsRequest.struct_class = Types::ListChangeSetsRequest

    ListChangeSetsResponse.add_member(:change_set_summary_list, Shapes::ShapeRef.new(shape: ChangeSetSummaryList, location_name: "ChangeSetSummaryList"))
    ListChangeSetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListChangeSetsResponse.struct_class = Types::ListChangeSetsResponse

    ListEntitiesRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    ListEntitiesRequest.add_member(:entity_type, Shapes::ShapeRef.new(shape: EntityType, required: true, location_name: "EntityType"))
    ListEntitiesRequest.add_member(:filter_list, Shapes::ShapeRef.new(shape: FilterList, location_name: "FilterList"))
    ListEntitiesRequest.add_member(:sort, Shapes::ShapeRef.new(shape: Sort, location_name: "Sort"))
    ListEntitiesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEntitiesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultInteger, location_name: "MaxResults"))
    ListEntitiesRequest.struct_class = Types::ListEntitiesRequest

    ListEntitiesResponse.add_member(:entity_summary_list, Shapes::ShapeRef.new(shape: EntitySummaryList, location_name: "EntitySummaryList"))
    ListEntitiesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEntitiesResponse.struct_class = Types::ListEntitiesResponse

    RequestedChangeList.member = Shapes::ShapeRef.new(shape: Change)

    ResourceIdList.member = Shapes::ShapeRef.new(shape: ResourceId)

    ResourceInUseException.add_member(:message, Shapes::ShapeRef.new(shape: StringValue, location_name: "Message"))
    ResourceInUseException.struct_class = Types::ResourceInUseException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: StringValue, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceNotSupportedException.add_member(:message, Shapes::ShapeRef.new(shape: StringValue, location_name: "Message"))
    ResourceNotSupportedException.struct_class = Types::ResourceNotSupportedException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: StringValue, location_name: "Message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    Sort.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortBy, location_name: "SortBy"))
    Sort.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    Sort.struct_class = Types::Sort

    StartChangeSetRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    StartChangeSetRequest.add_member(:change_set, Shapes::ShapeRef.new(shape: RequestedChangeList, required: true, location_name: "ChangeSet"))
    StartChangeSetRequest.add_member(:change_set_name, Shapes::ShapeRef.new(shape: ChangeSetName, location_name: "ChangeSetName"))
    StartChangeSetRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    StartChangeSetRequest.struct_class = Types::StartChangeSetRequest

    StartChangeSetResponse.add_member(:change_set_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ChangeSetId"))
    StartChangeSetResponse.add_member(:change_set_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ChangeSetArn"))
    StartChangeSetResponse.struct_class = Types::StartChangeSetResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: StringValue, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: StringValue, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException

    ValueList.member = Shapes::ShapeRef.new(shape: StringValue)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-09-17"

      api.metadata = {
        "apiVersion" => "2018-09-17",
        "endpointPrefix" => "catalog.marketplace",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "AWS Marketplace Catalog",
        "serviceFullName" => "AWS Marketplace Catalog Service",
        "serviceId" => "Marketplace Catalog",
        "signatureVersion" => "v4",
        "signingName" => "aws-marketplace",
        "uid" => "marketplace-catalog-2018-09-17",
      }

      api.add_operation(:cancel_change_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelChangeSet"
        o.http_method = "PATCH"
        o.http_request_uri = "/CancelChangeSet"
        o.input = Shapes::ShapeRef.new(shape: CancelChangeSetRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelChangeSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_change_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeChangeSet"
        o.http_method = "GET"
        o.http_request_uri = "/DescribeChangeSet"
        o.input = Shapes::ShapeRef.new(shape: DescribeChangeSetRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeChangeSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_entity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEntity"
        o.http_method = "GET"
        o.http_request_uri = "/DescribeEntity"
        o.input = Shapes::ShapeRef.new(shape: DescribeEntityRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEntityResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotSupportedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_change_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListChangeSets"
        o.http_method = "POST"
        o.http_request_uri = "/ListChangeSets"
        o.input = Shapes::ShapeRef.new(shape: ListChangeSetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListChangeSetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_entities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEntities"
        o.http_method = "POST"
        o.http_request_uri = "/ListEntities"
        o.input = Shapes::ShapeRef.new(shape: ListEntitiesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEntitiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:start_change_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartChangeSet"
        o.http_method = "POST"
        o.http_request_uri = "/StartChangeSet"
        o.input = Shapes::ShapeRef.new(shape: StartChangeSetRequest)
        o.output = Shapes::ShapeRef.new(shape: StartChangeSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)
    end

  end
end
