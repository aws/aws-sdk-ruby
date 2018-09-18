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
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    GetGroupInput = Shapes::StructureShape.new(name: 'GetGroupInput')
    GetGroupOutput = Shapes::StructureShape.new(name: 'GetGroupOutput')
    GetGroupQueryInput = Shapes::StructureShape.new(name: 'GetGroupQueryInput')
    GetGroupQueryOutput = Shapes::StructureShape.new(name: 'GetGroupQueryOutput')
    GetTagsInput = Shapes::StructureShape.new(name: 'GetTagsInput')
    GetTagsOutput = Shapes::StructureShape.new(name: 'GetTagsOutput')
    Group = Shapes::StructureShape.new(name: 'Group')
    GroupArn = Shapes::StringShape.new(name: 'GroupArn')
    GroupDescription = Shapes::StringShape.new(name: 'GroupDescription')
    GroupList = Shapes::ListShape.new(name: 'GroupList')
    GroupName = Shapes::StringShape.new(name: 'GroupName')
    GroupQuery = Shapes::StructureShape.new(name: 'GroupQuery')
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
    QueryType = Shapes::StringShape.new(name: 'QueryType')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
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
    UntagInput = Shapes::StructureShape.new(name: 'UntagInput')
    UntagOutput = Shapes::StructureShape.new(name: 'UntagOutput')
    UpdateGroupInput = Shapes::StructureShape.new(name: 'UpdateGroupInput')
    UpdateGroupOutput = Shapes::StructureShape.new(name: 'UpdateGroupOutput')
    UpdateGroupQueryInput = Shapes::StructureShape.new(name: 'UpdateGroupQueryInput')
    UpdateGroupQueryOutput = Shapes::StructureShape.new(name: 'UpdateGroupQueryOutput')

    CreateGroupInput.add_member(:name, Shapes::ShapeRef.new(shape: GroupName, required: true, location_name: "Name"))
    CreateGroupInput.add_member(:description, Shapes::ShapeRef.new(shape: GroupDescription, location_name: "Description"))
    CreateGroupInput.add_member(:resource_query, Shapes::ShapeRef.new(shape: ResourceQuery, required: true, location_name: "ResourceQuery"))
    CreateGroupInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateGroupInput.struct_class = Types::CreateGroupInput

    CreateGroupOutput.add_member(:group, Shapes::ShapeRef.new(shape: Group, location_name: "Group"))
    CreateGroupOutput.add_member(:resource_query, Shapes::ShapeRef.new(shape: ResourceQuery, location_name: "ResourceQuery"))
    CreateGroupOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateGroupOutput.struct_class = Types::CreateGroupOutput

    DeleteGroupInput.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, required: true, location: "uri", location_name: "GroupName"))
    DeleteGroupInput.struct_class = Types::DeleteGroupInput

    DeleteGroupOutput.add_member(:group, Shapes::ShapeRef.new(shape: Group, location_name: "Group"))
    DeleteGroupOutput.struct_class = Types::DeleteGroupOutput

    GetGroupInput.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, required: true, location: "uri", location_name: "GroupName"))
    GetGroupInput.struct_class = Types::GetGroupInput

    GetGroupOutput.add_member(:group, Shapes::ShapeRef.new(shape: Group, location_name: "Group"))
    GetGroupOutput.struct_class = Types::GetGroupOutput

    GetGroupQueryInput.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, required: true, location: "uri", location_name: "GroupName"))
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
    Group.add_member(:description, Shapes::ShapeRef.new(shape: GroupDescription, location_name: "Description"))
    Group.struct_class = Types::Group

    GroupList.member = Shapes::ShapeRef.new(shape: Group)

    GroupQuery.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, required: true, location_name: "GroupName"))
    GroupQuery.add_member(:resource_query, Shapes::ShapeRef.new(shape: ResourceQuery, required: true, location_name: "ResourceQuery"))
    GroupQuery.struct_class = Types::GroupQuery

    ListGroupResourcesInput.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, required: true, location: "uri", location_name: "GroupName"))
    ListGroupResourcesInput.add_member(:filters, Shapes::ShapeRef.new(shape: ResourceFilterList, location_name: "Filters"))
    ListGroupResourcesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListGroupResourcesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListGroupResourcesInput.struct_class = Types::ListGroupResourcesInput

    ListGroupResourcesOutput.add_member(:resource_identifiers, Shapes::ShapeRef.new(shape: ResourceIdentifierList, location_name: "ResourceIdentifiers"))
    ListGroupResourcesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGroupResourcesOutput.struct_class = Types::ListGroupResourcesOutput

    ListGroupsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListGroupsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListGroupsInput.struct_class = Types::ListGroupsInput

    ListGroupsOutput.add_member(:groups, Shapes::ShapeRef.new(shape: GroupList, location_name: "Groups"))
    ListGroupsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGroupsOutput.struct_class = Types::ListGroupsOutput

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

    UntagInput.add_member(:arn, Shapes::ShapeRef.new(shape: GroupArn, required: true, location: "uri", location_name: "Arn"))
    UntagInput.add_member(:keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "Keys"))
    UntagInput.struct_class = Types::UntagInput

    UntagOutput.add_member(:arn, Shapes::ShapeRef.new(shape: GroupArn, location_name: "Arn"))
    UntagOutput.add_member(:keys, Shapes::ShapeRef.new(shape: TagKeyList, location_name: "Keys"))
    UntagOutput.struct_class = Types::UntagOutput

    UpdateGroupInput.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, required: true, location: "uri", location_name: "GroupName"))
    UpdateGroupInput.add_member(:description, Shapes::ShapeRef.new(shape: GroupDescription, location_name: "Description"))
    UpdateGroupInput.struct_class = Types::UpdateGroupInput

    UpdateGroupOutput.add_member(:group, Shapes::ShapeRef.new(shape: Group, location_name: "Group"))
    UpdateGroupOutput.struct_class = Types::UpdateGroupOutput

    UpdateGroupQueryInput.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, required: true, location: "uri", location_name: "GroupName"))
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
        o.http_method = "DELETE"
        o.http_request_uri = "/groups/{GroupName}"
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
        o.http_method = "GET"
        o.http_request_uri = "/groups/{GroupName}"
        o.input = Shapes::ShapeRef.new(shape: GetGroupInput)
        o.output = Shapes::ShapeRef.new(shape: GetGroupOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:get_group_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGroupQuery"
        o.http_method = "GET"
        o.http_request_uri = "/groups/{GroupName}/query"
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

      api.add_operation(:list_group_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGroupResources"
        o.http_method = "POST"
        o.http_request_uri = "/groups/{GroupName}/resource-identifiers-list"
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
        o.http_method = "PUT"
        o.http_request_uri = "/groups/{GroupName}"
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
        o.http_method = "PUT"
        o.http_request_uri = "/groups/{GroupName}/query"
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
