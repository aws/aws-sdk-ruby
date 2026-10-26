# frozen_string_literal: true

# This is generated code!

module Aws::DirectoryServiceData
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessDeniedReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.directoryservicedata#AccessDeniedReason", name: "AccessDeniedReason")
    AddGroupMemberRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#AddGroupMemberRequest", name: "AddGroupMemberRequest")
    AddGroupMemberResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#AddGroupMemberResult", name: "AddGroupMemberResult")
    AttributeValue = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.directoryservicedata#AttributeValue", name: "AttributeValue")
    Attributes = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.directoryservicedata#Attributes", name: "Attributes", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    BooleanAttributeValue = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.directoryservicedata#BooleanAttributeValue", name: "BooleanAttributeValue", traits: {"smithy.api#sensitive" => {}})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservicedata#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\x00-\\x7F]+$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#CreateGroupRequest", name: "CreateGroupRequest")
    CreateGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#CreateGroupResult", name: "CreateGroupResult")
    CreateUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#CreateUserRequest", name: "CreateUserRequest")
    CreateUserResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#CreateUserResult", name: "CreateUserResult")
    DeleteGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#DeleteGroupRequest", name: "DeleteGroupRequest")
    DeleteGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#DeleteGroupResult", name: "DeleteGroupResult")
    DeleteUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#DeleteUserRequest", name: "DeleteUserRequest")
    DeleteUserResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#DeleteUserResult", name: "DeleteUserResult")
    DescribeGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#DescribeGroupRequest", name: "DescribeGroupRequest")
    DescribeGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#DescribeGroupResult", name: "DescribeGroupResult")
    DescribeUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#DescribeUserRequest", name: "DescribeUserRequest")
    DescribeUserResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#DescribeUserResult", name: "DescribeUserResult")
    DirectoryId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservicedata#DirectoryId", name: "DirectoryId", traits: {"smithy.api#pattern" => "^d-[0-9a-f]{10}$"})
    DirectoryUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#DirectoryUnavailableException", name: "DirectoryUnavailableException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400, "smithy.api#retryable" => {}})
    DirectoryUnavailableReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.directoryservicedata#DirectoryUnavailableReason", name: "DirectoryUnavailableReason")
    DisableUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#DisableUserRequest", name: "DisableUserRequest")
    DisableUserResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#DisableUserResult", name: "DisableUserResult")
    DistinguishedName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservicedata#DistinguishedName", name: "DistinguishedName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#sensitive" => {}})
    EmailAddress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservicedata#EmailAddress", name: "EmailAddress", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#sensitive" => {}})
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservicedata#ExceptionMessage", name: "ExceptionMessage")
    GivenName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservicedata#GivenName", name: "GivenName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#sensitive" => {}})
    Group = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#Group", name: "Group")
    GroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservicedata#GroupList", name: "GroupList")
    GroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservicedata#GroupName", name: "GroupName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[^:;|=+\"*?<>/\\\\,\\[\\]@]+$"})
    GroupScope = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.directoryservicedata#GroupScope", name: "GroupScope")
    GroupSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#GroupSummary", name: "GroupSummary")
    GroupSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservicedata#GroupSummaryList", name: "GroupSummaryList")
    GroupType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.directoryservicedata#GroupType", name: "GroupType")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    LdapDisplayName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservicedata#LdapDisplayName", name: "LdapDisplayName", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[A-Za-z*][A-Za-z-*]*$"})
    LdapDisplayNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservicedata#LdapDisplayNameList", name: "LdapDisplayNameList", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    ListGroupMembersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#ListGroupMembersRequest", name: "ListGroupMembersRequest")
    ListGroupMembersResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#ListGroupMembersResult", name: "ListGroupMembersResult")
    ListGroupsForMemberRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#ListGroupsForMemberRequest", name: "ListGroupsForMemberRequest")
    ListGroupsForMemberResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#ListGroupsForMemberResult", name: "ListGroupsForMemberResult")
    ListGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#ListGroupsRequest", name: "ListGroupsRequest")
    ListGroupsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#ListGroupsResult", name: "ListGroupsResult")
    ListUsersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#ListUsersRequest", name: "ListUsersRequest")
    ListUsersResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#ListUsersResult", name: "ListUsersResult")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.directoryservicedata#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 250}})
    Member = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#Member", name: "Member")
    MemberList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservicedata#MemberList", name: "MemberList")
    MemberName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservicedata#MemberName", name: "MemberName", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[^:;|=+\"*?<>/\\\\,\\[\\]@]+$"})
    MemberType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.directoryservicedata#MemberType", name: "MemberType")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservicedata#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 6144}, "smithy.api#sensitive" => {}})
    NumberAttributeValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.directoryservicedata#NumberAttributeValue", name: "NumberAttributeValue", traits: {"smithy.api#sensitive" => {}})
    Realm = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservicedata#Realm", name: "Realm", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^([a-zA-Z0-9]+[\\\\.-])+([a-zA-Z0-9])+[.]?$"})
    RemoveGroupMemberRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#RemoveGroupMemberRequest", name: "RemoveGroupMemberRequest")
    RemoveGroupMemberResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#RemoveGroupMemberResult", name: "RemoveGroupMemberResult")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservicedata#SID", name: "SID", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    SearchGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#SearchGroupsRequest", name: "SearchGroupsRequest")
    SearchGroupsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#SearchGroupsResult", name: "SearchGroupsResult")
    SearchString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservicedata#SearchString", name: "SearchString", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#sensitive" => {}})
    SearchUsersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#SearchUsersRequest", name: "SearchUsersRequest")
    SearchUsersResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#SearchUsersResult", name: "SearchUsersResult")
    StringAttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservicedata#StringAttributeValue", name: "StringAttributeValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#sensitive" => {}})
    StringSetAttributeValue = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservicedata#StringSetAttributeValue", name: "StringSetAttributeValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 25}, "smithy.api#sensitive" => {}})
    Surname = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservicedata#Surname", name: "Surname", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#sensitive" => {}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    UpdateGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#UpdateGroupRequest", name: "UpdateGroupRequest")
    UpdateGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#UpdateGroupResult", name: "UpdateGroupResult")
    UpdateType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.directoryservicedata#UpdateType", name: "UpdateType")
    UpdateUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#UpdateUserRequest", name: "UpdateUserRequest")
    UpdateUserResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#UpdateUserResult", name: "UpdateUserResult")
    User = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#User", name: "User")
    UserList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservicedata#UserList", name: "UserList")
    UserName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservicedata#UserName", name: "UserName", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^[\\w\\-.]+$"})
    UserPrincipalName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.directoryservicedata#UserPrincipalName", name: "UserPrincipalName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#sensitive" => {}})
    UserSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#UserSummary", name: "UserSummary")
    UserSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.directoryservicedata#UserSummaryList", name: "UserSummaryList")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.directoryservicedata#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.directoryservicedata#ValidationExceptionReason", name: "ValidationExceptionReason")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    AccessDeniedException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessDeniedReason, name: "Reason"))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessDeniedReason.add_member(:iam_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM_AUTH", traits: {"smithy.api#enumValue" => "IAM_AUTH"}))
    AccessDeniedReason.add_member(:directory_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DIRECTORY_AUTH", traits: {"smithy.api#enumValue" => "DIRECTORY_AUTH"}))
    AccessDeniedReason.add_member(:data_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATA_DISABLED", traits: {"smithy.api#enumValue" => "DATA_DISABLED"}))
    AddGroupMemberRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#httpQuery" => "DirectoryId", "smithy.api#required" => {}}))
    AddGroupMemberRequest.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, name: "GroupName", traits: {"smithy.api#required" => {}}))
    AddGroupMemberRequest.add_member(:member_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberName, name: "MemberName", traits: {"smithy.api#required" => {}}))
    AddGroupMemberRequest.add_member(:member_realm, ::Smithy::Schema::Shapes::MemberShape.new(target: Realm, name: "MemberRealm"))
    AddGroupMemberRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    AddGroupMemberRequest.type = Types::AddGroupMemberRequest
    AddGroupMemberResult.type = Types::AddGroupMemberResult
    AttributeValue.add_member(:s, Types::AttributeValue::S, ::Smithy::Schema::Shapes::MemberShape.new(target: StringAttributeValue, name: "S"))
    AttributeValue.add_member(:n, Types::AttributeValue::N, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberAttributeValue, name: "N"))
    AttributeValue.add_member(:bool, Types::AttributeValue::BOOL, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanAttributeValue, name: "BOOL"))
    AttributeValue.add_member(:ss, Types::AttributeValue::SS, ::Smithy::Schema::Shapes::MemberShape.new(target: StringSetAttributeValue, name: "SS"))
    AttributeValue.add_member(:unknown, Types::AttributeValue::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AttributeValue.type = Types::AttributeValue
    Attributes.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: LdapDisplayName, name: "key"))
    Attributes.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "value"))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    ConflictException.type = Types::ConflictException
    CreateGroupRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#httpQuery" => "DirectoryId", "smithy.api#required" => {}}))
    CreateGroupRequest.add_member(:sam_account_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, name: "SAMAccountName", traits: {"smithy.api#required" => {}}))
    CreateGroupRequest.add_member(:group_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupType, name: "GroupType"))
    CreateGroupRequest.add_member(:group_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupScope, name: "GroupScope"))
    CreateGroupRequest.add_member(:other_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "OtherAttributes"))
    CreateGroupRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateGroupRequest.type = Types::CreateGroupRequest
    CreateGroupResult.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId"))
    CreateGroupResult.add_member(:sam_account_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, name: "SAMAccountName"))
    CreateGroupResult.add_member(:sid, ::Smithy::Schema::Shapes::MemberShape.new(target: SID, name: "SID"))
    CreateGroupResult.type = Types::CreateGroupResult
    CreateUserRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#httpQuery" => "DirectoryId", "smithy.api#required" => {}}))
    CreateUserRequest.add_member(:sam_account_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserName, name: "SAMAccountName", traits: {"smithy.api#required" => {}}))
    CreateUserRequest.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "EmailAddress"))
    CreateUserRequest.add_member(:given_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GivenName, name: "GivenName"))
    CreateUserRequest.add_member(:surname, ::Smithy::Schema::Shapes::MemberShape.new(target: Surname, name: "Surname"))
    CreateUserRequest.add_member(:other_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "OtherAttributes"))
    CreateUserRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateUserRequest.type = Types::CreateUserRequest
    CreateUserResult.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId"))
    CreateUserResult.add_member(:sid, ::Smithy::Schema::Shapes::MemberShape.new(target: SID, name: "SID"))
    CreateUserResult.add_member(:sam_account_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserName, name: "SAMAccountName"))
    CreateUserResult.type = Types::CreateUserResult
    DeleteGroupRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#httpQuery" => "DirectoryId", "smithy.api#required" => {}}))
    DeleteGroupRequest.add_member(:sam_account_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, name: "SAMAccountName", traits: {"smithy.api#required" => {}}))
    DeleteGroupRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DeleteGroupRequest.type = Types::DeleteGroupRequest
    DeleteGroupResult.type = Types::DeleteGroupResult
    DeleteUserRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#httpQuery" => "DirectoryId", "smithy.api#required" => {}}))
    DeleteUserRequest.add_member(:sam_account_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserName, name: "SAMAccountName", traits: {"smithy.api#required" => {}}))
    DeleteUserRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DeleteUserRequest.type = Types::DeleteUserRequest
    DeleteUserResult.type = Types::DeleteUserResult
    DescribeGroupRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#httpQuery" => "DirectoryId", "smithy.api#required" => {}}))
    DescribeGroupRequest.add_member(:realm, ::Smithy::Schema::Shapes::MemberShape.new(target: Realm, name: "Realm"))
    DescribeGroupRequest.add_member(:sam_account_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, name: "SAMAccountName", traits: {"smithy.api#required" => {}}))
    DescribeGroupRequest.add_member(:other_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: LdapDisplayNameList, name: "OtherAttributes"))
    DescribeGroupRequest.type = Types::DescribeGroupRequest
    DescribeGroupResult.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId"))
    DescribeGroupResult.add_member(:realm, ::Smithy::Schema::Shapes::MemberShape.new(target: Realm, name: "Realm"))
    DescribeGroupResult.add_member(:sid, ::Smithy::Schema::Shapes::MemberShape.new(target: SID, name: "SID"))
    DescribeGroupResult.add_member(:sam_account_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, name: "SAMAccountName"))
    DescribeGroupResult.add_member(:distinguished_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DistinguishedName, name: "DistinguishedName"))
    DescribeGroupResult.add_member(:group_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupType, name: "GroupType"))
    DescribeGroupResult.add_member(:group_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupScope, name: "GroupScope"))
    DescribeGroupResult.add_member(:other_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "OtherAttributes"))
    DescribeGroupResult.type = Types::DescribeGroupResult
    DescribeUserRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#httpQuery" => "DirectoryId", "smithy.api#required" => {}}))
    DescribeUserRequest.add_member(:sam_account_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserName, name: "SAMAccountName", traits: {"smithy.api#required" => {}}))
    DescribeUserRequest.add_member(:other_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: LdapDisplayNameList, name: "OtherAttributes"))
    DescribeUserRequest.add_member(:realm, ::Smithy::Schema::Shapes::MemberShape.new(target: Realm, name: "Realm"))
    DescribeUserRequest.type = Types::DescribeUserRequest
    DescribeUserResult.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId"))
    DescribeUserResult.add_member(:realm, ::Smithy::Schema::Shapes::MemberShape.new(target: Realm, name: "Realm"))
    DescribeUserResult.add_member(:sid, ::Smithy::Schema::Shapes::MemberShape.new(target: SID, name: "SID"))
    DescribeUserResult.add_member(:sam_account_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserName, name: "SAMAccountName"))
    DescribeUserResult.add_member(:distinguished_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DistinguishedName, name: "DistinguishedName"))
    DescribeUserResult.add_member(:user_principal_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPrincipalName, name: "UserPrincipalName"))
    DescribeUserResult.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "EmailAddress"))
    DescribeUserResult.add_member(:given_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GivenName, name: "GivenName"))
    DescribeUserResult.add_member(:surname, ::Smithy::Schema::Shapes::MemberShape.new(target: Surname, name: "Surname"))
    DescribeUserResult.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "Enabled"))
    DescribeUserResult.add_member(:other_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "OtherAttributes"))
    DescribeUserResult.type = Types::DescribeUserResult
    DirectoryUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    DirectoryUnavailableException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryUnavailableReason, name: "Reason"))
    DirectoryUnavailableException.type = Types::DirectoryUnavailableException
    DirectoryUnavailableReason.add_member(:invalid_directory_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_DIRECTORY_STATE", traits: {"smithy.api#enumValue" => "INVALID_DIRECTORY_STATE"}))
    DirectoryUnavailableReason.add_member(:directory_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DIRECTORY_TIMEOUT", traits: {"smithy.api#enumValue" => "DIRECTORY_TIMEOUT"}))
    DirectoryUnavailableReason.add_member(:directory_resources_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DIRECTORY_RESOURCES_EXCEEDED", traits: {"smithy.api#enumValue" => "DIRECTORY_RESOURCES_EXCEEDED"}))
    DirectoryUnavailableReason.add_member(:no_disk_space, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_DISK_SPACE", traits: {"smithy.api#enumValue" => "NO_DISK_SPACE"}))
    DirectoryUnavailableReason.add_member(:trust_auth_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRUST_AUTH_FAILURE", traits: {"smithy.api#enumValue" => "TRUST_AUTH_FAILURE"}))
    DisableUserRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#httpQuery" => "DirectoryId", "smithy.api#required" => {}}))
    DisableUserRequest.add_member(:sam_account_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserName, name: "SAMAccountName", traits: {"smithy.api#required" => {}}))
    DisableUserRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DisableUserRequest.type = Types::DisableUserRequest
    DisableUserResult.type = Types::DisableUserResult
    Group.add_member(:sid, ::Smithy::Schema::Shapes::MemberShape.new(target: SID, name: "SID"))
    Group.add_member(:sam_account_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, name: "SAMAccountName", traits: {"smithy.api#required" => {}}))
    Group.add_member(:distinguished_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DistinguishedName, name: "DistinguishedName"))
    Group.add_member(:group_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupType, name: "GroupType"))
    Group.add_member(:group_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupScope, name: "GroupScope"))
    Group.add_member(:other_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "OtherAttributes"))
    Group.type = Types::Group
    GroupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Group, name: "member"))
    GroupScope.add_member(:domain_local, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOMAIN_LOCAL", traits: {"smithy.api#enumValue" => "DomainLocal"}))
    GroupScope.add_member(:global, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GLOBAL", traits: {"smithy.api#enumValue" => "Global"}))
    GroupScope.add_member(:universal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNIVERSAL", traits: {"smithy.api#enumValue" => "Universal"}))
    GroupScope.add_member(:builtin_local, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUILTIN_LOCAL", traits: {"smithy.api#enumValue" => "BuiltinLocal"}))
    GroupSummary.add_member(:sid, ::Smithy::Schema::Shapes::MemberShape.new(target: SID, name: "SID", traits: {"smithy.api#required" => {}}))
    GroupSummary.add_member(:sam_account_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, name: "SAMAccountName", traits: {"smithy.api#required" => {}}))
    GroupSummary.add_member(:group_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupType, name: "GroupType", traits: {"smithy.api#required" => {}}))
    GroupSummary.add_member(:group_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupScope, name: "GroupScope", traits: {"smithy.api#required" => {}}))
    GroupSummary.type = Types::GroupSummary
    GroupSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupSummary, name: "member"))
    GroupType.add_member(:distribution, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISTRIBUTION", traits: {"smithy.api#enumValue" => "Distribution"}))
    GroupType.add_member(:security, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECURITY", traits: {"smithy.api#enumValue" => "Security"}))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    InternalServerException.type = Types::InternalServerException
    LdapDisplayNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LdapDisplayName, name: "member"))
    ListGroupMembersRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#httpQuery" => "DirectoryId", "smithy.api#required" => {}}))
    ListGroupMembersRequest.add_member(:realm, ::Smithy::Schema::Shapes::MemberShape.new(target: Realm, name: "Realm"))
    ListGroupMembersRequest.add_member(:member_realm, ::Smithy::Schema::Shapes::MemberShape.new(target: Realm, name: "MemberRealm"))
    ListGroupMembersRequest.add_member(:sam_account_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, name: "SAMAccountName", traits: {"smithy.api#required" => {}}))
    ListGroupMembersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListGroupMembersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListGroupMembersRequest.type = Types::ListGroupMembersRequest
    ListGroupMembersResult.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId"))
    ListGroupMembersResult.add_member(:realm, ::Smithy::Schema::Shapes::MemberShape.new(target: Realm, name: "Realm"))
    ListGroupMembersResult.add_member(:member_realm, ::Smithy::Schema::Shapes::MemberShape.new(target: Realm, name: "MemberRealm"))
    ListGroupMembersResult.add_member(:members, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberList, name: "Members"))
    ListGroupMembersResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListGroupMembersResult.type = Types::ListGroupMembersResult
    ListGroupsForMemberRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#httpQuery" => "DirectoryId", "smithy.api#required" => {}}))
    ListGroupsForMemberRequest.add_member(:realm, ::Smithy::Schema::Shapes::MemberShape.new(target: Realm, name: "Realm"))
    ListGroupsForMemberRequest.add_member(:member_realm, ::Smithy::Schema::Shapes::MemberShape.new(target: Realm, name: "MemberRealm"))
    ListGroupsForMemberRequest.add_member(:sam_account_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberName, name: "SAMAccountName", traits: {"smithy.api#required" => {}}))
    ListGroupsForMemberRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListGroupsForMemberRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListGroupsForMemberRequest.type = Types::ListGroupsForMemberRequest
    ListGroupsForMemberResult.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId"))
    ListGroupsForMemberResult.add_member(:realm, ::Smithy::Schema::Shapes::MemberShape.new(target: Realm, name: "Realm"))
    ListGroupsForMemberResult.add_member(:member_realm, ::Smithy::Schema::Shapes::MemberShape.new(target: Realm, name: "MemberRealm"))
    ListGroupsForMemberResult.add_member(:groups, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupSummaryList, name: "Groups"))
    ListGroupsForMemberResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListGroupsForMemberResult.type = Types::ListGroupsForMemberResult
    ListGroupsRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#httpQuery" => "DirectoryId", "smithy.api#required" => {}}))
    ListGroupsRequest.add_member(:realm, ::Smithy::Schema::Shapes::MemberShape.new(target: Realm, name: "Realm"))
    ListGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListGroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListGroupsRequest.type = Types::ListGroupsRequest
    ListGroupsResult.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId"))
    ListGroupsResult.add_member(:realm, ::Smithy::Schema::Shapes::MemberShape.new(target: Realm, name: "Realm"))
    ListGroupsResult.add_member(:groups, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupSummaryList, name: "Groups"))
    ListGroupsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListGroupsResult.type = Types::ListGroupsResult
    ListUsersRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#httpQuery" => "DirectoryId", "smithy.api#required" => {}}))
    ListUsersRequest.add_member(:realm, ::Smithy::Schema::Shapes::MemberShape.new(target: Realm, name: "Realm"))
    ListUsersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListUsersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListUsersRequest.type = Types::ListUsersRequest
    ListUsersResult.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId"))
    ListUsersResult.add_member(:realm, ::Smithy::Schema::Shapes::MemberShape.new(target: Realm, name: "Realm"))
    ListUsersResult.add_member(:users, ::Smithy::Schema::Shapes::MemberShape.new(target: UserSummaryList, name: "Users"))
    ListUsersResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListUsersResult.type = Types::ListUsersResult
    Member.add_member(:sid, ::Smithy::Schema::Shapes::MemberShape.new(target: SID, name: "SID", traits: {"smithy.api#required" => {}}))
    Member.add_member(:sam_account_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberName, name: "SAMAccountName", traits: {"smithy.api#required" => {}}))
    Member.add_member(:member_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberType, name: "MemberType", traits: {"smithy.api#required" => {}}))
    Member.type = Types::Member
    MemberList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Member, name: "member"))
    MemberType.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER", traits: {"smithy.api#enumValue" => "USER"}))
    MemberType.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GROUP", traits: {"smithy.api#enumValue" => "GROUP"}))
    MemberType.add_member(:computer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPUTER", traits: {"smithy.api#enumValue" => "COMPUTER"}))
    RemoveGroupMemberRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#httpQuery" => "DirectoryId", "smithy.api#required" => {}}))
    RemoveGroupMemberRequest.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, name: "GroupName", traits: {"smithy.api#required" => {}}))
    RemoveGroupMemberRequest.add_member(:member_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberName, name: "MemberName", traits: {"smithy.api#required" => {}}))
    RemoveGroupMemberRequest.add_member(:member_realm, ::Smithy::Schema::Shapes::MemberShape.new(target: Realm, name: "MemberRealm"))
    RemoveGroupMemberRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    RemoveGroupMemberRequest.type = Types::RemoveGroupMemberRequest
    RemoveGroupMemberResult.type = Types::RemoveGroupMemberResult
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SearchGroupsRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#httpQuery" => "DirectoryId", "smithy.api#required" => {}}))
    SearchGroupsRequest.add_member(:search_string, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchString, name: "SearchString", traits: {"smithy.api#required" => {}}))
    SearchGroupsRequest.add_member(:search_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: LdapDisplayNameList, name: "SearchAttributes", traits: {"smithy.api#required" => {}}))
    SearchGroupsRequest.add_member(:realm, ::Smithy::Schema::Shapes::MemberShape.new(target: Realm, name: "Realm"))
    SearchGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    SearchGroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    SearchGroupsRequest.type = Types::SearchGroupsRequest
    SearchGroupsResult.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId"))
    SearchGroupsResult.add_member(:realm, ::Smithy::Schema::Shapes::MemberShape.new(target: Realm, name: "Realm"))
    SearchGroupsResult.add_member(:groups, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupList, name: "Groups"))
    SearchGroupsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    SearchGroupsResult.type = Types::SearchGroupsResult
    SearchUsersRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#httpQuery" => "DirectoryId", "smithy.api#required" => {}}))
    SearchUsersRequest.add_member(:realm, ::Smithy::Schema::Shapes::MemberShape.new(target: Realm, name: "Realm"))
    SearchUsersRequest.add_member(:search_string, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchString, name: "SearchString", traits: {"smithy.api#required" => {}}))
    SearchUsersRequest.add_member(:search_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: LdapDisplayNameList, name: "SearchAttributes", traits: {"smithy.api#required" => {}}))
    SearchUsersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    SearchUsersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    SearchUsersRequest.type = Types::SearchUsersRequest
    SearchUsersResult.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId"))
    SearchUsersResult.add_member(:realm, ::Smithy::Schema::Shapes::MemberShape.new(target: Realm, name: "Realm"))
    SearchUsersResult.add_member(:users, ::Smithy::Schema::Shapes::MemberShape.new(target: UserList, name: "Users"))
    SearchUsersResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    SearchUsersResult.type = Types::SearchUsersResult
    StringSetAttributeValue.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StringAttributeValue, name: "member"))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "RetryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UpdateGroupRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#httpQuery" => "DirectoryId", "smithy.api#required" => {}}))
    UpdateGroupRequest.add_member(:sam_account_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, name: "SAMAccountName", traits: {"smithy.api#required" => {}}))
    UpdateGroupRequest.add_member(:group_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupType, name: "GroupType"))
    UpdateGroupRequest.add_member(:group_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupScope, name: "GroupScope"))
    UpdateGroupRequest.add_member(:other_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "OtherAttributes"))
    UpdateGroupRequest.add_member(:update_type, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateType, name: "UpdateType"))
    UpdateGroupRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateGroupRequest.type = Types::UpdateGroupRequest
    UpdateGroupResult.type = Types::UpdateGroupResult
    UpdateType.add_member(:add, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADD", traits: {"smithy.api#enumValue" => "ADD"}))
    UpdateType.add_member(:replace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPLACE", traits: {"smithy.api#enumValue" => "REPLACE"}))
    UpdateType.add_member(:remove, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REMOVE", traits: {"smithy.api#enumValue" => "REMOVE"}))
    UpdateUserRequest.add_member(:directory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryId, name: "DirectoryId", traits: {"smithy.api#httpQuery" => "DirectoryId", "smithy.api#required" => {}}))
    UpdateUserRequest.add_member(:sam_account_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserName, name: "SAMAccountName", traits: {"smithy.api#required" => {}}))
    UpdateUserRequest.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "EmailAddress"))
    UpdateUserRequest.add_member(:given_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GivenName, name: "GivenName"))
    UpdateUserRequest.add_member(:surname, ::Smithy::Schema::Shapes::MemberShape.new(target: Surname, name: "Surname"))
    UpdateUserRequest.add_member(:other_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "OtherAttributes"))
    UpdateUserRequest.add_member(:update_type, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateType, name: "UpdateType"))
    UpdateUserRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateUserRequest.type = Types::UpdateUserRequest
    UpdateUserResult.type = Types::UpdateUserResult
    User.add_member(:sid, ::Smithy::Schema::Shapes::MemberShape.new(target: SID, name: "SID"))
    User.add_member(:sam_account_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserName, name: "SAMAccountName", traits: {"smithy.api#required" => {}}))
    User.add_member(:distinguished_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DistinguishedName, name: "DistinguishedName"))
    User.add_member(:user_principal_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserPrincipalName, name: "UserPrincipalName"))
    User.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "EmailAddress"))
    User.add_member(:given_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GivenName, name: "GivenName"))
    User.add_member(:surname, ::Smithy::Schema::Shapes::MemberShape.new(target: Surname, name: "Surname"))
    User.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "Enabled"))
    User.add_member(:other_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "OtherAttributes"))
    User.type = Types::User
    UserList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: User, name: "member"))
    UserSummary.add_member(:sid, ::Smithy::Schema::Shapes::MemberShape.new(target: SID, name: "SID", traits: {"smithy.api#required" => {}}))
    UserSummary.add_member(:sam_account_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserName, name: "SAMAccountName", traits: {"smithy.api#required" => {}}))
    UserSummary.add_member(:given_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GivenName, name: "GivenName"))
    UserSummary.add_member(:surname, ::Smithy::Schema::Shapes::MemberShape.new(target: Surname, name: "Surname"))
    UserSummary.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "Enabled", traits: {"smithy.api#required" => {}}))
    UserSummary.type = Types::UserSummary
    UserSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UserSummary, name: "member"))
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "Reason"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionReason.add_member(:invalid_realm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_REALM", traits: {"smithy.api#enumValue" => "INVALID_REALM"}))
    ValidationExceptionReason.add_member(:invalid_directory_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_DIRECTORY_TYPE", traits: {"smithy.api#enumValue" => "INVALID_DIRECTORY_TYPE"}))
    ValidationExceptionReason.add_member(:invalid_secondary_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_SECONDARY_REGION", traits: {"smithy.api#enumValue" => "INVALID_SECONDARY_REGION"}))
    ValidationExceptionReason.add_member(:invalid_next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_NEXT_TOKEN", traits: {"smithy.api#enumValue" => "INVALID_NEXT_TOKEN"}))
    ValidationExceptionReason.add_member(:invalid_attribute_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_ATTRIBUTE_VALUE", traits: {"smithy.api#enumValue" => "INVALID_ATTRIBUTE_VALUE"}))
    ValidationExceptionReason.add_member(:invalid_attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_ATTRIBUTE_NAME", traits: {"smithy.api#enumValue" => "INVALID_ATTRIBUTE_NAME"}))
    ValidationExceptionReason.add_member(:invalid_attribute_for_user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_ATTRIBUTE_FOR_USER", traits: {"smithy.api#enumValue" => "INVALID_ATTRIBUTE_FOR_USER"}))
    ValidationExceptionReason.add_member(:invalid_attribute_for_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_ATTRIBUTE_FOR_GROUP", traits: {"smithy.api#enumValue" => "INVALID_ATTRIBUTE_FOR_GROUP"}))
    ValidationExceptionReason.add_member(:invalid_attribute_for_search, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_ATTRIBUTE_FOR_SEARCH", traits: {"smithy.api#enumValue" => "INVALID_ATTRIBUTE_FOR_SEARCH"}))
    ValidationExceptionReason.add_member(:invalid_attribute_for_modify, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_ATTRIBUTE_FOR_MODIFY", traits: {"smithy.api#enumValue" => "INVALID_ATTRIBUTE_FOR_MODIFY"}))
    ValidationExceptionReason.add_member(:duplicate_attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DUPLICATE_ATTRIBUTE", traits: {"smithy.api#enumValue" => "DUPLICATE_ATTRIBUTE"}))
    ValidationExceptionReason.add_member(:missing_attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISSING_ATTRIBUTE", traits: {"smithy.api#enumValue" => "MISSING_ATTRIBUTE"}))
    ValidationExceptionReason.add_member(:attribute_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ATTRIBUTE_EXISTS", traits: {"smithy.api#enumValue" => "ATTRIBUTE_EXISTS"}))
    ValidationExceptionReason.add_member(:ldap_size_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LDAP_SIZE_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "LDAP_SIZE_LIMIT_EXCEEDED"}))
    ValidationExceptionReason.add_member(:ldap_unsupported_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LDAP_UNSUPPORTED_OPERATION", traits: {"smithy.api#enumValue" => "LDAP_UNSUPPORTED_OPERATION"}))

    DirectoryServiceData = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.directoryservicedata#DirectoryServiceData"
      service.name = "DirectoryServiceData"
      service.version = "2023-05-31"
      service.traits = {"aws.api#service" => {"sdkId" => "Directory Service Data", "arnNamespace" => "ds", "cloudFormationName" => "DirectoryServiceData", "cloudTrailEventSource" => "ds.amazonaws.com", "endpointPrefix" => "ds-data"}, "aws.auth#sigv4" => {"name" => "ds-data"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Directory Service Data", "smithy.api#xmlNamespace" => {"uri" => "http://directoryservicedata.amazonaws.com/doc/2023-05-31/"}, "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://ds-data-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://ds-data-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://ds-data.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://ds-data.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:add_group_member, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservicedata#AddGroupMember"
        operation.name = "AddGroupMember"
        operation.input = AddGroupMemberRequest
        operation.output = AddGroupMemberResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << DirectoryUnavailableException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/GroupMemberships/AddGroupMember", "method" => "POST"}}
      end)
      service.add_operation(:create_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservicedata#CreateGroup"
        operation.name = "CreateGroup"
        operation.input = CreateGroupRequest
        operation.output = CreateGroupResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << DirectoryUnavailableException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/Groups/CreateGroup", "method" => "POST"}}
      end)
      service.add_operation(:create_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservicedata#CreateUser"
        operation.name = "CreateUser"
        operation.input = CreateUserRequest
        operation.output = CreateUserResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << DirectoryUnavailableException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/Users/CreateUser", "method" => "POST"}}
      end)
      service.add_operation(:delete_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservicedata#DeleteGroup"
        operation.name = "DeleteGroup"
        operation.input = DeleteGroupRequest
        operation.output = DeleteGroupResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << DirectoryUnavailableException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/Groups/DeleteGroup", "method" => "POST"}}
      end)
      service.add_operation(:delete_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservicedata#DeleteUser"
        operation.name = "DeleteUser"
        operation.input = DeleteUserRequest
        operation.output = DeleteUserResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << DirectoryUnavailableException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/Users/DeleteUser", "method" => "POST"}}
      end)
      service.add_operation(:describe_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservicedata#DescribeGroup"
        operation.name = "DescribeGroup"
        operation.input = DescribeGroupRequest
        operation.output = DescribeGroupResult
        operation.errors << AccessDeniedException
        operation.errors << DirectoryUnavailableException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/Groups/DescribeGroup", "method" => "POST"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "DescribeGroupFailure", "params" => {"DirectoryId" => "d-1111111111", "SAMAccountName" => "test-group"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.directoryservicedata#AccessDeniedException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
      end)
      service.add_operation(:describe_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservicedata#DescribeUser"
        operation.name = "DescribeUser"
        operation.input = DescribeUserRequest
        operation.output = DescribeUserResult
        operation.errors << AccessDeniedException
        operation.errors << DirectoryUnavailableException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/Users/DescribeUser", "method" => "POST"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "DescribeUserFailure", "params" => {"DirectoryId" => "d-1111111111", "SAMAccountName" => "test-user"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.directoryservicedata#AccessDeniedException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
      end)
      service.add_operation(:disable_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservicedata#DisableUser"
        operation.name = "DisableUser"
        operation.input = DisableUserRequest
        operation.output = DisableUserResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << DirectoryUnavailableException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/Users/DisableUser", "method" => "POST"}}
      end)
      service.add_operation(:list_group_members, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservicedata#ListGroupMembers"
        operation.name = "ListGroupMembers"
        operation.input = ListGroupMembersRequest
        operation.output = ListGroupMembersResult
        operation.errors << AccessDeniedException
        operation.errors << DirectoryUnavailableException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/GroupMemberships/ListGroupMembers", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListGroupMembers.new
      end)
      service.add_operation(:list_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservicedata#ListGroups"
        operation.name = "ListGroups"
        operation.input = ListGroupsRequest
        operation.output = ListGroupsResult
        operation.errors << AccessDeniedException
        operation.errors << DirectoryUnavailableException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/Groups/ListGroups", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListGroups.new
      end)
      service.add_operation(:list_groups_for_member, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservicedata#ListGroupsForMember"
        operation.name = "ListGroupsForMember"
        operation.input = ListGroupsForMemberRequest
        operation.output = ListGroupsForMemberResult
        operation.errors << AccessDeniedException
        operation.errors << DirectoryUnavailableException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/GroupMemberships/ListGroupsForMember", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListGroupsForMember.new
      end)
      service.add_operation(:list_users, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservicedata#ListUsers"
        operation.name = "ListUsers"
        operation.input = ListUsersRequest
        operation.output = ListUsersResult
        operation.errors << AccessDeniedException
        operation.errors << DirectoryUnavailableException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/Users/ListUsers", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListUsers.new
      end)
      service.add_operation(:remove_group_member, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservicedata#RemoveGroupMember"
        operation.name = "RemoveGroupMember"
        operation.input = RemoveGroupMemberRequest
        operation.output = RemoveGroupMemberResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << DirectoryUnavailableException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/GroupMemberships/RemoveGroupMember", "method" => "POST"}}
      end)
      service.add_operation(:search_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservicedata#SearchGroups"
        operation.name = "SearchGroups"
        operation.input = SearchGroupsRequest
        operation.output = SearchGroupsResult
        operation.errors << AccessDeniedException
        operation.errors << DirectoryUnavailableException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/Groups/SearchGroups", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::SearchGroups.new
      end)
      service.add_operation(:search_users, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservicedata#SearchUsers"
        operation.name = "SearchUsers"
        operation.input = SearchUsersRequest
        operation.output = SearchUsersResult
        operation.errors << AccessDeniedException
        operation.errors << DirectoryUnavailableException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/Users/SearchUsers", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::SearchUsers.new
      end)
      service.add_operation(:update_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservicedata#UpdateGroup"
        operation.name = "UpdateGroup"
        operation.input = UpdateGroupRequest
        operation.output = UpdateGroupResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << DirectoryUnavailableException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/Groups/UpdateGroup", "method" => "POST"}}
      end)
      service.add_operation(:update_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservicedata#UpdateUser"
        operation.name = "UpdateUser"
        operation.input = UpdateUserRequest
        operation.output = UpdateUserResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << DirectoryUnavailableException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/Users/UpdateUser", "method" => "POST"}}
      end)
    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(::Smithy::Schema::Shapes::StructureShape) }
        @type_registry = ::Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
