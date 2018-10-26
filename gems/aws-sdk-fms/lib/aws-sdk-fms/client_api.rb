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
    AssociateAdminAccountRequest = Shapes::StructureShape.new(name: 'AssociateAdminAccountRequest')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ComplianceViolator = Shapes::StructureShape.new(name: 'ComplianceViolator')
    ComplianceViolators = Shapes::ListShape.new(name: 'ComplianceViolators')
    CustomerPolicyScopeId = Shapes::StringShape.new(name: 'CustomerPolicyScopeId')
    CustomerPolicyScopeIdList = Shapes::ListShape.new(name: 'CustomerPolicyScopeIdList')
    CustomerPolicyScopeIdType = Shapes::StringShape.new(name: 'CustomerPolicyScopeIdType')
    CustomerPolicyScopeMap = Shapes::MapShape.new(name: 'CustomerPolicyScopeMap')
    DeleteNotificationChannelRequest = Shapes::StructureShape.new(name: 'DeleteNotificationChannelRequest')
    DeletePolicyRequest = Shapes::StructureShape.new(name: 'DeletePolicyRequest')
    DependentServiceName = Shapes::StringShape.new(name: 'DependentServiceName')
    DetailedInfo = Shapes::StringShape.new(name: 'DetailedInfo')
    DisassociateAdminAccountRequest = Shapes::StructureShape.new(name: 'DisassociateAdminAccountRequest')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    EvaluationResult = Shapes::StructureShape.new(name: 'EvaluationResult')
    EvaluationResults = Shapes::ListShape.new(name: 'EvaluationResults')
    GetAdminAccountRequest = Shapes::StructureShape.new(name: 'GetAdminAccountRequest')
    GetAdminAccountResponse = Shapes::StructureShape.new(name: 'GetAdminAccountResponse')
    GetComplianceDetailRequest = Shapes::StructureShape.new(name: 'GetComplianceDetailRequest')
    GetComplianceDetailResponse = Shapes::StructureShape.new(name: 'GetComplianceDetailResponse')
    GetNotificationChannelRequest = Shapes::StructureShape.new(name: 'GetNotificationChannelRequest')
    GetNotificationChannelResponse = Shapes::StructureShape.new(name: 'GetNotificationChannelResponse')
    GetPolicyRequest = Shapes::StructureShape.new(name: 'GetPolicyRequest')
    GetPolicyResponse = Shapes::StructureShape.new(name: 'GetPolicyResponse')
    InternalErrorException = Shapes::StructureShape.new(name: 'InternalErrorException')
    InvalidInputException = Shapes::StructureShape.new(name: 'InvalidInputException')
    InvalidOperationException = Shapes::StructureShape.new(name: 'InvalidOperationException')
    InvalidTypeException = Shapes::StructureShape.new(name: 'InvalidTypeException')
    IssueInfoMap = Shapes::MapShape.new(name: 'IssueInfoMap')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListComplianceStatusRequest = Shapes::StructureShape.new(name: 'ListComplianceStatusRequest')
    ListComplianceStatusResponse = Shapes::StructureShape.new(name: 'ListComplianceStatusResponse')
    ListMemberAccountsRequest = Shapes::StructureShape.new(name: 'ListMemberAccountsRequest')
    ListMemberAccountsResponse = Shapes::StructureShape.new(name: 'ListMemberAccountsResponse')
    ListPoliciesRequest = Shapes::StructureShape.new(name: 'ListPoliciesRequest')
    ListPoliciesResponse = Shapes::StructureShape.new(name: 'ListPoliciesResponse')
    ManagedServiceData = Shapes::StringShape.new(name: 'ManagedServiceData')
    MemberAccounts = Shapes::ListShape.new(name: 'MemberAccounts')
    PaginationMaxResults = Shapes::IntegerShape.new(name: 'PaginationMaxResults')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    Policy = Shapes::StructureShape.new(name: 'Policy')
    PolicyComplianceDetail = Shapes::StructureShape.new(name: 'PolicyComplianceDetail')
    PolicyComplianceStatus = Shapes::StructureShape.new(name: 'PolicyComplianceStatus')
    PolicyComplianceStatusList = Shapes::ListShape.new(name: 'PolicyComplianceStatusList')
    PolicyComplianceStatusType = Shapes::StringShape.new(name: 'PolicyComplianceStatusType')
    PolicyId = Shapes::StringShape.new(name: 'PolicyId')
    PolicySummary = Shapes::StructureShape.new(name: 'PolicySummary')
    PolicySummaryList = Shapes::ListShape.new(name: 'PolicySummaryList')
    PolicyUpdateToken = Shapes::StringShape.new(name: 'PolicyUpdateToken')
    PutNotificationChannelRequest = Shapes::StructureShape.new(name: 'PutNotificationChannelRequest')
    PutPolicyRequest = Shapes::StructureShape.new(name: 'PutPolicyRequest')
    PutPolicyResponse = Shapes::StructureShape.new(name: 'PutPolicyResponse')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceCount = Shapes::IntegerShape.new(name: 'ResourceCount')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceTag = Shapes::StructureShape.new(name: 'ResourceTag')
    ResourceTags = Shapes::ListShape.new(name: 'ResourceTags')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    SecurityServicePolicyData = Shapes::StructureShape.new(name: 'SecurityServicePolicyData')
    SecurityServiceType = Shapes::StringShape.new(name: 'SecurityServiceType')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TimeStamp = Shapes::TimestampShape.new(name: 'TimeStamp')
    ViolationReason = Shapes::StringShape.new(name: 'ViolationReason')

    AssociateAdminAccountRequest.add_member(:admin_account, Shapes::ShapeRef.new(shape: AWSAccountId, required: true, location_name: "AdminAccount"))
    AssociateAdminAccountRequest.struct_class = Types::AssociateAdminAccountRequest

    ComplianceViolator.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId"))
    ComplianceViolator.add_member(:violation_reason, Shapes::ShapeRef.new(shape: ViolationReason, location_name: "ViolationReason"))
    ComplianceViolator.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ComplianceViolator.struct_class = Types::ComplianceViolator

    ComplianceViolators.member = Shapes::ShapeRef.new(shape: ComplianceViolator)

    CustomerPolicyScopeIdList.member = Shapes::ShapeRef.new(shape: CustomerPolicyScopeId)

    CustomerPolicyScopeMap.key = Shapes::ShapeRef.new(shape: CustomerPolicyScopeIdType)
    CustomerPolicyScopeMap.value = Shapes::ShapeRef.new(shape: CustomerPolicyScopeIdList)

    DeleteNotificationChannelRequest.struct_class = Types::DeleteNotificationChannelRequest

    DeletePolicyRequest.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, required: true, location_name: "PolicyId"))
    DeletePolicyRequest.struct_class = Types::DeletePolicyRequest

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

    IssueInfoMap.key = Shapes::ShapeRef.new(shape: DependentServiceName)
    IssueInfoMap.value = Shapes::ShapeRef.new(shape: DetailedInfo)

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

    MemberAccounts.member = Shapes::ShapeRef.new(shape: AWSAccountId)

    Policy.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, location_name: "PolicyId"))
    Policy.add_member(:policy_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "PolicyName"))
    Policy.add_member(:policy_update_token, Shapes::ShapeRef.new(shape: PolicyUpdateToken, location_name: "PolicyUpdateToken"))
    Policy.add_member(:security_service_policy_data, Shapes::ShapeRef.new(shape: SecurityServicePolicyData, required: true, location_name: "SecurityServicePolicyData"))
    Policy.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "ResourceType"))
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

    PutNotificationChannelRequest.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "SnsTopicArn"))
    PutNotificationChannelRequest.add_member(:sns_role_name, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "SnsRoleName"))
    PutNotificationChannelRequest.struct_class = Types::PutNotificationChannelRequest

    PutPolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, required: true, location_name: "Policy"))
    PutPolicyRequest.struct_class = Types::PutPolicyRequest

    PutPolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, location_name: "Policy"))
    PutPolicyResponse.add_member(:policy_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "PolicyArn"))
    PutPolicyResponse.struct_class = Types::PutPolicyResponse

    ResourceTag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    ResourceTag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    ResourceTag.struct_class = Types::ResourceTag

    ResourceTags.member = Shapes::ShapeRef.new(shape: ResourceTag)

    SecurityServicePolicyData.add_member(:type, Shapes::ShapeRef.new(shape: SecurityServiceType, required: true, location_name: "Type"))
    SecurityServicePolicyData.add_member(:managed_service_data, Shapes::ShapeRef.new(shape: ManagedServiceData, location_name: "ManagedServiceData"))
    SecurityServicePolicyData.struct_class = Types::SecurityServicePolicyData


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

      api.add_operation(:get_compliance_detail, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetComplianceDetail"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetComplianceDetailRequest)
        o.output = Shapes::ShapeRef.new(shape: GetComplianceDetailResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
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

      api.add_operation(:list_compliance_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListComplianceStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListComplianceStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: ListComplianceStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:list_member_accounts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMemberAccounts"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListMemberAccountsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMemberAccountsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
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
    end

  end
end
