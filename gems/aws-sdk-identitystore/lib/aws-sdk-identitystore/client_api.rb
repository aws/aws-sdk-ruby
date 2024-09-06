# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IdentityStore
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Address = Shapes::StructureShape.new(name: 'Address')
    Addresses = Shapes::ListShape.new(name: 'Addresses')
    AlternateIdentifier = Shapes::UnionShape.new(name: 'AlternateIdentifier')
    AttributeOperation = Shapes::StructureShape.new(name: 'AttributeOperation')
    AttributeOperations = Shapes::ListShape.new(name: 'AttributeOperations')
    AttributePath = Shapes::StringShape.new(name: 'AttributePath')
    AttributeValue = Shapes::DocumentShape.new(name: 'AttributeValue', document: true)
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConflictExceptionReason = Shapes::StringShape.new(name: 'ConflictExceptionReason')
    CreateGroupMembershipRequest = Shapes::StructureShape.new(name: 'CreateGroupMembershipRequest')
    CreateGroupMembershipResponse = Shapes::StructureShape.new(name: 'CreateGroupMembershipResponse')
    CreateGroupRequest = Shapes::StructureShape.new(name: 'CreateGroupRequest')
    CreateGroupResponse = Shapes::StructureShape.new(name: 'CreateGroupResponse')
    CreateUserRequest = Shapes::StructureShape.new(name: 'CreateUserRequest')
    CreateUserResponse = Shapes::StructureShape.new(name: 'CreateUserResponse')
    DeleteGroupMembershipRequest = Shapes::StructureShape.new(name: 'DeleteGroupMembershipRequest')
    DeleteGroupMembershipResponse = Shapes::StructureShape.new(name: 'DeleteGroupMembershipResponse')
    DeleteGroupRequest = Shapes::StructureShape.new(name: 'DeleteGroupRequest')
    DeleteGroupResponse = Shapes::StructureShape.new(name: 'DeleteGroupResponse')
    DeleteUserRequest = Shapes::StructureShape.new(name: 'DeleteUserRequest')
    DeleteUserResponse = Shapes::StructureShape.new(name: 'DeleteUserResponse')
    DescribeGroupMembershipRequest = Shapes::StructureShape.new(name: 'DescribeGroupMembershipRequest')
    DescribeGroupMembershipResponse = Shapes::StructureShape.new(name: 'DescribeGroupMembershipResponse')
    DescribeGroupRequest = Shapes::StructureShape.new(name: 'DescribeGroupRequest')
    DescribeGroupResponse = Shapes::StructureShape.new(name: 'DescribeGroupResponse')
    DescribeUserRequest = Shapes::StructureShape.new(name: 'DescribeUserRequest')
    DescribeUserResponse = Shapes::StructureShape.new(name: 'DescribeUserResponse')
    Email = Shapes::StructureShape.new(name: 'Email')
    Emails = Shapes::ListShape.new(name: 'Emails')
    ExceptionMessage = Shapes::StringShape.new(name: 'ExceptionMessage')
    ExternalId = Shapes::StructureShape.new(name: 'ExternalId')
    ExternalIdIdentifier = Shapes::StringShape.new(name: 'ExternalIdIdentifier')
    ExternalIdIssuer = Shapes::StringShape.new(name: 'ExternalIdIssuer')
    ExternalIds = Shapes::ListShape.new(name: 'ExternalIds')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    Filters = Shapes::ListShape.new(name: 'Filters')
    GetGroupIdRequest = Shapes::StructureShape.new(name: 'GetGroupIdRequest')
    GetGroupIdResponse = Shapes::StructureShape.new(name: 'GetGroupIdResponse')
    GetGroupMembershipIdRequest = Shapes::StructureShape.new(name: 'GetGroupMembershipIdRequest')
    GetGroupMembershipIdResponse = Shapes::StructureShape.new(name: 'GetGroupMembershipIdResponse')
    GetUserIdRequest = Shapes::StructureShape.new(name: 'GetUserIdRequest')
    GetUserIdResponse = Shapes::StructureShape.new(name: 'GetUserIdResponse')
    Group = Shapes::StructureShape.new(name: 'Group')
    GroupDisplayName = Shapes::StringShape.new(name: 'GroupDisplayName')
    GroupIds = Shapes::ListShape.new(name: 'GroupIds')
    GroupMembership = Shapes::StructureShape.new(name: 'GroupMembership')
    GroupMembershipExistenceResult = Shapes::StructureShape.new(name: 'GroupMembershipExistenceResult')
    GroupMembershipExistenceResults = Shapes::ListShape.new(name: 'GroupMembershipExistenceResults')
    GroupMemberships = Shapes::ListShape.new(name: 'GroupMemberships')
    Groups = Shapes::ListShape.new(name: 'Groups')
    IdentityStoreId = Shapes::StringShape.new(name: 'IdentityStoreId')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    IsMemberInGroupsRequest = Shapes::StructureShape.new(name: 'IsMemberInGroupsRequest')
    IsMemberInGroupsResponse = Shapes::StructureShape.new(name: 'IsMemberInGroupsResponse')
    ListGroupMembershipsForMemberRequest = Shapes::StructureShape.new(name: 'ListGroupMembershipsForMemberRequest')
    ListGroupMembershipsForMemberResponse = Shapes::StructureShape.new(name: 'ListGroupMembershipsForMemberResponse')
    ListGroupMembershipsRequest = Shapes::StructureShape.new(name: 'ListGroupMembershipsRequest')
    ListGroupMembershipsResponse = Shapes::StructureShape.new(name: 'ListGroupMembershipsResponse')
    ListGroupsRequest = Shapes::StructureShape.new(name: 'ListGroupsRequest')
    ListGroupsResponse = Shapes::StructureShape.new(name: 'ListGroupsResponse')
    ListUsersRequest = Shapes::StructureShape.new(name: 'ListUsersRequest')
    ListUsersResponse = Shapes::StructureShape.new(name: 'ListUsersResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MemberId = Shapes::UnionShape.new(name: 'MemberId')
    Name = Shapes::StructureShape.new(name: 'Name')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    PhoneNumber = Shapes::StructureShape.new(name: 'PhoneNumber')
    PhoneNumbers = Shapes::ListShape.new(name: 'PhoneNumbers')
    RequestId = Shapes::StringShape.new(name: 'RequestId')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    RetryAfterSeconds = Shapes::IntegerShape.new(name: 'RetryAfterSeconds')
    SensitiveBooleanType = Shapes::BooleanShape.new(name: 'SensitiveBooleanType')
    SensitiveStringType = Shapes::StringShape.new(name: 'SensitiveStringType')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UniqueAttribute = Shapes::StructureShape.new(name: 'UniqueAttribute')
    UpdateGroupRequest = Shapes::StructureShape.new(name: 'UpdateGroupRequest')
    UpdateGroupResponse = Shapes::StructureShape.new(name: 'UpdateGroupResponse')
    UpdateUserRequest = Shapes::StructureShape.new(name: 'UpdateUserRequest')
    UpdateUserResponse = Shapes::StructureShape.new(name: 'UpdateUserResponse')
    User = Shapes::StructureShape.new(name: 'User')
    UserName = Shapes::StringShape.new(name: 'UserName')
    Users = Shapes::ListShape.new(name: 'Users')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    AccessDeniedException.add_member(:request_id, Shapes::ShapeRef.new(shape: RequestId, location_name: "RequestId"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    Address.add_member(:street_address, Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "StreetAddress"))
    Address.add_member(:locality, Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "Locality"))
    Address.add_member(:region, Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "Region"))
    Address.add_member(:postal_code, Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "PostalCode"))
    Address.add_member(:country, Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "Country"))
    Address.add_member(:formatted, Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "Formatted"))
    Address.add_member(:type, Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "Type"))
    Address.add_member(:primary, Shapes::ShapeRef.new(shape: SensitiveBooleanType, location_name: "Primary"))
    Address.struct_class = Types::Address

    Addresses.member = Shapes::ShapeRef.new(shape: Address)

    AlternateIdentifier.add_member(:external_id, Shapes::ShapeRef.new(shape: ExternalId, location_name: "ExternalId"))
    AlternateIdentifier.add_member(:unique_attribute, Shapes::ShapeRef.new(shape: UniqueAttribute, location_name: "UniqueAttribute"))
    AlternateIdentifier.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AlternateIdentifier.add_member_subclass(:external_id, Types::AlternateIdentifier::ExternalId)
    AlternateIdentifier.add_member_subclass(:unique_attribute, Types::AlternateIdentifier::UniqueAttribute)
    AlternateIdentifier.add_member_subclass(:unknown, Types::AlternateIdentifier::Unknown)
    AlternateIdentifier.struct_class = Types::AlternateIdentifier

    AttributeOperation.add_member(:attribute_path, Shapes::ShapeRef.new(shape: AttributePath, required: true, location_name: "AttributePath"))
    AttributeOperation.add_member(:attribute_value, Shapes::ShapeRef.new(shape: AttributeValue, location_name: "AttributeValue"))
    AttributeOperation.struct_class = Types::AttributeOperation

    AttributeOperations.member = Shapes::ShapeRef.new(shape: AttributeOperation)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ConflictException.add_member(:request_id, Shapes::ShapeRef.new(shape: RequestId, location_name: "RequestId"))
    ConflictException.add_member(:reason, Shapes::ShapeRef.new(shape: ConflictExceptionReason, location_name: "Reason"))
    ConflictException.struct_class = Types::ConflictException

    CreateGroupMembershipRequest.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: IdentityStoreId, required: true, location_name: "IdentityStoreId"))
    CreateGroupMembershipRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "GroupId"))
    CreateGroupMembershipRequest.add_member(:member_id, Shapes::ShapeRef.new(shape: MemberId, required: true, location_name: "MemberId"))
    CreateGroupMembershipRequest.struct_class = Types::CreateGroupMembershipRequest

    CreateGroupMembershipResponse.add_member(:membership_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "MembershipId"))
    CreateGroupMembershipResponse.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: IdentityStoreId, required: true, location_name: "IdentityStoreId"))
    CreateGroupMembershipResponse.struct_class = Types::CreateGroupMembershipResponse

    CreateGroupRequest.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: IdentityStoreId, required: true, location_name: "IdentityStoreId"))
    CreateGroupRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: GroupDisplayName, location_name: "DisplayName"))
    CreateGroupRequest.add_member(:description, Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "Description"))
    CreateGroupRequest.struct_class = Types::CreateGroupRequest

    CreateGroupResponse.add_member(:group_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "GroupId"))
    CreateGroupResponse.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: IdentityStoreId, required: true, location_name: "IdentityStoreId"))
    CreateGroupResponse.struct_class = Types::CreateGroupResponse

    CreateUserRequest.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: IdentityStoreId, required: true, location_name: "IdentityStoreId"))
    CreateUserRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, location_name: "UserName"))
    CreateUserRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    CreateUserRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "DisplayName"))
    CreateUserRequest.add_member(:nick_name, Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "NickName"))
    CreateUserRequest.add_member(:profile_url, Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "ProfileUrl"))
    CreateUserRequest.add_member(:emails, Shapes::ShapeRef.new(shape: Emails, location_name: "Emails"))
    CreateUserRequest.add_member(:addresses, Shapes::ShapeRef.new(shape: Addresses, location_name: "Addresses"))
    CreateUserRequest.add_member(:phone_numbers, Shapes::ShapeRef.new(shape: PhoneNumbers, location_name: "PhoneNumbers"))
    CreateUserRequest.add_member(:user_type, Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "UserType"))
    CreateUserRequest.add_member(:title, Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "Title"))
    CreateUserRequest.add_member(:preferred_language, Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "PreferredLanguage"))
    CreateUserRequest.add_member(:locale, Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "Locale"))
    CreateUserRequest.add_member(:timezone, Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "Timezone"))
    CreateUserRequest.struct_class = Types::CreateUserRequest

    CreateUserResponse.add_member(:user_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "UserId"))
    CreateUserResponse.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: IdentityStoreId, required: true, location_name: "IdentityStoreId"))
    CreateUserResponse.struct_class = Types::CreateUserResponse

    DeleteGroupMembershipRequest.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: IdentityStoreId, required: true, location_name: "IdentityStoreId"))
    DeleteGroupMembershipRequest.add_member(:membership_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "MembershipId"))
    DeleteGroupMembershipRequest.struct_class = Types::DeleteGroupMembershipRequest

    DeleteGroupMembershipResponse.struct_class = Types::DeleteGroupMembershipResponse

    DeleteGroupRequest.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: IdentityStoreId, required: true, location_name: "IdentityStoreId"))
    DeleteGroupRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "GroupId"))
    DeleteGroupRequest.struct_class = Types::DeleteGroupRequest

    DeleteGroupResponse.struct_class = Types::DeleteGroupResponse

    DeleteUserRequest.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: IdentityStoreId, required: true, location_name: "IdentityStoreId"))
    DeleteUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "UserId"))
    DeleteUserRequest.struct_class = Types::DeleteUserRequest

    DeleteUserResponse.struct_class = Types::DeleteUserResponse

    DescribeGroupMembershipRequest.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: IdentityStoreId, required: true, location_name: "IdentityStoreId"))
    DescribeGroupMembershipRequest.add_member(:membership_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "MembershipId"))
    DescribeGroupMembershipRequest.struct_class = Types::DescribeGroupMembershipRequest

    DescribeGroupMembershipResponse.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: IdentityStoreId, required: true, location_name: "IdentityStoreId"))
    DescribeGroupMembershipResponse.add_member(:membership_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "MembershipId"))
    DescribeGroupMembershipResponse.add_member(:group_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "GroupId"))
    DescribeGroupMembershipResponse.add_member(:member_id, Shapes::ShapeRef.new(shape: MemberId, required: true, location_name: "MemberId"))
    DescribeGroupMembershipResponse.struct_class = Types::DescribeGroupMembershipResponse

    DescribeGroupRequest.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: IdentityStoreId, required: true, location_name: "IdentityStoreId"))
    DescribeGroupRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "GroupId"))
    DescribeGroupRequest.struct_class = Types::DescribeGroupRequest

    DescribeGroupResponse.add_member(:group_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "GroupId"))
    DescribeGroupResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: GroupDisplayName, location_name: "DisplayName"))
    DescribeGroupResponse.add_member(:external_ids, Shapes::ShapeRef.new(shape: ExternalIds, location_name: "ExternalIds"))
    DescribeGroupResponse.add_member(:description, Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "Description"))
    DescribeGroupResponse.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: IdentityStoreId, required: true, location_name: "IdentityStoreId"))
    DescribeGroupResponse.struct_class = Types::DescribeGroupResponse

    DescribeUserRequest.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: IdentityStoreId, required: true, location_name: "IdentityStoreId"))
    DescribeUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "UserId"))
    DescribeUserRequest.struct_class = Types::DescribeUserRequest

    DescribeUserResponse.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, location_name: "UserName"))
    DescribeUserResponse.add_member(:user_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "UserId"))
    DescribeUserResponse.add_member(:external_ids, Shapes::ShapeRef.new(shape: ExternalIds, location_name: "ExternalIds"))
    DescribeUserResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    DescribeUserResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "DisplayName"))
    DescribeUserResponse.add_member(:nick_name, Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "NickName"))
    DescribeUserResponse.add_member(:profile_url, Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "ProfileUrl"))
    DescribeUserResponse.add_member(:emails, Shapes::ShapeRef.new(shape: Emails, location_name: "Emails"))
    DescribeUserResponse.add_member(:addresses, Shapes::ShapeRef.new(shape: Addresses, location_name: "Addresses"))
    DescribeUserResponse.add_member(:phone_numbers, Shapes::ShapeRef.new(shape: PhoneNumbers, location_name: "PhoneNumbers"))
    DescribeUserResponse.add_member(:user_type, Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "UserType"))
    DescribeUserResponse.add_member(:title, Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "Title"))
    DescribeUserResponse.add_member(:preferred_language, Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "PreferredLanguage"))
    DescribeUserResponse.add_member(:locale, Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "Locale"))
    DescribeUserResponse.add_member(:timezone, Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "Timezone"))
    DescribeUserResponse.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: IdentityStoreId, required: true, location_name: "IdentityStoreId"))
    DescribeUserResponse.struct_class = Types::DescribeUserResponse

    Email.add_member(:value, Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "Value"))
    Email.add_member(:type, Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "Type"))
    Email.add_member(:primary, Shapes::ShapeRef.new(shape: SensitiveBooleanType, location_name: "Primary"))
    Email.struct_class = Types::Email

    Emails.member = Shapes::ShapeRef.new(shape: Email)

    ExternalId.add_member(:issuer, Shapes::ShapeRef.new(shape: ExternalIdIssuer, required: true, location_name: "Issuer"))
    ExternalId.add_member(:id, Shapes::ShapeRef.new(shape: ExternalIdIdentifier, required: true, location_name: "Id"))
    ExternalId.struct_class = Types::ExternalId

    ExternalIds.member = Shapes::ShapeRef.new(shape: ExternalId)

    Filter.add_member(:attribute_path, Shapes::ShapeRef.new(shape: AttributePath, required: true, location_name: "AttributePath"))
    Filter.add_member(:attribute_value, Shapes::ShapeRef.new(shape: SensitiveStringType, required: true, location_name: "AttributeValue"))
    Filter.struct_class = Types::Filter

    Filters.member = Shapes::ShapeRef.new(shape: Filter)

    GetGroupIdRequest.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: IdentityStoreId, required: true, location_name: "IdentityStoreId"))
    GetGroupIdRequest.add_member(:alternate_identifier, Shapes::ShapeRef.new(shape: AlternateIdentifier, required: true, location_name: "AlternateIdentifier"))
    GetGroupIdRequest.struct_class = Types::GetGroupIdRequest

    GetGroupIdResponse.add_member(:group_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "GroupId"))
    GetGroupIdResponse.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: IdentityStoreId, required: true, location_name: "IdentityStoreId"))
    GetGroupIdResponse.struct_class = Types::GetGroupIdResponse

    GetGroupMembershipIdRequest.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: IdentityStoreId, required: true, location_name: "IdentityStoreId"))
    GetGroupMembershipIdRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "GroupId"))
    GetGroupMembershipIdRequest.add_member(:member_id, Shapes::ShapeRef.new(shape: MemberId, required: true, location_name: "MemberId"))
    GetGroupMembershipIdRequest.struct_class = Types::GetGroupMembershipIdRequest

    GetGroupMembershipIdResponse.add_member(:membership_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "MembershipId"))
    GetGroupMembershipIdResponse.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: IdentityStoreId, required: true, location_name: "IdentityStoreId"))
    GetGroupMembershipIdResponse.struct_class = Types::GetGroupMembershipIdResponse

    GetUserIdRequest.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: IdentityStoreId, required: true, location_name: "IdentityStoreId"))
    GetUserIdRequest.add_member(:alternate_identifier, Shapes::ShapeRef.new(shape: AlternateIdentifier, required: true, location_name: "AlternateIdentifier"))
    GetUserIdRequest.struct_class = Types::GetUserIdRequest

    GetUserIdResponse.add_member(:user_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "UserId"))
    GetUserIdResponse.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: IdentityStoreId, required: true, location_name: "IdentityStoreId"))
    GetUserIdResponse.struct_class = Types::GetUserIdResponse

    Group.add_member(:group_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "GroupId"))
    Group.add_member(:display_name, Shapes::ShapeRef.new(shape: GroupDisplayName, location_name: "DisplayName"))
    Group.add_member(:external_ids, Shapes::ShapeRef.new(shape: ExternalIds, location_name: "ExternalIds"))
    Group.add_member(:description, Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "Description"))
    Group.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: IdentityStoreId, required: true, location_name: "IdentityStoreId"))
    Group.struct_class = Types::Group

    GroupIds.member = Shapes::ShapeRef.new(shape: ResourceId)

    GroupMembership.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: IdentityStoreId, required: true, location_name: "IdentityStoreId"))
    GroupMembership.add_member(:membership_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "MembershipId"))
    GroupMembership.add_member(:group_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "GroupId"))
    GroupMembership.add_member(:member_id, Shapes::ShapeRef.new(shape: MemberId, location_name: "MemberId"))
    GroupMembership.struct_class = Types::GroupMembership

    GroupMembershipExistenceResult.add_member(:group_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "GroupId"))
    GroupMembershipExistenceResult.add_member(:member_id, Shapes::ShapeRef.new(shape: MemberId, location_name: "MemberId"))
    GroupMembershipExistenceResult.add_member(:membership_exists, Shapes::ShapeRef.new(shape: SensitiveBooleanType, location_name: "MembershipExists"))
    GroupMembershipExistenceResult.struct_class = Types::GroupMembershipExistenceResult

    GroupMembershipExistenceResults.member = Shapes::ShapeRef.new(shape: GroupMembershipExistenceResult)

    GroupMemberships.member = Shapes::ShapeRef.new(shape: GroupMembership)

    Groups.member = Shapes::ShapeRef.new(shape: Group)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    InternalServerException.add_member(:request_id, Shapes::ShapeRef.new(shape: RequestId, location_name: "RequestId"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: "RetryAfterSeconds"))
    InternalServerException.struct_class = Types::InternalServerException

    IsMemberInGroupsRequest.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: IdentityStoreId, required: true, location_name: "IdentityStoreId"))
    IsMemberInGroupsRequest.add_member(:member_id, Shapes::ShapeRef.new(shape: MemberId, required: true, location_name: "MemberId"))
    IsMemberInGroupsRequest.add_member(:group_ids, Shapes::ShapeRef.new(shape: GroupIds, required: true, location_name: "GroupIds"))
    IsMemberInGroupsRequest.struct_class = Types::IsMemberInGroupsRequest

    IsMemberInGroupsResponse.add_member(:results, Shapes::ShapeRef.new(shape: GroupMembershipExistenceResults, required: true, location_name: "Results"))
    IsMemberInGroupsResponse.struct_class = Types::IsMemberInGroupsResponse

    ListGroupMembershipsForMemberRequest.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: IdentityStoreId, required: true, location_name: "IdentityStoreId"))
    ListGroupMembershipsForMemberRequest.add_member(:member_id, Shapes::ShapeRef.new(shape: MemberId, required: true, location_name: "MemberId"))
    ListGroupMembershipsForMemberRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListGroupMembershipsForMemberRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGroupMembershipsForMemberRequest.struct_class = Types::ListGroupMembershipsForMemberRequest

    ListGroupMembershipsForMemberResponse.add_member(:group_memberships, Shapes::ShapeRef.new(shape: GroupMemberships, required: true, location_name: "GroupMemberships"))
    ListGroupMembershipsForMemberResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGroupMembershipsForMemberResponse.struct_class = Types::ListGroupMembershipsForMemberResponse

    ListGroupMembershipsRequest.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: IdentityStoreId, required: true, location_name: "IdentityStoreId"))
    ListGroupMembershipsRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "GroupId"))
    ListGroupMembershipsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListGroupMembershipsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGroupMembershipsRequest.struct_class = Types::ListGroupMembershipsRequest

    ListGroupMembershipsResponse.add_member(:group_memberships, Shapes::ShapeRef.new(shape: GroupMemberships, required: true, location_name: "GroupMemberships"))
    ListGroupMembershipsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGroupMembershipsResponse.struct_class = Types::ListGroupMembershipsResponse

    ListGroupsRequest.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: IdentityStoreId, required: true, location_name: "IdentityStoreId"))
    ListGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGroupsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, deprecated: true, location_name: "Filters", metadata: {"deprecatedMessage"=>"Using filters with ListGroups API is deprecated, please use GetGroupId API instead."}))
    ListGroupsRequest.struct_class = Types::ListGroupsRequest

    ListGroupsResponse.add_member(:groups, Shapes::ShapeRef.new(shape: Groups, required: true, location_name: "Groups"))
    ListGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGroupsResponse.struct_class = Types::ListGroupsResponse

    ListUsersRequest.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: IdentityStoreId, required: true, location_name: "IdentityStoreId"))
    ListUsersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListUsersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListUsersRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, deprecated: true, location_name: "Filters", metadata: {"deprecatedMessage"=>"Using filters with ListUsers API is deprecated, please use GetGroupId API instead."}))
    ListUsersRequest.struct_class = Types::ListUsersRequest

    ListUsersResponse.add_member(:users, Shapes::ShapeRef.new(shape: Users, required: true, location_name: "Users"))
    ListUsersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListUsersResponse.struct_class = Types::ListUsersResponse

    MemberId.add_member(:user_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "UserId"))
    MemberId.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    MemberId.add_member_subclass(:user_id, Types::MemberId::UserId)
    MemberId.add_member_subclass(:unknown, Types::MemberId::Unknown)
    MemberId.struct_class = Types::MemberId

    Name.add_member(:formatted, Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "Formatted"))
    Name.add_member(:family_name, Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "FamilyName"))
    Name.add_member(:given_name, Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "GivenName"))
    Name.add_member(:middle_name, Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "MiddleName"))
    Name.add_member(:honorific_prefix, Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "HonorificPrefix"))
    Name.add_member(:honorific_suffix, Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "HonorificSuffix"))
    Name.struct_class = Types::Name

    PhoneNumber.add_member(:value, Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "Value"))
    PhoneNumber.add_member(:type, Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "Type"))
    PhoneNumber.add_member(:primary, Shapes::ShapeRef.new(shape: SensitiveBooleanType, location_name: "Primary"))
    PhoneNumber.struct_class = Types::PhoneNumber

    PhoneNumbers.member = Shapes::ShapeRef.new(shape: PhoneNumber)

    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId"))
    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ResourceNotFoundException.add_member(:request_id, Shapes::ShapeRef.new(shape: RequestId, location_name: "RequestId"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ServiceQuotaExceededException.add_member(:request_id, Shapes::ShapeRef.new(shape: RequestId, location_name: "RequestId"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ThrottlingException.add_member(:request_id, Shapes::ShapeRef.new(shape: RequestId, location_name: "RequestId"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: "RetryAfterSeconds"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UniqueAttribute.add_member(:attribute_path, Shapes::ShapeRef.new(shape: AttributePath, required: true, location_name: "AttributePath"))
    UniqueAttribute.add_member(:attribute_value, Shapes::ShapeRef.new(shape: AttributeValue, required: true, location_name: "AttributeValue"))
    UniqueAttribute.struct_class = Types::UniqueAttribute

    UpdateGroupRequest.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: IdentityStoreId, required: true, location_name: "IdentityStoreId"))
    UpdateGroupRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "GroupId"))
    UpdateGroupRequest.add_member(:operations, Shapes::ShapeRef.new(shape: AttributeOperations, required: true, location_name: "Operations"))
    UpdateGroupRequest.struct_class = Types::UpdateGroupRequest

    UpdateGroupResponse.struct_class = Types::UpdateGroupResponse

    UpdateUserRequest.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: IdentityStoreId, required: true, location_name: "IdentityStoreId"))
    UpdateUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "UserId"))
    UpdateUserRequest.add_member(:operations, Shapes::ShapeRef.new(shape: AttributeOperations, required: true, location_name: "Operations"))
    UpdateUserRequest.struct_class = Types::UpdateUserRequest

    UpdateUserResponse.struct_class = Types::UpdateUserResponse

    User.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, location_name: "UserName"))
    User.add_member(:user_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "UserId"))
    User.add_member(:external_ids, Shapes::ShapeRef.new(shape: ExternalIds, location_name: "ExternalIds"))
    User.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    User.add_member(:display_name, Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "DisplayName"))
    User.add_member(:nick_name, Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "NickName"))
    User.add_member(:profile_url, Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "ProfileUrl"))
    User.add_member(:emails, Shapes::ShapeRef.new(shape: Emails, location_name: "Emails"))
    User.add_member(:addresses, Shapes::ShapeRef.new(shape: Addresses, location_name: "Addresses"))
    User.add_member(:phone_numbers, Shapes::ShapeRef.new(shape: PhoneNumbers, location_name: "PhoneNumbers"))
    User.add_member(:user_type, Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "UserType"))
    User.add_member(:title, Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "Title"))
    User.add_member(:preferred_language, Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "PreferredLanguage"))
    User.add_member(:locale, Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "Locale"))
    User.add_member(:timezone, Shapes::ShapeRef.new(shape: SensitiveStringType, location_name: "Timezone"))
    User.add_member(:identity_store_id, Shapes::ShapeRef.new(shape: IdentityStoreId, required: true, location_name: "IdentityStoreId"))
    User.struct_class = Types::User

    Users.member = Shapes::ShapeRef.new(shape: User)

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
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

      api.add_operation(:create_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_group_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGroupMembership"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateGroupMembershipRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateGroupMembershipResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateUser"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateUserRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_group_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGroupMembership"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteGroupMembershipRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteGroupMembershipResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteUser"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteUserRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_group_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeGroupMembership"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeGroupMembershipRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeGroupMembershipResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeUser"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeUserRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_group_id, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGroupId"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetGroupIdRequest)
        o.output = Shapes::ShapeRef.new(shape: GetGroupIdResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_group_membership_id, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGroupMembershipId"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetGroupMembershipIdRequest)
        o.output = Shapes::ShapeRef.new(shape: GetGroupMembershipIdResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_user_id, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetUserId"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetUserIdRequest)
        o.output = Shapes::ShapeRef.new(shape: GetUserIdResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:is_member_in_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "IsMemberInGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: IsMemberInGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: IsMemberInGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_group_memberships, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGroupMemberships"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListGroupMembershipsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGroupMembershipsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_group_memberships_for_member, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGroupMembershipsForMember"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListGroupMembershipsForMemberRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGroupMembershipsForMemberResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:update_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:update_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateUser"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateUserRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)
    end

  end
end
