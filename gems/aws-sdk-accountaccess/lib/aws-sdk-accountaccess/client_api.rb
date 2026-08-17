# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::AccountAccess
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Account = Shapes::StringShape.new(name: 'Account')
    AlreadyCreatedException = Shapes::StructureShape.new(name: 'AlreadyCreatedException')
    ApplicationArn = Shapes::StringShape.new(name: 'ApplicationArn')
    ApplicationList = Shapes::ListShape.new(name: 'ApplicationList')
    ApplicationSummary = Shapes::StructureShape.new(name: 'ApplicationSummary')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateApplicationRequest = Shapes::StructureShape.new(name: 'CreateApplicationRequest')
    CreateApplicationResponse = Shapes::StructureShape.new(name: 'CreateApplicationResponse')
    CreateEntitlementRequest = Shapes::StructureShape.new(name: 'CreateEntitlementRequest')
    CreateEntitlementResponse = Shapes::StructureShape.new(name: 'CreateEntitlementResponse')
    DateTime = Shapes::TimestampShape.new(name: 'DateTime', timestampFormat: "iso8601")
    DeleteApplicationRequest = Shapes::StructureShape.new(name: 'DeleteApplicationRequest')
    DeleteApplicationResponse = Shapes::StructureShape.new(name: 'DeleteApplicationResponse')
    DeleteEntitlementRequest = Shapes::StructureShape.new(name: 'DeleteEntitlementRequest')
    DeleteEntitlementResponse = Shapes::StructureShape.new(name: 'DeleteEntitlementResponse')
    Entitlement = Shapes::UnionShape.new(name: 'Entitlement')
    EntitlementDetails = Shapes::UnionShape.new(name: 'EntitlementDetails')
    EntitlementFilter = Shapes::StructureShape.new(name: 'EntitlementFilter')
    EntitlementSummary = Shapes::UnionShape.new(name: 'EntitlementSummary')
    EntitlementsList = Shapes::ListShape.new(name: 'EntitlementsList')
    EntitlementsListMember = Shapes::StructureShape.new(name: 'EntitlementsListMember')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorDetails = Shapes::StructureShape.new(name: 'ErrorDetails')
    GetApplicationRequest = Shapes::StructureShape.new(name: 'GetApplicationRequest')
    GetApplicationResponse = Shapes::StructureShape.new(name: 'GetApplicationResponse')
    GetEntitlementRequest = Shapes::StructureShape.new(name: 'GetEntitlementRequest')
    GetEntitlementResponse = Shapes::StructureShape.new(name: 'GetEntitlementResponse')
    GroupId = Shapes::StringShape.new(name: 'GroupId')
    IdentityCenter = Shapes::StructureShape.new(name: 'IdentityCenter')
    IdentityCenterApplicationArn = Shapes::StringShape.new(name: 'IdentityCenterApplicationArn')
    IdentityCenterDetails = Shapes::StructureShape.new(name: 'IdentityCenterDetails')
    IdentityCenterInstanceArn = Shapes::StringShape.new(name: 'IdentityCenterInstanceArn')
    IdentityCenterPrincipal = Shapes::UnionShape.new(name: 'IdentityCenterPrincipal')
    IdentityCenterPrincipalFilter = Shapes::UnionShape.new(name: 'IdentityCenterPrincipalFilter')
    IdentitySource = Shapes::UnionShape.new(name: 'IdentitySource')
    IdentitySourceDetails = Shapes::UnionShape.new(name: 'IdentitySourceDetails')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListApplicationsRequest = Shapes::StructureShape.new(name: 'ListApplicationsRequest')
    ListApplicationsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListApplicationsRequestMaxResultsInteger')
    ListApplicationsResponse = Shapes::StructureShape.new(name: 'ListApplicationsResponse')
    ListEntitlementsRequest = Shapes::StructureShape.new(name: 'ListEntitlementsRequest')
    ListEntitlementsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListEntitlementsRequestMaxResultsInteger')
    ListEntitlementsResponse = Shapes::StructureShape.new(name: 'ListEntitlementsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    Principal = Shapes::UnionShape.new(name: 'Principal')
    PrincipalFilter = Shapes::UnionShape.new(name: 'PrincipalFilter')
    PrincipalRoleEntitlement = Shapes::StructureShape.new(name: 'PrincipalRoleEntitlement')
    PrincipalRoleEntitlementDetails = Shapes::StructureShape.new(name: 'PrincipalRoleEntitlementDetails')
    PrincipalRoleEntitlementFilter = Shapes::StructureShape.new(name: 'PrincipalRoleEntitlementFilter')
    PrincipalRoleEntitlementSummary = Shapes::StructureShape.new(name: 'PrincipalRoleEntitlementSummary')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    Status = Shapes::StringShape.new(name: 'Status')
    String = Shapes::StringShape.new(name: 'String')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagsMap = Shapes::MapShape.new(name: 'TagsMap')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UserId = Shapes::StringShape.new(name: 'UserId')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AlreadyCreatedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AlreadyCreatedException.struct_class = Types::AlreadyCreatedException

    ApplicationList.member = Shapes::ShapeRef.new(shape: ApplicationSummary)

    ApplicationSummary.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, required: true, location_name: "applicationArn"))
    ApplicationSummary.add_member(:tenant_id, Shapes::ShapeRef.new(shape: String, location_name: "tenantId"))
    ApplicationSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "createdAt"))
    ApplicationSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "updatedAt"))
    ApplicationSummary.struct_class = Types::ApplicationSummary

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateApplicationRequest.add_member(:identity_source, Shapes::ShapeRef.new(shape: IdentitySource, required: true, location_name: "identitySource"))
    CreateApplicationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateApplicationRequest.struct_class = Types::CreateApplicationRequest

    CreateApplicationResponse.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, required: true, location_name: "applicationArn"))
    CreateApplicationResponse.struct_class = Types::CreateApplicationResponse

    CreateEntitlementRequest.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, required: true, location_name: "applicationArn"))
    CreateEntitlementRequest.add_member(:entitlement, Shapes::ShapeRef.new(shape: Entitlement, required: true, location_name: "entitlement"))
    CreateEntitlementRequest.struct_class = Types::CreateEntitlementRequest

    CreateEntitlementResponse.add_member(:entitlement_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "entitlementId"))
    CreateEntitlementResponse.struct_class = Types::CreateEntitlementResponse

    DeleteApplicationRequest.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, required: true, location: "uri", location_name: "applicationArn"))
    DeleteApplicationRequest.struct_class = Types::DeleteApplicationRequest

    DeleteApplicationResponse.struct_class = Types::DeleteApplicationResponse

    DeleteEntitlementRequest.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, required: true, location: "querystring", location_name: "applicationArn"))
    DeleteEntitlementRequest.add_member(:entitlement_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "entitlementId"))
    DeleteEntitlementRequest.struct_class = Types::DeleteEntitlementRequest

    DeleteEntitlementResponse.struct_class = Types::DeleteEntitlementResponse

    Entitlement.add_member(:principal_role, Shapes::ShapeRef.new(shape: PrincipalRoleEntitlement, location_name: "principalRole"))
    Entitlement.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Entitlement.add_member_subclass(:principal_role, Types::Entitlement::PrincipalRole)
    Entitlement.add_member_subclass(:unknown, Types::Entitlement::Unknown)
    Entitlement.struct_class = Types::Entitlement

    EntitlementDetails.add_member(:principal_role, Shapes::ShapeRef.new(shape: PrincipalRoleEntitlementDetails, location_name: "principalRole"))
    EntitlementDetails.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EntitlementDetails.add_member_subclass(:principal_role, Types::EntitlementDetails::PrincipalRole)
    EntitlementDetails.add_member_subclass(:unknown, Types::EntitlementDetails::Unknown)
    EntitlementDetails.struct_class = Types::EntitlementDetails

    EntitlementFilter.add_member(:principal_role, Shapes::ShapeRef.new(shape: PrincipalRoleEntitlementFilter, location_name: "principalRole"))
    EntitlementFilter.struct_class = Types::EntitlementFilter

    EntitlementSummary.add_member(:principal_role, Shapes::ShapeRef.new(shape: PrincipalRoleEntitlementSummary, location_name: "principalRole"))
    EntitlementSummary.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EntitlementSummary.add_member_subclass(:principal_role, Types::EntitlementSummary::PrincipalRole)
    EntitlementSummary.add_member_subclass(:unknown, Types::EntitlementSummary::Unknown)
    EntitlementSummary.struct_class = Types::EntitlementSummary

    EntitlementsList.member = Shapes::ShapeRef.new(shape: EntitlementsListMember)

    EntitlementsListMember.add_member(:entitlement_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "entitlementId"))
    EntitlementsListMember.add_member(:entitlement, Shapes::ShapeRef.new(shape: EntitlementSummary, required: true, location_name: "entitlement"))
    EntitlementsListMember.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "createdAt"))
    EntitlementsListMember.struct_class = Types::EntitlementsListMember

    ErrorDetails.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, required: true, location_name: "code"))
    ErrorDetails.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ErrorDetails.struct_class = Types::ErrorDetails

    GetApplicationRequest.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, required: true, location: "uri", location_name: "applicationArn"))
    GetApplicationRequest.struct_class = Types::GetApplicationRequest

    GetApplicationResponse.add_member(:identity_source, Shapes::ShapeRef.new(shape: IdentitySourceDetails, required: true, location_name: "identitySource"))
    GetApplicationResponse.add_member(:status, Shapes::ShapeRef.new(shape: Status, required: true, location_name: "status"))
    GetApplicationResponse.add_member(:tenant_id, Shapes::ShapeRef.new(shape: String, location_name: "tenantId"))
    GetApplicationResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "createdAt"))
    GetApplicationResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "updatedAt"))
    GetApplicationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    GetApplicationResponse.add_member(:error, Shapes::ShapeRef.new(shape: ErrorDetails, location_name: "error"))
    GetApplicationResponse.struct_class = Types::GetApplicationResponse

    GetEntitlementRequest.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, required: true, location: "querystring", location_name: "applicationArn"))
    GetEntitlementRequest.add_member(:entitlement_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "entitlementId"))
    GetEntitlementRequest.struct_class = Types::GetEntitlementRequest

    GetEntitlementResponse.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, required: true, location_name: "applicationArn"))
    GetEntitlementResponse.add_member(:entitlement_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "entitlementId"))
    GetEntitlementResponse.add_member(:entitlement, Shapes::ShapeRef.new(shape: EntitlementDetails, required: true, location_name: "entitlement"))
    GetEntitlementResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "createdAt"))
    GetEntitlementResponse.struct_class = Types::GetEntitlementResponse

    IdentityCenter.add_member(:instance_arn, Shapes::ShapeRef.new(shape: IdentityCenterInstanceArn, required: true, location_name: "instanceArn"))
    IdentityCenter.struct_class = Types::IdentityCenter

    IdentityCenterDetails.add_member(:instance_arn, Shapes::ShapeRef.new(shape: IdentityCenterInstanceArn, required: true, location_name: "instanceArn"))
    IdentityCenterDetails.add_member(:application_arn, Shapes::ShapeRef.new(shape: IdentityCenterApplicationArn, location_name: "applicationArn"))
    IdentityCenterDetails.struct_class = Types::IdentityCenterDetails

    IdentityCenterPrincipal.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location_name: "userId"))
    IdentityCenterPrincipal.add_member(:group_id, Shapes::ShapeRef.new(shape: GroupId, location_name: "groupId"))
    IdentityCenterPrincipal.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    IdentityCenterPrincipal.add_member_subclass(:user_id, Types::IdentityCenterPrincipal::UserId)
    IdentityCenterPrincipal.add_member_subclass(:group_id, Types::IdentityCenterPrincipal::GroupId)
    IdentityCenterPrincipal.add_member_subclass(:unknown, Types::IdentityCenterPrincipal::Unknown)
    IdentityCenterPrincipal.struct_class = Types::IdentityCenterPrincipal

    IdentityCenterPrincipalFilter.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location_name: "userId"))
    IdentityCenterPrincipalFilter.add_member(:group_id, Shapes::ShapeRef.new(shape: GroupId, location_name: "groupId"))
    IdentityCenterPrincipalFilter.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    IdentityCenterPrincipalFilter.add_member_subclass(:user_id, Types::IdentityCenterPrincipalFilter::UserId)
    IdentityCenterPrincipalFilter.add_member_subclass(:group_id, Types::IdentityCenterPrincipalFilter::GroupId)
    IdentityCenterPrincipalFilter.add_member_subclass(:unknown, Types::IdentityCenterPrincipalFilter::Unknown)
    IdentityCenterPrincipalFilter.struct_class = Types::IdentityCenterPrincipalFilter

    IdentitySource.add_member(:identity_center, Shapes::ShapeRef.new(shape: IdentityCenter, location_name: "identityCenter"))
    IdentitySource.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    IdentitySource.add_member_subclass(:identity_center, Types::IdentitySource::IdentityCenter)
    IdentitySource.add_member_subclass(:unknown, Types::IdentitySource::Unknown)
    IdentitySource.struct_class = Types::IdentitySource

    IdentitySourceDetails.add_member(:identity_center, Shapes::ShapeRef.new(shape: IdentityCenterDetails, location_name: "identityCenter"))
    IdentitySourceDetails.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    IdentitySourceDetails.add_member_subclass(:identity_center, Types::IdentitySourceDetails::IdentityCenter)
    IdentitySourceDetails.add_member_subclass(:unknown, Types::IdentitySourceDetails::Unknown)
    IdentitySourceDetails.struct_class = Types::IdentitySourceDetails

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListApplicationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListApplicationsRequestMaxResultsInteger, location_name: "maxResults"))
    ListApplicationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListApplicationsRequest.struct_class = Types::ListApplicationsRequest

    ListApplicationsResponse.add_member(:applications, Shapes::ShapeRef.new(shape: ApplicationList, required: true, location_name: "applications"))
    ListApplicationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListApplicationsResponse.struct_class = Types::ListApplicationsResponse

    ListEntitlementsRequest.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, required: true, location_name: "applicationArn"))
    ListEntitlementsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: EntitlementFilter, required: true, location_name: "filter"))
    ListEntitlementsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListEntitlementsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListEntitlementsRequestMaxResultsInteger, location_name: "maxResults"))
    ListEntitlementsRequest.struct_class = Types::ListEntitlementsRequest

    ListEntitlementsResponse.add_member(:entitlements, Shapes::ShapeRef.new(shape: EntitlementsList, required: true, location_name: "entitlements"))
    ListEntitlementsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListEntitlementsResponse.struct_class = Types::ListEntitlementsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ApplicationArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    Principal.add_member(:identity_center, Shapes::ShapeRef.new(shape: IdentityCenterPrincipal, location_name: "identityCenter"))
    Principal.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Principal.add_member_subclass(:identity_center, Types::Principal::IdentityCenter)
    Principal.add_member_subclass(:unknown, Types::Principal::Unknown)
    Principal.struct_class = Types::Principal

    PrincipalFilter.add_member(:identity_center, Shapes::ShapeRef.new(shape: IdentityCenterPrincipalFilter, location_name: "identityCenter"))
    PrincipalFilter.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PrincipalFilter.add_member_subclass(:identity_center, Types::PrincipalFilter::IdentityCenter)
    PrincipalFilter.add_member_subclass(:unknown, Types::PrincipalFilter::Unknown)
    PrincipalFilter.struct_class = Types::PrincipalFilter

    PrincipalRoleEntitlement.add_member(:principal, Shapes::ShapeRef.new(shape: Principal, required: true, location_name: "principal"))
    PrincipalRoleEntitlement.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    PrincipalRoleEntitlement.struct_class = Types::PrincipalRoleEntitlement

    PrincipalRoleEntitlementDetails.add_member(:principal, Shapes::ShapeRef.new(shape: Principal, required: true, location_name: "principal"))
    PrincipalRoleEntitlementDetails.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    PrincipalRoleEntitlementDetails.add_member(:account, Shapes::ShapeRef.new(shape: Account, required: true, location_name: "account"))
    PrincipalRoleEntitlementDetails.add_member(:account_name, Shapes::ShapeRef.new(shape: String, location_name: "accountName"))
    PrincipalRoleEntitlementDetails.struct_class = Types::PrincipalRoleEntitlementDetails

    PrincipalRoleEntitlementFilter.add_member(:principal, Shapes::ShapeRef.new(shape: PrincipalFilter, location_name: "principal"))
    PrincipalRoleEntitlementFilter.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    PrincipalRoleEntitlementFilter.add_member(:account, Shapes::ShapeRef.new(shape: Account, location_name: "account"))
    PrincipalRoleEntitlementFilter.struct_class = Types::PrincipalRoleEntitlementFilter

    PrincipalRoleEntitlementSummary.add_member(:principal, Shapes::ShapeRef.new(shape: Principal, required: true, location_name: "principal"))
    PrincipalRoleEntitlementSummary.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    PrincipalRoleEntitlementSummary.add_member(:account, Shapes::ShapeRef.new(shape: Account, required: true, location_name: "account"))
    PrincipalRoleEntitlementSummary.add_member(:account_name, Shapes::ShapeRef.new(shape: String, location_name: "accountName"))
    PrincipalRoleEntitlementSummary.struct_class = Types::PrincipalRoleEntitlementSummary

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    TagKeys.member = Shapes::ShapeRef.new(shape: String)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ApplicationArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TagsMap.key = Shapes::ShapeRef.new(shape: String)
    TagsMap.value = Shapes::ShapeRef.new(shape: String)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ApplicationArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-10"

      api.metadata = {
        "apiVersion" => "2018-05-10",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "account-access",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Account Access",
        "serviceId" => "Account Access",
        "signatureVersion" => "v4",
        "signingName" => "account-access",
        "uid" => "account-access-2018-05-10",
      }

      api.add_operation(:create_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateApplication"
        o.http_method = "POST"
        o.http_request_uri = "/applications"
        o.input = Shapes::ShapeRef.new(shape: CreateApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyCreatedException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_entitlement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEntitlement"
        o.http_method = "POST"
        o.http_request_uri = "/entitlements"
        o.input = Shapes::ShapeRef.new(shape: CreateEntitlementRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEntitlementResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApplication"
        o.http_method = "DELETE"
        o.http_request_uri = "/applications/{applicationArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_entitlement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEntitlement"
        o.http_method = "DELETE"
        o.http_request_uri = "/entitlements/{entitlementId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteEntitlementRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEntitlementResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetApplication"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationArn}"
        o.input = Shapes::ShapeRef.new(shape: GetApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_entitlement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEntitlement"
        o.http_method = "GET"
        o.http_request_uri = "/entitlements/{entitlementId}"
        o.input = Shapes::ShapeRef.new(shape: GetEntitlementRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEntitlementResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_applications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApplications"
        o.http_method = "POST"
        o.http_request_uri = "/applications-list"
        o.input = Shapes::ShapeRef.new(shape: ListApplicationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListApplicationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_entitlements, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEntitlements"
        o.http_method = "POST"
        o.http_request_uri = "/entitlements-list"
        o.input = Shapes::ShapeRef.new(shape: ListEntitlementsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEntitlementsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
