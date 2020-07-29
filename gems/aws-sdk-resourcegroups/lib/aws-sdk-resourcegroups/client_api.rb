# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ResourceGroups
  # @api private
  module ClientApi

    include Seahorse::Model

    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    CreateGroupInput = Shapes::StructureShape.new(name: 'CreateGroupInput')
    CreateGroupOutput = Shapes::StructureShape.new(name: 'CreateGroupOutput')
    DeleteGroupInput = Shapes::StructureShape.new(name: 'DeleteGroupInput')
    DeleteGroupOutput = Shapes::StructureShape.new(name: 'DeleteGroupOutput')
    Description = Shapes::StringShape.new(name: 'Description')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    FailedResource = Shapes::StructureShape.new(name: 'FailedResource')
    FailedResourceList = Shapes::ListShape.new(name: 'FailedResourceList')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    GetGroupConfigurationInput = Shapes::StructureShape.new(name: 'GetGroupConfigurationInput')
    GetGroupConfigurationOutput = Shapes::StructureShape.new(name: 'GetGroupConfigurationOutput')
    GetGroupInput = Shapes::StructureShape.new(name: 'GetGroupInput')
    GetGroupOutput = Shapes::StructureShape.new(name: 'GetGroupOutput')
    GetGroupQueryInput = Shapes::StructureShape.new(name: 'GetGroupQueryInput')
    GetGroupQueryOutput = Shapes::StructureShape.new(name: 'GetGroupQueryOutput')
    GetTagsInput = Shapes::StructureShape.new(name: 'GetTagsInput')
    GetTagsOutput = Shapes::StructureShape.new(name: 'GetTagsOutput')
    Group = Shapes::StructureShape.new(name: 'Group')
    GroupArn = Shapes::StringShape.new(name: 'GroupArn')
    GroupConfiguration = Shapes::StructureShape.new(name: 'GroupConfiguration')
    GroupConfigurationFailureReason = Shapes::StringShape.new(name: 'GroupConfigurationFailureReason')
    GroupConfigurationItem = Shapes::StructureShape.new(name: 'GroupConfigurationItem')
    GroupConfigurationList = Shapes::ListShape.new(name: 'GroupConfigurationList')
    GroupConfigurationParameter = Shapes::StructureShape.new(name: 'GroupConfigurationParameter')
    GroupConfigurationParameterName = Shapes::StringShape.new(name: 'GroupConfigurationParameterName')
    GroupConfigurationParameterValue = Shapes::StringShape.new(name: 'GroupConfigurationParameterValue')
    GroupConfigurationParameterValueList = Shapes::ListShape.new(name: 'GroupConfigurationParameterValueList')
    GroupConfigurationStatus = Shapes::StringShape.new(name: 'GroupConfigurationStatus')
    GroupConfigurationType = Shapes::StringShape.new(name: 'GroupConfigurationType')
    GroupFilter = Shapes::StructureShape.new(name: 'GroupFilter')
    GroupFilterList = Shapes::ListShape.new(name: 'GroupFilterList')
    GroupFilterName = Shapes::StringShape.new(name: 'GroupFilterName')
    GroupFilterValue = Shapes::StringShape.new(name: 'GroupFilterValue')
    GroupFilterValues = Shapes::ListShape.new(name: 'GroupFilterValues')
    GroupIdentifier = Shapes::StructureShape.new(name: 'GroupIdentifier')
    GroupIdentifierList = Shapes::ListShape.new(name: 'GroupIdentifierList')
    GroupList = Shapes::ListShape.new(name: 'GroupList')
    GroupName = Shapes::StringShape.new(name: 'GroupName')
    GroupParameterList = Shapes::ListShape.new(name: 'GroupParameterList')
    GroupQuery = Shapes::StructureShape.new(name: 'GroupQuery')
    GroupResourcesInput = Shapes::StructureShape.new(name: 'GroupResourcesInput')
    GroupResourcesOutput = Shapes::StructureShape.new(name: 'GroupResourcesOutput')
    GroupString = Shapes::StringShape.new(name: 'GroupString')
    InternalServerErrorException = Shapes::StructureShape.new(name: 'InternalServerErrorException')
    ListGroupResourcesInput = Shapes::StructureShape.new(name: 'ListGroupResourcesInput')
    ListGroupResourcesOutput = Shapes::StructureShape.new(name: 'ListGroupResourcesOutput')
    ListGroupsInput = Shapes::StructureShape.new(name: 'ListGroupsInput')
    ListGroupsOutput = Shapes::StructureShape.new(name: 'ListGroupsOutput')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MethodNotAllowedException = Shapes::StructureShape.new(name: 'MethodNotAllowedException')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    Query = Shapes::StringShape.new(name: 'Query')
    QueryError = Shapes::StructureShape.new(name: 'QueryError')
    QueryErrorCode = Shapes::StringShape.new(name: 'QueryErrorCode')
    QueryErrorList = Shapes::ListShape.new(name: 'QueryErrorList')
    QueryErrorMessage = Shapes::StringShape.new(name: 'QueryErrorMessage')
    QueryType = Shapes::StringShape.new(name: 'QueryType')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceArnList = Shapes::ListShape.new(name: 'ResourceArnList')
    ResourceFilter = Shapes::StructureShape.new(name: 'ResourceFilter')
    ResourceFilterList = Shapes::ListShape.new(name: 'ResourceFilterList')
    ResourceFilterName = Shapes::StringShape.new(name: 'ResourceFilterName')
    ResourceFilterValue = Shapes::StringShape.new(name: 'ResourceFilterValue')
    ResourceFilterValues = Shapes::ListShape.new(name: 'ResourceFilterValues')
    ResourceIdentifier = Shapes::StructureShape.new(name: 'ResourceIdentifier')
    ResourceIdentifierList = Shapes::ListShape.new(name: 'ResourceIdentifierList')
    ResourceQuery = Shapes::StructureShape.new(name: 'ResourceQuery')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    SearchResourcesInput = Shapes::StructureShape.new(name: 'SearchResourcesInput')
    SearchResourcesOutput = Shapes::StructureShape.new(name: 'SearchResourcesOutput')
    TagInput = Shapes::StructureShape.new(name: 'TagInput')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagOutput = Shapes::StructureShape.new(name: 'TagOutput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::MapShape.new(name: 'Tags')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    UnauthorizedException = Shapes::StructureShape.new(name: 'UnauthorizedException')
    UngroupResourcesInput = Shapes::StructureShape.new(name: 'UngroupResourcesInput')
    UngroupResourcesOutput = Shapes::StructureShape.new(name: 'UngroupResourcesOutput')
    UntagInput = Shapes::StructureShape.new(name: 'UntagInput')
    UntagOutput = Shapes::StructureShape.new(name: 'UntagOutput')
    UpdateGroupInput = Shapes::StructureShape.new(name: 'UpdateGroupInput')
    UpdateGroupOutput = Shapes::StructureShape.new(name: 'UpdateGroupOutput')
    UpdateGroupQueryInput = Shapes::StructureShape.new(name: 'UpdateGroupQueryInput')
    UpdateGroupQueryOutput = Shapes::StructureShape.new(name: 'UpdateGroupQueryOutput')

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    BadRequestException.struct_class = Types::BadRequestException

    CreateGroupInput.add_member(:name, Shapes::ShapeRef.new(shape: GroupName, required: true, location_name: "Name"))
    CreateGroupInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateGroupInput.add_member(:resource_query, Shapes::ShapeRef.new(shape: ResourceQuery, location_name: "ResourceQuery"))
    CreateGroupInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateGroupInput.add_member(:configuration, Shapes::ShapeRef.new(shape: GroupConfigurationList, location_name: "Configuration"))
    CreateGroupInput.struct_class = Types::CreateGroupInput

    CreateGroupOutput.add_member(:group, Shapes::ShapeRef.new(shape: Group, location_name: "Group"))
    CreateGroupOutput.add_member(:resource_query, Shapes::ShapeRef.new(shape: ResourceQuery, location_name: "ResourceQuery"))
    CreateGroupOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateGroupOutput.add_member(:group_configuration, Shapes::ShapeRef.new(shape: GroupConfiguration, location_name: "GroupConfiguration"))
    CreateGroupOutput.struct_class = Types::CreateGroupOutput

    DeleteGroupInput.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, deprecated: true, location_name: "GroupName", metadata: {"deprecatedMessage"=>"This field is deprecated, use Group instead."}))
    DeleteGroupInput.add_member(:group, Shapes::ShapeRef.new(shape: GroupString, location_name: "Group"))
    DeleteGroupInput.struct_class = Types::DeleteGroupInput

    DeleteGroupOutput.add_member(:group, Shapes::ShapeRef.new(shape: Group, location_name: "Group"))
    DeleteGroupOutput.struct_class = Types::DeleteGroupOutput

    FailedResource.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn"))
    FailedResource.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    FailedResource.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    FailedResource.struct_class = Types::FailedResource

    FailedResourceList.member = Shapes::ShapeRef.new(shape: FailedResource)

    ForbiddenException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ForbiddenException.struct_class = Types::ForbiddenException

    GetGroupConfigurationInput.add_member(:group, Shapes::ShapeRef.new(shape: GroupString, location_name: "Group"))
    GetGroupConfigurationInput.struct_class = Types::GetGroupConfigurationInput

    GetGroupConfigurationOutput.add_member(:group_configuration, Shapes::ShapeRef.new(shape: GroupConfiguration, location_name: "GroupConfiguration"))
    GetGroupConfigurationOutput.struct_class = Types::GetGroupConfigurationOutput

    GetGroupInput.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, deprecated: true, location_name: "GroupName", metadata: {"deprecatedMessage"=>"This field is deprecated, use Group instead."}))
    GetGroupInput.add_member(:group, Shapes::ShapeRef.new(shape: GroupString, location_name: "Group"))
    GetGroupInput.struct_class = Types::GetGroupInput

    GetGroupOutput.add_member(:group, Shapes::ShapeRef.new(shape: Group, location_name: "Group"))
    GetGroupOutput.struct_class = Types::GetGroupOutput

    GetGroupQueryInput.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, deprecated: true, location_name: "GroupName", metadata: {"deprecatedMessage"=>"This field is deprecated, use Group instead."}))
    GetGroupQueryInput.add_member(:group, Shapes::ShapeRef.new(shape: GroupString, location_name: "Group"))
    GetGroupQueryInput.struct_class = Types::GetGroupQueryInput

    GetGroupQueryOutput.add_member(:group_query, Shapes::ShapeRef.new(shape: GroupQuery, location_name: "GroupQuery"))
    GetGroupQueryOutput.struct_class = Types::GetGroupQueryOutput

    GetTagsInput.add_member(:arn, Shapes::ShapeRef.new(shape: GroupArn, required: true, location: "uri", location_name: "Arn"))
    GetTagsInput.struct_class = Types::GetTagsInput

    GetTagsOutput.add_member(:arn, Shapes::ShapeRef.new(shape: GroupArn, location_name: "Arn"))
    GetTagsOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    GetTagsOutput.struct_class = Types::GetTagsOutput

    Group.add_member(:group_arn, Shapes::ShapeRef.new(shape: GroupArn, required: true, location_name: "GroupArn"))
    Group.add_member(:name, Shapes::ShapeRef.new(shape: GroupName, required: true, location_name: "Name"))
    Group.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    Group.struct_class = Types::Group

    GroupConfiguration.add_member(:configuration, Shapes::ShapeRef.new(shape: GroupConfigurationList, location_name: "Configuration"))
    GroupConfiguration.add_member(:proposed_configuration, Shapes::ShapeRef.new(shape: GroupConfigurationList, location_name: "ProposedConfiguration"))
    GroupConfiguration.add_member(:status, Shapes::ShapeRef.new(shape: GroupConfigurationStatus, location_name: "Status"))
    GroupConfiguration.add_member(:failure_reason, Shapes::ShapeRef.new(shape: GroupConfigurationFailureReason, location_name: "FailureReason"))
    GroupConfiguration.struct_class = Types::GroupConfiguration

    GroupConfigurationItem.add_member(:type, Shapes::ShapeRef.new(shape: GroupConfigurationType, required: true, location_name: "Type"))
    GroupConfigurationItem.add_member(:parameters, Shapes::ShapeRef.new(shape: GroupParameterList, location_name: "Parameters"))
    GroupConfigurationItem.struct_class = Types::GroupConfigurationItem

    GroupConfigurationList.member = Shapes::ShapeRef.new(shape: GroupConfigurationItem)

    GroupConfigurationParameter.add_member(:name, Shapes::ShapeRef.new(shape: GroupConfigurationParameterName, required: true, location_name: "Name"))
    GroupConfigurationParameter.add_member(:values, Shapes::ShapeRef.new(shape: GroupConfigurationParameterValueList, location_name: "Values"))
    GroupConfigurationParameter.struct_class = Types::GroupConfigurationParameter

    GroupConfigurationParameterValueList.member = Shapes::ShapeRef.new(shape: GroupConfigurationParameterValue)

    GroupFilter.add_member(:name, Shapes::ShapeRef.new(shape: GroupFilterName, required: true, location_name: "Name"))
    GroupFilter.add_member(:values, Shapes::ShapeRef.new(shape: GroupFilterValues, required: true, location_name: "Values"))
    GroupFilter.struct_class = Types::GroupFilter

    GroupFilterList.member = Shapes::ShapeRef.new(shape: GroupFilter)

    GroupFilterValues.member = Shapes::ShapeRef.new(shape: GroupFilterValue)

    GroupIdentifier.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, location_name: "GroupName"))
    GroupIdentifier.add_member(:group_arn, Shapes::ShapeRef.new(shape: GroupArn, location_name: "GroupArn"))
    GroupIdentifier.struct_class = Types::GroupIdentifier

    GroupIdentifierList.member = Shapes::ShapeRef.new(shape: GroupIdentifier)

    GroupList.member = Shapes::ShapeRef.new(shape: Group)

    GroupParameterList.member = Shapes::ShapeRef.new(shape: GroupConfigurationParameter)

    GroupQuery.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, required: true, location_name: "GroupName"))
    GroupQuery.add_member(:resource_query, Shapes::ShapeRef.new(shape: ResourceQuery, required: true, location_name: "ResourceQuery"))
    GroupQuery.struct_class = Types::GroupQuery

    GroupResourcesInput.add_member(:group, Shapes::ShapeRef.new(shape: GroupString, required: true, location_name: "Group"))
    GroupResourcesInput.add_member(:resource_arns, Shapes::ShapeRef.new(shape: ResourceArnList, required: true, location_name: "ResourceArns"))
    GroupResourcesInput.struct_class = Types::GroupResourcesInput

    GroupResourcesOutput.add_member(:succeeded, Shapes::ShapeRef.new(shape: ResourceArnList, location_name: "Succeeded"))
    GroupResourcesOutput.add_member(:failed, Shapes::ShapeRef.new(shape: FailedResourceList, location_name: "Failed"))
    GroupResourcesOutput.struct_class = Types::GroupResourcesOutput

    InternalServerErrorException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalServerErrorException.struct_class = Types::InternalServerErrorException

    ListGroupResourcesInput.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, deprecated: true, location_name: "GroupName", metadata: {"deprecatedMessage"=>"This field is deprecated, use Group instead."}))
    ListGroupResourcesInput.add_member(:group, Shapes::ShapeRef.new(shape: GroupString, location_name: "Group"))
    ListGroupResourcesInput.add_member(:filters, Shapes::ShapeRef.new(shape: ResourceFilterList, location_name: "Filters"))
    ListGroupResourcesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListGroupResourcesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGroupResourcesInput.struct_class = Types::ListGroupResourcesInput

    ListGroupResourcesOutput.add_member(:resource_identifiers, Shapes::ShapeRef.new(shape: ResourceIdentifierList, location_name: "ResourceIdentifiers"))
    ListGroupResourcesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGroupResourcesOutput.add_member(:query_errors, Shapes::ShapeRef.new(shape: QueryErrorList, location_name: "QueryErrors"))
    ListGroupResourcesOutput.struct_class = Types::ListGroupResourcesOutput

    ListGroupsInput.add_member(:filters, Shapes::ShapeRef.new(shape: GroupFilterList, location_name: "Filters"))
    ListGroupsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListGroupsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListGroupsInput.struct_class = Types::ListGroupsInput

    ListGroupsOutput.add_member(:group_identifiers, Shapes::ShapeRef.new(shape: GroupIdentifierList, location_name: "GroupIdentifiers"))
    ListGroupsOutput.add_member(:groups, Shapes::ShapeRef.new(shape: GroupList, deprecated: true, location_name: "Groups", metadata: {"deprecatedMessage"=>"This field is deprecated, use GroupIdentifiers instead."}))
    ListGroupsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGroupsOutput.struct_class = Types::ListGroupsOutput

    MethodNotAllowedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    MethodNotAllowedException.struct_class = Types::MethodNotAllowedException

    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    NotFoundException.struct_class = Types::NotFoundException

    QueryError.add_member(:error_code, Shapes::ShapeRef.new(shape: QueryErrorCode, location_name: "ErrorCode"))
    QueryError.add_member(:message, Shapes::ShapeRef.new(shape: QueryErrorMessage, location_name: "Message"))
    QueryError.struct_class = Types::QueryError

    QueryErrorList.member = Shapes::ShapeRef.new(shape: QueryError)

    ResourceArnList.member = Shapes::ShapeRef.new(shape: ResourceArn)

    ResourceFilter.add_member(:name, Shapes::ShapeRef.new(shape: ResourceFilterName, required: true, location_name: "Name"))
    ResourceFilter.add_member(:values, Shapes::ShapeRef.new(shape: ResourceFilterValues, required: true, location_name: "Values"))
    ResourceFilter.struct_class = Types::ResourceFilter

    ResourceFilterList.member = Shapes::ShapeRef.new(shape: ResourceFilter)

    ResourceFilterValues.member = Shapes::ShapeRef.new(shape: ResourceFilterValue)

    ResourceIdentifier.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn"))
    ResourceIdentifier.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ResourceIdentifier.struct_class = Types::ResourceIdentifier

    ResourceIdentifierList.member = Shapes::ShapeRef.new(shape: ResourceIdentifier)

    ResourceQuery.add_member(:type, Shapes::ShapeRef.new(shape: QueryType, required: true, location_name: "Type"))
    ResourceQuery.add_member(:query, Shapes::ShapeRef.new(shape: Query, required: true, location_name: "Query"))
    ResourceQuery.struct_class = Types::ResourceQuery

    SearchResourcesInput.add_member(:resource_query, Shapes::ShapeRef.new(shape: ResourceQuery, required: true, location_name: "ResourceQuery"))
    SearchResourcesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    SearchResourcesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    SearchResourcesInput.struct_class = Types::SearchResourcesInput

    SearchResourcesOutput.add_member(:resource_identifiers, Shapes::ShapeRef.new(shape: ResourceIdentifierList, location_name: "ResourceIdentifiers"))
    SearchResourcesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    SearchResourcesOutput.add_member(:query_errors, Shapes::ShapeRef.new(shape: QueryErrorList, location_name: "QueryErrors"))
    SearchResourcesOutput.struct_class = Types::SearchResourcesOutput

    TagInput.add_member(:arn, Shapes::ShapeRef.new(shape: GroupArn, required: true, location: "uri", location_name: "Arn"))
    TagInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    TagInput.struct_class = Types::TagInput

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagOutput.add_member(:arn, Shapes::ShapeRef.new(shape: GroupArn, location_name: "Arn"))
    TagOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    TagOutput.struct_class = Types::TagOutput

    Tags.key = Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Shapes::ShapeRef.new(shape: TagValue)

    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    UnauthorizedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    UnauthorizedException.struct_class = Types::UnauthorizedException

    UngroupResourcesInput.add_member(:group, Shapes::ShapeRef.new(shape: GroupString, required: true, location_name: "Group"))
    UngroupResourcesInput.add_member(:resource_arns, Shapes::ShapeRef.new(shape: ResourceArnList, required: true, location_name: "ResourceArns"))
    UngroupResourcesInput.struct_class = Types::UngroupResourcesInput

    UngroupResourcesOutput.add_member(:succeeded, Shapes::ShapeRef.new(shape: ResourceArnList, location_name: "Succeeded"))
    UngroupResourcesOutput.add_member(:failed, Shapes::ShapeRef.new(shape: FailedResourceList, location_name: "Failed"))
    UngroupResourcesOutput.struct_class = Types::UngroupResourcesOutput

    UntagInput.add_member(:arn, Shapes::ShapeRef.new(shape: GroupArn, required: true, location: "uri", location_name: "Arn"))
    UntagInput.add_member(:keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "Keys"))
    UntagInput.struct_class = Types::UntagInput

    UntagOutput.add_member(:arn, Shapes::ShapeRef.new(shape: GroupArn, location_name: "Arn"))
    UntagOutput.add_member(:keys, Shapes::ShapeRef.new(shape: TagKeyList, location_name: "Keys"))
    UntagOutput.struct_class = Types::UntagOutput

    UpdateGroupInput.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, deprecated: true, location_name: "GroupName", metadata: {"deprecatedMessage"=>"This field is deprecated, use Group instead."}))
    UpdateGroupInput.add_member(:group, Shapes::ShapeRef.new(shape: GroupString, location_name: "Group"))
    UpdateGroupInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateGroupInput.struct_class = Types::UpdateGroupInput

    UpdateGroupOutput.add_member(:group, Shapes::ShapeRef.new(shape: Group, location_name: "Group"))
    UpdateGroupOutput.struct_class = Types::UpdateGroupOutput

    UpdateGroupQueryInput.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, deprecated: true, location_name: "GroupName", metadata: {"deprecatedMessage"=>"This field is deprecated, use Group instead."}))
    UpdateGroupQueryInput.add_member(:group, Shapes::ShapeRef.new(shape: GroupString, location_name: "Group"))
    UpdateGroupQueryInput.add_member(:resource_query, Shapes::ShapeRef.new(shape: ResourceQuery, required: true, location_name: "ResourceQuery"))
    UpdateGroupQueryInput.struct_class = Types::UpdateGroupQueryInput

    UpdateGroupQueryOutput.add_member(:group_query, Shapes::ShapeRef.new(shape: GroupQuery, location_name: "GroupQuery"))
    UpdateGroupQueryOutput.struct_class = Types::UpdateGroupQueryOutput


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-11-27"

      api.metadata = {
        "apiVersion" => "2017-11-27",
        "endpointPrefix" => "resource-groups",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "Resource Groups",
        "serviceFullName" => "AWS Resource Groups",
        "serviceId" => "Resource Groups",
        "signatureVersion" => "v4",
        "signingName" => "resource-groups",
        "uid" => "resource-groups-2017-11-27",
      }

      api.add_operation(:create_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGroup"
        o.http_method = "POST"
        o.http_request_uri = "/groups"
        o.input = Shapes::ShapeRef.new(shape: CreateGroupInput)
        o.output = Shapes::ShapeRef.new(shape: CreateGroupOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:delete_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGroup"
        o.http_method = "POST"
        o.http_request_uri = "/delete-group"
        o.input = Shapes::ShapeRef.new(shape: DeleteGroupInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteGroupOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:get_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGroup"
        o.http_method = "POST"
        o.http_request_uri = "/get-group"
        o.input = Shapes::ShapeRef.new(shape: GetGroupInput)
        o.output = Shapes::ShapeRef.new(shape: GetGroupOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:get_group_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGroupConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/get-group-configuration"
        o.input = Shapes::ShapeRef.new(shape: GetGroupConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: GetGroupConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:get_group_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGroupQuery"
        o.http_method = "POST"
        o.http_request_uri = "/get-group-query"
        o.input = Shapes::ShapeRef.new(shape: GetGroupQueryInput)
        o.output = Shapes::ShapeRef.new(shape: GetGroupQueryOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:get_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTags"
        o.http_method = "GET"
        o.http_request_uri = "/resources/{Arn}/tags"
        o.input = Shapes::ShapeRef.new(shape: GetTagsInput)
        o.output = Shapes::ShapeRef.new(shape: GetTagsOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:group_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GroupResources"
        o.http_method = "POST"
        o.http_request_uri = "/group-resources"
        o.input = Shapes::ShapeRef.new(shape: GroupResourcesInput)
        o.output = Shapes::ShapeRef.new(shape: GroupResourcesOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:list_group_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGroupResources"
        o.http_method = "POST"
        o.http_request_uri = "/list-group-resources"
        o.input = Shapes::ShapeRef.new(shape: ListGroupResourcesInput)
        o.output = Shapes::ShapeRef.new(shape: ListGroupResourcesOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGroups"
        o.http_method = "POST"
        o.http_request_uri = "/groups-list"
        o.input = Shapes::ShapeRef.new(shape: ListGroupsInput)
        o.output = Shapes::ShapeRef.new(shape: ListGroupsOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchResources"
        o.http_method = "POST"
        o.http_request_uri = "/resources/search"
        o.input = Shapes::ShapeRef.new(shape: SearchResourcesInput)
        o.output = Shapes::ShapeRef.new(shape: SearchResourcesOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:tag, Seahorse::Model::Operation.new.tap do |o|
        o.name = "Tag"
        o.http_method = "PUT"
        o.http_request_uri = "/resources/{Arn}/tags"
        o.input = Shapes::ShapeRef.new(shape: TagInput)
        o.output = Shapes::ShapeRef.new(shape: TagOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:ungroup_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UngroupResources"
        o.http_method = "POST"
        o.http_request_uri = "/ungroup-resources"
        o.input = Shapes::ShapeRef.new(shape: UngroupResourcesInput)
        o.output = Shapes::ShapeRef.new(shape: UngroupResourcesOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:untag, Seahorse::Model::Operation.new.tap do |o|
        o.name = "Untag"
        o.http_method = "PATCH"
        o.http_request_uri = "/resources/{Arn}/tags"
        o.input = Shapes::ShapeRef.new(shape: UntagInput)
        o.output = Shapes::ShapeRef.new(shape: UntagOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:update_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGroup"
        o.http_method = "POST"
        o.http_request_uri = "/update-group"
        o.input = Shapes::ShapeRef.new(shape: UpdateGroupInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateGroupOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:update_group_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGroupQuery"
        o.http_method = "POST"
        o.http_request_uri = "/update-group-query"
        o.input = Shapes::ShapeRef.new(shape: UpdateGroupQueryInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateGroupQueryOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)
    end

  end
end
