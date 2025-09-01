# frozen_string_literal: true

# This is generated code!

module Aws::DirectoryServiceData
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessDeniedReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directoryservicedata#AccessDeniedReason', name: 'AccessDeniedReason')
    AddGroupMemberRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#AddGroupMemberRequest', name: 'AddGroupMemberRequest')
    AddGroupMemberResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#AddGroupMemberResult', name: 'AddGroupMemberResult')
    AttributeValue = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.directoryservicedata#AttributeValue', name: 'AttributeValue')
    Attributes = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.directoryservicedata#Attributes', name: 'Attributes', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    BooleanAttributeValue = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.directoryservicedata#BooleanAttributeValue', name: 'BooleanAttributeValue', traits: {"smithy.api#sensitive" => {}})
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservicedata#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\x00-\\x7F]+$"})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#CreateGroupRequest', name: 'CreateGroupRequest')
    CreateGroupResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#CreateGroupResult', name: 'CreateGroupResult')
    CreateUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#CreateUserRequest', name: 'CreateUserRequest')
    CreateUserResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#CreateUserResult', name: 'CreateUserResult')
    DeleteGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#DeleteGroupRequest', name: 'DeleteGroupRequest')
    DeleteGroupResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#DeleteGroupResult', name: 'DeleteGroupResult')
    DeleteUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#DeleteUserRequest', name: 'DeleteUserRequest')
    DeleteUserResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#DeleteUserResult', name: 'DeleteUserResult')
    DescribeGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#DescribeGroupRequest', name: 'DescribeGroupRequest')
    DescribeGroupResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#DescribeGroupResult', name: 'DescribeGroupResult')
    DescribeUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#DescribeUserRequest', name: 'DescribeUserRequest')
    DescribeUserResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#DescribeUserResult', name: 'DescribeUserResult')
    DirectoryId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservicedata#DirectoryId', name: 'DirectoryId', traits: {"smithy.api#pattern" => "^d-[0-9a-f]{10}$"})
    DirectoryUnavailableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#DirectoryUnavailableException', name: 'DirectoryUnavailableException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400, "smithy.api#retryable" => {}})
    DirectoryUnavailableReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directoryservicedata#DirectoryUnavailableReason', name: 'DirectoryUnavailableReason')
    DisableUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#DisableUserRequest', name: 'DisableUserRequest')
    DisableUserResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#DisableUserResult', name: 'DisableUserResult')
    DistinguishedName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservicedata#DistinguishedName', name: 'DistinguishedName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#sensitive" => {}})
    EmailAddress = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservicedata#EmailAddress', name: 'EmailAddress', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#sensitive" => {}})
    ExceptionMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservicedata#ExceptionMessage', name: 'ExceptionMessage')
    GivenName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservicedata#GivenName', name: 'GivenName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#sensitive" => {}})
    Group = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#Group', name: 'Group')
    GroupList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservicedata#GroupList', name: 'GroupList')
    GroupName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservicedata#GroupName', name: 'GroupName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[^:;|=+\"*?<>/\\\\,\\[\\]@]+$"})
    GroupScope = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directoryservicedata#GroupScope', name: 'GroupScope')
    GroupSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#GroupSummary', name: 'GroupSummary')
    GroupSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservicedata#GroupSummaryList', name: 'GroupSummaryList')
    GroupType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directoryservicedata#GroupType', name: 'GroupType')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    LdapDisplayName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservicedata#LdapDisplayName', name: 'LdapDisplayName', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[A-Za-z*][A-Za-z-*]*$"})
    LdapDisplayNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservicedata#LdapDisplayNameList', name: 'LdapDisplayNameList', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    ListGroupMembersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#ListGroupMembersRequest', name: 'ListGroupMembersRequest')
    ListGroupMembersResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#ListGroupMembersResult', name: 'ListGroupMembersResult')
    ListGroupsForMemberRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#ListGroupsForMemberRequest', name: 'ListGroupsForMemberRequest')
    ListGroupsForMemberResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#ListGroupsForMemberResult', name: 'ListGroupsForMemberResult')
    ListGroupsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#ListGroupsRequest', name: 'ListGroupsRequest')
    ListGroupsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#ListGroupsResult', name: 'ListGroupsResult')
    ListUsersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#ListUsersRequest', name: 'ListUsersRequest')
    ListUsersResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#ListUsersResult', name: 'ListUsersResult')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.directoryservicedata#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 250}})
    Member = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#Member', name: 'Member')
    MemberList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservicedata#MemberList', name: 'MemberList')
    MemberName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservicedata#MemberName', name: 'MemberName', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[^:;|=+\"*?<>/\\\\,\\[\\]@]+$"})
    MemberType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directoryservicedata#MemberType', name: 'MemberType')
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservicedata#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 6144}, "smithy.api#sensitive" => {}})
    NumberAttributeValue = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.directoryservicedata#NumberAttributeValue', name: 'NumberAttributeValue', traits: {"smithy.api#sensitive" => {}})
    Realm = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservicedata#Realm', name: 'Realm', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^([a-zA-Z0-9]+[\\\\.-])+([a-zA-Z0-9])+[.]?$"})
    RemoveGroupMemberRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#RemoveGroupMemberRequest', name: 'RemoveGroupMemberRequest')
    RemoveGroupMemberResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#RemoveGroupMemberResult', name: 'RemoveGroupMemberResult')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservicedata#SID', name: 'SID', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    SearchGroupsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#SearchGroupsRequest', name: 'SearchGroupsRequest')
    SearchGroupsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#SearchGroupsResult', name: 'SearchGroupsResult')
    SearchString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservicedata#SearchString', name: 'SearchString', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#sensitive" => {}})
    SearchUsersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#SearchUsersRequest', name: 'SearchUsersRequest')
    SearchUsersResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#SearchUsersResult', name: 'SearchUsersResult')
    StringAttributeValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservicedata#StringAttributeValue', name: 'StringAttributeValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#sensitive" => {}})
    StringSetAttributeValue = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservicedata#StringSetAttributeValue', name: 'StringSetAttributeValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 25}, "smithy.api#sensitive" => {}})
    Surname = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservicedata#Surname', name: 'Surname', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#sensitive" => {}})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    UpdateGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#UpdateGroupRequest', name: 'UpdateGroupRequest')
    UpdateGroupResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#UpdateGroupResult', name: 'UpdateGroupResult')
    UpdateType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directoryservicedata#UpdateType', name: 'UpdateType')
    UpdateUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#UpdateUserRequest', name: 'UpdateUserRequest')
    UpdateUserResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#UpdateUserResult', name: 'UpdateUserResult')
    User = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#User', name: 'User')
    UserList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservicedata#UserList', name: 'UserList')
    UserName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservicedata#UserName', name: 'UserName', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^[\\w\\-.]+$"})
    UserPrincipalName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.directoryservicedata#UserPrincipalName', name: 'UserPrincipalName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#sensitive" => {}})
    UserSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#UserSummary', name: 'UserSummary')
    UserSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.directoryservicedata#UserSummaryList', name: 'UserSummaryList')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.directoryservicedata#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.directoryservicedata#ValidationExceptionReason', name: 'ValidationExceptionReason')

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    AccessDeniedException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedReason, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p> Reason the request was unauthorized. </p>"}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessDeniedReason.add_member(:iam_auth, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM_AUTH', traits: {"smithy.api#enumValue" => "IAM_AUTH"}))
    AccessDeniedReason.add_member(:directory_auth, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIRECTORY_AUTH', traits: {"smithy.api#enumValue" => "DIRECTORY_AUTH"}))
    AccessDeniedReason.add_member(:data_disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATA_DISABLED', traits: {"smithy.api#enumValue" => "DATA_DISABLED"}))
    AddGroupMemberRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p> The identifier (ID) of the directory that's associated with the group. </p>", "smithy.api#httpQuery" => "DirectoryId", "smithy.api#required" => {}}))
    AddGroupMemberRequest.add_member(:group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'GroupName', traits: {"smithy.api#documentation" => "<p> The name of the group. </p>", "smithy.api#required" => {}}))
    AddGroupMemberRequest.add_member(:member_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MemberName, location_name: 'MemberName', traits: {"smithy.api#documentation" => "<p> The <code>SAMAccountName</code> of the user, group, or computer to add as a group member.\n    </p>", "smithy.api#required" => {}}))
    AddGroupMemberRequest.add_member(:member_realm, Smithy::Schema::Shapes::ShapeRef.new(shape: Realm, location_name: 'MemberRealm', traits: {"smithy.api#documentation" => "<p> The domain name that's associated with the group member. This parameter is required only\n      when adding a member outside of your Managed Microsoft AD domain to a group inside of your\n      Managed Microsoft AD domain. This parameter defaults to the Managed Microsoft AD domain. </p>\n         <note>\n            <p> This parameter is case insensitive. </p>\n         </note>"}))
    AddGroupMemberRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p> A unique and case-sensitive identifier that you provide to make sure the idempotency of\n      the request, so multiple identical calls have the same effect as one single call. </p>\n         <p> A client token is valid for 8 hours after the first request that uses it completes. After\n      8 hours, any request with the same client token is treated as a new request. If the request\n      succeeds, any future uses of that token will be idempotent for another 8 hours. </p>\n         <p> If you submit a request with the same client token but change one of the other parameters\n      within the 8-hour idempotency window, Directory Service Data returns an <code>ConflictException</code>. </p>\n         <note>\n            <p> This parameter is optional when using the CLI or SDK. </p>\n         </note>", "smithy.api#idempotencyToken" => {}}))
    AddGroupMemberRequest.type = Types::AddGroupMemberRequest
    AddGroupMemberResult.type = Types::AddGroupMemberResult
    AttributeValue.add_member(:s, Types::AttributeValue::S, Smithy::Schema::Shapes::ShapeRef.new(shape: StringAttributeValue, location_name: 'S', traits: {"smithy.api#documentation" => "<p> Indicates that the attribute type value is a string. For example: </p>\n         <p>\n            <code>\"S\": \"S Group\"</code>\n         </p>"}))
    AttributeValue.add_member(:n, Types::AttributeValue::N, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberAttributeValue, location_name: 'N', traits: {"smithy.api#documentation" => "<p> Indicates that the attribute type value is a number. For example: </p>\n         <p>\n            <code>\"N\": \"16\"</code>\n         </p>"}))
    AttributeValue.add_member(:bool, Types::AttributeValue::Bool, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanAttributeValue, location_name: 'BOOL', traits: {"smithy.api#documentation" => "<p> Indicates that the attribute type value is a boolean. For example: </p>\n         <p>\n            <code>\"BOOL\": true</code>\n         </p>"}))
    AttributeValue.add_member(:ss, Types::AttributeValue::Ss, Smithy::Schema::Shapes::ShapeRef.new(shape: StringSetAttributeValue, location_name: 'SS', traits: {"smithy.api#documentation" => "<p> Indicates that the attribute type value is a string set. For example: </p>\n         <p>\n            <code>\"SS\": [\"sample_service_class/host.sample.com:1234/sample_service_name_1\",\n        \"sample_service_class/host.sample.com:1234/sample_service_name_2\"]</code>\n         </p>"}))
    AttributeValue.add_member(:unknown, Types::AttributeValue::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    AttributeValue.type = Types::AttributeValue
    Attributes.key = Smithy::Schema::Shapes::ShapeRef.new(shape: LdapDisplayName)
    Attributes.value = Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValue)
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    ConflictException.type = Types::ConflictException
    CreateGroupRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p> The identifier (ID) of the directory that's associated with the group. </p>", "smithy.api#httpQuery" => "DirectoryId", "smithy.api#required" => {}}))
    CreateGroupRequest.add_member(:sam_account_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'SAMAccountName', traits: {"smithy.api#documentation" => "<p> The name of the group. </p>", "smithy.api#required" => {}}))
    CreateGroupRequest.add_member(:group_type, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupType, location_name: 'GroupType', traits: {"smithy.api#documentation" => "<p> The AD group type. For details, see <a href=\"https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#how-active-directory-security-groups-work\">Active Directory security group type</a>.</p>"}))
    CreateGroupRequest.add_member(:group_scope, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupScope, location_name: 'GroupScope', traits: {"smithy.api#documentation" => "<p> The scope of the AD group. For details, see <a href=\"https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#group-scope\">Active Directory security group scope</a>. </p>"}))
    CreateGroupRequest.add_member(:other_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: Attributes, location_name: 'OtherAttributes', traits: {"smithy.api#documentation" => "<p> An expression that defines one or more attributes with the data type and value of each\n      attribute. </p>"}))
    CreateGroupRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p> A unique and case-sensitive identifier that you provide to make sure the idempotency of\n      the request, so multiple identical calls have the same effect as one single call. </p>\n         <p> A client token is valid for 8 hours after the first request that uses it completes. After\n      8 hours, any request with the same client token is treated as a new request. If the request\n      succeeds, any future uses of that token will be idempotent for another 8 hours. </p>\n         <p> If you submit a request with the same client token but change one of the other parameters\n      within the 8-hour idempotency window, Directory Service Data returns an <code>ConflictException</code>. </p>\n         <note>\n            <p> This parameter is optional when using the CLI or SDK. </p>\n         </note>", "smithy.api#idempotencyToken" => {}}))
    CreateGroupRequest.type = Types::CreateGroupRequest
    CreateGroupResult.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p> The identifier (ID) of the directory that's associated with the group. </p>"}))
    CreateGroupResult.add_member(:sam_account_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'SAMAccountName', traits: {"smithy.api#documentation" => "<p> The name of the group. </p>"}))
    CreateGroupResult.add_member(:sid, Smithy::Schema::Shapes::ShapeRef.new(shape: SID, location_name: 'SID', traits: {"smithy.api#documentation" => "<p> The unique security identifier (SID) of the group. </p>"}))
    CreateGroupResult.type = Types::CreateGroupResult
    CreateUserRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p> The identifier (ID) of the directory that’s associated with the user. </p>", "smithy.api#httpQuery" => "DirectoryId", "smithy.api#required" => {}}))
    CreateUserRequest.add_member(:sam_account_name, Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: 'SAMAccountName', traits: {"smithy.api#documentation" => "<p> The name of the user. </p>", "smithy.api#required" => {}}))
    CreateUserRequest.add_member(:email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'EmailAddress', traits: {"smithy.api#documentation" => "<p> The email address of the user. </p>"}))
    CreateUserRequest.add_member(:given_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GivenName, location_name: 'GivenName', traits: {"smithy.api#documentation" => "<p> The first name of the user. </p>"}))
    CreateUserRequest.add_member(:surname, Smithy::Schema::Shapes::ShapeRef.new(shape: Surname, location_name: 'Surname', traits: {"smithy.api#documentation" => "<p> The last name of the user. </p>"}))
    CreateUserRequest.add_member(:other_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: Attributes, location_name: 'OtherAttributes', traits: {"smithy.api#documentation" => "<p> An expression that defines one or more attribute names with the data type and value of\n      each attribute. A key is an attribute name, and the value is a list of maps. For a list of\n      supported attributes, see <a href=\"https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data_attributes.html\">Directory Service Data Attributes</a>. </p>\n         <note>\n            <p> Attribute names are case insensitive. </p>\n         </note>"}))
    CreateUserRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p> A unique and case-sensitive identifier that you provide to make sure the idempotency of\n      the request, so multiple identical calls have the same effect as one single call. </p>\n         <p> A client token is valid for 8 hours after the first request that uses it completes. After\n      8 hours, any request with the same client token is treated as a new request. If the request\n      succeeds, any future uses of that token will be idempotent for another 8 hours. </p>\n         <p> If you submit a request with the same client token but change one of the other parameters\n      within the 8-hour idempotency window, Directory Service Data returns an <code>ConflictException</code>. </p>\n         <note>\n            <p> This parameter is optional when using the CLI or SDK. </p>\n         </note>", "smithy.api#idempotencyToken" => {}}))
    CreateUserRequest.type = Types::CreateUserRequest
    CreateUserResult.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p> The identifier (ID) of the directory where the address block is added. </p>"}))
    CreateUserResult.add_member(:sid, Smithy::Schema::Shapes::ShapeRef.new(shape: SID, location_name: 'SID', traits: {"smithy.api#documentation" => "<p> The unique security identifier (SID) of the user. </p>"}))
    CreateUserResult.add_member(:sam_account_name, Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: 'SAMAccountName', traits: {"smithy.api#documentation" => "<p> The name of the user. </p>"}))
    CreateUserResult.type = Types::CreateUserResult
    DeleteGroupRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p> The identifier (ID) of the directory that's associated with the group. </p>", "smithy.api#httpQuery" => "DirectoryId", "smithy.api#required" => {}}))
    DeleteGroupRequest.add_member(:sam_account_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'SAMAccountName', traits: {"smithy.api#documentation" => "<p> The name of the group. </p>", "smithy.api#required" => {}}))
    DeleteGroupRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p> A unique and case-sensitive identifier that you provide to make sure the idempotency of\n      the request, so multiple identical calls have the same effect as one single call. </p>\n         <p> A client token is valid for 8 hours after the first request that uses it completes. After\n      8 hours, any request with the same client token is treated as a new request. If the request\n      succeeds, any future uses of that token will be idempotent for another 8 hours. </p>\n         <p> If you submit a request with the same client token but change one of the other parameters\n      within the 8-hour idempotency window, Directory Service Data returns an <code>ConflictException</code>. </p>\n         <note>\n            <p> This parameter is optional when using the CLI or SDK. </p>\n         </note>", "smithy.api#idempotencyToken" => {}}))
    DeleteGroupRequest.type = Types::DeleteGroupRequest
    DeleteGroupResult.type = Types::DeleteGroupResult
    DeleteUserRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p> The identifier (ID) of the directory that's associated with the user. </p>", "smithy.api#httpQuery" => "DirectoryId", "smithy.api#required" => {}}))
    DeleteUserRequest.add_member(:sam_account_name, Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: 'SAMAccountName', traits: {"smithy.api#documentation" => "<p> The name of the user. </p>", "smithy.api#required" => {}}))
    DeleteUserRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p> A unique and case-sensitive identifier that you provide to make sure the idempotency of\n      the request, so multiple identical calls have the same effect as one single call. </p>\n         <p> A client token is valid for 8 hours after the first request that uses it completes. After\n      8 hours, any request with the same client token is treated as a new request. If the request\n      succeeds, any future uses of that token will be idempotent for another 8 hours. </p>\n         <p> If you submit a request with the same client token but change one of the other parameters\n      within the 8-hour idempotency window, Directory Service Data returns an <code>ConflictException</code>. </p>\n         <note>\n            <p> This parameter is optional when using the CLI or SDK. </p>\n         </note>", "smithy.api#idempotencyToken" => {}}))
    DeleteUserRequest.type = Types::DeleteUserRequest
    DeleteUserResult.type = Types::DeleteUserResult
    DescribeGroupRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>The Identifier (ID) of the directory associated with the group.</p>", "smithy.api#httpQuery" => "DirectoryId", "smithy.api#required" => {}}))
    DescribeGroupRequest.add_member(:realm, Smithy::Schema::Shapes::ShapeRef.new(shape: Realm, location_name: 'Realm', traits: {"smithy.api#documentation" => "<p> The domain name that's associated with the group. </p>\n         <note>\n            <p> This parameter is optional, so you can return groups outside of your Managed Microsoft AD\n        domain. When no value is defined, only your Managed Microsoft AD groups are returned. </p>\n            <p> This value is case insensitive. </p>\n         </note>"}))
    DescribeGroupRequest.add_member(:sam_account_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'SAMAccountName', traits: {"smithy.api#documentation" => "<p> The name of the group. </p>", "smithy.api#required" => {}}))
    DescribeGroupRequest.add_member(:other_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: LdapDisplayNameList, location_name: 'OtherAttributes', traits: {"smithy.api#documentation" => "<p> One or more attributes to be returned for the group. For a list of supported attributes,\n      see <a href=\"https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data_attributes.html\">Directory Service Data Attributes</a>.\n    </p>"}))
    DescribeGroupRequest.type = Types::DescribeGroupRequest
    DescribeGroupResult.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p> The identifier (ID) of the directory that's associated with the group. </p>"}))
    DescribeGroupResult.add_member(:realm, Smithy::Schema::Shapes::ShapeRef.new(shape: Realm, location_name: 'Realm', traits: {"smithy.api#documentation" => "<p> The domain name that's associated with the group. </p>"}))
    DescribeGroupResult.add_member(:sid, Smithy::Schema::Shapes::ShapeRef.new(shape: SID, location_name: 'SID', traits: {"smithy.api#documentation" => "<p> The unique security identifier (SID) of the group. </p>"}))
    DescribeGroupResult.add_member(:sam_account_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'SAMAccountName', traits: {"smithy.api#documentation" => "<p> The name of the group. </p>"}))
    DescribeGroupResult.add_member(:distinguished_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DistinguishedName, location_name: 'DistinguishedName', traits: {"smithy.api#documentation" => "<p> The <a href=\"https://learn.microsoft.com/en-us/windows/win32/ad/object-names-and-identities#distinguished-name\">distinguished name</a> of the object. </p>"}))
    DescribeGroupResult.add_member(:group_type, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupType, location_name: 'GroupType', traits: {"smithy.api#documentation" => "<p> The AD group type. For details, see <a href=\"https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#how-active-directory-security-groups-work\">Active Directory security group type</a>. </p>"}))
    DescribeGroupResult.add_member(:group_scope, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupScope, location_name: 'GroupScope', traits: {"smithy.api#documentation" => "<p> The scope of the AD group. For details, see <a href=\"https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#group-scope\">Active Directory security groups</a>. </p>"}))
    DescribeGroupResult.add_member(:other_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: Attributes, location_name: 'OtherAttributes', traits: {"smithy.api#documentation" => "<p> The attribute values that are returned for the attribute names that are included in the\n      request. </p>"}))
    DescribeGroupResult.type = Types::DescribeGroupResult
    DescribeUserRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p> The identifier (ID) of the directory that's associated with the user. </p>", "smithy.api#httpQuery" => "DirectoryId", "smithy.api#required" => {}}))
    DescribeUserRequest.add_member(:sam_account_name, Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: 'SAMAccountName', traits: {"smithy.api#documentation" => "<p> The name of the user. </p>", "smithy.api#required" => {}}))
    DescribeUserRequest.add_member(:other_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: LdapDisplayNameList, location_name: 'OtherAttributes', traits: {"smithy.api#documentation" => "<p> One or more attribute names to be returned for the user. A key is an attribute name, and\n      the value is a list of maps. For a list of supported attributes, see <a href=\"https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data_attributes.html\">Directory Service Data Attributes</a>. </p>"}))
    DescribeUserRequest.add_member(:realm, Smithy::Schema::Shapes::ShapeRef.new(shape: Realm, location_name: 'Realm', traits: {"smithy.api#documentation" => "<p> The domain name that's associated with the user. </p>\n         <note>\n            <p> This parameter is optional, so you can return users outside your Managed Microsoft AD domain.\n        When no value is defined, only your Managed Microsoft AD users are returned. </p>\n            <p> This value is case insensitive. </p>\n         </note>"}))
    DescribeUserRequest.type = Types::DescribeUserRequest
    DescribeUserResult.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p> The identifier (ID) of the directory that's associated with the user. </p>"}))
    DescribeUserResult.add_member(:realm, Smithy::Schema::Shapes::ShapeRef.new(shape: Realm, location_name: 'Realm', traits: {"smithy.api#documentation" => "<p> The domain name that's associated with the user. </p>"}))
    DescribeUserResult.add_member(:sid, Smithy::Schema::Shapes::ShapeRef.new(shape: SID, location_name: 'SID', traits: {"smithy.api#documentation" => "<p> The unique security identifier (SID) of the user. </p>"}))
    DescribeUserResult.add_member(:sam_account_name, Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: 'SAMAccountName', traits: {"smithy.api#documentation" => "<p> The name of the user. </p>"}))
    DescribeUserResult.add_member(:distinguished_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DistinguishedName, location_name: 'DistinguishedName', traits: {"smithy.api#documentation" => "<p> The <a href=\"https://learn.microsoft.com/en-us/windows/win32/ad/object-names-and-identities#distinguished-name\">distinguished name</a> of the object. </p>"}))
    DescribeUserResult.add_member(:user_principal_name, Smithy::Schema::Shapes::ShapeRef.new(shape: UserPrincipalName, location_name: 'UserPrincipalName', traits: {"smithy.api#documentation" => "<p> The UPN that is an Internet-style login name for a user and is based on the Internet\n      standard <a href=\"https://datatracker.ietf.org/doc/html/rfc822\">RFC 822</a>. The UPN is shorter\n      than the distinguished name and easier to remember. </p>"}))
    DescribeUserResult.add_member(:email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'EmailAddress', traits: {"smithy.api#documentation" => "<p> The email address of the user. </p>"}))
    DescribeUserResult.add_member(:given_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GivenName, location_name: 'GivenName', traits: {"smithy.api#documentation" => "<p> The first name of the user. </p>"}))
    DescribeUserResult.add_member(:surname, Smithy::Schema::Shapes::ShapeRef.new(shape: Surname, location_name: 'Surname', traits: {"smithy.api#documentation" => "<p> The last name of the user. </p>"}))
    DescribeUserResult.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p> Indicates whether the user account is active. </p>"}))
    DescribeUserResult.add_member(:other_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: Attributes, location_name: 'OtherAttributes', traits: {"smithy.api#documentation" => "<p> The attribute values that are returned for the attribute names that are included in the\n      request. </p>\n         <note>\n            <p> Attribute names are case insensitive. </p>\n         </note>"}))
    DescribeUserResult.type = Types::DescribeUserResult
    DirectoryUnavailableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    DirectoryUnavailableException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableReason, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p> Reason the request failed for the specified directory. </p>"}))
    DirectoryUnavailableException.type = Types::DirectoryUnavailableException
    DirectoryUnavailableReason.add_member(:invalid_directory_state, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_DIRECTORY_STATE', traits: {"smithy.api#enumValue" => "INVALID_DIRECTORY_STATE"}))
    DirectoryUnavailableReason.add_member(:directory_timeout, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIRECTORY_TIMEOUT', traits: {"smithy.api#enumValue" => "DIRECTORY_TIMEOUT"}))
    DirectoryUnavailableReason.add_member(:directory_resources_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIRECTORY_RESOURCES_EXCEEDED', traits: {"smithy.api#enumValue" => "DIRECTORY_RESOURCES_EXCEEDED"}))
    DirectoryUnavailableReason.add_member(:no_disk_space, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_DISK_SPACE', traits: {"smithy.api#enumValue" => "NO_DISK_SPACE"}))
    DirectoryUnavailableReason.add_member(:trust_auth_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRUST_AUTH_FAILURE', traits: {"smithy.api#enumValue" => "TRUST_AUTH_FAILURE"}))
    DisableUserRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p> The identifier (ID) of the directory that's associated with the user. </p>", "smithy.api#httpQuery" => "DirectoryId", "smithy.api#required" => {}}))
    DisableUserRequest.add_member(:sam_account_name, Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: 'SAMAccountName', traits: {"smithy.api#documentation" => "<p> The name of the user. </p>", "smithy.api#required" => {}}))
    DisableUserRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p> A unique and case-sensitive identifier that you provide to make sure the idempotency of\n      the request, so multiple identical calls have the same effect as one single call. </p>\n         <p> A client token is valid for 8 hours after the first request that uses it completes. After\n      8 hours, any request with the same client token is treated as a new request. If the request\n      succeeds, any future uses of that token will be idempotent for another 8 hours. </p>\n         <p> If you submit a request with the same client token but change one of the other parameters\n      within the 8-hour idempotency window, Directory Service Data returns an <code>ConflictException</code>. </p>\n         <note>\n            <p> This parameter is optional when using the CLI or SDK. </p>\n         </note>", "smithy.api#idempotencyToken" => {}}))
    DisableUserRequest.type = Types::DisableUserRequest
    DisableUserResult.type = Types::DisableUserResult
    Group.add_member(:sid, Smithy::Schema::Shapes::ShapeRef.new(shape: SID, location_name: 'SID', traits: {"smithy.api#documentation" => "<p> The unique security identifier (SID) of the group. </p>"}))
    Group.add_member(:sam_account_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'SAMAccountName', traits: {"smithy.api#documentation" => "<p> The name of the group. </p>", "smithy.api#required" => {}}))
    Group.add_member(:distinguished_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DistinguishedName, location_name: 'DistinguishedName', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://learn.microsoft.com/en-us/windows/win32/ad/object-names-and-identities#distinguished-name\">distinguished name</a> of the object. </p>"}))
    Group.add_member(:group_type, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupType, location_name: 'GroupType', traits: {"smithy.api#documentation" => "<p> The AD group type. For details, see <a href=\"https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#how-active-directory-security-groups-work\">Active Directory security group type</a>. </p>"}))
    Group.add_member(:group_scope, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupScope, location_name: 'GroupScope', traits: {"smithy.api#documentation" => "<p> The scope of the AD group. For details, see <a href=\"https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#group-scope\">Active Directory security groups</a>\n         </p>"}))
    Group.add_member(:other_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: Attributes, location_name: 'OtherAttributes', traits: {"smithy.api#documentation" => "<p> An expression of one or more attributes, data types, and the values of a group. </p>"}))
    Group.type = Types::Group
    GroupList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Group)
    GroupScope.add_member(:domain_local, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOMAIN_LOCAL', traits: {"smithy.api#enumValue" => "DomainLocal"}))
    GroupScope.add_member(:global, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GLOBAL', traits: {"smithy.api#enumValue" => "Global"}))
    GroupScope.add_member(:universal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNIVERSAL', traits: {"smithy.api#enumValue" => "Universal"}))
    GroupScope.add_member(:builtin_local, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BUILTIN_LOCAL', traits: {"smithy.api#enumValue" => "BuiltinLocal"}))
    GroupSummary.add_member(:sid, Smithy::Schema::Shapes::ShapeRef.new(shape: SID, location_name: 'SID', traits: {"smithy.api#documentation" => "<p>The unique security identifier (SID) of the group.</p>", "smithy.api#required" => {}}))
    GroupSummary.add_member(:sam_account_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'SAMAccountName', traits: {"smithy.api#documentation" => "<p>The name of the group.</p>", "smithy.api#required" => {}}))
    GroupSummary.add_member(:group_type, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupType, location_name: 'GroupType', traits: {"smithy.api#documentation" => "<p>The AD group type. For details, see <a href=\"https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#how-active-directory-security-groups-work\">Active Directory security group type</a>.</p>", "smithy.api#required" => {}}))
    GroupSummary.add_member(:group_scope, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupScope, location_name: 'GroupScope', traits: {"smithy.api#documentation" => "<p>The scope of the AD group. For details, see <a href=\"https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#group-scope\">Active Directory security groups</a>.</p>", "smithy.api#required" => {}}))
    GroupSummary.type = Types::GroupSummary
    GroupSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GroupSummary)
    GroupType.add_member(:distribution, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISTRIBUTION', traits: {"smithy.api#enumValue" => "Distribution"}))
    GroupType.add_member(:security, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SECURITY', traits: {"smithy.api#enumValue" => "Security"}))
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    InternalServerException.type = Types::InternalServerException
    LdapDisplayNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LdapDisplayName)
    ListGroupMembersRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p> The identifier (ID) of the directory that's associated with the group. </p>", "smithy.api#httpQuery" => "DirectoryId", "smithy.api#required" => {}}))
    ListGroupMembersRequest.add_member(:realm, Smithy::Schema::Shapes::ShapeRef.new(shape: Realm, location_name: 'Realm', traits: {"smithy.api#documentation" => "<p> The domain name that's associated with the group. </p>\n         <note>\n            <p> This parameter is optional, so you can return members from a group outside of your\n        Managed Microsoft AD domain. When no value is defined, only members of your Managed Microsoft AD groups are\n        returned. </p>\n            <p> This value is case insensitive. </p>\n         </note>"}))
    ListGroupMembersRequest.add_member(:member_realm, Smithy::Schema::Shapes::ShapeRef.new(shape: Realm, location_name: 'MemberRealm', traits: {"smithy.api#documentation" => "<p> The domain name that's associated with the group member. This parameter defaults to the\n      Managed Microsoft AD domain. </p>\n         <note>\n            <p> This parameter is optional and case insensitive. </p>\n         </note>"}))
    ListGroupMembersRequest.add_member(:sam_account_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'SAMAccountName', traits: {"smithy.api#documentation" => "<p> The name of the group. </p>", "smithy.api#required" => {}}))
    ListGroupMembersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An encoded paging token for paginated calls that can be passed back to retrieve the next\n      page.</p>"}))
    ListGroupMembersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p> The maximum number of results to be returned per request. </p>"}))
    ListGroupMembersRequest.type = Types::ListGroupMembersRequest
    ListGroupMembersResult.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p>Identifier (ID) of the directory associated with the group.</p>"}))
    ListGroupMembersResult.add_member(:realm, Smithy::Schema::Shapes::ShapeRef.new(shape: Realm, location_name: 'Realm', traits: {"smithy.api#documentation" => "<p> The domain name that's associated with the group. </p>"}))
    ListGroupMembersResult.add_member(:member_realm, Smithy::Schema::Shapes::ShapeRef.new(shape: Realm, location_name: 'MemberRealm', traits: {"smithy.api#documentation" => "<p> The domain name that's associated with the member. </p>"}))
    ListGroupMembersResult.add_member(:members, Smithy::Schema::Shapes::ShapeRef.new(shape: MemberList, location_name: 'Members', traits: {"smithy.api#documentation" => "<p> The member information that the request returns. </p>"}))
    ListGroupMembersResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p> An encoded paging token for paginated calls that can be passed back to retrieve the next\n      page. </p>"}))
    ListGroupMembersResult.type = Types::ListGroupMembersResult
    ListGroupsForMemberRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p> The identifier (ID) of the directory that's associated with the member. </p>", "smithy.api#httpQuery" => "DirectoryId", "smithy.api#required" => {}}))
    ListGroupsForMemberRequest.add_member(:realm, Smithy::Schema::Shapes::ShapeRef.new(shape: Realm, location_name: 'Realm', traits: {"smithy.api#documentation" => "<p> The domain name that's associated with the group. </p>\n         <note>\n            <p> This parameter is optional, so you can return groups outside of your Managed Microsoft AD\n        domain. When no value is defined, only your Managed Microsoft AD groups are returned. </p>\n            <p> This value is case insensitive and defaults to your Managed Microsoft AD domain. </p>\n         </note>"}))
    ListGroupsForMemberRequest.add_member(:member_realm, Smithy::Schema::Shapes::ShapeRef.new(shape: Realm, location_name: 'MemberRealm', traits: {"smithy.api#documentation" => "<p> The domain name that's associated with the group member. </p>\n         <note>\n            <p> This parameter is optional, so you can limit your results to the group members in a\n        specific domain. </p>\n            <p> This parameter is case insensitive and defaults to <code>Realm</code>\n            </p>\n         </note>"}))
    ListGroupsForMemberRequest.add_member(:sam_account_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MemberName, location_name: 'SAMAccountName', traits: {"smithy.api#documentation" => "<p> The <code>SAMAccountName</code> of the user, group, or computer that's a member of the\n      group. </p>", "smithy.api#required" => {}}))
    ListGroupsForMemberRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p> An encoded paging token for paginated calls that can be passed back to retrieve the next\n      page. </p>"}))
    ListGroupsForMemberRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p> The maximum number of results to be returned per request. </p>"}))
    ListGroupsForMemberRequest.type = Types::ListGroupsForMemberRequest
    ListGroupsForMemberResult.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p> The identifier (ID) of the directory that's associated with the member. </p>"}))
    ListGroupsForMemberResult.add_member(:realm, Smithy::Schema::Shapes::ShapeRef.new(shape: Realm, location_name: 'Realm', traits: {"smithy.api#documentation" => "<p> The domain that's associated with the group. </p>"}))
    ListGroupsForMemberResult.add_member(:member_realm, Smithy::Schema::Shapes::ShapeRef.new(shape: Realm, location_name: 'MemberRealm', traits: {"smithy.api#documentation" => "<p> The domain that's associated with the member. </p>"}))
    ListGroupsForMemberResult.add_member(:groups, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupSummaryList, location_name: 'Groups', traits: {"smithy.api#documentation" => "<p> The group information that the request returns. </p>"}))
    ListGroupsForMemberResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p> An encoded paging token for paginated calls that can be passed back to retrieve the next\n      page. </p>"}))
    ListGroupsForMemberResult.type = Types::ListGroupsForMemberResult
    ListGroupsRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p> The identifier (ID) of the directory that's associated with the group. </p>", "smithy.api#httpQuery" => "DirectoryId", "smithy.api#required" => {}}))
    ListGroupsRequest.add_member(:realm, Smithy::Schema::Shapes::ShapeRef.new(shape: Realm, location_name: 'Realm', traits: {"smithy.api#documentation" => "<p> The domain name associated with the directory. </p>\n         <note>\n            <p> This parameter is optional, so you can return groups outside of your Managed Microsoft AD\n        domain. When no value is defined, only your Managed Microsoft AD groups are returned. </p>\n            <p> This value is case insensitive. </p>\n         </note>"}))
    ListGroupsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p> An encoded paging token for paginated calls that can be passed back to retrieve the next\n      page. </p>"}))
    ListGroupsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p> The maximum number of results to be returned per request. </p>"}))
    ListGroupsRequest.type = Types::ListGroupsRequest
    ListGroupsResult.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p> The identifier (ID) of the directory that's associated with the group. </p>"}))
    ListGroupsResult.add_member(:realm, Smithy::Schema::Shapes::ShapeRef.new(shape: Realm, location_name: 'Realm', traits: {"smithy.api#documentation" => "<p>The domain name associated with the group.</p>"}))
    ListGroupsResult.add_member(:groups, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupSummaryList, location_name: 'Groups', traits: {"smithy.api#documentation" => "<p> The group information that the request returns. </p>"}))
    ListGroupsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p> An encoded paging token for paginated calls that can be passed back to retrieve the next\n      page. </p>"}))
    ListGroupsResult.type = Types::ListGroupsResult
    ListUsersRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p> The identifier (ID) of the directory that's associated with the user. </p>", "smithy.api#httpQuery" => "DirectoryId", "smithy.api#required" => {}}))
    ListUsersRequest.add_member(:realm, Smithy::Schema::Shapes::ShapeRef.new(shape: Realm, location_name: 'Realm', traits: {"smithy.api#documentation" => "<p> The domain name that's associated with the user. </p>\n         <note>\n            <p> This parameter is optional, so you can return users outside of your Managed Microsoft AD\n        domain. When no value is defined, only your Managed Microsoft AD users are returned. </p>\n            <p> This value is case insensitive. </p>\n         </note>"}))
    ListUsersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p> An encoded paging token for paginated calls that can be passed back to retrieve the next\n      page. </p>"}))
    ListUsersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p> The maximum number of results to be returned per request. </p>"}))
    ListUsersRequest.type = Types::ListUsersRequest
    ListUsersResult.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p> The identifier (ID) of the directory that's associated with the user. </p>"}))
    ListUsersResult.add_member(:realm, Smithy::Schema::Shapes::ShapeRef.new(shape: Realm, location_name: 'Realm', traits: {"smithy.api#documentation" => "<p> The domain that's associated with the user. </p>"}))
    ListUsersResult.add_member(:users, Smithy::Schema::Shapes::ShapeRef.new(shape: UserSummaryList, location_name: 'Users', traits: {"smithy.api#documentation" => "<p> The user information that the request returns. </p>"}))
    ListUsersResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p> An encoded paging token for paginated calls that can be passed back to retrieve the next\n      page. </p>"}))
    ListUsersResult.type = Types::ListUsersResult
    Member.add_member(:sid, Smithy::Schema::Shapes::ShapeRef.new(shape: SID, location_name: 'SID', traits: {"smithy.api#documentation" => "<p> The unique security identifier (SID) of the group member. </p>", "smithy.api#required" => {}}))
    Member.add_member(:sam_account_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MemberName, location_name: 'SAMAccountName', traits: {"smithy.api#documentation" => "<p> The name of the group member. </p>", "smithy.api#required" => {}}))
    Member.add_member(:member_type, Smithy::Schema::Shapes::ShapeRef.new(shape: MemberType, location_name: 'MemberType', traits: {"smithy.api#documentation" => "<p> The AD type of the member object.</p>", "smithy.api#required" => {}}))
    Member.type = Types::Member
    MemberList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Member)
    MemberType.add_member(:user, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER', traits: {"smithy.api#enumValue" => "USER"}))
    MemberType.add_member(:group, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GROUP', traits: {"smithy.api#enumValue" => "GROUP"}))
    MemberType.add_member(:computer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPUTER', traits: {"smithy.api#enumValue" => "COMPUTER"}))
    RemoveGroupMemberRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p> The identifier (ID) of the directory that's associated with the member. </p>", "smithy.api#httpQuery" => "DirectoryId", "smithy.api#required" => {}}))
    RemoveGroupMemberRequest.add_member(:group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'GroupName', traits: {"smithy.api#documentation" => "<p> The name of the group. </p>", "smithy.api#required" => {}}))
    RemoveGroupMemberRequest.add_member(:member_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MemberName, location_name: 'MemberName', traits: {"smithy.api#documentation" => "<p> The <code>SAMAccountName</code> of the user, group, or computer to remove from the group.\n    </p>", "smithy.api#required" => {}}))
    RemoveGroupMemberRequest.add_member(:member_realm, Smithy::Schema::Shapes::ShapeRef.new(shape: Realm, location_name: 'MemberRealm', traits: {"smithy.api#documentation" => "<p> The domain name that's associated with the group member. This parameter defaults to the\n      Managed Microsoft AD domain. </p>\n         <note>\n            <p> This parameter is optional and case insensitive. </p>\n         </note>"}))
    RemoveGroupMemberRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p> A unique and case-sensitive identifier that you provide to make sure the idempotency of\n      the request, so multiple identical calls have the same effect as one single call. </p>\n         <p> A client token is valid for 8 hours after the first request that uses it completes. After\n      8 hours, any request with the same client token is treated as a new request. If the request\n      succeeds, any future uses of that token will be idempotent for another 8 hours. </p>\n         <p> If you submit a request with the same client token but change one of the other parameters\n      within the 8-hour idempotency window, Directory Service Data returns an <code>ConflictException</code>. </p>\n         <note>\n            <p> This parameter is optional when using the CLI or SDK. </p>\n         </note>", "smithy.api#idempotencyToken" => {}}))
    RemoveGroupMemberRequest.type = Types::RemoveGroupMemberRequest
    RemoveGroupMemberResult.type = Types::RemoveGroupMemberResult
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SearchGroupsRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p> The identifier (ID) of the directory that's associated with the group. </p>", "smithy.api#httpQuery" => "DirectoryId", "smithy.api#required" => {}}))
    SearchGroupsRequest.add_member(:search_string, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchString, location_name: 'SearchString', traits: {"smithy.api#documentation" => "<p> The attribute value that you want to search for. </p>\n         <note>\n            <p> Wildcard <code>(*)</code> searches aren't supported. For a list of supported\n        attributes, see <a href=\"https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data_attributes.html\">Directory Service Data\n          Attributes</a>. </p>\n         </note>", "smithy.api#required" => {}}))
    SearchGroupsRequest.add_member(:search_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: LdapDisplayNameList, location_name: 'SearchAttributes', traits: {"smithy.api#documentation" => "<p> One or more data attributes that are used to search for a group. For a list of supported\n      attributes, see <a href=\"https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data_attributes.html\">Directory Service Data Attributes</a>.\n    </p>", "smithy.api#required" => {}}))
    SearchGroupsRequest.add_member(:realm, Smithy::Schema::Shapes::ShapeRef.new(shape: Realm, location_name: 'Realm', traits: {"smithy.api#documentation" => "<p> The domain name that's associated with the group. </p>\n         <note>\n            <p> This parameter is optional, so you can return groups outside of your Managed Microsoft AD\n        domain. When no value is defined, only your Managed Microsoft AD groups are returned. </p>\n            <p> This value is case insensitive. </p>\n         </note>"}))
    SearchGroupsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p> An encoded paging token for paginated calls that can be passed back to retrieve the next\n      page. </p>"}))
    SearchGroupsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p> The maximum number of results to be returned per request. </p>"}))
    SearchGroupsRequest.type = Types::SearchGroupsRequest
    SearchGroupsResult.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p> The identifier (ID) of the directory that's associated with the group. </p>"}))
    SearchGroupsResult.add_member(:realm, Smithy::Schema::Shapes::ShapeRef.new(shape: Realm, location_name: 'Realm', traits: {"smithy.api#documentation" => "<p> The domain that's associated with the group. </p>"}))
    SearchGroupsResult.add_member(:groups, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupList, location_name: 'Groups', traits: {"smithy.api#documentation" => "<p> The group information that the request returns. </p>"}))
    SearchGroupsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p> An encoded paging token for paginated calls that can be passed back to retrieve the next\n      page. </p>"}))
    SearchGroupsResult.type = Types::SearchGroupsResult
    SearchUsersRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p> The identifier (ID) of the directory that's associated with the user. </p>", "smithy.api#httpQuery" => "DirectoryId", "smithy.api#required" => {}}))
    SearchUsersRequest.add_member(:realm, Smithy::Schema::Shapes::ShapeRef.new(shape: Realm, location_name: 'Realm', traits: {"smithy.api#documentation" => "<p> The domain name that's associated with the user. </p>\n         <note>\n            <p> This parameter is optional, so you can return users outside of your Managed Microsoft AD\n        domain. When no value is defined, only your Managed Microsoft AD users are returned. </p>\n            <p> This value is case insensitive. </p>\n         </note>"}))
    SearchUsersRequest.add_member(:search_string, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchString, location_name: 'SearchString', traits: {"smithy.api#documentation" => "<p> The attribute value that you want to search for. </p>\n         <note>\n            <p> Wildcard <code>(*)</code> searches aren't supported. For a list of supported\n        attributes, see <a href=\"https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data_attributes.html\">Directory Service Data\n          Attributes</a>. </p>\n         </note>", "smithy.api#required" => {}}))
    SearchUsersRequest.add_member(:search_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: LdapDisplayNameList, location_name: 'SearchAttributes', traits: {"smithy.api#documentation" => "<p> One or more data attributes that are used to search for a user. For a list of supported\n      attributes, see <a href=\"https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data_attributes.html\">Directory Service Data Attributes</a>.\n    </p>", "smithy.api#required" => {}}))
    SearchUsersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p> An encoded paging token for paginated calls that can be passed back to retrieve the next\n      page. </p>"}))
    SearchUsersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p> The maximum number of results to be returned per request. </p>"}))
    SearchUsersRequest.type = Types::SearchUsersRequest
    SearchUsersResult.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p> The identifier (ID) of the directory where the address block is added. </p>"}))
    SearchUsersResult.add_member(:realm, Smithy::Schema::Shapes::ShapeRef.new(shape: Realm, location_name: 'Realm', traits: {"smithy.api#documentation" => "<p> The domain that's associated with the user. </p>"}))
    SearchUsersResult.add_member(:users, Smithy::Schema::Shapes::ShapeRef.new(shape: UserList, location_name: 'Users', traits: {"smithy.api#documentation" => "<p> The user information that the request returns. </p>"}))
    SearchUsersResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p> An encoded paging token for paginated calls that can be passed back to retrieve the next\n      page. </p>"}))
    SearchUsersResult.type = Types::SearchUsersResult
    StringSetAttributeValue.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StringAttributeValue)
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'RetryAfterSeconds', traits: {"smithy.api#documentation" => "<p> The recommended amount of seconds to retry after a throttling exception. </p>", "smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UpdateGroupRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p> The identifier (ID) of the directory that's associated with the group. </p>", "smithy.api#httpQuery" => "DirectoryId", "smithy.api#required" => {}}))
    UpdateGroupRequest.add_member(:sam_account_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'SAMAccountName', traits: {"smithy.api#documentation" => "<p> The name of the group. </p>", "smithy.api#required" => {}}))
    UpdateGroupRequest.add_member(:group_type, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupType, location_name: 'GroupType', traits: {"smithy.api#documentation" => "<p> The AD group type. For details, see <a href=\"https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#how-active-directory-security-groups-work\">Active Directory security group type</a>. </p>"}))
    UpdateGroupRequest.add_member(:group_scope, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupScope, location_name: 'GroupScope', traits: {"smithy.api#documentation" => "<p> The scope of the AD group. For details, see <a href=\"https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#group-scope\">Active Directory security groups</a>. </p>"}))
    UpdateGroupRequest.add_member(:other_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: Attributes, location_name: 'OtherAttributes', traits: {"smithy.api#documentation" => "<p> An expression that defines one or more attributes with the data type and the value of\n      each attribute. </p>"}))
    UpdateGroupRequest.add_member(:update_type, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateType, location_name: 'UpdateType', traits: {"smithy.api#documentation" => "<p> The type of update to be performed. If no value exists for the attribute, use\n        <code>ADD</code>. Otherwise, use <code>REPLACE</code> to change an attribute value or\n        <code>REMOVE</code> to clear the attribute value. </p>"}))
    UpdateGroupRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p> A unique and case-sensitive identifier that you provide to make sure the idempotency of\n      the request, so multiple identical calls have the same effect as one single call. </p>\n         <p> A client token is valid for 8 hours after the first request that uses it completes. After\n      8 hours, any request with the same client token is treated as a new request. If the request\n      succeeds, any future uses of that token will be idempotent for another 8 hours. </p>\n         <p> If you submit a request with the same client token but change one of the other parameters\n      within the 8-hour idempotency window, Directory Service Data returns an <code>ConflictException</code>. </p>\n         <note>\n            <p> This parameter is optional when using the CLI or SDK. </p>\n         </note>", "smithy.api#idempotencyToken" => {}}))
    UpdateGroupRequest.type = Types::UpdateGroupRequest
    UpdateGroupResult.type = Types::UpdateGroupResult
    UpdateType.add_member(:add, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADD', traits: {"smithy.api#enumValue" => "ADD"}))
    UpdateType.add_member(:replace, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REPLACE', traits: {"smithy.api#enumValue" => "REPLACE"}))
    UpdateType.add_member(:remove, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REMOVE', traits: {"smithy.api#enumValue" => "REMOVE"}))
    UpdateUserRequest.add_member(:directory_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryId, location_name: 'DirectoryId', traits: {"smithy.api#documentation" => "<p> The identifier (ID) of the directory that's associated with the user. </p>", "smithy.api#httpQuery" => "DirectoryId", "smithy.api#required" => {}}))
    UpdateUserRequest.add_member(:sam_account_name, Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: 'SAMAccountName', traits: {"smithy.api#documentation" => "<p> The name of the user. </p>", "smithy.api#required" => {}}))
    UpdateUserRequest.add_member(:email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'EmailAddress', traits: {"smithy.api#documentation" => "<p> The email address of the user. </p>"}))
    UpdateUserRequest.add_member(:given_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GivenName, location_name: 'GivenName', traits: {"smithy.api#documentation" => "<p> The first name of the user. </p>"}))
    UpdateUserRequest.add_member(:surname, Smithy::Schema::Shapes::ShapeRef.new(shape: Surname, location_name: 'Surname', traits: {"smithy.api#documentation" => "<p> The last name of the user. </p>"}))
    UpdateUserRequest.add_member(:other_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: Attributes, location_name: 'OtherAttributes', traits: {"smithy.api#documentation" => "<p> An expression that defines one or more attribute names with the data type and value of\n      each attribute. A key is an attribute name, and the value is a list of maps. For a list of\n      supported attributes, see <a href=\"https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data_attributes.html\">Directory Service Data Attributes</a>. </p>\n         <note>\n            <p> Attribute names are case insensitive. </p>\n         </note>"}))
    UpdateUserRequest.add_member(:update_type, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateType, location_name: 'UpdateType', traits: {"smithy.api#documentation" => "<p> The type of update to be performed. If no value exists for the attribute, use\n        <code>ADD</code>. Otherwise, use <code>REPLACE</code> to change an attribute value or\n        <code>REMOVE</code> to clear the attribute value. </p>"}))
    UpdateUserRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p> A unique and case-sensitive identifier that you provide to make sure the idempotency of\n      the request, so multiple identical calls have the same effect as one single call. </p>\n         <p> A client token is valid for 8 hours after the first request that uses it completes. After\n      8 hours, any request with the same client token is treated as a new request. If the request\n      succeeds, any future uses of that token will be idempotent for another 8 hours. </p>\n         <p> If you submit a request with the same client token but change one of the other parameters\n      within the 8-hour idempotency window, Directory Service Data returns an <code>ConflictException</code>. </p>\n         <note>\n            <p> This parameter is optional when using the CLI or SDK. </p>\n         </note>", "smithy.api#idempotencyToken" => {}}))
    UpdateUserRequest.type = Types::UpdateUserRequest
    UpdateUserResult.type = Types::UpdateUserResult
    User.add_member(:sid, Smithy::Schema::Shapes::ShapeRef.new(shape: SID, location_name: 'SID', traits: {"smithy.api#documentation" => "<p> The unique security identifier (SID) of the user. </p>"}))
    User.add_member(:sam_account_name, Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: 'SAMAccountName', traits: {"smithy.api#documentation" => "<p> The name of the user. </p>", "smithy.api#required" => {}}))
    User.add_member(:distinguished_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DistinguishedName, location_name: 'DistinguishedName', traits: {"smithy.api#documentation" => "<p> The <a href=\"https://learn.microsoft.com/en-us/windows/win32/ad/object-names-and-identities#distinguished-name\">distinguished name</a> of the object. </p>"}))
    User.add_member(:user_principal_name, Smithy::Schema::Shapes::ShapeRef.new(shape: UserPrincipalName, location_name: 'UserPrincipalName', traits: {"smithy.api#documentation" => "<p> The UPN that is an internet-style login name for a user and based on the internet\n      standard <a href=\"https://datatracker.ietf.org/doc/html/rfc822\">RFC 822</a>. The UPN is shorter\n      than the distinguished name and easier to remember. </p>"}))
    User.add_member(:email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'EmailAddress', traits: {"smithy.api#documentation" => "<p> The email address of the user. </p>"}))
    User.add_member(:given_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GivenName, location_name: 'GivenName', traits: {"smithy.api#documentation" => "<p> The first name of the user. </p>"}))
    User.add_member(:surname, Smithy::Schema::Shapes::ShapeRef.new(shape: Surname, location_name: 'Surname', traits: {"smithy.api#documentation" => "<p> The last name of the user. </p>"}))
    User.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p> Indicates whether the user account is active. </p>"}))
    User.add_member(:other_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: Attributes, location_name: 'OtherAttributes', traits: {"smithy.api#documentation" => "<p> An expression that includes one or more attributes, data types, and values of a\n      user.</p>"}))
    User.type = Types::User
    UserList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: User)
    UserSummary.add_member(:sid, Smithy::Schema::Shapes::ShapeRef.new(shape: SID, location_name: 'SID', traits: {"smithy.api#documentation" => "<p> The unique security identifier (SID) of the user.</p>", "smithy.api#required" => {}}))
    UserSummary.add_member(:sam_account_name, Smithy::Schema::Shapes::ShapeRef.new(shape: UserName, location_name: 'SAMAccountName', traits: {"smithy.api#documentation" => "<p>The name of the user.</p>", "smithy.api#required" => {}}))
    UserSummary.add_member(:given_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GivenName, location_name: 'GivenName', traits: {"smithy.api#documentation" => "<p>The first name of the user. </p>"}))
    UserSummary.add_member(:surname, Smithy::Schema::Shapes::ShapeRef.new(shape: Surname, location_name: 'Surname', traits: {"smithy.api#documentation" => "<p>The last name of the user.</p>"}))
    UserSummary.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Indicates whether the user account is active.</p>", "smithy.api#required" => {}}))
    UserSummary.type = Types::UserSummary
    UserSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UserSummary)
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    ValidationException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p> Reason the request failed validation. </p>"}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionReason.add_member(:invalid_realm, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_REALM', traits: {"smithy.api#enumValue" => "INVALID_REALM"}))
    ValidationExceptionReason.add_member(:invalid_directory_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_DIRECTORY_TYPE', traits: {"smithy.api#enumValue" => "INVALID_DIRECTORY_TYPE"}))
    ValidationExceptionReason.add_member(:invalid_secondary_region, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_SECONDARY_REGION', traits: {"smithy.api#enumValue" => "INVALID_SECONDARY_REGION"}))
    ValidationExceptionReason.add_member(:invalid_next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_NEXT_TOKEN', traits: {"smithy.api#enumValue" => "INVALID_NEXT_TOKEN"}))
    ValidationExceptionReason.add_member(:invalid_attribute_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ATTRIBUTE_VALUE', traits: {"smithy.api#enumValue" => "INVALID_ATTRIBUTE_VALUE"}))
    ValidationExceptionReason.add_member(:invalid_attribute_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ATTRIBUTE_NAME', traits: {"smithy.api#enumValue" => "INVALID_ATTRIBUTE_NAME"}))
    ValidationExceptionReason.add_member(:invalid_attribute_for_user, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ATTRIBUTE_FOR_USER', traits: {"smithy.api#enumValue" => "INVALID_ATTRIBUTE_FOR_USER"}))
    ValidationExceptionReason.add_member(:invalid_attribute_for_group, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ATTRIBUTE_FOR_GROUP', traits: {"smithy.api#enumValue" => "INVALID_ATTRIBUTE_FOR_GROUP"}))
    ValidationExceptionReason.add_member(:invalid_attribute_for_search, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ATTRIBUTE_FOR_SEARCH', traits: {"smithy.api#enumValue" => "INVALID_ATTRIBUTE_FOR_SEARCH"}))
    ValidationExceptionReason.add_member(:invalid_attribute_for_modify, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ATTRIBUTE_FOR_MODIFY', traits: {"smithy.api#enumValue" => "INVALID_ATTRIBUTE_FOR_MODIFY"}))
    ValidationExceptionReason.add_member(:duplicate_attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DUPLICATE_ATTRIBUTE', traits: {"smithy.api#enumValue" => "DUPLICATE_ATTRIBUTE"}))
    ValidationExceptionReason.add_member(:missing_attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MISSING_ATTRIBUTE', traits: {"smithy.api#enumValue" => "MISSING_ATTRIBUTE"}))
    ValidationExceptionReason.add_member(:attribute_exists, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ATTRIBUTE_EXISTS', traits: {"smithy.api#enumValue" => "ATTRIBUTE_EXISTS"}))
    ValidationExceptionReason.add_member(:ldap_size_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LDAP_SIZE_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "LDAP_SIZE_LIMIT_EXCEEDED"}))
    ValidationExceptionReason.add_member(:ldap_unsupported_operation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LDAP_UNSUPPORTED_OPERATION', traits: {"smithy.api#enumValue" => "LDAP_UNSUPPORTED_OPERATION"}))

    DirectoryServiceData = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.directoryservicedata#DirectoryServiceData"
      service.name = "DirectoryServiceData"
      service.version = "2023-05-31"
      service.traits = {"aws.api#service" => {"sdkId" => "Directory Service Data", "arnNamespace" => "ds", "cloudFormationName" => "DirectoryServiceData", "cloudTrailEventSource" => "ds.amazonaws.com", "endpointPrefix" => "ds-data"}, "aws.auth#sigv4" => {"name" => "ds-data"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Directory Service Data", "smithy.api#xmlNamespace" => {"uri" => "http://directoryservicedata.amazonaws.com/doc/2023-05-31/"}}
      service.add_operation(:add_group_member, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservicedata#AddGroupMember"
        operation.name = "AddGroupMember"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AddGroupMemberRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AddGroupMemberResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/GroupMemberships/AddGroupMember", "method" => "POST"}}
      end)
      service.add_operation(:create_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservicedata#CreateGroup"
        operation.name = "CreateGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGroupResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/Groups/CreateGroup", "method" => "POST"}}
      end)
      service.add_operation(:create_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservicedata#CreateUser"
        operation.name = "CreateUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/Users/CreateUser", "method" => "POST"}}
      end)
      service.add_operation(:delete_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservicedata#DeleteGroup"
        operation.name = "DeleteGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGroupResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/Groups/DeleteGroup", "method" => "POST"}}
      end)
      service.add_operation(:delete_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservicedata#DeleteUser"
        operation.name = "DeleteUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUserResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/Users/DeleteUser", "method" => "POST"}}
      end)
      service.add_operation(:describe_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservicedata#DescribeGroup"
        operation.name = "DescribeGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeGroupResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/Groups/DescribeGroup", "method" => "POST"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "DescribeGroupFailure", "params" => {"DirectoryId" => "d-1111111111", "SAMAccountName" => "test-group"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.directoryservicedata#AccessDeniedException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
      end)
      service.add_operation(:describe_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservicedata#DescribeUser"
        operation.name = "DescribeUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUserResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/Users/DescribeUser", "method" => "POST"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "DescribeUserFailure", "params" => {"DirectoryId" => "d-1111111111", "SAMAccountName" => "test-user"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.directoryservicedata#AccessDeniedException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-west-2"}}]}
      end)
      service.add_operation(:disable_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservicedata#DisableUser"
        operation.name = "DisableUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableUserResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/Users/DisableUser", "method" => "POST"}}
      end)
      service.add_operation(:list_group_members, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservicedata#ListGroupMembers"
        operation.name = "ListGroupMembers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupMembersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupMembersResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/GroupMemberships/ListGroupMembers", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListGroupMembers.new
      end)
      service.add_operation(:list_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservicedata#ListGroups"
        operation.name = "ListGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/Groups/ListGroups", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListGroups.new
      end)
      service.add_operation(:list_groups_for_member, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservicedata#ListGroupsForMember"
        operation.name = "ListGroupsForMember"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupsForMemberRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupsForMemberResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/GroupMemberships/ListGroupsForMember", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListGroupsForMember.new
      end)
      service.add_operation(:list_users, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservicedata#ListUsers"
        operation.name = "ListUsers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListUsersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListUsersResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/Users/ListUsers", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListUsers.new
      end)
      service.add_operation(:remove_group_member, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservicedata#RemoveGroupMember"
        operation.name = "RemoveGroupMember"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveGroupMemberRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveGroupMemberResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/GroupMemberships/RemoveGroupMember", "method" => "POST"}}
      end)
      service.add_operation(:search_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservicedata#SearchGroups"
        operation.name = "SearchGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchGroupsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchGroupsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/Groups/SearchGroups", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::SearchGroups.new
      end)
      service.add_operation(:search_users, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservicedata#SearchUsers"
        operation.name = "SearchUsers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchUsersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchUsersResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/Users/SearchUsers", "method" => "POST"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::SearchUsers.new
      end)
      service.add_operation(:update_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservicedata#UpdateGroup"
        operation.name = "UpdateGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGroupResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/Groups/UpdateGroup", "method" => "POST"}}
      end)
      service.add_operation(:update_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.directoryservicedata#UpdateUser"
        operation.name = "UpdateUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUserResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/Users/UpdateUser", "method" => "POST"}}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
