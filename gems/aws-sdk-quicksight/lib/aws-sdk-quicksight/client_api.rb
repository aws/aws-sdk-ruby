# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::QuickSight
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AwsAccountId = Shapes::StringShape.new(name: 'AwsAccountId')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CreateGroupMembershipRequest = Shapes::StructureShape.new(name: 'CreateGroupMembershipRequest')
    CreateGroupMembershipResponse = Shapes::StructureShape.new(name: 'CreateGroupMembershipResponse')
    CreateGroupRequest = Shapes::StructureShape.new(name: 'CreateGroupRequest')
    CreateGroupResponse = Shapes::StructureShape.new(name: 'CreateGroupResponse')
    DeleteGroupMembershipRequest = Shapes::StructureShape.new(name: 'DeleteGroupMembershipRequest')
    DeleteGroupMembershipResponse = Shapes::StructureShape.new(name: 'DeleteGroupMembershipResponse')
    DeleteGroupRequest = Shapes::StructureShape.new(name: 'DeleteGroupRequest')
    DeleteGroupResponse = Shapes::StructureShape.new(name: 'DeleteGroupResponse')
    DeleteUserByPrincipalIdRequest = Shapes::StructureShape.new(name: 'DeleteUserByPrincipalIdRequest')
    DeleteUserByPrincipalIdResponse = Shapes::StructureShape.new(name: 'DeleteUserByPrincipalIdResponse')
    DeleteUserRequest = Shapes::StructureShape.new(name: 'DeleteUserRequest')
    DeleteUserResponse = Shapes::StructureShape.new(name: 'DeleteUserResponse')
    DescribeGroupRequest = Shapes::StructureShape.new(name: 'DescribeGroupRequest')
    DescribeGroupResponse = Shapes::StructureShape.new(name: 'DescribeGroupResponse')
    DescribeUserRequest = Shapes::StructureShape.new(name: 'DescribeUserRequest')
    DescribeUserResponse = Shapes::StructureShape.new(name: 'DescribeUserResponse')
    DomainNotWhitelistedException = Shapes::StructureShape.new(name: 'DomainNotWhitelistedException')
    EmbeddingUrl = Shapes::StringShape.new(name: 'EmbeddingUrl')
    ExceptionResourceType = Shapes::StringShape.new(name: 'ExceptionResourceType')
    GetDashboardEmbedUrlRequest = Shapes::StructureShape.new(name: 'GetDashboardEmbedUrlRequest')
    GetDashboardEmbedUrlResponse = Shapes::StructureShape.new(name: 'GetDashboardEmbedUrlResponse')
    Group = Shapes::StructureShape.new(name: 'Group')
    GroupDescription = Shapes::StringShape.new(name: 'GroupDescription')
    GroupList = Shapes::ListShape.new(name: 'GroupList')
    GroupMember = Shapes::StructureShape.new(name: 'GroupMember')
    GroupMemberList = Shapes::ListShape.new(name: 'GroupMemberList')
    GroupMemberName = Shapes::StringShape.new(name: 'GroupMemberName')
    GroupName = Shapes::StringShape.new(name: 'GroupName')
    IdentityType = Shapes::StringShape.new(name: 'IdentityType')
    IdentityTypeNotSupportedException = Shapes::StructureShape.new(name: 'IdentityTypeNotSupportedException')
    InternalFailureException = Shapes::StructureShape.new(name: 'InternalFailureException')
    InvalidNextTokenException = Shapes::StructureShape.new(name: 'InvalidNextTokenException')
    InvalidParameterValueException = Shapes::StructureShape.new(name: 'InvalidParameterValueException')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListGroupMembershipsRequest = Shapes::StructureShape.new(name: 'ListGroupMembershipsRequest')
    ListGroupMembershipsResponse = Shapes::StructureShape.new(name: 'ListGroupMembershipsResponse')
    ListGroupsRequest = Shapes::StructureShape.new(name: 'ListGroupsRequest')
    ListGroupsResponse = Shapes::StructureShape.new(name: 'ListGroupsResponse')
    ListUserGroupsRequest = Shapes::StructureShape.new(name: 'ListUserGroupsRequest')
    ListUserGroupsResponse = Shapes::StructureShape.new(name: 'ListUserGroupsResponse')
    ListUsersRequest = Shapes::StructureShape.new(name: 'ListUsersRequest')
    ListUsersResponse = Shapes::StructureShape.new(name: 'ListUsersResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Namespace = Shapes::StringShape.new(name: 'Namespace')
    PreconditionNotMetException = Shapes::StructureShape.new(name: 'PreconditionNotMetException')
    QuickSightUserNotFoundException = Shapes::StructureShape.new(name: 'QuickSightUserNotFoundException')
    RegisterUserRequest = Shapes::StructureShape.new(name: 'RegisterUserRequest')
    RegisterUserResponse = Shapes::StructureShape.new(name: 'RegisterUserResponse')
    ResourceExistsException = Shapes::StructureShape.new(name: 'ResourceExistsException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceUnavailableException = Shapes::StructureShape.new(name: 'ResourceUnavailableException')
    RoleSessionName = Shapes::StringShape.new(name: 'RoleSessionName')
    SessionLifetimeInMinutes = Shapes::IntegerShape.new(name: 'SessionLifetimeInMinutes')
    SessionLifetimeInMinutesInvalidException = Shapes::StructureShape.new(name: 'SessionLifetimeInMinutesInvalidException')
    StatusCode = Shapes::IntegerShape.new(name: 'StatusCode')
    String = Shapes::StringShape.new(name: 'String')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UnsupportedUserEditionException = Shapes::StructureShape.new(name: 'UnsupportedUserEditionException')
    UpdateGroupRequest = Shapes::StructureShape.new(name: 'UpdateGroupRequest')
    UpdateGroupResponse = Shapes::StructureShape.new(name: 'UpdateGroupResponse')
    UpdateUserRequest = Shapes::StructureShape.new(name: 'UpdateUserRequest')
    UpdateUserResponse = Shapes::StructureShape.new(name: 'UpdateUserResponse')
    User = Shapes::StructureShape.new(name: 'User')
    UserList = Shapes::ListShape.new(name: 'UserList')
    UserName = Shapes::StringShape.new(name: 'UserName')
    UserRole = Shapes::StringShape.new(name: 'UserRole')
    boolean = Shapes::BooleanShape.new(name: 'boolean')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AccessDeniedException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    CreateGroupMembershipRequest.add_member(:member_name, Shapes::ShapeRef.new(shape: GroupMemberName, required: true, location: "uri", location_name: "MemberName"))
    CreateGroupMembershipRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, required: true, location: "uri", location_name: "GroupName"))
    CreateGroupMembershipRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    CreateGroupMembershipRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "Namespace"))
    CreateGroupMembershipRequest.struct_class = Types::CreateGroupMembershipRequest

    CreateGroupMembershipResponse.add_member(:group_member, Shapes::ShapeRef.new(shape: GroupMember, location_name: "GroupMember"))
    CreateGroupMembershipResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    CreateGroupMembershipResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    CreateGroupMembershipResponse.struct_class = Types::CreateGroupMembershipResponse

    CreateGroupRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, required: true, location_name: "GroupName"))
    CreateGroupRequest.add_member(:description, Shapes::ShapeRef.new(shape: GroupDescription, location_name: "Description"))
    CreateGroupRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    CreateGroupRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "Namespace"))
    CreateGroupRequest.struct_class = Types::CreateGroupRequest

    CreateGroupResponse.add_member(:group, Shapes::ShapeRef.new(shape: Group, location_name: "Group"))
    CreateGroupResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    CreateGroupResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    CreateGroupResponse.struct_class = Types::CreateGroupResponse

    DeleteGroupMembershipRequest.add_member(:member_name, Shapes::ShapeRef.new(shape: GroupMemberName, required: true, location: "uri", location_name: "MemberName"))
    DeleteGroupMembershipRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, required: true, location: "uri", location_name: "GroupName"))
    DeleteGroupMembershipRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DeleteGroupMembershipRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "Namespace"))
    DeleteGroupMembershipRequest.struct_class = Types::DeleteGroupMembershipRequest

    DeleteGroupMembershipResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DeleteGroupMembershipResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DeleteGroupMembershipResponse.struct_class = Types::DeleteGroupMembershipResponse

    DeleteGroupRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, required: true, location: "uri", location_name: "GroupName"))
    DeleteGroupRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DeleteGroupRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "Namespace"))
    DeleteGroupRequest.struct_class = Types::DeleteGroupRequest

    DeleteGroupResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DeleteGroupResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DeleteGroupResponse.struct_class = Types::DeleteGroupResponse

    DeleteUserByPrincipalIdRequest.add_member(:principal_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "PrincipalId"))
    DeleteUserByPrincipalIdRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DeleteUserByPrincipalIdRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "Namespace"))
    DeleteUserByPrincipalIdRequest.struct_class = Types::DeleteUserByPrincipalIdRequest

    DeleteUserByPrincipalIdResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DeleteUserByPrincipalIdResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DeleteUserByPrincipalIdResponse.struct_class = Types::DeleteUserByPrincipalIdResponse

    DeleteUserRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, required: true, location: "uri", location_name: "UserName"))
    DeleteUserRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DeleteUserRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "Namespace"))
    DeleteUserRequest.struct_class = Types::DeleteUserRequest

    DeleteUserResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DeleteUserResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DeleteUserResponse.struct_class = Types::DeleteUserResponse

    DescribeGroupRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, required: true, location: "uri", location_name: "GroupName"))
    DescribeGroupRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeGroupRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "Namespace"))
    DescribeGroupRequest.struct_class = Types::DescribeGroupRequest

    DescribeGroupResponse.add_member(:group, Shapes::ShapeRef.new(shape: Group, location_name: "Group"))
    DescribeGroupResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeGroupResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeGroupResponse.struct_class = Types::DescribeGroupResponse

    DescribeUserRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, required: true, location: "uri", location_name: "UserName"))
    DescribeUserRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeUserRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "Namespace"))
    DescribeUserRequest.struct_class = Types::DescribeUserRequest

    DescribeUserResponse.add_member(:user, Shapes::ShapeRef.new(shape: User, location_name: "User"))
    DescribeUserResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeUserResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeUserResponse.struct_class = Types::DescribeUserResponse

    DomainNotWhitelistedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    DomainNotWhitelistedException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DomainNotWhitelistedException.struct_class = Types::DomainNotWhitelistedException

    GetDashboardEmbedUrlRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    GetDashboardEmbedUrlRequest.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "DashboardId"))
    GetDashboardEmbedUrlRequest.add_member(:identity_type, Shapes::ShapeRef.new(shape: IdentityType, required: true, location: "querystring", location_name: "creds-type"))
    GetDashboardEmbedUrlRequest.add_member(:session_lifetime_in_minutes, Shapes::ShapeRef.new(shape: SessionLifetimeInMinutes, location: "querystring", location_name: "session-lifetime"))
    GetDashboardEmbedUrlRequest.add_member(:undo_redo_disabled, Shapes::ShapeRef.new(shape: boolean, location: "querystring", location_name: "undo-redo-disabled"))
    GetDashboardEmbedUrlRequest.add_member(:reset_disabled, Shapes::ShapeRef.new(shape: boolean, location: "querystring", location_name: "reset-disabled"))
    GetDashboardEmbedUrlRequest.struct_class = Types::GetDashboardEmbedUrlRequest

    GetDashboardEmbedUrlResponse.add_member(:embed_url, Shapes::ShapeRef.new(shape: EmbeddingUrl, location_name: "EmbedUrl"))
    GetDashboardEmbedUrlResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    GetDashboardEmbedUrlResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    GetDashboardEmbedUrlResponse.struct_class = Types::GetDashboardEmbedUrlResponse

    Group.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    Group.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, location_name: "GroupName"))
    Group.add_member(:description, Shapes::ShapeRef.new(shape: GroupDescription, location_name: "Description"))
    Group.add_member(:principal_id, Shapes::ShapeRef.new(shape: String, location_name: "PrincipalId"))
    Group.struct_class = Types::Group

    GroupList.member = Shapes::ShapeRef.new(shape: Group)

    GroupMember.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    GroupMember.add_member(:member_name, Shapes::ShapeRef.new(shape: GroupMemberName, location_name: "MemberName"))
    GroupMember.struct_class = Types::GroupMember

    GroupMemberList.member = Shapes::ShapeRef.new(shape: GroupMember)

    IdentityTypeNotSupportedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    IdentityTypeNotSupportedException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    IdentityTypeNotSupportedException.struct_class = Types::IdentityTypeNotSupportedException

    InternalFailureException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalFailureException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    InternalFailureException.struct_class = Types::InternalFailureException

    InvalidNextTokenException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidNextTokenException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    InvalidNextTokenException.struct_class = Types::InvalidNextTokenException

    InvalidParameterValueException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidParameterValueException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    InvalidParameterValueException.struct_class = Types::InvalidParameterValueException

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    LimitExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ExceptionResourceType, location_name: "ResourceType"))
    LimitExceededException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListGroupMembershipsRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, required: true, location: "uri", location_name: "GroupName"))
    ListGroupMembershipsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListGroupMembershipsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results", metadata: {"box"=>true}))
    ListGroupMembershipsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    ListGroupMembershipsRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "Namespace"))
    ListGroupMembershipsRequest.struct_class = Types::ListGroupMembershipsRequest

    ListGroupMembershipsResponse.add_member(:group_member_list, Shapes::ShapeRef.new(shape: GroupMemberList, location_name: "GroupMemberList"))
    ListGroupMembershipsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListGroupMembershipsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ListGroupMembershipsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    ListGroupMembershipsResponse.struct_class = Types::ListGroupMembershipsResponse

    ListGroupsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    ListGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results", metadata: {"box"=>true}))
    ListGroupsRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "Namespace"))
    ListGroupsRequest.struct_class = Types::ListGroupsRequest

    ListGroupsResponse.add_member(:group_list, Shapes::ShapeRef.new(shape: GroupList, location_name: "GroupList"))
    ListGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListGroupsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ListGroupsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    ListGroupsResponse.struct_class = Types::ListGroupsResponse

    ListUserGroupsRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, required: true, location: "uri", location_name: "UserName"))
    ListUserGroupsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    ListUserGroupsRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "Namespace"))
    ListUserGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListUserGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results", metadata: {"box"=>true}))
    ListUserGroupsRequest.struct_class = Types::ListUserGroupsRequest

    ListUserGroupsResponse.add_member(:group_list, Shapes::ShapeRef.new(shape: GroupList, location_name: "GroupList"))
    ListUserGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListUserGroupsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ListUserGroupsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    ListUserGroupsResponse.struct_class = Types::ListUserGroupsResponse

    ListUsersRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    ListUsersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListUsersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results", metadata: {"box"=>true}))
    ListUsersRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "Namespace"))
    ListUsersRequest.struct_class = Types::ListUsersRequest

    ListUsersResponse.add_member(:user_list, Shapes::ShapeRef.new(shape: UserList, location_name: "UserList"))
    ListUsersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListUsersResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ListUsersResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    ListUsersResponse.struct_class = Types::ListUsersResponse

    PreconditionNotMetException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    PreconditionNotMetException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    PreconditionNotMetException.struct_class = Types::PreconditionNotMetException

    QuickSightUserNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    QuickSightUserNotFoundException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    QuickSightUserNotFoundException.struct_class = Types::QuickSightUserNotFoundException

    RegisterUserRequest.add_member(:identity_type, Shapes::ShapeRef.new(shape: IdentityType, required: true, location_name: "IdentityType"))
    RegisterUserRequest.add_member(:email, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Email"))
    RegisterUserRequest.add_member(:user_role, Shapes::ShapeRef.new(shape: UserRole, required: true, location_name: "UserRole"))
    RegisterUserRequest.add_member(:iam_arn, Shapes::ShapeRef.new(shape: String, location_name: "IamArn"))
    RegisterUserRequest.add_member(:session_name, Shapes::ShapeRef.new(shape: RoleSessionName, location_name: "SessionName"))
    RegisterUserRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    RegisterUserRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "Namespace"))
    RegisterUserRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, location_name: "UserName"))
    RegisterUserRequest.struct_class = Types::RegisterUserRequest

    RegisterUserResponse.add_member(:user, Shapes::ShapeRef.new(shape: User, location_name: "User"))
    RegisterUserResponse.add_member(:user_invitation_url, Shapes::ShapeRef.new(shape: String, location_name: "UserInvitationUrl"))
    RegisterUserResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    RegisterUserResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    RegisterUserResponse.struct_class = Types::RegisterUserResponse

    ResourceExistsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceExistsException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ExceptionResourceType, location_name: "ResourceType"))
    ResourceExistsException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ResourceExistsException.struct_class = Types::ResourceExistsException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ExceptionResourceType, location_name: "ResourceType"))
    ResourceNotFoundException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceUnavailableException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ExceptionResourceType, location_name: "ResourceType"))
    ResourceUnavailableException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ResourceUnavailableException.struct_class = Types::ResourceUnavailableException

    SessionLifetimeInMinutesInvalidException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    SessionLifetimeInMinutesInvalidException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    SessionLifetimeInMinutesInvalidException.struct_class = Types::SessionLifetimeInMinutesInvalidException

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ThrottlingException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UnsupportedUserEditionException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    UnsupportedUserEditionException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UnsupportedUserEditionException.struct_class = Types::UnsupportedUserEditionException

    UpdateGroupRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, required: true, location: "uri", location_name: "GroupName"))
    UpdateGroupRequest.add_member(:description, Shapes::ShapeRef.new(shape: GroupDescription, location_name: "Description"))
    UpdateGroupRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    UpdateGroupRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "Namespace"))
    UpdateGroupRequest.struct_class = Types::UpdateGroupRequest

    UpdateGroupResponse.add_member(:group, Shapes::ShapeRef.new(shape: Group, location_name: "Group"))
    UpdateGroupResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UpdateGroupResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    UpdateGroupResponse.struct_class = Types::UpdateGroupResponse

    UpdateUserRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, required: true, location: "uri", location_name: "UserName"))
    UpdateUserRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    UpdateUserRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "Namespace"))
    UpdateUserRequest.add_member(:email, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Email"))
    UpdateUserRequest.add_member(:role, Shapes::ShapeRef.new(shape: UserRole, required: true, location_name: "Role"))
    UpdateUserRequest.struct_class = Types::UpdateUserRequest

    UpdateUserResponse.add_member(:user, Shapes::ShapeRef.new(shape: User, location_name: "User"))
    UpdateUserResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UpdateUserResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    UpdateUserResponse.struct_class = Types::UpdateUserResponse

    User.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    User.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, location_name: "UserName"))
    User.add_member(:email, Shapes::ShapeRef.new(shape: String, location_name: "Email"))
    User.add_member(:role, Shapes::ShapeRef.new(shape: UserRole, location_name: "Role"))
    User.add_member(:identity_type, Shapes::ShapeRef.new(shape: IdentityType, location_name: "IdentityType"))
    User.add_member(:active, Shapes::ShapeRef.new(shape: Boolean, location_name: "Active"))
    User.add_member(:principal_id, Shapes::ShapeRef.new(shape: String, location_name: "PrincipalId"))
    User.struct_class = Types::User

    UserList.member = Shapes::ShapeRef.new(shape: User)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-04-01"

      api.metadata = {
        "apiVersion" => "2018-04-01",
        "endpointPrefix" => "quicksight",
        "jsonVersion" => "1.0",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon QuickSight",
        "serviceId" => "QuickSight",
        "signatureVersion" => "v4",
        "uid" => "quicksight-2018-04-01",
      }

      api.add_operation(:create_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGroup"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups"
        o.input = Shapes::ShapeRef.new(shape: CreateGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionNotMetException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:create_group_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGroupMembership"
        o.http_method = "PUT"
        o.http_request_uri = "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}/members/{MemberName}"
        o.input = Shapes::ShapeRef.new(shape: CreateGroupMembershipRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateGroupMembershipResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionNotMetException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:delete_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGroup"
        o.http_method = "DELETE"
        o.http_request_uri = "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionNotMetException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:delete_group_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGroupMembership"
        o.http_method = "DELETE"
        o.http_request_uri = "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}/members/{MemberName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteGroupMembershipRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteGroupMembershipResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionNotMetException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:delete_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteUser"
        o.http_method = "DELETE"
        o.http_request_uri = "/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteUserRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:delete_user_by_principal_id, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteUserByPrincipalId"
        o.http_method = "DELETE"
        o.http_request_uri = "/accounts/{AwsAccountId}/namespaces/{Namespace}/user-principals/{PrincipalId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteUserByPrincipalIdRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteUserByPrincipalIdResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:describe_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeGroup"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionNotMetException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:describe_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeUser"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeUserRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:get_dashboard_embed_url, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDashboardEmbedUrl"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/dashboards/{DashboardId}/embed-url"
        o.input = Shapes::ShapeRef.new(shape: GetDashboardEmbedUrlRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDashboardEmbedUrlResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionNotMetException)
        o.errors << Shapes::ShapeRef.new(shape: DomainNotWhitelistedException)
        o.errors << Shapes::ShapeRef.new(shape: QuickSightUserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: IdentityTypeNotSupportedException)
        o.errors << Shapes::ShapeRef.new(shape: SessionLifetimeInMinutesInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:list_group_memberships, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGroupMemberships"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}/members"
        o.input = Shapes::ShapeRef.new(shape: ListGroupMembershipsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGroupMembershipsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionNotMetException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:list_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGroups"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups"
        o.input = Shapes::ShapeRef.new(shape: ListGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionNotMetException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:list_user_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListUserGroups"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}/groups"
        o.input = Shapes::ShapeRef.new(shape: ListUserGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListUserGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:list_users, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListUsers"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/namespaces/{Namespace}/users"
        o.input = Shapes::ShapeRef.new(shape: ListUsersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListUsersResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:register_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterUser"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{AwsAccountId}/namespaces/{Namespace}/users"
        o.input = Shapes::ShapeRef.new(shape: RegisterUserRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionNotMetException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:update_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGroup"
        o.http_method = "PUT"
        o.http_request_uri = "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionNotMetException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:update_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateUser"
        o.http_method = "PUT"
        o.http_request_uri = "/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateUserRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)
    end

  end
end
