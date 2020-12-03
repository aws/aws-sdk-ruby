# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::WorkMail
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessControlRule = Shapes::StructureShape.new(name: 'AccessControlRule')
    AccessControlRuleAction = Shapes::StringShape.new(name: 'AccessControlRuleAction')
    AccessControlRuleDescription = Shapes::StringShape.new(name: 'AccessControlRuleDescription')
    AccessControlRuleEffect = Shapes::StringShape.new(name: 'AccessControlRuleEffect')
    AccessControlRuleName = Shapes::StringShape.new(name: 'AccessControlRuleName')
    AccessControlRuleNameList = Shapes::ListShape.new(name: 'AccessControlRuleNameList')
    AccessControlRulesList = Shapes::ListShape.new(name: 'AccessControlRulesList')
    ActionsList = Shapes::ListShape.new(name: 'ActionsList')
    Aliases = Shapes::ListShape.new(name: 'Aliases')
    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    AssociateDelegateToResourceRequest = Shapes::StructureShape.new(name: 'AssociateDelegateToResourceRequest')
    AssociateDelegateToResourceResponse = Shapes::StructureShape.new(name: 'AssociateDelegateToResourceResponse')
    AssociateMemberToGroupRequest = Shapes::StructureShape.new(name: 'AssociateMemberToGroupRequest')
    AssociateMemberToGroupResponse = Shapes::StructureShape.new(name: 'AssociateMemberToGroupResponse')
    BookingOptions = Shapes::StructureShape.new(name: 'BookingOptions')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CancelMailboxExportJobRequest = Shapes::StructureShape.new(name: 'CancelMailboxExportJobRequest')
    CancelMailboxExportJobResponse = Shapes::StructureShape.new(name: 'CancelMailboxExportJobResponse')
    CreateAliasRequest = Shapes::StructureShape.new(name: 'CreateAliasRequest')
    CreateAliasResponse = Shapes::StructureShape.new(name: 'CreateAliasResponse')
    CreateGroupRequest = Shapes::StructureShape.new(name: 'CreateGroupRequest')
    CreateGroupResponse = Shapes::StructureShape.new(name: 'CreateGroupResponse')
    CreateOrganizationRequest = Shapes::StructureShape.new(name: 'CreateOrganizationRequest')
    CreateOrganizationResponse = Shapes::StructureShape.new(name: 'CreateOrganizationResponse')
    CreateResourceRequest = Shapes::StructureShape.new(name: 'CreateResourceRequest')
    CreateResourceResponse = Shapes::StructureShape.new(name: 'CreateResourceResponse')
    CreateUserRequest = Shapes::StructureShape.new(name: 'CreateUserRequest')
    CreateUserResponse = Shapes::StructureShape.new(name: 'CreateUserResponse')
    Delegate = Shapes::StructureShape.new(name: 'Delegate')
    DeleteAccessControlRuleRequest = Shapes::StructureShape.new(name: 'DeleteAccessControlRuleRequest')
    DeleteAccessControlRuleResponse = Shapes::StructureShape.new(name: 'DeleteAccessControlRuleResponse')
    DeleteAliasRequest = Shapes::StructureShape.new(name: 'DeleteAliasRequest')
    DeleteAliasResponse = Shapes::StructureShape.new(name: 'DeleteAliasResponse')
    DeleteGroupRequest = Shapes::StructureShape.new(name: 'DeleteGroupRequest')
    DeleteGroupResponse = Shapes::StructureShape.new(name: 'DeleteGroupResponse')
    DeleteMailboxPermissionsRequest = Shapes::StructureShape.new(name: 'DeleteMailboxPermissionsRequest')
    DeleteMailboxPermissionsResponse = Shapes::StructureShape.new(name: 'DeleteMailboxPermissionsResponse')
    DeleteOrganizationRequest = Shapes::StructureShape.new(name: 'DeleteOrganizationRequest')
    DeleteOrganizationResponse = Shapes::StructureShape.new(name: 'DeleteOrganizationResponse')
    DeleteResourceRequest = Shapes::StructureShape.new(name: 'DeleteResourceRequest')
    DeleteResourceResponse = Shapes::StructureShape.new(name: 'DeleteResourceResponse')
    DeleteRetentionPolicyRequest = Shapes::StructureShape.new(name: 'DeleteRetentionPolicyRequest')
    DeleteRetentionPolicyResponse = Shapes::StructureShape.new(name: 'DeleteRetentionPolicyResponse')
    DeleteUserRequest = Shapes::StructureShape.new(name: 'DeleteUserRequest')
    DeleteUserResponse = Shapes::StructureShape.new(name: 'DeleteUserResponse')
    DeregisterFromWorkMailRequest = Shapes::StructureShape.new(name: 'DeregisterFromWorkMailRequest')
    DeregisterFromWorkMailResponse = Shapes::StructureShape.new(name: 'DeregisterFromWorkMailResponse')
    DescribeGroupRequest = Shapes::StructureShape.new(name: 'DescribeGroupRequest')
    DescribeGroupResponse = Shapes::StructureShape.new(name: 'DescribeGroupResponse')
    DescribeMailboxExportJobRequest = Shapes::StructureShape.new(name: 'DescribeMailboxExportJobRequest')
    DescribeMailboxExportJobResponse = Shapes::StructureShape.new(name: 'DescribeMailboxExportJobResponse')
    DescribeOrganizationRequest = Shapes::StructureShape.new(name: 'DescribeOrganizationRequest')
    DescribeOrganizationResponse = Shapes::StructureShape.new(name: 'DescribeOrganizationResponse')
    DescribeResourceRequest = Shapes::StructureShape.new(name: 'DescribeResourceRequest')
    DescribeResourceResponse = Shapes::StructureShape.new(name: 'DescribeResourceResponse')
    DescribeUserRequest = Shapes::StructureShape.new(name: 'DescribeUserRequest')
    DescribeUserResponse = Shapes::StructureShape.new(name: 'DescribeUserResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    DirectoryId = Shapes::StringShape.new(name: 'DirectoryId')
    DirectoryInUseException = Shapes::StructureShape.new(name: 'DirectoryInUseException')
    DirectoryServiceAuthenticationFailedException = Shapes::StructureShape.new(name: 'DirectoryServiceAuthenticationFailedException')
    DirectoryUnavailableException = Shapes::StructureShape.new(name: 'DirectoryUnavailableException')
    DisassociateDelegateFromResourceRequest = Shapes::StructureShape.new(name: 'DisassociateDelegateFromResourceRequest')
    DisassociateDelegateFromResourceResponse = Shapes::StructureShape.new(name: 'DisassociateDelegateFromResourceResponse')
    DisassociateMemberFromGroupRequest = Shapes::StructureShape.new(name: 'DisassociateMemberFromGroupRequest')
    DisassociateMemberFromGroupResponse = Shapes::StructureShape.new(name: 'DisassociateMemberFromGroupResponse')
    Domain = Shapes::StructureShape.new(name: 'Domain')
    DomainName = Shapes::StringShape.new(name: 'DomainName')
    Domains = Shapes::ListShape.new(name: 'Domains')
    EmailAddress = Shapes::StringShape.new(name: 'EmailAddress')
    EmailAddressInUseException = Shapes::StructureShape.new(name: 'EmailAddressInUseException')
    EntityAlreadyRegisteredException = Shapes::StructureShape.new(name: 'EntityAlreadyRegisteredException')
    EntityNotFoundException = Shapes::StructureShape.new(name: 'EntityNotFoundException')
    EntityState = Shapes::StringShape.new(name: 'EntityState')
    EntityStateException = Shapes::StructureShape.new(name: 'EntityStateException')
    FolderConfiguration = Shapes::StructureShape.new(name: 'FolderConfiguration')
    FolderConfigurations = Shapes::ListShape.new(name: 'FolderConfigurations')
    FolderName = Shapes::StringShape.new(name: 'FolderName')
    GetAccessControlEffectRequest = Shapes::StructureShape.new(name: 'GetAccessControlEffectRequest')
    GetAccessControlEffectResponse = Shapes::StructureShape.new(name: 'GetAccessControlEffectResponse')
    GetDefaultRetentionPolicyRequest = Shapes::StructureShape.new(name: 'GetDefaultRetentionPolicyRequest')
    GetDefaultRetentionPolicyResponse = Shapes::StructureShape.new(name: 'GetDefaultRetentionPolicyResponse')
    GetMailboxDetailsRequest = Shapes::StructureShape.new(name: 'GetMailboxDetailsRequest')
    GetMailboxDetailsResponse = Shapes::StructureShape.new(name: 'GetMailboxDetailsResponse')
    Group = Shapes::StructureShape.new(name: 'Group')
    GroupName = Shapes::StringShape.new(name: 'GroupName')
    Groups = Shapes::ListShape.new(name: 'Groups')
    HostedZoneId = Shapes::StringShape.new(name: 'HostedZoneId')
    IdempotencyClientToken = Shapes::StringShape.new(name: 'IdempotencyClientToken')
    InvalidConfigurationException = Shapes::StructureShape.new(name: 'InvalidConfigurationException')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    InvalidPasswordException = Shapes::StructureShape.new(name: 'InvalidPasswordException')
    IpAddress = Shapes::StringShape.new(name: 'IpAddress')
    IpRange = Shapes::StringShape.new(name: 'IpRange')
    IpRangeList = Shapes::ListShape.new(name: 'IpRangeList')
    Jobs = Shapes::ListShape.new(name: 'Jobs')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListAccessControlRulesRequest = Shapes::StructureShape.new(name: 'ListAccessControlRulesRequest')
    ListAccessControlRulesResponse = Shapes::StructureShape.new(name: 'ListAccessControlRulesResponse')
    ListAliasesRequest = Shapes::StructureShape.new(name: 'ListAliasesRequest')
    ListAliasesResponse = Shapes::StructureShape.new(name: 'ListAliasesResponse')
    ListGroupMembersRequest = Shapes::StructureShape.new(name: 'ListGroupMembersRequest')
    ListGroupMembersResponse = Shapes::StructureShape.new(name: 'ListGroupMembersResponse')
    ListGroupsRequest = Shapes::StructureShape.new(name: 'ListGroupsRequest')
    ListGroupsResponse = Shapes::StructureShape.new(name: 'ListGroupsResponse')
    ListMailboxExportJobsRequest = Shapes::StructureShape.new(name: 'ListMailboxExportJobsRequest')
    ListMailboxExportJobsResponse = Shapes::StructureShape.new(name: 'ListMailboxExportJobsResponse')
    ListMailboxPermissionsRequest = Shapes::StructureShape.new(name: 'ListMailboxPermissionsRequest')
    ListMailboxPermissionsResponse = Shapes::StructureShape.new(name: 'ListMailboxPermissionsResponse')
    ListOrganizationsRequest = Shapes::StructureShape.new(name: 'ListOrganizationsRequest')
    ListOrganizationsResponse = Shapes::StructureShape.new(name: 'ListOrganizationsResponse')
    ListResourceDelegatesRequest = Shapes::StructureShape.new(name: 'ListResourceDelegatesRequest')
    ListResourceDelegatesResponse = Shapes::StructureShape.new(name: 'ListResourceDelegatesResponse')
    ListResourcesRequest = Shapes::StructureShape.new(name: 'ListResourcesRequest')
    ListResourcesResponse = Shapes::StructureShape.new(name: 'ListResourcesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListUsersRequest = Shapes::StructureShape.new(name: 'ListUsersRequest')
    ListUsersResponse = Shapes::StructureShape.new(name: 'ListUsersResponse')
    MailDomainNotFoundException = Shapes::StructureShape.new(name: 'MailDomainNotFoundException')
    MailDomainStateException = Shapes::StructureShape.new(name: 'MailDomainStateException')
    MailboxExportErrorInfo = Shapes::StringShape.new(name: 'MailboxExportErrorInfo')
    MailboxExportJob = Shapes::StructureShape.new(name: 'MailboxExportJob')
    MailboxExportJobId = Shapes::StringShape.new(name: 'MailboxExportJobId')
    MailboxExportJobState = Shapes::StringShape.new(name: 'MailboxExportJobState')
    MailboxQuota = Shapes::IntegerShape.new(name: 'MailboxQuota')
    MailboxSize = Shapes::FloatShape.new(name: 'MailboxSize')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Member = Shapes::StructureShape.new(name: 'Member')
    MemberType = Shapes::StringShape.new(name: 'MemberType')
    Members = Shapes::ListShape.new(name: 'Members')
    NameAvailabilityException = Shapes::StructureShape.new(name: 'NameAvailabilityException')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OrganizationId = Shapes::StringShape.new(name: 'OrganizationId')
    OrganizationName = Shapes::StringShape.new(name: 'OrganizationName')
    OrganizationNotFoundException = Shapes::StructureShape.new(name: 'OrganizationNotFoundException')
    OrganizationStateException = Shapes::StructureShape.new(name: 'OrganizationStateException')
    OrganizationSummaries = Shapes::ListShape.new(name: 'OrganizationSummaries')
    OrganizationSummary = Shapes::StructureShape.new(name: 'OrganizationSummary')
    Password = Shapes::StringShape.new(name: 'Password')
    Percentage = Shapes::IntegerShape.new(name: 'Percentage')
    Permission = Shapes::StructureShape.new(name: 'Permission')
    PermissionType = Shapes::StringShape.new(name: 'PermissionType')
    PermissionValues = Shapes::ListShape.new(name: 'PermissionValues')
    Permissions = Shapes::ListShape.new(name: 'Permissions')
    PolicyDescription = Shapes::StringShape.new(name: 'PolicyDescription')
    PutAccessControlRuleRequest = Shapes::StructureShape.new(name: 'PutAccessControlRuleRequest')
    PutAccessControlRuleResponse = Shapes::StructureShape.new(name: 'PutAccessControlRuleResponse')
    PutMailboxPermissionsRequest = Shapes::StructureShape.new(name: 'PutMailboxPermissionsRequest')
    PutMailboxPermissionsResponse = Shapes::StructureShape.new(name: 'PutMailboxPermissionsResponse')
    PutRetentionPolicyRequest = Shapes::StructureShape.new(name: 'PutRetentionPolicyRequest')
    PutRetentionPolicyResponse = Shapes::StructureShape.new(name: 'PutRetentionPolicyResponse')
    RegisterToWorkMailRequest = Shapes::StructureShape.new(name: 'RegisterToWorkMailRequest')
    RegisterToWorkMailResponse = Shapes::StructureShape.new(name: 'RegisterToWorkMailResponse')
    ReservedNameException = Shapes::StructureShape.new(name: 'ReservedNameException')
    ResetPasswordRequest = Shapes::StructureShape.new(name: 'ResetPasswordRequest')
    ResetPasswordResponse = Shapes::StructureShape.new(name: 'ResetPasswordResponse')
    Resource = Shapes::StructureShape.new(name: 'Resource')
    ResourceDelegates = Shapes::ListShape.new(name: 'ResourceDelegates')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    Resources = Shapes::ListShape.new(name: 'Resources')
    RetentionAction = Shapes::StringShape.new(name: 'RetentionAction')
    RetentionPeriod = Shapes::IntegerShape.new(name: 'RetentionPeriod')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    S3BucketName = Shapes::StringShape.new(name: 'S3BucketName')
    S3ObjectKey = Shapes::StringShape.new(name: 'S3ObjectKey')
    ShortString = Shapes::StringShape.new(name: 'ShortString')
    StartMailboxExportJobRequest = Shapes::StructureShape.new(name: 'StartMailboxExportJobRequest')
    StartMailboxExportJobResponse = Shapes::StructureShape.new(name: 'StartMailboxExportJobResponse')
    String = Shapes::StringShape.new(name: 'String')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TooManyTagsException = Shapes::StructureShape.new(name: 'TooManyTagsException')
    UnsupportedOperationException = Shapes::StructureShape.new(name: 'UnsupportedOperationException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateMailboxQuotaRequest = Shapes::StructureShape.new(name: 'UpdateMailboxQuotaRequest')
    UpdateMailboxQuotaResponse = Shapes::StructureShape.new(name: 'UpdateMailboxQuotaResponse')
    UpdatePrimaryEmailAddressRequest = Shapes::StructureShape.new(name: 'UpdatePrimaryEmailAddressRequest')
    UpdatePrimaryEmailAddressResponse = Shapes::StructureShape.new(name: 'UpdatePrimaryEmailAddressResponse')
    UpdateResourceRequest = Shapes::StructureShape.new(name: 'UpdateResourceRequest')
    UpdateResourceResponse = Shapes::StructureShape.new(name: 'UpdateResourceResponse')
    User = Shapes::StructureShape.new(name: 'User')
    UserIdList = Shapes::ListShape.new(name: 'UserIdList')
    UserName = Shapes::StringShape.new(name: 'UserName')
    UserRole = Shapes::StringShape.new(name: 'UserRole')
    Users = Shapes::ListShape.new(name: 'Users')
    WorkMailIdentifier = Shapes::StringShape.new(name: 'WorkMailIdentifier')

    AccessControlRule.add_member(:name, Shapes::ShapeRef.new(shape: AccessControlRuleName, location_name: "Name"))
    AccessControlRule.add_member(:effect, Shapes::ShapeRef.new(shape: AccessControlRuleEffect, location_name: "Effect"))
    AccessControlRule.add_member(:description, Shapes::ShapeRef.new(shape: AccessControlRuleDescription, location_name: "Description"))
    AccessControlRule.add_member(:ip_ranges, Shapes::ShapeRef.new(shape: IpRangeList, location_name: "IpRanges"))
    AccessControlRule.add_member(:not_ip_ranges, Shapes::ShapeRef.new(shape: IpRangeList, location_name: "NotIpRanges"))
    AccessControlRule.add_member(:actions, Shapes::ShapeRef.new(shape: ActionsList, location_name: "Actions"))
    AccessControlRule.add_member(:not_actions, Shapes::ShapeRef.new(shape: ActionsList, location_name: "NotActions"))
    AccessControlRule.add_member(:user_ids, Shapes::ShapeRef.new(shape: UserIdList, location_name: "UserIds"))
    AccessControlRule.add_member(:not_user_ids, Shapes::ShapeRef.new(shape: UserIdList, location_name: "NotUserIds"))
    AccessControlRule.add_member(:date_created, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DateCreated"))
    AccessControlRule.add_member(:date_modified, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DateModified"))
    AccessControlRule.struct_class = Types::AccessControlRule

    AccessControlRuleNameList.member = Shapes::ShapeRef.new(shape: AccessControlRuleName)

    AccessControlRulesList.member = Shapes::ShapeRef.new(shape: AccessControlRule)

    ActionsList.member = Shapes::ShapeRef.new(shape: AccessControlRuleAction)

    Aliases.member = Shapes::ShapeRef.new(shape: EmailAddress)

    AssociateDelegateToResourceRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, required: true, location_name: "OrganizationId"))
    AssociateDelegateToResourceRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResourceId"))
    AssociateDelegateToResourceRequest.add_member(:entity_id, Shapes::ShapeRef.new(shape: WorkMailIdentifier, required: true, location_name: "EntityId"))
    AssociateDelegateToResourceRequest.struct_class = Types::AssociateDelegateToResourceRequest

    AssociateDelegateToResourceResponse.struct_class = Types::AssociateDelegateToResourceResponse

    AssociateMemberToGroupRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, required: true, location_name: "OrganizationId"))
    AssociateMemberToGroupRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: WorkMailIdentifier, required: true, location_name: "GroupId"))
    AssociateMemberToGroupRequest.add_member(:member_id, Shapes::ShapeRef.new(shape: WorkMailIdentifier, required: true, location_name: "MemberId"))
    AssociateMemberToGroupRequest.struct_class = Types::AssociateMemberToGroupRequest

    AssociateMemberToGroupResponse.struct_class = Types::AssociateMemberToGroupResponse

    BookingOptions.add_member(:auto_accept_requests, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoAcceptRequests"))
    BookingOptions.add_member(:auto_decline_recurring_requests, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoDeclineRecurringRequests"))
    BookingOptions.add_member(:auto_decline_conflicting_requests, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoDeclineConflictingRequests"))
    BookingOptions.struct_class = Types::BookingOptions

    CancelMailboxExportJobRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyClientToken, required: true, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CancelMailboxExportJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: MailboxExportJobId, required: true, location_name: "JobId"))
    CancelMailboxExportJobRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, required: true, location_name: "OrganizationId"))
    CancelMailboxExportJobRequest.struct_class = Types::CancelMailboxExportJobRequest

    CancelMailboxExportJobResponse.struct_class = Types::CancelMailboxExportJobResponse

    CreateAliasRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, required: true, location_name: "OrganizationId"))
    CreateAliasRequest.add_member(:entity_id, Shapes::ShapeRef.new(shape: WorkMailIdentifier, required: true, location_name: "EntityId"))
    CreateAliasRequest.add_member(:alias, Shapes::ShapeRef.new(shape: EmailAddress, required: true, location_name: "Alias"))
    CreateAliasRequest.struct_class = Types::CreateAliasRequest

    CreateAliasResponse.struct_class = Types::CreateAliasResponse

    CreateGroupRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, required: true, location_name: "OrganizationId"))
    CreateGroupRequest.add_member(:name, Shapes::ShapeRef.new(shape: GroupName, required: true, location_name: "Name"))
    CreateGroupRequest.struct_class = Types::CreateGroupRequest

    CreateGroupResponse.add_member(:group_id, Shapes::ShapeRef.new(shape: WorkMailIdentifier, location_name: "GroupId"))
    CreateGroupResponse.struct_class = Types::CreateGroupResponse

    CreateOrganizationRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: DirectoryId, location_name: "DirectoryId"))
    CreateOrganizationRequest.add_member(:alias, Shapes::ShapeRef.new(shape: OrganizationName, required: true, location_name: "Alias"))
    CreateOrganizationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateOrganizationRequest.add_member(:domains, Shapes::ShapeRef.new(shape: Domains, location_name: "Domains"))
    CreateOrganizationRequest.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "KmsKeyArn"))
    CreateOrganizationRequest.add_member(:enable_interoperability, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableInteroperability"))
    CreateOrganizationRequest.struct_class = Types::CreateOrganizationRequest

    CreateOrganizationResponse.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, location_name: "OrganizationId"))
    CreateOrganizationResponse.struct_class = Types::CreateOrganizationResponse

    CreateResourceRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, required: true, location_name: "OrganizationId"))
    CreateResourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "Name"))
    CreateResourceRequest.add_member(:type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "Type"))
    CreateResourceRequest.struct_class = Types::CreateResourceRequest

    CreateResourceResponse.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId"))
    CreateResourceResponse.struct_class = Types::CreateResourceResponse

    CreateUserRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, required: true, location_name: "OrganizationId"))
    CreateUserRequest.add_member(:name, Shapes::ShapeRef.new(shape: UserName, required: true, location_name: "Name"))
    CreateUserRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DisplayName"))
    CreateUserRequest.add_member(:password, Shapes::ShapeRef.new(shape: Password, required: true, location_name: "Password"))
    CreateUserRequest.struct_class = Types::CreateUserRequest

    CreateUserResponse.add_member(:user_id, Shapes::ShapeRef.new(shape: WorkMailIdentifier, location_name: "UserId"))
    CreateUserResponse.struct_class = Types::CreateUserResponse

    Delegate.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Id"))
    Delegate.add_member(:type, Shapes::ShapeRef.new(shape: MemberType, required: true, location_name: "Type"))
    Delegate.struct_class = Types::Delegate

    DeleteAccessControlRuleRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, required: true, location_name: "OrganizationId"))
    DeleteAccessControlRuleRequest.add_member(:name, Shapes::ShapeRef.new(shape: AccessControlRuleName, required: true, location_name: "Name"))
    DeleteAccessControlRuleRequest.struct_class = Types::DeleteAccessControlRuleRequest

    DeleteAccessControlRuleResponse.struct_class = Types::DeleteAccessControlRuleResponse

    DeleteAliasRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, required: true, location_name: "OrganizationId"))
    DeleteAliasRequest.add_member(:entity_id, Shapes::ShapeRef.new(shape: WorkMailIdentifier, required: true, location_name: "EntityId"))
    DeleteAliasRequest.add_member(:alias, Shapes::ShapeRef.new(shape: EmailAddress, required: true, location_name: "Alias"))
    DeleteAliasRequest.struct_class = Types::DeleteAliasRequest

    DeleteAliasResponse.struct_class = Types::DeleteAliasResponse

    DeleteGroupRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, required: true, location_name: "OrganizationId"))
    DeleteGroupRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: WorkMailIdentifier, required: true, location_name: "GroupId"))
    DeleteGroupRequest.struct_class = Types::DeleteGroupRequest

    DeleteGroupResponse.struct_class = Types::DeleteGroupResponse

    DeleteMailboxPermissionsRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, required: true, location_name: "OrganizationId"))
    DeleteMailboxPermissionsRequest.add_member(:entity_id, Shapes::ShapeRef.new(shape: WorkMailIdentifier, required: true, location_name: "EntityId"))
    DeleteMailboxPermissionsRequest.add_member(:grantee_id, Shapes::ShapeRef.new(shape: WorkMailIdentifier, required: true, location_name: "GranteeId"))
    DeleteMailboxPermissionsRequest.struct_class = Types::DeleteMailboxPermissionsRequest

    DeleteMailboxPermissionsResponse.struct_class = Types::DeleteMailboxPermissionsResponse

    DeleteOrganizationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    DeleteOrganizationRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, required: true, location_name: "OrganizationId"))
    DeleteOrganizationRequest.add_member(:delete_directory, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "DeleteDirectory"))
    DeleteOrganizationRequest.struct_class = Types::DeleteOrganizationRequest

    DeleteOrganizationResponse.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, location_name: "OrganizationId"))
    DeleteOrganizationResponse.add_member(:state, Shapes::ShapeRef.new(shape: String, location_name: "State"))
    DeleteOrganizationResponse.struct_class = Types::DeleteOrganizationResponse

    DeleteResourceRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, required: true, location_name: "OrganizationId"))
    DeleteResourceRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResourceId"))
    DeleteResourceRequest.struct_class = Types::DeleteResourceRequest

    DeleteResourceResponse.struct_class = Types::DeleteResourceResponse

    DeleteRetentionPolicyRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, required: true, location_name: "OrganizationId"))
    DeleteRetentionPolicyRequest.add_member(:id, Shapes::ShapeRef.new(shape: ShortString, required: true, location_name: "Id"))
    DeleteRetentionPolicyRequest.struct_class = Types::DeleteRetentionPolicyRequest

    DeleteRetentionPolicyResponse.struct_class = Types::DeleteRetentionPolicyResponse

    DeleteUserRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, required: true, location_name: "OrganizationId"))
    DeleteUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: WorkMailIdentifier, required: true, location_name: "UserId"))
    DeleteUserRequest.struct_class = Types::DeleteUserRequest

    DeleteUserResponse.struct_class = Types::DeleteUserResponse

    DeregisterFromWorkMailRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, required: true, location_name: "OrganizationId"))
    DeregisterFromWorkMailRequest.add_member(:entity_id, Shapes::ShapeRef.new(shape: WorkMailIdentifier, required: true, location_name: "EntityId"))
    DeregisterFromWorkMailRequest.struct_class = Types::DeregisterFromWorkMailRequest

    DeregisterFromWorkMailResponse.struct_class = Types::DeregisterFromWorkMailResponse

    DescribeGroupRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, required: true, location_name: "OrganizationId"))
    DescribeGroupRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: WorkMailIdentifier, required: true, location_name: "GroupId"))
    DescribeGroupRequest.struct_class = Types::DescribeGroupRequest

    DescribeGroupResponse.add_member(:group_id, Shapes::ShapeRef.new(shape: WorkMailIdentifier, location_name: "GroupId"))
    DescribeGroupResponse.add_member(:name, Shapes::ShapeRef.new(shape: GroupName, location_name: "Name"))
    DescribeGroupResponse.add_member(:email, Shapes::ShapeRef.new(shape: EmailAddress, location_name: "Email"))
    DescribeGroupResponse.add_member(:state, Shapes::ShapeRef.new(shape: EntityState, location_name: "State"))
    DescribeGroupResponse.add_member(:enabled_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EnabledDate"))
    DescribeGroupResponse.add_member(:disabled_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DisabledDate"))
    DescribeGroupResponse.struct_class = Types::DescribeGroupResponse

    DescribeMailboxExportJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: MailboxExportJobId, required: true, location_name: "JobId"))
    DescribeMailboxExportJobRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, required: true, location_name: "OrganizationId"))
    DescribeMailboxExportJobRequest.struct_class = Types::DescribeMailboxExportJobRequest

    DescribeMailboxExportJobResponse.add_member(:entity_id, Shapes::ShapeRef.new(shape: WorkMailIdentifier, location_name: "EntityId"))
    DescribeMailboxExportJobResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    DescribeMailboxExportJobResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    DescribeMailboxExportJobResponse.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "KmsKeyArn"))
    DescribeMailboxExportJobResponse.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "S3BucketName"))
    DescribeMailboxExportJobResponse.add_member(:s3_prefix, Shapes::ShapeRef.new(shape: S3ObjectKey, location_name: "S3Prefix"))
    DescribeMailboxExportJobResponse.add_member(:s3_path, Shapes::ShapeRef.new(shape: S3ObjectKey, location_name: "S3Path"))
    DescribeMailboxExportJobResponse.add_member(:estimated_progress, Shapes::ShapeRef.new(shape: Percentage, location_name: "EstimatedProgress"))
    DescribeMailboxExportJobResponse.add_member(:state, Shapes::ShapeRef.new(shape: MailboxExportJobState, location_name: "State"))
    DescribeMailboxExportJobResponse.add_member(:error_info, Shapes::ShapeRef.new(shape: MailboxExportErrorInfo, location_name: "ErrorInfo"))
    DescribeMailboxExportJobResponse.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime"))
    DescribeMailboxExportJobResponse.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    DescribeMailboxExportJobResponse.struct_class = Types::DescribeMailboxExportJobResponse

    DescribeOrganizationRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, required: true, location_name: "OrganizationId"))
    DescribeOrganizationRequest.struct_class = Types::DescribeOrganizationRequest

    DescribeOrganizationResponse.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, location_name: "OrganizationId"))
    DescribeOrganizationResponse.add_member(:alias, Shapes::ShapeRef.new(shape: OrganizationName, location_name: "Alias"))
    DescribeOrganizationResponse.add_member(:state, Shapes::ShapeRef.new(shape: String, location_name: "State"))
    DescribeOrganizationResponse.add_member(:directory_id, Shapes::ShapeRef.new(shape: String, location_name: "DirectoryId"))
    DescribeOrganizationResponse.add_member(:directory_type, Shapes::ShapeRef.new(shape: String, location_name: "DirectoryType"))
    DescribeOrganizationResponse.add_member(:default_mail_domain, Shapes::ShapeRef.new(shape: String, location_name: "DefaultMailDomain"))
    DescribeOrganizationResponse.add_member(:completed_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CompletedDate"))
    DescribeOrganizationResponse.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    DescribeOrganizationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "ARN"))
    DescribeOrganizationResponse.struct_class = Types::DescribeOrganizationResponse

    DescribeResourceRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, required: true, location_name: "OrganizationId"))
    DescribeResourceRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResourceId"))
    DescribeResourceRequest.struct_class = Types::DescribeResourceRequest

    DescribeResourceResponse.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId"))
    DescribeResourceResponse.add_member(:email, Shapes::ShapeRef.new(shape: EmailAddress, location_name: "Email"))
    DescribeResourceResponse.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    DescribeResourceResponse.add_member(:type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "Type"))
    DescribeResourceResponse.add_member(:booking_options, Shapes::ShapeRef.new(shape: BookingOptions, location_name: "BookingOptions"))
    DescribeResourceResponse.add_member(:state, Shapes::ShapeRef.new(shape: EntityState, location_name: "State"))
    DescribeResourceResponse.add_member(:enabled_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EnabledDate"))
    DescribeResourceResponse.add_member(:disabled_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DisabledDate"))
    DescribeResourceResponse.struct_class = Types::DescribeResourceResponse

    DescribeUserRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, required: true, location_name: "OrganizationId"))
    DescribeUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: WorkMailIdentifier, required: true, location_name: "UserId"))
    DescribeUserRequest.struct_class = Types::DescribeUserRequest

    DescribeUserResponse.add_member(:user_id, Shapes::ShapeRef.new(shape: WorkMailIdentifier, location_name: "UserId"))
    DescribeUserResponse.add_member(:name, Shapes::ShapeRef.new(shape: UserName, location_name: "Name"))
    DescribeUserResponse.add_member(:email, Shapes::ShapeRef.new(shape: EmailAddress, location_name: "Email"))
    DescribeUserResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "DisplayName"))
    DescribeUserResponse.add_member(:state, Shapes::ShapeRef.new(shape: EntityState, location_name: "State"))
    DescribeUserResponse.add_member(:user_role, Shapes::ShapeRef.new(shape: UserRole, location_name: "UserRole"))
    DescribeUserResponse.add_member(:enabled_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EnabledDate"))
    DescribeUserResponse.add_member(:disabled_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DisabledDate"))
    DescribeUserResponse.struct_class = Types::DescribeUserResponse

    DirectoryInUseException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    DirectoryInUseException.struct_class = Types::DirectoryInUseException

    DirectoryServiceAuthenticationFailedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    DirectoryServiceAuthenticationFailedException.struct_class = Types::DirectoryServiceAuthenticationFailedException

    DirectoryUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    DirectoryUnavailableException.struct_class = Types::DirectoryUnavailableException

    DisassociateDelegateFromResourceRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, required: true, location_name: "OrganizationId"))
    DisassociateDelegateFromResourceRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResourceId"))
    DisassociateDelegateFromResourceRequest.add_member(:entity_id, Shapes::ShapeRef.new(shape: WorkMailIdentifier, required: true, location_name: "EntityId"))
    DisassociateDelegateFromResourceRequest.struct_class = Types::DisassociateDelegateFromResourceRequest

    DisassociateDelegateFromResourceResponse.struct_class = Types::DisassociateDelegateFromResourceResponse

    DisassociateMemberFromGroupRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, required: true, location_name: "OrganizationId"))
    DisassociateMemberFromGroupRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: WorkMailIdentifier, required: true, location_name: "GroupId"))
    DisassociateMemberFromGroupRequest.add_member(:member_id, Shapes::ShapeRef.new(shape: WorkMailIdentifier, required: true, location_name: "MemberId"))
    DisassociateMemberFromGroupRequest.struct_class = Types::DisassociateMemberFromGroupRequest

    DisassociateMemberFromGroupResponse.struct_class = Types::DisassociateMemberFromGroupResponse

    Domain.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName"))
    Domain.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: HostedZoneId, location_name: "HostedZoneId"))
    Domain.struct_class = Types::Domain

    Domains.member = Shapes::ShapeRef.new(shape: Domain)

    EmailAddressInUseException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    EmailAddressInUseException.struct_class = Types::EmailAddressInUseException

    EntityAlreadyRegisteredException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    EntityAlreadyRegisteredException.struct_class = Types::EntityAlreadyRegisteredException

    EntityNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    EntityNotFoundException.struct_class = Types::EntityNotFoundException

    EntityStateException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    EntityStateException.struct_class = Types::EntityStateException

    FolderConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: FolderName, required: true, location_name: "Name"))
    FolderConfiguration.add_member(:action, Shapes::ShapeRef.new(shape: RetentionAction, required: true, location_name: "Action"))
    FolderConfiguration.add_member(:period, Shapes::ShapeRef.new(shape: RetentionPeriod, location_name: "Period"))
    FolderConfiguration.struct_class = Types::FolderConfiguration

    FolderConfigurations.member = Shapes::ShapeRef.new(shape: FolderConfiguration)

    GetAccessControlEffectRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, required: true, location_name: "OrganizationId"))
    GetAccessControlEffectRequest.add_member(:ip_address, Shapes::ShapeRef.new(shape: IpAddress, required: true, location_name: "IpAddress"))
    GetAccessControlEffectRequest.add_member(:action, Shapes::ShapeRef.new(shape: AccessControlRuleAction, required: true, location_name: "Action"))
    GetAccessControlEffectRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: WorkMailIdentifier, required: true, location_name: "UserId"))
    GetAccessControlEffectRequest.struct_class = Types::GetAccessControlEffectRequest

    GetAccessControlEffectResponse.add_member(:effect, Shapes::ShapeRef.new(shape: AccessControlRuleEffect, location_name: "Effect"))
    GetAccessControlEffectResponse.add_member(:matched_rules, Shapes::ShapeRef.new(shape: AccessControlRuleNameList, location_name: "MatchedRules"))
    GetAccessControlEffectResponse.struct_class = Types::GetAccessControlEffectResponse

    GetDefaultRetentionPolicyRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, required: true, location_name: "OrganizationId"))
    GetDefaultRetentionPolicyRequest.struct_class = Types::GetDefaultRetentionPolicyRequest

    GetDefaultRetentionPolicyResponse.add_member(:id, Shapes::ShapeRef.new(shape: ShortString, location_name: "Id"))
    GetDefaultRetentionPolicyResponse.add_member(:name, Shapes::ShapeRef.new(shape: ShortString, location_name: "Name"))
    GetDefaultRetentionPolicyResponse.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    GetDefaultRetentionPolicyResponse.add_member(:folder_configurations, Shapes::ShapeRef.new(shape: FolderConfigurations, location_name: "FolderConfigurations"))
    GetDefaultRetentionPolicyResponse.struct_class = Types::GetDefaultRetentionPolicyResponse

    GetMailboxDetailsRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, required: true, location_name: "OrganizationId"))
    GetMailboxDetailsRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: WorkMailIdentifier, required: true, location_name: "UserId"))
    GetMailboxDetailsRequest.struct_class = Types::GetMailboxDetailsRequest

    GetMailboxDetailsResponse.add_member(:mailbox_quota, Shapes::ShapeRef.new(shape: MailboxQuota, location_name: "MailboxQuota"))
    GetMailboxDetailsResponse.add_member(:mailbox_size, Shapes::ShapeRef.new(shape: MailboxSize, location_name: "MailboxSize"))
    GetMailboxDetailsResponse.struct_class = Types::GetMailboxDetailsResponse

    Group.add_member(:id, Shapes::ShapeRef.new(shape: WorkMailIdentifier, location_name: "Id"))
    Group.add_member(:email, Shapes::ShapeRef.new(shape: EmailAddress, location_name: "Email"))
    Group.add_member(:name, Shapes::ShapeRef.new(shape: GroupName, location_name: "Name"))
    Group.add_member(:state, Shapes::ShapeRef.new(shape: EntityState, location_name: "State"))
    Group.add_member(:enabled_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EnabledDate"))
    Group.add_member(:disabled_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DisabledDate"))
    Group.struct_class = Types::Group

    Groups.member = Shapes::ShapeRef.new(shape: Group)

    InvalidConfigurationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidConfigurationException.struct_class = Types::InvalidConfigurationException

    InvalidParameterException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidParameterException.struct_class = Types::InvalidParameterException

    InvalidPasswordException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidPasswordException.struct_class = Types::InvalidPasswordException

    IpRangeList.member = Shapes::ShapeRef.new(shape: IpRange)

    Jobs.member = Shapes::ShapeRef.new(shape: MailboxExportJob)

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListAccessControlRulesRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, required: true, location_name: "OrganizationId"))
    ListAccessControlRulesRequest.struct_class = Types::ListAccessControlRulesRequest

    ListAccessControlRulesResponse.add_member(:rules, Shapes::ShapeRef.new(shape: AccessControlRulesList, location_name: "Rules"))
    ListAccessControlRulesResponse.struct_class = Types::ListAccessControlRulesResponse

    ListAliasesRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, required: true, location_name: "OrganizationId"))
    ListAliasesRequest.add_member(:entity_id, Shapes::ShapeRef.new(shape: WorkMailIdentifier, required: true, location_name: "EntityId"))
    ListAliasesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAliasesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListAliasesRequest.struct_class = Types::ListAliasesRequest

    ListAliasesResponse.add_member(:aliases, Shapes::ShapeRef.new(shape: Aliases, location_name: "Aliases"))
    ListAliasesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAliasesResponse.struct_class = Types::ListAliasesResponse

    ListGroupMembersRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, required: true, location_name: "OrganizationId"))
    ListGroupMembersRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: WorkMailIdentifier, required: true, location_name: "GroupId"))
    ListGroupMembersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGroupMembersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListGroupMembersRequest.struct_class = Types::ListGroupMembersRequest

    ListGroupMembersResponse.add_member(:members, Shapes::ShapeRef.new(shape: Members, location_name: "Members"))
    ListGroupMembersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGroupMembersResponse.struct_class = Types::ListGroupMembersResponse

    ListGroupsRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, required: true, location_name: "OrganizationId"))
    ListGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListGroupsRequest.struct_class = Types::ListGroupsRequest

    ListGroupsResponse.add_member(:groups, Shapes::ShapeRef.new(shape: Groups, location_name: "Groups"))
    ListGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGroupsResponse.struct_class = Types::ListGroupsResponse

    ListMailboxExportJobsRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, required: true, location_name: "OrganizationId"))
    ListMailboxExportJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListMailboxExportJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListMailboxExportJobsRequest.struct_class = Types::ListMailboxExportJobsRequest

    ListMailboxExportJobsResponse.add_member(:jobs, Shapes::ShapeRef.new(shape: Jobs, location_name: "Jobs"))
    ListMailboxExportJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListMailboxExportJobsResponse.struct_class = Types::ListMailboxExportJobsResponse

    ListMailboxPermissionsRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, required: true, location_name: "OrganizationId"))
    ListMailboxPermissionsRequest.add_member(:entity_id, Shapes::ShapeRef.new(shape: WorkMailIdentifier, required: true, location_name: "EntityId"))
    ListMailboxPermissionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListMailboxPermissionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListMailboxPermissionsRequest.struct_class = Types::ListMailboxPermissionsRequest

    ListMailboxPermissionsResponse.add_member(:permissions, Shapes::ShapeRef.new(shape: Permissions, location_name: "Permissions"))
    ListMailboxPermissionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListMailboxPermissionsResponse.struct_class = Types::ListMailboxPermissionsResponse

    ListOrganizationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListOrganizationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListOrganizationsRequest.struct_class = Types::ListOrganizationsRequest

    ListOrganizationsResponse.add_member(:organization_summaries, Shapes::ShapeRef.new(shape: OrganizationSummaries, location_name: "OrganizationSummaries"))
    ListOrganizationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListOrganizationsResponse.struct_class = Types::ListOrganizationsResponse

    ListResourceDelegatesRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, required: true, location_name: "OrganizationId"))
    ListResourceDelegatesRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: WorkMailIdentifier, required: true, location_name: "ResourceId"))
    ListResourceDelegatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResourceDelegatesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListResourceDelegatesRequest.struct_class = Types::ListResourceDelegatesRequest

    ListResourceDelegatesResponse.add_member(:delegates, Shapes::ShapeRef.new(shape: ResourceDelegates, location_name: "Delegates"))
    ListResourceDelegatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResourceDelegatesResponse.struct_class = Types::ListResourceDelegatesResponse

    ListResourcesRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, required: true, location_name: "OrganizationId"))
    ListResourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListResourcesRequest.struct_class = Types::ListResourcesRequest

    ListResourcesResponse.add_member(:resources, Shapes::ShapeRef.new(shape: Resources, location_name: "Resources"))
    ListResourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResourcesResponse.struct_class = Types::ListResourcesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListUsersRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, required: true, location_name: "OrganizationId"))
    ListUsersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListUsersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListUsersRequest.struct_class = Types::ListUsersRequest

    ListUsersResponse.add_member(:users, Shapes::ShapeRef.new(shape: Users, location_name: "Users"))
    ListUsersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListUsersResponse.struct_class = Types::ListUsersResponse

    MailDomainNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    MailDomainNotFoundException.struct_class = Types::MailDomainNotFoundException

    MailDomainStateException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    MailDomainStateException.struct_class = Types::MailDomainStateException

    MailboxExportJob.add_member(:job_id, Shapes::ShapeRef.new(shape: MailboxExportJobId, location_name: "JobId"))
    MailboxExportJob.add_member(:entity_id, Shapes::ShapeRef.new(shape: WorkMailIdentifier, location_name: "EntityId"))
    MailboxExportJob.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    MailboxExportJob.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "S3BucketName"))
    MailboxExportJob.add_member(:s3_path, Shapes::ShapeRef.new(shape: S3ObjectKey, location_name: "S3Path"))
    MailboxExportJob.add_member(:estimated_progress, Shapes::ShapeRef.new(shape: Percentage, location_name: "EstimatedProgress"))
    MailboxExportJob.add_member(:state, Shapes::ShapeRef.new(shape: MailboxExportJobState, location_name: "State"))
    MailboxExportJob.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime"))
    MailboxExportJob.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    MailboxExportJob.struct_class = Types::MailboxExportJob

    Member.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "Id"))
    Member.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    Member.add_member(:type, Shapes::ShapeRef.new(shape: MemberType, location_name: "Type"))
    Member.add_member(:state, Shapes::ShapeRef.new(shape: EntityState, location_name: "State"))
    Member.add_member(:enabled_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EnabledDate"))
    Member.add_member(:disabled_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DisabledDate"))
    Member.struct_class = Types::Member

    Members.member = Shapes::ShapeRef.new(shape: Member)

    NameAvailabilityException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    NameAvailabilityException.struct_class = Types::NameAvailabilityException

    OrganizationNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    OrganizationNotFoundException.struct_class = Types::OrganizationNotFoundException

    OrganizationStateException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    OrganizationStateException.struct_class = Types::OrganizationStateException

    OrganizationSummaries.member = Shapes::ShapeRef.new(shape: OrganizationSummary)

    OrganizationSummary.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, location_name: "OrganizationId"))
    OrganizationSummary.add_member(:alias, Shapes::ShapeRef.new(shape: OrganizationName, location_name: "Alias"))
    OrganizationSummary.add_member(:default_mail_domain, Shapes::ShapeRef.new(shape: DomainName, location_name: "DefaultMailDomain"))
    OrganizationSummary.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    OrganizationSummary.add_member(:state, Shapes::ShapeRef.new(shape: String, location_name: "State"))
    OrganizationSummary.struct_class = Types::OrganizationSummary

    Permission.add_member(:grantee_id, Shapes::ShapeRef.new(shape: WorkMailIdentifier, required: true, location_name: "GranteeId"))
    Permission.add_member(:grantee_type, Shapes::ShapeRef.new(shape: MemberType, required: true, location_name: "GranteeType"))
    Permission.add_member(:permission_values, Shapes::ShapeRef.new(shape: PermissionValues, required: true, location_name: "PermissionValues"))
    Permission.struct_class = Types::Permission

    PermissionValues.member = Shapes::ShapeRef.new(shape: PermissionType)

    Permissions.member = Shapes::ShapeRef.new(shape: Permission)

    PutAccessControlRuleRequest.add_member(:name, Shapes::ShapeRef.new(shape: AccessControlRuleName, required: true, location_name: "Name"))
    PutAccessControlRuleRequest.add_member(:effect, Shapes::ShapeRef.new(shape: AccessControlRuleEffect, required: true, location_name: "Effect"))
    PutAccessControlRuleRequest.add_member(:description, Shapes::ShapeRef.new(shape: AccessControlRuleDescription, required: true, location_name: "Description"))
    PutAccessControlRuleRequest.add_member(:ip_ranges, Shapes::ShapeRef.new(shape: IpRangeList, location_name: "IpRanges"))
    PutAccessControlRuleRequest.add_member(:not_ip_ranges, Shapes::ShapeRef.new(shape: IpRangeList, location_name: "NotIpRanges"))
    PutAccessControlRuleRequest.add_member(:actions, Shapes::ShapeRef.new(shape: ActionsList, location_name: "Actions"))
    PutAccessControlRuleRequest.add_member(:not_actions, Shapes::ShapeRef.new(shape: ActionsList, location_name: "NotActions"))
    PutAccessControlRuleRequest.add_member(:user_ids, Shapes::ShapeRef.new(shape: UserIdList, location_name: "UserIds"))
    PutAccessControlRuleRequest.add_member(:not_user_ids, Shapes::ShapeRef.new(shape: UserIdList, location_name: "NotUserIds"))
    PutAccessControlRuleRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, required: true, location_name: "OrganizationId"))
    PutAccessControlRuleRequest.struct_class = Types::PutAccessControlRuleRequest

    PutAccessControlRuleResponse.struct_class = Types::PutAccessControlRuleResponse

    PutMailboxPermissionsRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, required: true, location_name: "OrganizationId"))
    PutMailboxPermissionsRequest.add_member(:entity_id, Shapes::ShapeRef.new(shape: WorkMailIdentifier, required: true, location_name: "EntityId"))
    PutMailboxPermissionsRequest.add_member(:grantee_id, Shapes::ShapeRef.new(shape: WorkMailIdentifier, required: true, location_name: "GranteeId"))
    PutMailboxPermissionsRequest.add_member(:permission_values, Shapes::ShapeRef.new(shape: PermissionValues, required: true, location_name: "PermissionValues"))
    PutMailboxPermissionsRequest.struct_class = Types::PutMailboxPermissionsRequest

    PutMailboxPermissionsResponse.struct_class = Types::PutMailboxPermissionsResponse

    PutRetentionPolicyRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, required: true, location_name: "OrganizationId"))
    PutRetentionPolicyRequest.add_member(:id, Shapes::ShapeRef.new(shape: ShortString, location_name: "Id"))
    PutRetentionPolicyRequest.add_member(:name, Shapes::ShapeRef.new(shape: ShortString, required: true, location_name: "Name"))
    PutRetentionPolicyRequest.add_member(:description, Shapes::ShapeRef.new(shape: PolicyDescription, location_name: "Description"))
    PutRetentionPolicyRequest.add_member(:folder_configurations, Shapes::ShapeRef.new(shape: FolderConfigurations, required: true, location_name: "FolderConfigurations"))
    PutRetentionPolicyRequest.struct_class = Types::PutRetentionPolicyRequest

    PutRetentionPolicyResponse.struct_class = Types::PutRetentionPolicyResponse

    RegisterToWorkMailRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, required: true, location_name: "OrganizationId"))
    RegisterToWorkMailRequest.add_member(:entity_id, Shapes::ShapeRef.new(shape: WorkMailIdentifier, required: true, location_name: "EntityId"))
    RegisterToWorkMailRequest.add_member(:email, Shapes::ShapeRef.new(shape: EmailAddress, required: true, location_name: "Email"))
    RegisterToWorkMailRequest.struct_class = Types::RegisterToWorkMailRequest

    RegisterToWorkMailResponse.struct_class = Types::RegisterToWorkMailResponse

    ReservedNameException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ReservedNameException.struct_class = Types::ReservedNameException

    ResetPasswordRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, required: true, location_name: "OrganizationId"))
    ResetPasswordRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: WorkMailIdentifier, required: true, location_name: "UserId"))
    ResetPasswordRequest.add_member(:password, Shapes::ShapeRef.new(shape: Password, required: true, location_name: "Password"))
    ResetPasswordRequest.struct_class = Types::ResetPasswordRequest

    ResetPasswordResponse.struct_class = Types::ResetPasswordResponse

    Resource.add_member(:id, Shapes::ShapeRef.new(shape: WorkMailIdentifier, location_name: "Id"))
    Resource.add_member(:email, Shapes::ShapeRef.new(shape: EmailAddress, location_name: "Email"))
    Resource.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    Resource.add_member(:type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "Type"))
    Resource.add_member(:state, Shapes::ShapeRef.new(shape: EntityState, location_name: "State"))
    Resource.add_member(:enabled_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EnabledDate"))
    Resource.add_member(:disabled_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DisabledDate"))
    Resource.struct_class = Types::Resource

    ResourceDelegates.member = Shapes::ShapeRef.new(shape: Delegate)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    Resources.member = Shapes::ShapeRef.new(shape: Resource)

    StartMailboxExportJobRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyClientToken, required: true, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    StartMailboxExportJobRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, required: true, location_name: "OrganizationId"))
    StartMailboxExportJobRequest.add_member(:entity_id, Shapes::ShapeRef.new(shape: WorkMailIdentifier, required: true, location_name: "EntityId"))
    StartMailboxExportJobRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    StartMailboxExportJobRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    StartMailboxExportJobRequest.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, required: true, location_name: "KmsKeyArn"))
    StartMailboxExportJobRequest.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, required: true, location_name: "S3BucketName"))
    StartMailboxExportJobRequest.add_member(:s3_prefix, Shapes::ShapeRef.new(shape: S3ObjectKey, required: true, location_name: "S3Prefix"))
    StartMailboxExportJobRequest.struct_class = Types::StartMailboxExportJobRequest

    StartMailboxExportJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: MailboxExportJobId, location_name: "JobId"))
    StartMailboxExportJobResponse.struct_class = Types::StartMailboxExportJobResponse

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TooManyTagsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    TooManyTagsException.struct_class = Types::TooManyTagsException

    UnsupportedOperationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    UnsupportedOperationException.struct_class = Types::UnsupportedOperationException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateMailboxQuotaRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, required: true, location_name: "OrganizationId"))
    UpdateMailboxQuotaRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: WorkMailIdentifier, required: true, location_name: "UserId"))
    UpdateMailboxQuotaRequest.add_member(:mailbox_quota, Shapes::ShapeRef.new(shape: MailboxQuota, required: true, location_name: "MailboxQuota"))
    UpdateMailboxQuotaRequest.struct_class = Types::UpdateMailboxQuotaRequest

    UpdateMailboxQuotaResponse.struct_class = Types::UpdateMailboxQuotaResponse

    UpdatePrimaryEmailAddressRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, required: true, location_name: "OrganizationId"))
    UpdatePrimaryEmailAddressRequest.add_member(:entity_id, Shapes::ShapeRef.new(shape: WorkMailIdentifier, required: true, location_name: "EntityId"))
    UpdatePrimaryEmailAddressRequest.add_member(:email, Shapes::ShapeRef.new(shape: EmailAddress, required: true, location_name: "Email"))
    UpdatePrimaryEmailAddressRequest.struct_class = Types::UpdatePrimaryEmailAddressRequest

    UpdatePrimaryEmailAddressResponse.struct_class = Types::UpdatePrimaryEmailAddressResponse

    UpdateResourceRequest.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, required: true, location_name: "OrganizationId"))
    UpdateResourceRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResourceId"))
    UpdateResourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    UpdateResourceRequest.add_member(:booking_options, Shapes::ShapeRef.new(shape: BookingOptions, location_name: "BookingOptions"))
    UpdateResourceRequest.struct_class = Types::UpdateResourceRequest

    UpdateResourceResponse.struct_class = Types::UpdateResourceResponse

    User.add_member(:id, Shapes::ShapeRef.new(shape: WorkMailIdentifier, location_name: "Id"))
    User.add_member(:email, Shapes::ShapeRef.new(shape: EmailAddress, location_name: "Email"))
    User.add_member(:name, Shapes::ShapeRef.new(shape: UserName, location_name: "Name"))
    User.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "DisplayName"))
    User.add_member(:state, Shapes::ShapeRef.new(shape: EntityState, location_name: "State"))
    User.add_member(:user_role, Shapes::ShapeRef.new(shape: UserRole, location_name: "UserRole"))
    User.add_member(:enabled_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EnabledDate"))
    User.add_member(:disabled_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DisabledDate"))
    User.struct_class = Types::User

    UserIdList.member = Shapes::ShapeRef.new(shape: WorkMailIdentifier)

    Users.member = Shapes::ShapeRef.new(shape: User)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-10-01"

      api.metadata = {
        "apiVersion" => "2017-10-01",
        "endpointPrefix" => "workmail",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "Amazon WorkMail",
        "serviceId" => "WorkMail",
        "signatureVersion" => "v4",
        "targetPrefix" => "WorkMailService",
        "uid" => "workmail-2017-10-01",
      }

      api.add_operation(:associate_delegate_to_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateDelegateToResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateDelegateToResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateDelegateToResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EntityStateException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationStateException)
      end)

      api.add_operation(:associate_member_to_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateMemberToGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateMemberToGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateMemberToGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryServiceAuthenticationFailedException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EntityStateException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationStateException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
      end)

      api.add_operation(:cancel_mailbox_export_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelMailboxExportJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelMailboxExportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelMailboxExportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationStateException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
      end)

      api.add_operation(:create_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAlias"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAliasResponse)
        o.errors << Shapes::ShapeRef.new(shape: EmailAddressInUseException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EntityStateException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MailDomainNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MailDomainStateException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationStateException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryServiceAuthenticationFailedException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NameAvailabilityException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationStateException)
        o.errors << Shapes::ShapeRef.new(shape: ReservedNameException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
      end)

      api.add_operation(:create_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateOrganizationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateOrganizationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryInUseException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: NameAvailabilityException)
      end)

      api.add_operation(:create_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryServiceAuthenticationFailedException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NameAvailabilityException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationStateException)
        o.errors << Shapes::ShapeRef.new(shape: ReservedNameException)
      end)

      api.add_operation(:create_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateUser"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateUserRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryServiceAuthenticationFailedException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPasswordException)
        o.errors << Shapes::ShapeRef.new(shape: NameAvailabilityException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationStateException)
        o.errors << Shapes::ShapeRef.new(shape: ReservedNameException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
      end)

      api.add_operation(:delete_access_control_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAccessControlRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAccessControlRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAccessControlRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationStateException)
      end)

      api.add_operation(:delete_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAlias"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAliasResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EntityStateException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationStateException)
      end)

      api.add_operation(:delete_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryServiceAuthenticationFailedException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: EntityStateException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationStateException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
      end)

      api.add_operation(:delete_mailbox_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMailboxPermissions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteMailboxPermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteMailboxPermissionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EntityStateException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationStateException)
      end)

      api.add_operation(:delete_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteOrganizationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteOrganizationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationStateException)
      end)

      api.add_operation(:delete_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityStateException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationStateException)
      end)

      api.add_operation(:delete_retention_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRetentionPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRetentionPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRetentionPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationStateException)
      end)

      api.add_operation(:delete_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteUser"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteUserRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryServiceAuthenticationFailedException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: EntityStateException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationStateException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
      end)

      api.add_operation(:deregister_from_work_mail, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterFromWorkMail"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeregisterFromWorkMailRequest)
        o.output = Shapes::ShapeRef.new(shape: DeregisterFromWorkMailResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EntityStateException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationStateException)
      end)

      api.add_operation(:describe_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationStateException)
      end)

      api.add_operation(:describe_mailbox_export_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMailboxExportJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeMailboxExportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeMailboxExportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationStateException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
      end)

      api.add_operation(:describe_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeOrganizationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeOrganizationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
      end)

      api.add_operation(:describe_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationStateException)
      end)

      api.add_operation(:describe_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeUser"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeUserRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationStateException)
      end)

      api.add_operation(:disassociate_delegate_from_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateDelegateFromResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateDelegateFromResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateDelegateFromResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EntityStateException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationStateException)
      end)

      api.add_operation(:disassociate_member_from_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateMemberFromGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateMemberFromGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateMemberFromGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryServiceAuthenticationFailedException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EntityStateException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationStateException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
      end)

      api.add_operation(:get_access_control_effect, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccessControlEffect"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAccessControlEffectRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAccessControlEffectResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationStateException)
      end)

      api.add_operation(:get_default_retention_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDefaultRetentionPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDefaultRetentionPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDefaultRetentionPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationStateException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
      end)

      api.add_operation(:get_mailbox_details, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMailboxDetails"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetMailboxDetailsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMailboxDetailsResponse)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationStateException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
      end)

      api.add_operation(:list_access_control_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccessControlRules"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAccessControlRulesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAccessControlRulesResponse)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationStateException)
      end)

      api.add_operation(:list_aliases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAliases"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAliasesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAliasesResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EntityStateException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationStateException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_group_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGroupMembers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListGroupMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGroupMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EntityStateException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationStateException)
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
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationStateException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_mailbox_export_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMailboxExportJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListMailboxExportJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMailboxExportJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationStateException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_mailbox_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMailboxPermissions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListMailboxPermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMailboxPermissionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationStateException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_organizations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOrganizations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListOrganizationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListOrganizationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_resource_delegates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResourceDelegates"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListResourceDelegatesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListResourceDelegatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EntityStateException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationStateException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResources"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListResourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListResourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationStateException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_users, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListUsers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListUsersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListUsersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationStateException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_access_control_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutAccessControlRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutAccessControlRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: PutAccessControlRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationStateException)
      end)

      api.add_operation(:put_mailbox_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutMailboxPermissions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutMailboxPermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutMailboxPermissionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EntityStateException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationStateException)
      end)

      api.add_operation(:put_retention_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutRetentionPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutRetentionPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutRetentionPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationStateException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:register_to_work_mail, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterToWorkMail"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterToWorkMailRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterToWorkMailResponse)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryServiceAuthenticationFailedException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: EmailAddressInUseException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EntityStateException)
        o.errors << Shapes::ShapeRef.new(shape: EntityAlreadyRegisteredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MailDomainNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MailDomainStateException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationStateException)
      end)

      api.add_operation(:reset_password, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResetPassword"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ResetPasswordRequest)
        o.output = Shapes::ShapeRef.new(shape: ResetPasswordResponse)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryServiceAuthenticationFailedException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EntityStateException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPasswordException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationStateException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
      end)

      api.add_operation(:start_mailbox_export_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartMailboxExportJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartMailboxExportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartMailboxExportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationStateException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationStateException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_mailbox_quota, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMailboxQuota"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateMailboxQuotaRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateMailboxQuotaResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationStateException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EntityStateException)
      end)

      api.add_operation(:update_primary_email_address, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePrimaryEmailAddress"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdatePrimaryEmailAddressRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePrimaryEmailAddressResponse)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryServiceAuthenticationFailedException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: EmailAddressInUseException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EntityStateException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MailDomainNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MailDomainStateException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationStateException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
      end)

      api.add_operation(:update_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: EntityNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EntityStateException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConfigurationException)
        o.errors << Shapes::ShapeRef.new(shape: EmailAddressInUseException)
        o.errors << Shapes::ShapeRef.new(shape: MailDomainNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MailDomainStateException)
        o.errors << Shapes::ShapeRef.new(shape: NameAvailabilityException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationStateException)
      end)
    end

  end
end
