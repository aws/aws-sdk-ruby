# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::DirectoryServiceData
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessDeniedReason = Shapes::StringShape.new(name: 'AccessDeniedReason')
    AddGroupMemberRequest = Shapes::StructureShape.new(name: 'AddGroupMemberRequest')
    AddGroupMemberResult = Shapes::StructureShape.new(name: 'AddGroupMemberResult')
    AttributeValue = Shapes::UnionShape.new(name: 'AttributeValue')
    Attributes = Shapes::MapShape.new(name: 'Attributes')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BooleanAttributeValue = Shapes::BooleanShape.new(name: 'BooleanAttributeValue')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateGroupRequest = Shapes::StructureShape.new(name: 'CreateGroupRequest')
    CreateGroupResult = Shapes::StructureShape.new(name: 'CreateGroupResult')
    CreateUserRequest = Shapes::StructureShape.new(name: 'CreateUserRequest')
    CreateUserResult = Shapes::StructureShape.new(name: 'CreateUserResult')
    DeleteGroupRequest = Shapes::StructureShape.new(name: 'DeleteGroupRequest')
    DeleteGroupResult = Shapes::StructureShape.new(name: 'DeleteGroupResult')
    DeleteUserRequest = Shapes::StructureShape.new(name: 'DeleteUserRequest')
    DeleteUserResult = Shapes::StructureShape.new(name: 'DeleteUserResult')
    DescribeGroupRequest = Shapes::StructureShape.new(name: 'DescribeGroupRequest')
    DescribeGroupResult = Shapes::StructureShape.new(name: 'DescribeGroupResult')
    DescribeUserRequest = Shapes::StructureShape.new(name: 'DescribeUserRequest')
    DescribeUserResult = Shapes::StructureShape.new(name: 'DescribeUserResult')
    DirectoryId = Shapes::StringShape.new(name: 'DirectoryId')
    DirectoryUnavailableException = Shapes::StructureShape.new(name: 'DirectoryUnavailableException')
    DirectoryUnavailableReason = Shapes::StringShape.new(name: 'DirectoryUnavailableReason')
    DisableUserRequest = Shapes::StructureShape.new(name: 'DisableUserRequest')
    DisableUserResult = Shapes::StructureShape.new(name: 'DisableUserResult')
    DistinguishedName = Shapes::StringShape.new(name: 'DistinguishedName')
    EmailAddress = Shapes::StringShape.new(name: 'EmailAddress')
    ExceptionMessage = Shapes::StringShape.new(name: 'ExceptionMessage')
    GivenName = Shapes::StringShape.new(name: 'GivenName')
    Group = Shapes::StructureShape.new(name: 'Group')
    GroupList = Shapes::ListShape.new(name: 'GroupList')
    GroupName = Shapes::StringShape.new(name: 'GroupName')
    GroupScope = Shapes::StringShape.new(name: 'GroupScope')
    GroupSummary = Shapes::StructureShape.new(name: 'GroupSummary')
    GroupSummaryList = Shapes::ListShape.new(name: 'GroupSummaryList')
    GroupType = Shapes::StringShape.new(name: 'GroupType')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    LdapDisplayName = Shapes::StringShape.new(name: 'LdapDisplayName')
    LdapDisplayNameList = Shapes::ListShape.new(name: 'LdapDisplayNameList')
    ListGroupMembersRequest = Shapes::StructureShape.new(name: 'ListGroupMembersRequest')
    ListGroupMembersResult = Shapes::StructureShape.new(name: 'ListGroupMembersResult')
    ListGroupsForMemberRequest = Shapes::StructureShape.new(name: 'ListGroupsForMemberRequest')
    ListGroupsForMemberResult = Shapes::StructureShape.new(name: 'ListGroupsForMemberResult')
    ListGroupsRequest = Shapes::StructureShape.new(name: 'ListGroupsRequest')
    ListGroupsResult = Shapes::StructureShape.new(name: 'ListGroupsResult')
    ListUsersRequest = Shapes::StructureShape.new(name: 'ListUsersRequest')
    ListUsersResult = Shapes::StructureShape.new(name: 'ListUsersResult')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Member = Shapes::StructureShape.new(name: 'Member')
    MemberList = Shapes::ListShape.new(name: 'MemberList')
    MemberName = Shapes::StringShape.new(name: 'MemberName')
    MemberType = Shapes::StringShape.new(name: 'MemberType')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NumberAttributeValue = Shapes::IntegerShape.new(name: 'NumberAttributeValue')
    Realm = Shapes::StringShape.new(name: 'Realm')
    RemoveGroupMemberRequest = Shapes::StructureShape.new(name: 'RemoveGroupMemberRequest')
    RemoveGroupMemberResult = Shapes::StructureShape.new(name: 'RemoveGroupMemberResult')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    SID = Shapes::StringShape.new(name: 'SID')
    SearchGroupsRequest = Shapes::StructureShape.new(name: 'SearchGroupsRequest')
    SearchGroupsResult = Shapes::StructureShape.new(name: 'SearchGroupsResult')
    SearchString = Shapes::StringShape.new(name: 'SearchString')
    SearchUsersRequest = Shapes::StructureShape.new(name: 'SearchUsersRequest')
    SearchUsersResult = Shapes::StructureShape.new(name: 'SearchUsersResult')
    StringAttributeValue = Shapes::StringShape.new(name: 'StringAttributeValue')
    StringSetAttributeValue = Shapes::ListShape.new(name: 'StringSetAttributeValue')
    Surname = Shapes::StringShape.new(name: 'Surname')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UpdateGroupRequest = Shapes::StructureShape.new(name: 'UpdateGroupRequest')
    UpdateGroupResult = Shapes::StructureShape.new(name: 'UpdateGroupResult')
    UpdateType = Shapes::StringShape.new(name: 'UpdateType')
    UpdateUserRequest = Shapes::StructureShape.new(name: 'UpdateUserRequest')
    UpdateUserResult = Shapes::StructureShape.new(name: 'UpdateUserResult')
    User = Shapes::StructureShape.new(name: 'User')
    UserList = Shapes::ListShape.new(name: 'UserList')
    UserName = Shapes::StringShape.new(name: 'UserName')
    UserPrincipalName = Shapes::StringShape.new(name: 'UserPrincipalName')
    UserSummary = Shapes::StructureShape.new(name: 'UserSummary')
    UserSummaryList = Shapes::ListShape.new(name: 'UserSummaryList')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    AccessDeniedException.add_member(:reason, Shapes::ShapeRef.new(shape: AccessDeniedReason, location_name: "Reason"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AddGroupMemberRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    AddGroupMemberRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location: "querystring", location_name: "DirectoryId"))
    AddGroupMemberRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, required: true, location_name: "GroupName"))
    AddGroupMemberRequest.add_member(:member_name, Shapes::ShapeRef.new(shape: MemberName, required: true, location_name: "MemberName"))
    AddGroupMemberRequest.add_member(:member_realm, Shapes::ShapeRef.new(shape: Realm, location_name: "MemberRealm"))
    AddGroupMemberRequest.struct_class = Types::AddGroupMemberRequest

    AddGroupMemberResult.struct_class = Types::AddGroupMemberResult

    AttributeValue.add_member(:bool, Shapes::ShapeRef.new(shape: BooleanAttributeValue, location_name: "BOOL"))
    AttributeValue.add_member(:n, Shapes::ShapeRef.new(shape: NumberAttributeValue, location_name: "N"))
    AttributeValue.add_member(:s, Shapes::ShapeRef.new(shape: StringAttributeValue, location_name: "S"))
    AttributeValue.add_member(:ss, Shapes::ShapeRef.new(shape: StringSetAttributeValue, location_name: "SS"))
    AttributeValue.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AttributeValue.add_member_subclass(:bool, Types::AttributeValue::Bool)
    AttributeValue.add_member_subclass(:n, Types::AttributeValue::N)
    AttributeValue.add_member_subclass(:s, Types::AttributeValue::S)
    AttributeValue.add_member_subclass(:ss, Types::AttributeValue::Ss)
    AttributeValue.add_member_subclass(:unknown, Types::AttributeValue::Unknown)
    AttributeValue.struct_class = Types::AttributeValue

    Attributes.key = Shapes::ShapeRef.new(shape: LdapDisplayName)
    Attributes.value = Shapes::ShapeRef.new(shape: AttributeValue)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    CreateGroupRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateGroupRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location: "querystring", location_name: "DirectoryId"))
    CreateGroupRequest.add_member(:group_scope, Shapes::ShapeRef.new(shape: GroupScope, location_name: "GroupScope"))
    CreateGroupRequest.add_member(:group_type, Shapes::ShapeRef.new(shape: GroupType, location_name: "GroupType"))
    CreateGroupRequest.add_member(:other_attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "OtherAttributes"))
    CreateGroupRequest.add_member(:sam_account_name, Shapes::ShapeRef.new(shape: GroupName, required: true, location_name: "SAMAccountName"))
    CreateGroupRequest.struct_class = Types::CreateGroupRequest

    CreateGroupResult.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "DirectoryId"))
    CreateGroupResult.add_member(:sam_account_name, Shapes::ShapeRef.new(shape: GroupName, location_name: "SAMAccountName"))
    CreateGroupResult.add_member(:sid, Shapes::ShapeRef.new(shape: SID, location_name: "SID"))
    CreateGroupResult.struct_class = Types::CreateGroupResult

    CreateUserRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateUserRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location: "querystring", location_name: "DirectoryId"))
    CreateUserRequest.add_member(:email_address, Shapes::ShapeRef.new(shape: EmailAddress, location_name: "EmailAddress"))
    CreateUserRequest.add_member(:given_name, Shapes::ShapeRef.new(shape: GivenName, location_name: "GivenName"))
    CreateUserRequest.add_member(:other_attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "OtherAttributes"))
    CreateUserRequest.add_member(:sam_account_name, Shapes::ShapeRef.new(shape: UserName, required: true, location_name: "SAMAccountName"))
    CreateUserRequest.add_member(:surname, Shapes::ShapeRef.new(shape: Surname, location_name: "Surname"))
    CreateUserRequest.struct_class = Types::CreateUserRequest

    CreateUserResult.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "DirectoryId"))
    CreateUserResult.add_member(:sam_account_name, Shapes::ShapeRef.new(shape: UserName, location_name: "SAMAccountName"))
    CreateUserResult.add_member(:sid, Shapes::ShapeRef.new(shape: SID, location_name: "SID"))
    CreateUserResult.struct_class = Types::CreateUserResult

    DeleteGroupRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    DeleteGroupRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location: "querystring", location_name: "DirectoryId"))
    DeleteGroupRequest.add_member(:sam_account_name, Shapes::ShapeRef.new(shape: GroupName, required: true, location_name: "SAMAccountName"))
    DeleteGroupRequest.struct_class = Types::DeleteGroupRequest

    DeleteGroupResult.struct_class = Types::DeleteGroupResult

    DeleteUserRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    DeleteUserRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location: "querystring", location_name: "DirectoryId"))
    DeleteUserRequest.add_member(:sam_account_name, Shapes::ShapeRef.new(shape: UserName, required: true, location_name: "SAMAccountName"))
    DeleteUserRequest.struct_class = Types::DeleteUserRequest

    DeleteUserResult.struct_class = Types::DeleteUserResult

    DescribeGroupRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location: "querystring", location_name: "DirectoryId"))
    DescribeGroupRequest.add_member(:other_attributes, Shapes::ShapeRef.new(shape: LdapDisplayNameList, location_name: "OtherAttributes"))
    DescribeGroupRequest.add_member(:realm, Shapes::ShapeRef.new(shape: Realm, location_name: "Realm"))
    DescribeGroupRequest.add_member(:sam_account_name, Shapes::ShapeRef.new(shape: GroupName, required: true, location_name: "SAMAccountName"))
    DescribeGroupRequest.struct_class = Types::DescribeGroupRequest

    DescribeGroupResult.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "DirectoryId"))
    DescribeGroupResult.add_member(:distinguished_name, Shapes::ShapeRef.new(shape: DistinguishedName, location_name: "DistinguishedName"))
    DescribeGroupResult.add_member(:group_scope, Shapes::ShapeRef.new(shape: GroupScope, location_name: "GroupScope"))
    DescribeGroupResult.add_member(:group_type, Shapes::ShapeRef.new(shape: GroupType, location_name: "GroupType"))
    DescribeGroupResult.add_member(:other_attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "OtherAttributes"))
    DescribeGroupResult.add_member(:realm, Shapes::ShapeRef.new(shape: Realm, location_name: "Realm"))
    DescribeGroupResult.add_member(:sam_account_name, Shapes::ShapeRef.new(shape: GroupName, location_name: "SAMAccountName"))
    DescribeGroupResult.add_member(:sid, Shapes::ShapeRef.new(shape: SID, location_name: "SID"))
    DescribeGroupResult.struct_class = Types::DescribeGroupResult

    DescribeUserRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location: "querystring", location_name: "DirectoryId"))
    DescribeUserRequest.add_member(:other_attributes, Shapes::ShapeRef.new(shape: LdapDisplayNameList, location_name: "OtherAttributes"))
    DescribeUserRequest.add_member(:realm, Shapes::ShapeRef.new(shape: Realm, location_name: "Realm"))
    DescribeUserRequest.add_member(:sam_account_name, Shapes::ShapeRef.new(shape: UserName, required: true, location_name: "SAMAccountName"))
    DescribeUserRequest.struct_class = Types::DescribeUserRequest

    DescribeUserResult.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "DirectoryId"))
    DescribeUserResult.add_member(:distinguished_name, Shapes::ShapeRef.new(shape: DistinguishedName, location_name: "DistinguishedName"))
    DescribeUserResult.add_member(:email_address, Shapes::ShapeRef.new(shape: EmailAddress, location_name: "EmailAddress"))
    DescribeUserResult.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    DescribeUserResult.add_member(:given_name, Shapes::ShapeRef.new(shape: GivenName, location_name: "GivenName"))
    DescribeUserResult.add_member(:other_attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "OtherAttributes"))
    DescribeUserResult.add_member(:realm, Shapes::ShapeRef.new(shape: Realm, location_name: "Realm"))
    DescribeUserResult.add_member(:sam_account_name, Shapes::ShapeRef.new(shape: UserName, location_name: "SAMAccountName"))
    DescribeUserResult.add_member(:sid, Shapes::ShapeRef.new(shape: SID, location_name: "SID"))
    DescribeUserResult.add_member(:surname, Shapes::ShapeRef.new(shape: Surname, location_name: "Surname"))
    DescribeUserResult.add_member(:user_principal_name, Shapes::ShapeRef.new(shape: UserPrincipalName, location_name: "UserPrincipalName"))
    DescribeUserResult.struct_class = Types::DescribeUserResult

    DirectoryUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    DirectoryUnavailableException.add_member(:reason, Shapes::ShapeRef.new(shape: DirectoryUnavailableReason, location_name: "Reason"))
    DirectoryUnavailableException.struct_class = Types::DirectoryUnavailableException

    DisableUserRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    DisableUserRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location: "querystring", location_name: "DirectoryId"))
    DisableUserRequest.add_member(:sam_account_name, Shapes::ShapeRef.new(shape: UserName, required: true, location_name: "SAMAccountName"))
    DisableUserRequest.struct_class = Types::DisableUserRequest

    DisableUserResult.struct_class = Types::DisableUserResult

    Group.add_member(:distinguished_name, Shapes::ShapeRef.new(shape: DistinguishedName, location_name: "DistinguishedName"))
    Group.add_member(:group_scope, Shapes::ShapeRef.new(shape: GroupScope, location_name: "GroupScope"))
    Group.add_member(:group_type, Shapes::ShapeRef.new(shape: GroupType, location_name: "GroupType"))
    Group.add_member(:other_attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "OtherAttributes"))
    Group.add_member(:sam_account_name, Shapes::ShapeRef.new(shape: GroupName, required: true, location_name: "SAMAccountName"))
    Group.add_member(:sid, Shapes::ShapeRef.new(shape: SID, location_name: "SID"))
    Group.struct_class = Types::Group

    GroupList.member = Shapes::ShapeRef.new(shape: Group)

    GroupSummary.add_member(:group_scope, Shapes::ShapeRef.new(shape: GroupScope, required: true, location_name: "GroupScope"))
    GroupSummary.add_member(:group_type, Shapes::ShapeRef.new(shape: GroupType, required: true, location_name: "GroupType"))
    GroupSummary.add_member(:sam_account_name, Shapes::ShapeRef.new(shape: GroupName, required: true, location_name: "SAMAccountName"))
    GroupSummary.add_member(:sid, Shapes::ShapeRef.new(shape: SID, required: true, location_name: "SID"))
    GroupSummary.struct_class = Types::GroupSummary

    GroupSummaryList.member = Shapes::ShapeRef.new(shape: GroupSummary)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    LdapDisplayNameList.member = Shapes::ShapeRef.new(shape: LdapDisplayName)

    ListGroupMembersRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location: "querystring", location_name: "DirectoryId"))
    ListGroupMembersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListGroupMembersRequest.add_member(:member_realm, Shapes::ShapeRef.new(shape: Realm, location_name: "MemberRealm"))
    ListGroupMembersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGroupMembersRequest.add_member(:realm, Shapes::ShapeRef.new(shape: Realm, location_name: "Realm"))
    ListGroupMembersRequest.add_member(:sam_account_name, Shapes::ShapeRef.new(shape: GroupName, required: true, location_name: "SAMAccountName"))
    ListGroupMembersRequest.struct_class = Types::ListGroupMembersRequest

    ListGroupMembersResult.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "DirectoryId"))
    ListGroupMembersResult.add_member(:member_realm, Shapes::ShapeRef.new(shape: Realm, location_name: "MemberRealm"))
    ListGroupMembersResult.add_member(:members, Shapes::ShapeRef.new(shape: MemberList, location_name: "Members"))
    ListGroupMembersResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGroupMembersResult.add_member(:realm, Shapes::ShapeRef.new(shape: Realm, location_name: "Realm"))
    ListGroupMembersResult.struct_class = Types::ListGroupMembersResult

    ListGroupsForMemberRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location: "querystring", location_name: "DirectoryId"))
    ListGroupsForMemberRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListGroupsForMemberRequest.add_member(:member_realm, Shapes::ShapeRef.new(shape: Realm, location_name: "MemberRealm"))
    ListGroupsForMemberRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGroupsForMemberRequest.add_member(:realm, Shapes::ShapeRef.new(shape: Realm, location_name: "Realm"))
    ListGroupsForMemberRequest.add_member(:sam_account_name, Shapes::ShapeRef.new(shape: MemberName, required: true, location_name: "SAMAccountName"))
    ListGroupsForMemberRequest.struct_class = Types::ListGroupsForMemberRequest

    ListGroupsForMemberResult.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "DirectoryId"))
    ListGroupsForMemberResult.add_member(:groups, Shapes::ShapeRef.new(shape: GroupSummaryList, location_name: "Groups"))
    ListGroupsForMemberResult.add_member(:member_realm, Shapes::ShapeRef.new(shape: Realm, location_name: "MemberRealm"))
    ListGroupsForMemberResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGroupsForMemberResult.add_member(:realm, Shapes::ShapeRef.new(shape: Realm, location_name: "Realm"))
    ListGroupsForMemberResult.struct_class = Types::ListGroupsForMemberResult

    ListGroupsRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location: "querystring", location_name: "DirectoryId"))
    ListGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGroupsRequest.add_member(:realm, Shapes::ShapeRef.new(shape: Realm, location_name: "Realm"))
    ListGroupsRequest.struct_class = Types::ListGroupsRequest

    ListGroupsResult.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "DirectoryId"))
    ListGroupsResult.add_member(:groups, Shapes::ShapeRef.new(shape: GroupSummaryList, location_name: "Groups"))
    ListGroupsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGroupsResult.add_member(:realm, Shapes::ShapeRef.new(shape: Realm, location_name: "Realm"))
    ListGroupsResult.struct_class = Types::ListGroupsResult

    ListUsersRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location: "querystring", location_name: "DirectoryId"))
    ListUsersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListUsersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListUsersRequest.add_member(:realm, Shapes::ShapeRef.new(shape: Realm, location_name: "Realm"))
    ListUsersRequest.struct_class = Types::ListUsersRequest

    ListUsersResult.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "DirectoryId"))
    ListUsersResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListUsersResult.add_member(:realm, Shapes::ShapeRef.new(shape: Realm, location_name: "Realm"))
    ListUsersResult.add_member(:users, Shapes::ShapeRef.new(shape: UserSummaryList, location_name: "Users"))
    ListUsersResult.struct_class = Types::ListUsersResult

    Member.add_member(:member_type, Shapes::ShapeRef.new(shape: MemberType, required: true, location_name: "MemberType"))
    Member.add_member(:sam_account_name, Shapes::ShapeRef.new(shape: MemberName, required: true, location_name: "SAMAccountName"))
    Member.add_member(:sid, Shapes::ShapeRef.new(shape: SID, required: true, location_name: "SID"))
    Member.struct_class = Types::Member

    MemberList.member = Shapes::ShapeRef.new(shape: Member)

    RemoveGroupMemberRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    RemoveGroupMemberRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location: "querystring", location_name: "DirectoryId"))
    RemoveGroupMemberRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, required: true, location_name: "GroupName"))
    RemoveGroupMemberRequest.add_member(:member_name, Shapes::ShapeRef.new(shape: MemberName, required: true, location_name: "MemberName"))
    RemoveGroupMemberRequest.add_member(:member_realm, Shapes::ShapeRef.new(shape: Realm, location_name: "MemberRealm"))
    RemoveGroupMemberRequest.struct_class = Types::RemoveGroupMemberRequest

    RemoveGroupMemberResult.struct_class = Types::RemoveGroupMemberResult

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    SearchGroupsRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location: "querystring", location_name: "DirectoryId"))
    SearchGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    SearchGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    SearchGroupsRequest.add_member(:realm, Shapes::ShapeRef.new(shape: Realm, location_name: "Realm"))
    SearchGroupsRequest.add_member(:search_attributes, Shapes::ShapeRef.new(shape: LdapDisplayNameList, required: true, location_name: "SearchAttributes"))
    SearchGroupsRequest.add_member(:search_string, Shapes::ShapeRef.new(shape: SearchString, required: true, location_name: "SearchString"))
    SearchGroupsRequest.struct_class = Types::SearchGroupsRequest

    SearchGroupsResult.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "DirectoryId"))
    SearchGroupsResult.add_member(:groups, Shapes::ShapeRef.new(shape: GroupList, location_name: "Groups"))
    SearchGroupsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    SearchGroupsResult.add_member(:realm, Shapes::ShapeRef.new(shape: Realm, location_name: "Realm"))
    SearchGroupsResult.struct_class = Types::SearchGroupsResult

    SearchUsersRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location: "querystring", location_name: "DirectoryId"))
    SearchUsersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    SearchUsersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    SearchUsersRequest.add_member(:realm, Shapes::ShapeRef.new(shape: Realm, location_name: "Realm"))
    SearchUsersRequest.add_member(:search_attributes, Shapes::ShapeRef.new(shape: LdapDisplayNameList, required: true, location_name: "SearchAttributes"))
    SearchUsersRequest.add_member(:search_string, Shapes::ShapeRef.new(shape: SearchString, required: true, location_name: "SearchString"))
    SearchUsersRequest.struct_class = Types::SearchUsersRequest

    SearchUsersResult.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "DirectoryId"))
    SearchUsersResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    SearchUsersResult.add_member(:realm, Shapes::ShapeRef.new(shape: Realm, location_name: "Realm"))
    SearchUsersResult.add_member(:users, Shapes::ShapeRef.new(shape: UserList, location_name: "Users"))
    SearchUsersResult.struct_class = Types::SearchUsersResult

    StringSetAttributeValue.member = Shapes::ShapeRef.new(shape: StringAttributeValue)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, required: true, location_name: "Message"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UpdateGroupRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    UpdateGroupRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location: "querystring", location_name: "DirectoryId"))
    UpdateGroupRequest.add_member(:group_scope, Shapes::ShapeRef.new(shape: GroupScope, location_name: "GroupScope"))
    UpdateGroupRequest.add_member(:group_type, Shapes::ShapeRef.new(shape: GroupType, location_name: "GroupType"))
    UpdateGroupRequest.add_member(:other_attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "OtherAttributes"))
    UpdateGroupRequest.add_member(:sam_account_name, Shapes::ShapeRef.new(shape: GroupName, required: true, location_name: "SAMAccountName"))
    UpdateGroupRequest.add_member(:update_type, Shapes::ShapeRef.new(shape: UpdateType, location_name: "UpdateType"))
    UpdateGroupRequest.struct_class = Types::UpdateGroupRequest

    UpdateGroupResult.struct_class = Types::UpdateGroupResult

    UpdateUserRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    UpdateUserRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, required: true, location: "querystring", location_name: "DirectoryId"))
    UpdateUserRequest.add_member(:email_address, Shapes::ShapeRef.new(shape: EmailAddress, location_name: "EmailAddress"))
    UpdateUserRequest.add_member(:given_name, Shapes::ShapeRef.new(shape: GivenName, location_name: "GivenName"))
    UpdateUserRequest.add_member(:other_attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "OtherAttributes"))
    UpdateUserRequest.add_member(:sam_account_name, Shapes::ShapeRef.new(shape: UserName, required: true, location_name: "SAMAccountName"))
    UpdateUserRequest.add_member(:surname, Shapes::ShapeRef.new(shape: Surname, location_name: "Surname"))
    UpdateUserRequest.add_member(:update_type, Shapes::ShapeRef.new(shape: UpdateType, location_name: "UpdateType"))
    UpdateUserRequest.struct_class = Types::UpdateUserRequest

    UpdateUserResult.struct_class = Types::UpdateUserResult

    User.add_member(:distinguished_name, Shapes::ShapeRef.new(shape: DistinguishedName, location_name: "DistinguishedName"))
    User.add_member(:email_address, Shapes::ShapeRef.new(shape: EmailAddress, location_name: "EmailAddress"))
    User.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    User.add_member(:given_name, Shapes::ShapeRef.new(shape: GivenName, location_name: "GivenName"))
    User.add_member(:other_attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "OtherAttributes"))
    User.add_member(:sam_account_name, Shapes::ShapeRef.new(shape: UserName, required: true, location_name: "SAMAccountName"))
    User.add_member(:sid, Shapes::ShapeRef.new(shape: SID, location_name: "SID"))
    User.add_member(:surname, Shapes::ShapeRef.new(shape: Surname, location_name: "Surname"))
    User.add_member(:user_principal_name, Shapes::ShapeRef.new(shape: UserPrincipalName, location_name: "UserPrincipalName"))
    User.struct_class = Types::User

    UserList.member = Shapes::ShapeRef.new(shape: User)

    UserSummary.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "Enabled"))
    UserSummary.add_member(:given_name, Shapes::ShapeRef.new(shape: GivenName, location_name: "GivenName"))
    UserSummary.add_member(:sam_account_name, Shapes::ShapeRef.new(shape: UserName, required: true, location_name: "SAMAccountName"))
    UserSummary.add_member(:sid, Shapes::ShapeRef.new(shape: SID, required: true, location_name: "SID"))
    UserSummary.add_member(:surname, Shapes::ShapeRef.new(shape: Surname, location_name: "Surname"))
    UserSummary.struct_class = Types::UserSummary

    UserSummaryList.member = Shapes::ShapeRef.new(shape: UserSummary)

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "Reason"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2023-05-31"

      api.metadata = {
        "apiVersion" => "2023-05-31",
        "endpointPrefix" => "ds-data",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWS Directory Service Data",
        "serviceId" => "Directory Service Data",
        "signatureVersion" => "v4",
        "signingName" => "ds-data",
        "uid" => "directory-service-data-2023-05-31",
      }

      api.add_operation(:add_group_member, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddGroupMember"
        o.http_method = "POST"
        o.http_request_uri = "/GroupMemberships/AddGroupMember"
        o.input = Shapes::ShapeRef.new(shape: AddGroupMemberRequest)
        o.output = Shapes::ShapeRef.new(shape: AddGroupMemberResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGroup"
        o.http_method = "POST"
        o.http_request_uri = "/Groups/CreateGroup"
        o.input = Shapes::ShapeRef.new(shape: CreateGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateUser"
        o.http_method = "POST"
        o.http_request_uri = "/Users/CreateUser"
        o.input = Shapes::ShapeRef.new(shape: CreateUserRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateUserResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGroup"
        o.http_method = "POST"
        o.http_request_uri = "/Groups/DeleteGroup"
        o.input = Shapes::ShapeRef.new(shape: DeleteGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteUser"
        o.http_method = "POST"
        o.http_request_uri = "/Users/DeleteUser"
        o.input = Shapes::ShapeRef.new(shape: DeleteUserRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteUserResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeGroup"
        o.http_method = "POST"
        o.http_request_uri = "/Groups/DescribeGroup"
        o.input = Shapes::ShapeRef.new(shape: DescribeGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeUser"
        o.http_method = "POST"
        o.http_request_uri = "/Users/DescribeUser"
        o.input = Shapes::ShapeRef.new(shape: DescribeUserRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeUserResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:disable_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableUser"
        o.http_method = "POST"
        o.http_request_uri = "/Users/DisableUser"
        o.input = Shapes::ShapeRef.new(shape: DisableUserRequest)
        o.output = Shapes::ShapeRef.new(shape: DisableUserResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_group_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGroupMembers"
        o.http_method = "POST"
        o.http_request_uri = "/GroupMemberships/ListGroupMembers"
        o.input = Shapes::ShapeRef.new(shape: ListGroupMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGroupMembersResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.http_request_uri = "/Groups/ListGroups"
        o.input = Shapes::ShapeRef.new(shape: ListGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGroupsResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_groups_for_member, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGroupsForMember"
        o.http_method = "POST"
        o.http_request_uri = "/GroupMemberships/ListGroupsForMember"
        o.input = Shapes::ShapeRef.new(shape: ListGroupsForMemberRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGroupsForMemberResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.http_request_uri = "/Users/ListUsers"
        o.input = Shapes::ShapeRef.new(shape: ListUsersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListUsersResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:remove_group_member, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveGroupMember"
        o.http_method = "POST"
        o.http_request_uri = "/GroupMemberships/RemoveGroupMember"
        o.input = Shapes::ShapeRef.new(shape: RemoveGroupMemberRequest)
        o.output = Shapes::ShapeRef.new(shape: RemoveGroupMemberResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:search_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchGroups"
        o.http_method = "POST"
        o.http_request_uri = "/Groups/SearchGroups"
        o.input = Shapes::ShapeRef.new(shape: SearchGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchGroupsResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_users, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchUsers"
        o.http_method = "POST"
        o.http_request_uri = "/Users/SearchUsers"
        o.input = Shapes::ShapeRef.new(shape: SearchUsersRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchUsersResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.http_request_uri = "/Groups/UpdateGroup"
        o.input = Shapes::ShapeRef.new(shape: UpdateGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateUser"
        o.http_method = "POST"
        o.http_request_uri = "/Users/UpdateUser"
        o.input = Shapes::ShapeRef.new(shape: UpdateUserRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateUserResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)
    end

  end
end
