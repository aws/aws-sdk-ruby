# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::FMS
  # @api private
  module ClientApi

    include Seahorse::Model

    AWSAccountId = Shapes::StringShape.new(name: 'AWSAccountId')
    AccountRoleStatus = Shapes::StringShape.new(name: 'AccountRoleStatus')
    App = Shapes::StructureShape.new(name: 'App')
    AppsList = Shapes::ListShape.new(name: 'AppsList')
    AppsListData = Shapes::StructureShape.new(name: 'AppsListData')
    AppsListDataSummary = Shapes::StructureShape.new(name: 'AppsListDataSummary')
    AppsListsData = Shapes::ListShape.new(name: 'AppsListsData')
    AssociateAdminAccountRequest = Shapes::StructureShape.new(name: 'AssociateAdminAccountRequest')
    AwsEc2InstanceViolation = Shapes::StructureShape.new(name: 'AwsEc2InstanceViolation')
    AwsEc2NetworkInterfaceViolation = Shapes::StructureShape.new(name: 'AwsEc2NetworkInterfaceViolation')
    AwsEc2NetworkInterfaceViolations = Shapes::ListShape.new(name: 'AwsEc2NetworkInterfaceViolations')
    AwsVPCSecurityGroupViolation = Shapes::StructureShape.new(name: 'AwsVPCSecurityGroupViolation')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CIDR = Shapes::StringShape.new(name: 'CIDR')
    ComplianceViolator = Shapes::StructureShape.new(name: 'ComplianceViolator')
    ComplianceViolators = Shapes::ListShape.new(name: 'ComplianceViolators')
    CustomerPolicyScopeId = Shapes::StringShape.new(name: 'CustomerPolicyScopeId')
    CustomerPolicyScopeIdList = Shapes::ListShape.new(name: 'CustomerPolicyScopeIdList')
    CustomerPolicyScopeIdType = Shapes::StringShape.new(name: 'CustomerPolicyScopeIdType')
    CustomerPolicyScopeMap = Shapes::MapShape.new(name: 'CustomerPolicyScopeMap')
    DeleteAppsListRequest = Shapes::StructureShape.new(name: 'DeleteAppsListRequest')
    DeleteNotificationChannelRequest = Shapes::StructureShape.new(name: 'DeleteNotificationChannelRequest')
    DeletePolicyRequest = Shapes::StructureShape.new(name: 'DeletePolicyRequest')
    DeleteProtocolsListRequest = Shapes::StructureShape.new(name: 'DeleteProtocolsListRequest')
    DependentServiceName = Shapes::StringShape.new(name: 'DependentServiceName')
    DetailedInfo = Shapes::StringShape.new(name: 'DetailedInfo')
    DisassociateAdminAccountRequest = Shapes::StructureShape.new(name: 'DisassociateAdminAccountRequest')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    EvaluationResult = Shapes::StructureShape.new(name: 'EvaluationResult')
    EvaluationResults = Shapes::ListShape.new(name: 'EvaluationResults')
    GetAdminAccountRequest = Shapes::StructureShape.new(name: 'GetAdminAccountRequest')
    GetAdminAccountResponse = Shapes::StructureShape.new(name: 'GetAdminAccountResponse')
    GetAppsListRequest = Shapes::StructureShape.new(name: 'GetAppsListRequest')
    GetAppsListResponse = Shapes::StructureShape.new(name: 'GetAppsListResponse')
    GetComplianceDetailRequest = Shapes::StructureShape.new(name: 'GetComplianceDetailRequest')
    GetComplianceDetailResponse = Shapes::StructureShape.new(name: 'GetComplianceDetailResponse')
    GetNotificationChannelRequest = Shapes::StructureShape.new(name: 'GetNotificationChannelRequest')
    GetNotificationChannelResponse = Shapes::StructureShape.new(name: 'GetNotificationChannelResponse')
    GetPolicyRequest = Shapes::StructureShape.new(name: 'GetPolicyRequest')
    GetPolicyResponse = Shapes::StructureShape.new(name: 'GetPolicyResponse')
    GetProtectionStatusRequest = Shapes::StructureShape.new(name: 'GetProtectionStatusRequest')
    GetProtectionStatusResponse = Shapes::StructureShape.new(name: 'GetProtectionStatusResponse')
    GetProtocolsListRequest = Shapes::StructureShape.new(name: 'GetProtocolsListRequest')
    GetProtocolsListResponse = Shapes::StructureShape.new(name: 'GetProtocolsListResponse')
    GetViolationDetailsRequest = Shapes::StructureShape.new(name: 'GetViolationDetailsRequest')
    GetViolationDetailsResponse = Shapes::StructureShape.new(name: 'GetViolationDetailsResponse')
    IPPortNumber = Shapes::IntegerShape.new(name: 'IPPortNumber')
    InternalErrorException = Shapes::StructureShape.new(name: 'InternalErrorException')
    InvalidInputException = Shapes::StructureShape.new(name: 'InvalidInputException')
    InvalidOperationException = Shapes::StructureShape.new(name: 'InvalidOperationException')
    InvalidTypeException = Shapes::StructureShape.new(name: 'InvalidTypeException')
    IssueInfoMap = Shapes::MapShape.new(name: 'IssueInfoMap')
    LengthBoundedString = Shapes::StringShape.new(name: 'LengthBoundedString')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListAppsListsRequest = Shapes::StructureShape.new(name: 'ListAppsListsRequest')
    ListAppsListsResponse = Shapes::StructureShape.new(name: 'ListAppsListsResponse')
    ListComplianceStatusRequest = Shapes::StructureShape.new(name: 'ListComplianceStatusRequest')
    ListComplianceStatusResponse = Shapes::StructureShape.new(name: 'ListComplianceStatusResponse')
    ListId = Shapes::StringShape.new(name: 'ListId')
    ListMemberAccountsRequest = Shapes::StructureShape.new(name: 'ListMemberAccountsRequest')
    ListMemberAccountsResponse = Shapes::StructureShape.new(name: 'ListMemberAccountsResponse')
    ListPoliciesRequest = Shapes::StructureShape.new(name: 'ListPoliciesRequest')
    ListPoliciesResponse = Shapes::StructureShape.new(name: 'ListPoliciesResponse')
    ListProtocolsListsRequest = Shapes::StructureShape.new(name: 'ListProtocolsListsRequest')
    ListProtocolsListsResponse = Shapes::StructureShape.new(name: 'ListProtocolsListsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ManagedServiceData = Shapes::StringShape.new(name: 'ManagedServiceData')
    MemberAccounts = Shapes::ListShape.new(name: 'MemberAccounts')
    PaginationMaxResults = Shapes::IntegerShape.new(name: 'PaginationMaxResults')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    PartialMatch = Shapes::StructureShape.new(name: 'PartialMatch')
    PartialMatches = Shapes::ListShape.new(name: 'PartialMatches')
    Policy = Shapes::StructureShape.new(name: 'Policy')
    PolicyComplianceDetail = Shapes::StructureShape.new(name: 'PolicyComplianceDetail')
    PolicyComplianceStatus = Shapes::StructureShape.new(name: 'PolicyComplianceStatus')
    PolicyComplianceStatusList = Shapes::ListShape.new(name: 'PolicyComplianceStatusList')
    PolicyComplianceStatusType = Shapes::StringShape.new(name: 'PolicyComplianceStatusType')
    PolicyId = Shapes::StringShape.new(name: 'PolicyId')
    PolicySummary = Shapes::StructureShape.new(name: 'PolicySummary')
    PolicySummaryList = Shapes::ListShape.new(name: 'PolicySummaryList')
    PolicyUpdateToken = Shapes::StringShape.new(name: 'PolicyUpdateToken')
    PreviousAppsList = Shapes::MapShape.new(name: 'PreviousAppsList')
    PreviousListVersion = Shapes::StringShape.new(name: 'PreviousListVersion')
    PreviousProtocolsList = Shapes::MapShape.new(name: 'PreviousProtocolsList')
    ProtectionData = Shapes::StringShape.new(name: 'ProtectionData')
    Protocol = Shapes::StringShape.new(name: 'Protocol')
    ProtocolsList = Shapes::ListShape.new(name: 'ProtocolsList')
    ProtocolsListData = Shapes::StructureShape.new(name: 'ProtocolsListData')
    ProtocolsListDataSummary = Shapes::StructureShape.new(name: 'ProtocolsListDataSummary')
    ProtocolsListsData = Shapes::ListShape.new(name: 'ProtocolsListsData')
    PutAppsListRequest = Shapes::StructureShape.new(name: 'PutAppsListRequest')
    PutAppsListResponse = Shapes::StructureShape.new(name: 'PutAppsListResponse')
    PutNotificationChannelRequest = Shapes::StructureShape.new(name: 'PutNotificationChannelRequest')
    PutPolicyRequest = Shapes::StructureShape.new(name: 'PutPolicyRequest')
    PutPolicyResponse = Shapes::StructureShape.new(name: 'PutPolicyResponse')
    PutProtocolsListRequest = Shapes::StructureShape.new(name: 'PutProtocolsListRequest')
    PutProtocolsListResponse = Shapes::StructureShape.new(name: 'PutProtocolsListResponse')
    ReferenceRule = Shapes::StringShape.new(name: 'ReferenceRule')
    RemediationActionDescription = Shapes::StringShape.new(name: 'RemediationActionDescription')
    RemediationActionType = Shapes::StringShape.new(name: 'RemediationActionType')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceCount = Shapes::IntegerShape.new(name: 'ResourceCount')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceIdList = Shapes::ListShape.new(name: 'ResourceIdList')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceTag = Shapes::StructureShape.new(name: 'ResourceTag')
    ResourceTagKey = Shapes::StringShape.new(name: 'ResourceTagKey')
    ResourceTagValue = Shapes::StringShape.new(name: 'ResourceTagValue')
    ResourceTags = Shapes::ListShape.new(name: 'ResourceTags')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ResourceTypeList = Shapes::ListShape.new(name: 'ResourceTypeList')
    ResourceViolation = Shapes::StructureShape.new(name: 'ResourceViolation')
    ResourceViolations = Shapes::ListShape.new(name: 'ResourceViolations')
    SecurityGroupRemediationAction = Shapes::StructureShape.new(name: 'SecurityGroupRemediationAction')
    SecurityGroupRemediationActions = Shapes::ListShape.new(name: 'SecurityGroupRemediationActions')
    SecurityGroupRuleDescription = Shapes::StructureShape.new(name: 'SecurityGroupRuleDescription')
    SecurityServicePolicyData = Shapes::StructureShape.new(name: 'SecurityServicePolicyData')
    SecurityServiceType = Shapes::StringShape.new(name: 'SecurityServiceType')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TargetViolationReason = Shapes::StringShape.new(name: 'TargetViolationReason')
    TargetViolationReasons = Shapes::ListShape.new(name: 'TargetViolationReasons')
    TimeStamp = Shapes::TimestampShape.new(name: 'TimeStamp')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateToken = Shapes::StringShape.new(name: 'UpdateToken')
    ViolationDetail = Shapes::StructureShape.new(name: 'ViolationDetail')
    ViolationReason = Shapes::StringShape.new(name: 'ViolationReason')
    ViolationTarget = Shapes::StringShape.new(name: 'ViolationTarget')

    App.add_member(:app_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "AppName"))
    App.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, required: true, location_name: "Protocol"))
    App.add_member(:port, Shapes::ShapeRef.new(shape: IPPortNumber, required: true, location_name: "Port"))
    App.struct_class = Types::App

    AppsList.member = Shapes::ShapeRef.new(shape: App)

    AppsListData.add_member(:list_id, Shapes::ShapeRef.new(shape: ListId, location_name: "ListId"))
    AppsListData.add_member(:list_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ListName"))
    AppsListData.add_member(:list_update_token, Shapes::ShapeRef.new(shape: UpdateToken, location_name: "ListUpdateToken"))
    AppsListData.add_member(:create_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "CreateTime"))
    AppsListData.add_member(:last_update_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "LastUpdateTime"))
    AppsListData.add_member(:apps_list, Shapes::ShapeRef.new(shape: AppsList, required: true, location_name: "AppsList"))
    AppsListData.add_member(:previous_apps_list, Shapes::ShapeRef.new(shape: PreviousAppsList, location_name: "PreviousAppsList"))
    AppsListData.struct_class = Types::AppsListData

    AppsListDataSummary.add_member(:list_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ListArn"))
    AppsListDataSummary.add_member(:list_id, Shapes::ShapeRef.new(shape: ListId, location_name: "ListId"))
    AppsListDataSummary.add_member(:list_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "ListName"))
    AppsListDataSummary.add_member(:apps_list, Shapes::ShapeRef.new(shape: AppsList, location_name: "AppsList"))
    AppsListDataSummary.struct_class = Types::AppsListDataSummary

    AppsListsData.member = Shapes::ShapeRef.new(shape: AppsListDataSummary)

    AssociateAdminAccountRequest.add_member(:admin_account, Shapes::ShapeRef.new(shape: AWSAccountId, required: true, location_name: "AdminAccount"))
    AssociateAdminAccountRequest.struct_class = Types::AssociateAdminAccountRequest

    AwsEc2InstanceViolation.add_member(:violation_target, Shapes::ShapeRef.new(shape: ViolationTarget, location_name: "ViolationTarget"))
    AwsEc2InstanceViolation.add_member(:aws_ec2_network_interface_violations, Shapes::ShapeRef.new(shape: AwsEc2NetworkInterfaceViolations, location_name: "AwsEc2NetworkInterfaceViolations"))
    AwsEc2InstanceViolation.struct_class = Types::AwsEc2InstanceViolation

    AwsEc2NetworkInterfaceViolation.add_member(:violation_target, Shapes::ShapeRef.new(shape: ViolationTarget, location_name: "ViolationTarget"))
    AwsEc2NetworkInterfaceViolation.add_member(:violating_security_groups, Shapes::ShapeRef.new(shape: ResourceIdList, location_name: "ViolatingSecurityGroups"))
    AwsEc2NetworkInterfaceViolation.struct_class = Types::AwsEc2NetworkInterfaceViolation

    AwsEc2NetworkInterfaceViolations.member = Shapes::ShapeRef.new(shape: AwsEc2NetworkInterfaceViolation)

    AwsVPCSecurityGroupViolation.add_member(:violation_target, Shapes::ShapeRef.new(shape: ViolationTarget, location_name: "ViolationTarget"))
    AwsVPCSecurityGroupViolation.add_member(:violation_target_description, Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: "ViolationTargetDescription"))
    AwsVPCSecurityGroupViolation.add_member(:partial_matches, Shapes::ShapeRef.new(shape: PartialMatches, location_name: "PartialMatches"))
    AwsVPCSecurityGroupViolation.add_member(:possible_security_group_remediation_actions, Shapes::ShapeRef.new(shape: SecurityGroupRemediationActions, location_name: "PossibleSecurityGroupRemediationActions"))
    AwsVPCSecurityGroupViolation.struct_class = Types::AwsVPCSecurityGroupViolation

    ComplianceViolator.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId"))
    ComplianceViolator.add_member(:violation_reason, Shapes::ShapeRef.new(shape: ViolationReason, location_name: "ViolationReason"))
    ComplianceViolator.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ComplianceViolator.struct_class = Types::ComplianceViolator

    ComplianceViolators.member = Shapes::ShapeRef.new(shape: ComplianceViolator)

    CustomerPolicyScopeIdList.member = Shapes::ShapeRef.new(shape: CustomerPolicyScopeId)

    CustomerPolicyScopeMap.key = Shapes::ShapeRef.new(shape: CustomerPolicyScopeIdType)
    CustomerPolicyScopeMap.value = Shapes::ShapeRef.new(shape: CustomerPolicyScopeIdList)

    DeleteAppsListRequest.add_member(:list_id, Shapes::ShapeRef.new(shape: ListId, required: true, location_name: "ListId"))
    DeleteAppsListRequest.struct_class = Types::DeleteAppsListRequest

    DeleteNotificationChannelRequest.struct_class = Types::DeleteNotificationChannelRequest

    DeletePolicyRequest.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, required: true, location_name: "PolicyId"))
    DeletePolicyRequest.add_member(:delete_all_policy_resources, Shapes::ShapeRef.new(shape: Boolean, location_name: "DeleteAllPolicyResources"))
    DeletePolicyRequest.struct_class = Types::DeletePolicyRequest

    DeleteProtocolsListRequest.add_member(:list_id, Shapes::ShapeRef.new(shape: ListId, required: true, location_name: "ListId"))
    DeleteProtocolsListRequest.struct_class = Types::DeleteProtocolsListRequest

    DisassociateAdminAccountRequest.struct_class = Types::DisassociateAdminAccountRequest

    EvaluationResult.add_member(:compliance_status, Shapes::ShapeRef.new(shape: PolicyComplianceStatusType, location_name: "ComplianceStatus"))
    EvaluationResult.add_member(:violator_count, Shapes::ShapeRef.new(shape: ResourceCount, location_name: "ViolatorCount"))
    EvaluationResult.add_member(:evaluation_limit_exceeded, Shapes::ShapeRef.new(shape: Boolean, location_name: "EvaluationLimitExceeded"))
    EvaluationResult.struct_class = Types::EvaluationResult

    EvaluationResults.member = Shapes::ShapeRef.new(shape: EvaluationResult)

    GetAdminAccountRequest.struct_class = Types::GetAdminAccountRequest

    GetAdminAccountResponse.add_member(:admin_account, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "AdminAccount"))
    GetAdminAccountResponse.add_member(:role_status, Shapes::ShapeRef.new(shape: AccountRoleStatus, location_name: "RoleStatus"))
    GetAdminAccountResponse.struct_class = Types::GetAdminAccountResponse

    GetAppsListRequest.add_member(:list_id, Shapes::ShapeRef.new(shape: ListId, required: true, location_name: "ListId"))
    GetAppsListRequest.add_member(:default_list, Shapes::ShapeRef.new(shape: Boolean, location_name: "DefaultList"))
    GetAppsListRequest.struct_class = Types::GetAppsListRequest

    GetAppsListResponse.add_member(:apps_list, Shapes::ShapeRef.new(shape: AppsListData, location_name: "AppsList"))
    GetAppsListResponse.add_member(:apps_list_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "AppsListArn"))
    GetAppsListResponse.struct_class = Types::GetAppsListResponse

    GetComplianceDetailRequest.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, required: true, location_name: "PolicyId"))
    GetComplianceDetailRequest.add_member(:member_account, Shapes::ShapeRef.new(shape: AWSAccountId, required: true, location_name: "MemberAccount"))
    GetComplianceDetailRequest.struct_class = Types::GetComplianceDetailRequest

    GetComplianceDetailResponse.add_member(:policy_compliance_detail, Shapes::ShapeRef.new(shape: PolicyComplianceDetail, location_name: "PolicyComplianceDetail"))
    GetComplianceDetailResponse.struct_class = Types::GetComplianceDetailResponse

    GetNotificationChannelRequest.struct_class = Types::GetNotificationChannelRequest

    GetNotificationChannelResponse.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "SnsTopicArn"))
    GetNotificationChannelResponse.add_member(:sns_role_name, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "SnsRoleName"))
    GetNotificationChannelResponse.struct_class = Types::GetNotificationChannelResponse

    GetPolicyRequest.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, required: true, location_name: "PolicyId"))
    GetPolicyRequest.struct_class = Types::GetPolicyRequest

    GetPolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, location_name: "Policy"))
    GetPolicyResponse.add_member(:policy_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "PolicyArn"))
    GetPolicyResponse.struct_class = Types::GetPolicyResponse

    GetProtectionStatusRequest.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, required: true, location_name: "PolicyId"))
    GetProtectionStatusRequest.add_member(:member_account_id, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "MemberAccountId"))
    GetProtectionStatusRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "StartTime"))
    GetProtectionStatusRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "EndTime"))
    GetProtectionStatusRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetProtectionStatusRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: "MaxResults"))
    GetProtectionStatusRequest.struct_class = Types::GetProtectionStatusRequest

    GetProtectionStatusResponse.add_member(:admin_account_id, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "AdminAccountId"))
    GetProtectionStatusResponse.add_member(:service_type, Shapes::ShapeRef.new(shape: SecurityServiceType, location_name: "ServiceType"))
    GetProtectionStatusResponse.add_member(:data, Shapes::ShapeRef.new(shape: ProtectionData, location_name: "Data"))
    GetProtectionStatusResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetProtectionStatusResponse.struct_class = Types::GetProtectionStatusResponse

    GetProtocolsListRequest.add_member(:list_id, Shapes::ShapeRef.new(shape: ListId, required: true, location_name: "ListId"))
    GetProtocolsListRequest.add_member(:default_list, Shapes::ShapeRef.new(shape: Boolean, location_name: "DefaultList"))
    GetProtocolsListRequest.struct_class = Types::GetProtocolsListRequest

    GetProtocolsListResponse.add_member(:protocols_list, Shapes::ShapeRef.new(shape: ProtocolsListData, location_name: "ProtocolsList"))
    GetProtocolsListResponse.add_member(:protocols_list_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ProtocolsListArn"))
    GetProtocolsListResponse.struct_class = Types::GetProtocolsListResponse

    GetViolationDetailsRequest.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, required: true, location_name: "PolicyId"))
    GetViolationDetailsRequest.add_member(:member_account, Shapes::ShapeRef.new(shape: AWSAccountId, required: true, location_name: "MemberAccount"))
    GetViolationDetailsRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResourceId"))
    GetViolationDetailsRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "ResourceType"))
    GetViolationDetailsRequest.struct_class = Types::GetViolationDetailsRequest

    GetViolationDetailsResponse.add_member(:violation_detail, Shapes::ShapeRef.new(shape: ViolationDetail, location_name: "ViolationDetail"))
    GetViolationDetailsResponse.struct_class = Types::GetViolationDetailsResponse

    InternalErrorException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalErrorException.struct_class = Types::InternalErrorException

    InvalidInputException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidInputException.struct_class = Types::InvalidInputException

    InvalidOperationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidOperationException.struct_class = Types::InvalidOperationException

    InvalidTypeException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidTypeException.struct_class = Types::InvalidTypeException

    IssueInfoMap.key = Shapes::ShapeRef.new(shape: DependentServiceName)
    IssueInfoMap.value = Shapes::ShapeRef.new(shape: DetailedInfo)

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListAppsListsRequest.add_member(:default_lists, Shapes::ShapeRef.new(shape: Boolean, location_name: "DefaultLists"))
    ListAppsListsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListAppsListsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PaginationMaxResults, required: true, location_name: "MaxResults"))
    ListAppsListsRequest.struct_class = Types::ListAppsListsRequest

    ListAppsListsResponse.add_member(:apps_lists, Shapes::ShapeRef.new(shape: AppsListsData, location_name: "AppsLists"))
    ListAppsListsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListAppsListsResponse.struct_class = Types::ListAppsListsResponse

    ListComplianceStatusRequest.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, required: true, location_name: "PolicyId"))
    ListComplianceStatusRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListComplianceStatusRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: "MaxResults"))
    ListComplianceStatusRequest.struct_class = Types::ListComplianceStatusRequest

    ListComplianceStatusResponse.add_member(:policy_compliance_status_list, Shapes::ShapeRef.new(shape: PolicyComplianceStatusList, location_name: "PolicyComplianceStatusList"))
    ListComplianceStatusResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListComplianceStatusResponse.struct_class = Types::ListComplianceStatusResponse

    ListMemberAccountsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListMemberAccountsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: "MaxResults"))
    ListMemberAccountsRequest.struct_class = Types::ListMemberAccountsRequest

    ListMemberAccountsResponse.add_member(:member_accounts, Shapes::ShapeRef.new(shape: MemberAccounts, location_name: "MemberAccounts"))
    ListMemberAccountsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListMemberAccountsResponse.struct_class = Types::ListMemberAccountsResponse

    ListPoliciesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListPoliciesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PaginationMaxResults, location_name: "MaxResults"))
    ListPoliciesRequest.struct_class = Types::ListPoliciesRequest

    ListPoliciesResponse.add_member(:policy_list, Shapes::ShapeRef.new(shape: PolicySummaryList, location_name: "PolicyList"))
    ListPoliciesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListPoliciesResponse.struct_class = Types::ListPoliciesResponse

    ListProtocolsListsRequest.add_member(:default_lists, Shapes::ShapeRef.new(shape: Boolean, location_name: "DefaultLists"))
    ListProtocolsListsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListProtocolsListsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PaginationMaxResults, required: true, location_name: "MaxResults"))
    ListProtocolsListsRequest.struct_class = Types::ListProtocolsListsRequest

    ListProtocolsListsResponse.add_member(:protocols_lists, Shapes::ShapeRef.new(shape: ProtocolsListsData, location_name: "ProtocolsLists"))
    ListProtocolsListsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListProtocolsListsResponse.struct_class = Types::ListProtocolsListsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    MemberAccounts.member = Shapes::ShapeRef.new(shape: AWSAccountId)

    PartialMatch.add_member(:reference, Shapes::ShapeRef.new(shape: ReferenceRule, location_name: "Reference"))
    PartialMatch.add_member(:target_violation_reasons, Shapes::ShapeRef.new(shape: TargetViolationReasons, location_name: "TargetViolationReasons"))
    PartialMatch.struct_class = Types::PartialMatch

    PartialMatches.member = Shapes::ShapeRef.new(shape: PartialMatch)

    Policy.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, location_name: "PolicyId"))
    Policy.add_member(:policy_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "PolicyName"))
    Policy.add_member(:policy_update_token, Shapes::ShapeRef.new(shape: PolicyUpdateToken, location_name: "PolicyUpdateToken"))
    Policy.add_member(:security_service_policy_data, Shapes::ShapeRef.new(shape: SecurityServicePolicyData, required: true, location_name: "SecurityServicePolicyData"))
    Policy.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "ResourceType"))
    Policy.add_member(:resource_type_list, Shapes::ShapeRef.new(shape: ResourceTypeList, location_name: "ResourceTypeList"))
    Policy.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTags, location_name: "ResourceTags"))
    Policy.add_member(:exclude_resource_tags, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "ExcludeResourceTags"))
    Policy.add_member(:remediation_enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "RemediationEnabled"))
    Policy.add_member(:include_map, Shapes::ShapeRef.new(shape: CustomerPolicyScopeMap, location_name: "IncludeMap"))
    Policy.add_member(:exclude_map, Shapes::ShapeRef.new(shape: CustomerPolicyScopeMap, location_name: "ExcludeMap"))
    Policy.struct_class = Types::Policy

    PolicyComplianceDetail.add_member(:policy_owner, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "PolicyOwner"))
    PolicyComplianceDetail.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, location_name: "PolicyId"))
    PolicyComplianceDetail.add_member(:member_account, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "MemberAccount"))
    PolicyComplianceDetail.add_member(:violators, Shapes::ShapeRef.new(shape: ComplianceViolators, location_name: "Violators"))
    PolicyComplianceDetail.add_member(:evaluation_limit_exceeded, Shapes::ShapeRef.new(shape: Boolean, location_name: "EvaluationLimitExceeded"))
    PolicyComplianceDetail.add_member(:expired_at, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "ExpiredAt"))
    PolicyComplianceDetail.add_member(:issue_info_map, Shapes::ShapeRef.new(shape: IssueInfoMap, location_name: "IssueInfoMap"))
    PolicyComplianceDetail.struct_class = Types::PolicyComplianceDetail

    PolicyComplianceStatus.add_member(:policy_owner, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "PolicyOwner"))
    PolicyComplianceStatus.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, location_name: "PolicyId"))
    PolicyComplianceStatus.add_member(:policy_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "PolicyName"))
    PolicyComplianceStatus.add_member(:member_account, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "MemberAccount"))
    PolicyComplianceStatus.add_member(:evaluation_results, Shapes::ShapeRef.new(shape: EvaluationResults, location_name: "EvaluationResults"))
    PolicyComplianceStatus.add_member(:last_updated, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "LastUpdated"))
    PolicyComplianceStatus.add_member(:issue_info_map, Shapes::ShapeRef.new(shape: IssueInfoMap, location_name: "IssueInfoMap"))
    PolicyComplianceStatus.struct_class = Types::PolicyComplianceStatus

    PolicyComplianceStatusList.member = Shapes::ShapeRef.new(shape: PolicyComplianceStatus)

    PolicySummary.add_member(:policy_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "PolicyArn"))
    PolicySummary.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, location_name: "PolicyId"))
    PolicySummary.add_member(:policy_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "PolicyName"))
    PolicySummary.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    PolicySummary.add_member(:security_service_type, Shapes::ShapeRef.new(shape: SecurityServiceType, location_name: "SecurityServiceType"))
    PolicySummary.add_member(:remediation_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "RemediationEnabled"))
    PolicySummary.struct_class = Types::PolicySummary

    PolicySummaryList.member = Shapes::ShapeRef.new(shape: PolicySummary)

    PreviousAppsList.key = Shapes::ShapeRef.new(shape: PreviousListVersion)
    PreviousAppsList.value = Shapes::ShapeRef.new(shape: AppsList)

    PreviousProtocolsList.key = Shapes::ShapeRef.new(shape: PreviousListVersion)
    PreviousProtocolsList.value = Shapes::ShapeRef.new(shape: ProtocolsList)

    ProtocolsList.member = Shapes::ShapeRef.new(shape: Protocol)

    ProtocolsListData.add_member(:list_id, Shapes::ShapeRef.new(shape: ListId, location_name: "ListId"))
    ProtocolsListData.add_member(:list_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "ListName"))
    ProtocolsListData.add_member(:list_update_token, Shapes::ShapeRef.new(shape: UpdateToken, location_name: "ListUpdateToken"))
    ProtocolsListData.add_member(:create_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "CreateTime"))
    ProtocolsListData.add_member(:last_update_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "LastUpdateTime"))
    ProtocolsListData.add_member(:protocols_list, Shapes::ShapeRef.new(shape: ProtocolsList, required: true, location_name: "ProtocolsList"))
    ProtocolsListData.add_member(:previous_protocols_list, Shapes::ShapeRef.new(shape: PreviousProtocolsList, location_name: "PreviousProtocolsList"))
    ProtocolsListData.struct_class = Types::ProtocolsListData

    ProtocolsListDataSummary.add_member(:list_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ListArn"))
    ProtocolsListDataSummary.add_member(:list_id, Shapes::ShapeRef.new(shape: ListId, location_name: "ListId"))
    ProtocolsListDataSummary.add_member(:list_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "ListName"))
    ProtocolsListDataSummary.add_member(:protocols_list, Shapes::ShapeRef.new(shape: ProtocolsList, location_name: "ProtocolsList"))
    ProtocolsListDataSummary.struct_class = Types::ProtocolsListDataSummary

    ProtocolsListsData.member = Shapes::ShapeRef.new(shape: ProtocolsListDataSummary)

    PutAppsListRequest.add_member(:apps_list, Shapes::ShapeRef.new(shape: AppsListData, required: true, location_name: "AppsList"))
    PutAppsListRequest.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    PutAppsListRequest.struct_class = Types::PutAppsListRequest

    PutAppsListResponse.add_member(:apps_list, Shapes::ShapeRef.new(shape: AppsListData, location_name: "AppsList"))
    PutAppsListResponse.add_member(:apps_list_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "AppsListArn"))
    PutAppsListResponse.struct_class = Types::PutAppsListResponse

    PutNotificationChannelRequest.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "SnsTopicArn"))
    PutNotificationChannelRequest.add_member(:sns_role_name, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "SnsRoleName"))
    PutNotificationChannelRequest.struct_class = Types::PutNotificationChannelRequest

    PutPolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, required: true, location_name: "Policy"))
    PutPolicyRequest.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    PutPolicyRequest.struct_class = Types::PutPolicyRequest

    PutPolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, location_name: "Policy"))
    PutPolicyResponse.add_member(:policy_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "PolicyArn"))
    PutPolicyResponse.struct_class = Types::PutPolicyResponse

    PutProtocolsListRequest.add_member(:protocols_list, Shapes::ShapeRef.new(shape: ProtocolsListData, required: true, location_name: "ProtocolsList"))
    PutProtocolsListRequest.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    PutProtocolsListRequest.struct_class = Types::PutProtocolsListRequest

    PutProtocolsListResponse.add_member(:protocols_list, Shapes::ShapeRef.new(shape: ProtocolsListData, location_name: "ProtocolsList"))
    PutProtocolsListResponse.add_member(:protocols_list_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ProtocolsListArn"))
    PutProtocolsListResponse.struct_class = Types::PutProtocolsListResponse

    ResourceIdList.member = Shapes::ShapeRef.new(shape: ResourceId)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceTag.add_member(:key, Shapes::ShapeRef.new(shape: ResourceTagKey, required: true, location_name: "Key"))
    ResourceTag.add_member(:value, Shapes::ShapeRef.new(shape: ResourceTagValue, location_name: "Value"))
    ResourceTag.struct_class = Types::ResourceTag

    ResourceTags.member = Shapes::ShapeRef.new(shape: ResourceTag)

    ResourceTypeList.member = Shapes::ShapeRef.new(shape: ResourceType)

    ResourceViolation.add_member(:aws_vpc_security_group_violation, Shapes::ShapeRef.new(shape: AwsVPCSecurityGroupViolation, location_name: "AwsVPCSecurityGroupViolation"))
    ResourceViolation.add_member(:aws_ec2_network_interface_violation, Shapes::ShapeRef.new(shape: AwsEc2NetworkInterfaceViolation, location_name: "AwsEc2NetworkInterfaceViolation"))
    ResourceViolation.add_member(:aws_ec2_instance_violation, Shapes::ShapeRef.new(shape: AwsEc2InstanceViolation, location_name: "AwsEc2InstanceViolation"))
    ResourceViolation.struct_class = Types::ResourceViolation

    ResourceViolations.member = Shapes::ShapeRef.new(shape: ResourceViolation)

    SecurityGroupRemediationAction.add_member(:remediation_action_type, Shapes::ShapeRef.new(shape: RemediationActionType, location_name: "RemediationActionType"))
    SecurityGroupRemediationAction.add_member(:description, Shapes::ShapeRef.new(shape: RemediationActionDescription, location_name: "Description"))
    SecurityGroupRemediationAction.add_member(:remediation_result, Shapes::ShapeRef.new(shape: SecurityGroupRuleDescription, location_name: "RemediationResult"))
    SecurityGroupRemediationAction.add_member(:is_default_action, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsDefaultAction"))
    SecurityGroupRemediationAction.struct_class = Types::SecurityGroupRemediationAction

    SecurityGroupRemediationActions.member = Shapes::ShapeRef.new(shape: SecurityGroupRemediationAction)

    SecurityGroupRuleDescription.add_member(:ipv4_range, Shapes::ShapeRef.new(shape: CIDR, location_name: "IPV4Range"))
    SecurityGroupRuleDescription.add_member(:ipv6_range, Shapes::ShapeRef.new(shape: CIDR, location_name: "IPV6Range"))
    SecurityGroupRuleDescription.add_member(:prefix_list_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "PrefixListId"))
    SecurityGroupRuleDescription.add_member(:protocol, Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: "Protocol"))
    SecurityGroupRuleDescription.add_member(:from_port, Shapes::ShapeRef.new(shape: IPPortNumber, location_name: "FromPort"))
    SecurityGroupRuleDescription.add_member(:to_port, Shapes::ShapeRef.new(shape: IPPortNumber, location_name: "ToPort"))
    SecurityGroupRuleDescription.struct_class = Types::SecurityGroupRuleDescription

    SecurityServicePolicyData.add_member(:type, Shapes::ShapeRef.new(shape: SecurityServiceType, required: true, location_name: "Type"))
    SecurityServicePolicyData.add_member(:managed_service_data, Shapes::ShapeRef.new(shape: ManagedServiceData, location_name: "ManagedServiceData"))
    SecurityServicePolicyData.struct_class = Types::SecurityServicePolicyData

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "TagList"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TargetViolationReasons.member = Shapes::ShapeRef.new(shape: TargetViolationReason)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    ViolationDetail.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, required: true, location_name: "PolicyId"))
    ViolationDetail.add_member(:member_account, Shapes::ShapeRef.new(shape: AWSAccountId, required: true, location_name: "MemberAccount"))
    ViolationDetail.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResourceId"))
    ViolationDetail.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "ResourceType"))
    ViolationDetail.add_member(:resource_violations, Shapes::ShapeRef.new(shape: ResourceViolations, required: true, location_name: "ResourceViolations"))
    ViolationDetail.add_member(:resource_tags, Shapes::ShapeRef.new(shape: TagList, location_name: "ResourceTags"))
    ViolationDetail.add_member(:resource_description, Shapes::ShapeRef.new(shape: LengthBoundedString, location_name: "ResourceDescription"))
    ViolationDetail.struct_class = Types::ViolationDetail


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-01-01"

      api.metadata = {
        "apiVersion" => "2018-01-01",
        "endpointPrefix" => "fms",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "FMS",
        "serviceFullName" => "Firewall Management Service",
        "serviceId" => "FMS",
        "signatureVersion" => "v4",
        "targetPrefix" => "AWSFMS_20180101",
        "uid" => "fms-2018-01-01",
      }

      api.add_operation(:associate_admin_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateAdminAccount"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateAdminAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:delete_apps_list, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAppsList"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAppsListRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:delete_notification_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteNotificationChannel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteNotificationChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:delete_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeletePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:delete_protocols_list, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProtocolsList"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteProtocolsListRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:disassociate_admin_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateAdminAccount"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateAdminAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:get_admin_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAdminAccount"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAdminAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAdminAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:get_apps_list, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAppsList"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAppsListRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAppsListResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:get_compliance_detail, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetComplianceDetail"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetComplianceDetailRequest)
        o.output = Shapes::ShapeRef.new(shape: GetComplianceDetailResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
      end)

      api.add_operation(:get_notification_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetNotificationChannel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetNotificationChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: GetNotificationChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:get_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTypeException)
      end)

      api.add_operation(:get_protection_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProtectionStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetProtectionStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetProtectionStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:get_protocols_list, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProtocolsList"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetProtocolsListRequest)
        o.output = Shapes::ShapeRef.new(shape: GetProtocolsListResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:get_violation_details, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetViolationDetails"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetViolationDetailsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetViolationDetailsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:list_apps_lists, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAppsLists"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAppsListsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAppsListsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:list_compliance_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListComplianceStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListComplianceStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: ListComplianceStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_member_accounts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMemberAccounts"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListMemberAccountsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMemberAccountsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPolicies"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_protocols_lists, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProtocolsLists"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListProtocolsListsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProtocolsListsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:put_apps_list, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutAppsList"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutAppsListRequest)
        o.output = Shapes::ShapeRef.new(shape: PutAppsListResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:put_notification_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutNotificationChannel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutNotificationChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:put_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTypeException)
      end)

      api.add_operation(:put_protocols_list, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutProtocolsList"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutProtocolsListRequest)
        o.output = Shapes::ShapeRef.new(shape: PutProtocolsListResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)
    end

  end
end
