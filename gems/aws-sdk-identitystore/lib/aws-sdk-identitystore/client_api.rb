# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IdentityStore
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AttributePath = Shapes::StringShape.new(name: 'AttributePath')
    DescribeGroupRequest = Shapes::StructureShape.new(name: 'DescribeGroupRequest')
    DescribeGroupResponse = Shapes::StructureShape.new(name: 'DescribeGroupResponse')
    DescribeUserRequest = Shapes::StructureShape.new(name: 'DescribeUserRequest')
    DescribeUserResponse = Shapes::StructureShape.new(name: 'DescribeUserResponse')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    Filters = Shapes::ListShape.new(name: 'Filters')
    Group = Shapes::StructureShape.new(name: 'Group')
    GroupDisplayName = Shapes::StringShape.new(name: 'GroupDisplayName')
    Groups = Shapes::ListShape.new(name: 'Groups')
    IdentityStoreId = Shapes::StringShape.new(name: 'IdentityStoreId')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListGroupsRequest = Shapes::StructureShape.new(name: 'ListGroupsRequest')
    ListGroupsResponse = Shapes::StructureShape.new(name: 'ListGroupsResponse')
    ListUsersRequest = Shapes::StructureShape.new(name: 'ListUsersRequest')
    ListUsersResponse = Shapes::StructureShape.new(name: 'ListUsersResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Message = Shapes::StringShape.new(name: 'Message')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    RequestId = Shapes::StringShape.new(name: 'RequestId')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    SensitiveStringType = Shapes::StringShape.new(name: 'SensitiveStringType')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    User = Shapes::StructureShape.new(name: 'User')
    UserName = Shapes::StringShape.new(name: 'UserName')
    Users = Shapes::ListShape.new(name: 'Users')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    AccessDeniedException.add_member(:request_id, Shapes::ShapeRef.new(shape: RequestId, location_name: "RequestId"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    DescribeGroupRequest.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: IdentityStoreId, required: true, location_name: "IdentityStoreId"))
    DescribeGroupRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "GroupId"))
    DescribeGroupRequest.struct_class = Types::DescribeGroupRequest

    DescribeGroupResponse.add_member(:group_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "GroupId"))
    DescribeGroupResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: GroupDisplayName, required: true, location_name: "DisplayName"))
    DescribeGroupResponse.struct_class = Types::DescribeGroupResponse

    DescribeUserRequest.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: IdentityStoreId, required: true, location_name: "IdentityStoreId"))
    DescribeUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "UserId"))
    DescribeUserRequest.struct_class = Types::DescribeUserRequest

    DescribeUserResponse.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, required: true, location_name: "UserName"))
    DescribeUserResponse.add_member(:user_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "UserId"))
    DescribeUserResponse.struct_class = Types::DescribeUserResponse

    Filter.add_member(:attribute_path, Shapes::ShapeRef.new(shape: AttributePath, required: true, location_name: "AttributePath"))
    Filter.add_member(:attribute_value, Shapes::ShapeRef.new(shape: SensitiveStringType, required: true, location_name: "AttributeValue"))
    Filter.struct_class = Types::Filter

    Filters.member = Shapes::ShapeRef.new(shape: Filter)

    Group.add_member(:group_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "GroupId"))
    Group.add_member(:display_name, Shapes::ShapeRef.new(shape: GroupDisplayName, required: true, location_name: "DisplayName"))
    Group.struct_class = Types::Group

    Groups.member = Shapes::ShapeRef.new(shape: Group)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    InternalServerException.add_member(:request_id, Shapes::ShapeRef.new(shape: RequestId, location_name: "RequestId"))
    InternalServerException.struct_class = Types::InternalServerException

    ListGroupsRequest.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: IdentityStoreId, required: true, location_name: "IdentityStoreId"))
    ListGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGroupsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "Filters"))
    ListGroupsRequest.struct_class = Types::ListGroupsRequest

    ListGroupsResponse.add_member(:groups, Shapes::ShapeRef.new(shape: Groups, required: true, location_name: "Groups"))
    ListGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGroupsResponse.struct_class = Types::ListGroupsResponse

    ListUsersRequest.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: IdentityStoreId, required: true, location_name: "IdentityStoreId"))
    ListUsersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListUsersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListUsersRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "Filters"))
    ListUsersRequest.struct_class = Types::ListUsersRequest

    ListUsersResponse.add_member(:users, Shapes::ShapeRef.new(shape: Users, required: true, location_name: "Users"))
    ListUsersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListUsersResponse.struct_class = Types::ListUsersResponse

    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId"))
    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ResourceNotFoundException.add_member(:request_id, Shapes::ShapeRef.new(shape: RequestId, location_name: "RequestId"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ThrottlingException.add_member(:request_id, Shapes::ShapeRef.new(shape: RequestId, location_name: "RequestId"))
    ThrottlingException.struct_class = Types::ThrottlingException

    User.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, required: true, location_name: "UserName"))
    User.add_member(:user_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "UserId"))
    User.struct_class = Types::User

    Users.member = Shapes::ShapeRef.new(shape: User)

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ValidationException.add_member(:request_id, Shapes::ShapeRef.new(shape: RequestId, location_name: "RequestId"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-06-15"

      api.metadata = {
        "apiVersion" => "2020-06-15",
        "endpointPrefix" => "identitystore",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "IdentityStore",
        "serviceFullName" => "AWS SSO Identity Store",
        "serviceId" => "identitystore",
        "signatureVersion" => "v4",
        "signingName" => "identitystore",
        "targetPrefix" => "AWSIdentityStore",
        "uid" => "identitystore-2020-06-15",
      }

      api.add_operation(:describe_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeUser"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeUserRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_users, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListUsers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListUsersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListUsersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)
    end

  end
end
