# frozen_string_literal: true

# This is generated code!

module Aws::AccountAccess
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accountaccess#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Account = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accountaccess#Account", name: "Account", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]{12}$"})
    AlreadyCreatedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accountaccess#AlreadyCreatedException", name: "AlreadyCreatedException", traits: {"smithy.api#error" => "client"})
    ApplicationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accountaccess#ApplicationArn", name: "ApplicationArn", traits: {"aws.api#arnReference" => {"type" => "AWS::Service::Resource"}, "smithy.api#length" => {"min" => 49, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z0-9-]+:account-access:[a-z0-9]+(-[a-z0-9]+)*:[0-9]{12}:application/[a-zA-Z0-9-]+$"})
    ApplicationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accountaccess#ApplicationList", name: "ApplicationList")
    ApplicationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accountaccess#ApplicationSummary", name: "ApplicationSummary")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accountaccess#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accountaccess#CreateApplicationRequest", name: "CreateApplicationRequest")
    CreateApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accountaccess#CreateApplicationResponse", name: "CreateApplicationResponse")
    CreateEntitlementRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accountaccess#CreateEntitlementRequest", name: "CreateEntitlementRequest")
    CreateEntitlementResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accountaccess#CreateEntitlementResponse", name: "CreateEntitlementResponse")
    DateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.accountaccess#DateTime", name: "DateTime", traits: {"smithy.api#timestampFormat" => "date-time"})
    DeleteApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accountaccess#DeleteApplicationRequest", name: "DeleteApplicationRequest")
    DeleteApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accountaccess#DeleteApplicationResponse", name: "DeleteApplicationResponse")
    DeleteEntitlementRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accountaccess#DeleteEntitlementRequest", name: "DeleteEntitlementRequest")
    DeleteEntitlementResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accountaccess#DeleteEntitlementResponse", name: "DeleteEntitlementResponse")
    Entitlement = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.accountaccess#Entitlement", name: "Entitlement")
    EntitlementDetails = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.accountaccess#EntitlementDetails", name: "EntitlementDetails")
    EntitlementFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accountaccess#EntitlementFilter", name: "EntitlementFilter")
    EntitlementSummary = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.accountaccess#EntitlementSummary", name: "EntitlementSummary")
    EntitlementsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accountaccess#EntitlementsList", name: "EntitlementsList")
    EntitlementsListMember = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accountaccess#EntitlementsListMember", name: "EntitlementsListMember")
    ErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.accountaccess#ErrorCode", name: "ErrorCode")
    ErrorDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accountaccess#ErrorDetails", name: "ErrorDetails")
    GetApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accountaccess#GetApplicationRequest", name: "GetApplicationRequest")
    GetApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accountaccess#GetApplicationResponse", name: "GetApplicationResponse")
    GetEntitlementRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accountaccess#GetEntitlementRequest", name: "GetEntitlementRequest")
    GetEntitlementResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accountaccess#GetEntitlementResponse", name: "GetEntitlementResponse")
    GroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accountaccess#GroupId", name: "GroupId", traits: {"smithy.api#length" => {"min" => 1, "max" => 47}, "smithy.api#pattern" => "^([0-9a-f]{10}-|)[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12}$"})
    IdentityCenter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accountaccess#IdentityCenter", name: "IdentityCenter")
    IdentityCenterApplicationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accountaccess#IdentityCenterApplicationArn", name: "IdentityCenterApplicationArn", traits: {"aws.api#arnReference" => {"type" => "AWS::SSO::Application"}, "smithy.api#length" => {"min" => 10, "max" => 1224}, "smithy.api#pattern" => "^arn:[a-z0-9-]+:sso::[0-9]{12}:application/(sso)?ins-[a-zA-Z0-9-.]{16}/apl-[a-zA-Z0-9]{16}$"})
    IdentityCenterDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accountaccess#IdentityCenterDetails", name: "IdentityCenterDetails")
    IdentityCenterInstanceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accountaccess#IdentityCenterInstanceArn", name: "IdentityCenterInstanceArn", traits: {"aws.api#arnReference" => {"type" => "AWS::SSO::Instance"}, "smithy.api#length" => {"min" => 10, "max" => 1224}, "smithy.api#pattern" => "^arn:[a-z0-9-]+:sso:::instance/(sso)?ins-[a-zA-Z0-9-.]{16}$"})
    IdentityCenterPrincipal = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.accountaccess#IdentityCenterPrincipal", name: "IdentityCenterPrincipal")
    IdentityCenterPrincipalFilter = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.accountaccess#IdentityCenterPrincipalFilter", name: "IdentityCenterPrincipalFilter")
    IdentitySource = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.accountaccess#IdentitySource", name: "IdentitySource")
    IdentitySourceDetails = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.accountaccess#IdentitySourceDetails", name: "IdentitySourceDetails")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accountaccess#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListApplicationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accountaccess#ListApplicationsRequest", name: "ListApplicationsRequest")
    ListApplicationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accountaccess#ListApplicationsResponse", name: "ListApplicationsResponse")
    ListEntitlementsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accountaccess#ListEntitlementsRequest", name: "ListEntitlementsRequest")
    ListEntitlementsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accountaccess#ListEntitlementsResponse", name: "ListEntitlementsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accountaccess#ListTagsForResourceRequest", name: "ListTagsForResourceRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.accountaccess#Application", "ids" => {"applicationArn" => "resourceArn"}}], "smithy.api#suppress" => ["UnstableTrait"]})
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accountaccess#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    Principal = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.accountaccess#Principal", name: "Principal")
    PrincipalFilter = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.accountaccess#PrincipalFilter", name: "PrincipalFilter")
    PrincipalRoleEntitlement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accountaccess#PrincipalRoleEntitlement", name: "PrincipalRoleEntitlement")
    PrincipalRoleEntitlementDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accountaccess#PrincipalRoleEntitlementDetails", name: "PrincipalRoleEntitlementDetails")
    PrincipalRoleEntitlementFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accountaccess#PrincipalRoleEntitlementFilter", name: "PrincipalRoleEntitlementFilter")
    PrincipalRoleEntitlementSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accountaccess#PrincipalRoleEntitlementSummary", name: "PrincipalRoleEntitlementSummary")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accountaccess#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accountaccess#RoleArn", name: "RoleArn", traits: {"aws.api#arnReference" => {"type" => "AWS::IAM::Role"}, "smithy.api#pattern" => "^arn:[a-z0-9-]+:iam::[0-9]{12}:role/([a-zA-Z0-9+=,.@_-]+/)*[a-zA-Z0-9+=,.@_-]+$"})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accountaccess#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    Status = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.accountaccess#Status", name: "Status")
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accountaccess#TagKeys", name: "TagKeys")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accountaccess#TagResourceRequest", name: "TagResourceRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.accountaccess#Application", "ids" => {"applicationArn" => "resourceArn"}}], "smithy.api#suppress" => ["UnstableTrait"]})
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accountaccess#TagResourceResponse", name: "TagResourceResponse")
    TagsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.accountaccess#TagsMap", name: "TagsMap")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accountaccess#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accountaccess#UntagResourceRequest", name: "UntagResourceRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.accountaccess#Application", "ids" => {"applicationArn" => "resourceArn"}}], "smithy.api#suppress" => ["UnstableTrait"]})
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accountaccess#UntagResourceResponse", name: "UntagResourceResponse")
    UserId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accountaccess#UserId", name: "UserId", traits: {"smithy.api#length" => {"min" => 1, "max" => 47}, "smithy.api#pattern" => "^([0-9a-f]{10}-|)[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12}$"})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accountaccess#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AlreadyCreatedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    AlreadyCreatedException.type = Types::AlreadyCreatedException
    ApplicationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSummary, name: "member"))
    ApplicationSummary.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "applicationArn", traits: {"smithy.api#required" => {}}))
    ApplicationSummary.add_member(:tenant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "tenantId"))
    ApplicationSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "createdAt", traits: {"smithy.api#required" => {}}))
    ApplicationSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    ApplicationSummary.type = Types::ApplicationSummary
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ConflictException.type = Types::ConflictException
    CreateApplicationRequest.add_member(:identity_source, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentitySource, name: "identitySource", traits: {"smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    CreateApplicationRequest.type = Types::CreateApplicationRequest
    CreateApplicationResponse.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "applicationArn", traits: {"smithy.api#required" => {}}))
    CreateApplicationResponse.type = Types::CreateApplicationResponse
    CreateEntitlementRequest.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "applicationArn", traits: {"smithy.api#required" => {}}))
    CreateEntitlementRequest.add_member(:entitlement, ::Smithy::Schema::Shapes::MemberShape.new(target: Entitlement, name: "entitlement", traits: {"smithy.api#required" => {}}))
    CreateEntitlementRequest.type = Types::CreateEntitlementRequest
    CreateEntitlementResponse.add_member(:entitlement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "entitlementId", traits: {"smithy.api#required" => {}}))
    CreateEntitlementResponse.type = Types::CreateEntitlementResponse
    DeleteApplicationRequest.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "applicationArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApplicationRequest.type = Types::DeleteApplicationRequest
    DeleteApplicationResponse.type = Types::DeleteApplicationResponse
    DeleteEntitlementRequest.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "applicationArn", traits: {"smithy.api#httpQuery" => "applicationArn", "smithy.api#required" => {}}))
    DeleteEntitlementRequest.add_member(:entitlement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "entitlementId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEntitlementRequest.type = Types::DeleteEntitlementRequest
    DeleteEntitlementResponse.type = Types::DeleteEntitlementResponse
    Entitlement.add_member(:principal_role, Types::Entitlement::PrincipalRole, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalRoleEntitlement, name: "principalRole"))
    Entitlement.add_member(:unknown, Types::Entitlement::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Entitlement.type = Types::Entitlement
    EntitlementDetails.add_member(:principal_role, Types::EntitlementDetails::PrincipalRole, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalRoleEntitlementDetails, name: "principalRole"))
    EntitlementDetails.add_member(:unknown, Types::EntitlementDetails::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    EntitlementDetails.type = Types::EntitlementDetails
    EntitlementFilter.add_member(:principal_role, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalRoleEntitlementFilter, name: "principalRole"))
    EntitlementFilter.type = Types::EntitlementFilter
    EntitlementSummary.add_member(:principal_role, Types::EntitlementSummary::PrincipalRole, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalRoleEntitlementSummary, name: "principalRole"))
    EntitlementSummary.add_member(:unknown, Types::EntitlementSummary::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    EntitlementSummary.type = Types::EntitlementSummary
    EntitlementsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitlementsListMember, name: "member"))
    EntitlementsListMember.add_member(:entitlement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "entitlementId", traits: {"smithy.api#required" => {}}))
    EntitlementsListMember.add_member(:entitlement, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitlementSummary, name: "entitlement", traits: {"smithy.api#required" => {}}))
    EntitlementsListMember.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "createdAt", traits: {"smithy.api#required" => {}}))
    EntitlementsListMember.type = Types::EntitlementsListMember
    ErrorCode.add_member(:authorization_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTHORIZATION_ERROR", traits: {"smithy.api#enumValue" => "AUTHORIZATION_ERROR"}))
    ErrorCode.add_member(:resource_not_found_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_NOT_FOUND_ERROR", traits: {"smithy.api#enumValue" => "RESOURCE_NOT_FOUND_ERROR"}))
    ErrorCode.add_member(:service_quota_exceeded_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_QUOTA_EXCEEDED_ERROR", traits: {"smithy.api#enumValue" => "SERVICE_QUOTA_EXCEEDED_ERROR"}))
    ErrorCode.add_member(:internal_service_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_SERVICE_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_SERVICE_ERROR"}))
    ErrorDetails.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "code", traits: {"smithy.api#required" => {}}))
    ErrorDetails.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ErrorDetails.type = Types::ErrorDetails
    GetApplicationRequest.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "applicationArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApplicationRequest.type = Types::GetApplicationRequest
    GetApplicationResponse.add_member(:identity_source, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentitySourceDetails, name: "identitySource", traits: {"smithy.api#required" => {}}))
    GetApplicationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "status", traits: {"smithy.api#required" => {}}))
    GetApplicationResponse.add_member(:tenant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "tenantId"))
    GetApplicationResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetApplicationResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    GetApplicationResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    GetApplicationResponse.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetails, name: "error"))
    GetApplicationResponse.type = Types::GetApplicationResponse
    GetEntitlementRequest.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "applicationArn", traits: {"smithy.api#httpQuery" => "applicationArn", "smithy.api#required" => {}}))
    GetEntitlementRequest.add_member(:entitlement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "entitlementId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEntitlementRequest.type = Types::GetEntitlementRequest
    GetEntitlementResponse.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "applicationArn", traits: {"smithy.api#required" => {}}))
    GetEntitlementResponse.add_member(:entitlement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "entitlementId", traits: {"smithy.api#required" => {}}))
    GetEntitlementResponse.add_member(:entitlement, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitlementDetails, name: "entitlement", traits: {"smithy.api#required" => {}}))
    GetEntitlementResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetEntitlementResponse.type = Types::GetEntitlementResponse
    IdentityCenter.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterInstanceArn, name: "instanceArn", traits: {"smithy.api#required" => {}}))
    IdentityCenter.type = Types::IdentityCenter
    IdentityCenterDetails.add_member(:instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterInstanceArn, name: "instanceArn", traits: {"smithy.api#required" => {}}))
    IdentityCenterDetails.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterApplicationArn, name: "applicationArn"))
    IdentityCenterDetails.type = Types::IdentityCenterDetails
    IdentityCenterPrincipal.add_member(:user_id, Types::IdentityCenterPrincipal::UserId, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId"))
    IdentityCenterPrincipal.add_member(:group_id, Types::IdentityCenterPrincipal::GroupId, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupId, name: "groupId"))
    IdentityCenterPrincipal.add_member(:unknown, Types::IdentityCenterPrincipal::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    IdentityCenterPrincipal.type = Types::IdentityCenterPrincipal
    IdentityCenterPrincipalFilter.add_member(:user_id, Types::IdentityCenterPrincipalFilter::UserId, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "userId"))
    IdentityCenterPrincipalFilter.add_member(:group_id, Types::IdentityCenterPrincipalFilter::GroupId, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupId, name: "groupId"))
    IdentityCenterPrincipalFilter.add_member(:unknown, Types::IdentityCenterPrincipalFilter::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    IdentityCenterPrincipalFilter.type = Types::IdentityCenterPrincipalFilter
    IdentitySource.add_member(:identity_center, Types::IdentitySource::IdentityCenter, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenter, name: "identityCenter"))
    IdentitySource.add_member(:unknown, Types::IdentitySource::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    IdentitySource.type = Types::IdentitySource
    IdentitySourceDetails.add_member(:identity_center, Types::IdentitySourceDetails::IdentityCenter, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterDetails, name: "identityCenter"))
    IdentitySourceDetails.add_member(:unknown, Types::IdentitySourceDetails::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    IdentitySourceDetails.type = Types::IdentitySourceDetails
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    InternalServerException.type = Types::InternalServerException
    ListApplicationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListApplicationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListApplicationsRequest.type = Types::ListApplicationsRequest
    ListApplicationsResponse.add_member(:applications, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationList, name: "applications", traits: {"smithy.api#required" => {}}))
    ListApplicationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListApplicationsResponse.type = Types::ListApplicationsResponse
    ListEntitlementsRequest.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "applicationArn", traits: {"smithy.api#required" => {}}))
    ListEntitlementsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitlementFilter, name: "filter", traits: {"smithy.api#required" => {}}))
    ListEntitlementsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListEntitlementsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListEntitlementsRequest.type = Types::ListEntitlementsRequest
    ListEntitlementsResponse.add_member(:entitlements, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitlementsList, name: "entitlements", traits: {"smithy.api#required" => {}}))
    ListEntitlementsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListEntitlementsResponse.type = Types::ListEntitlementsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    Principal.add_member(:identity_center, Types::Principal::IdentityCenter, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterPrincipal, name: "identityCenter"))
    Principal.add_member(:unknown, Types::Principal::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Principal.type = Types::Principal
    PrincipalFilter.add_member(:identity_center, Types::PrincipalFilter::IdentityCenter, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterPrincipalFilter, name: "identityCenter"))
    PrincipalFilter.add_member(:unknown, Types::PrincipalFilter::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    PrincipalFilter.type = Types::PrincipalFilter
    PrincipalRoleEntitlement.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: Principal, name: "principal", traits: {"smithy.api#required" => {}}))
    PrincipalRoleEntitlement.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    PrincipalRoleEntitlement.type = Types::PrincipalRoleEntitlement
    PrincipalRoleEntitlementDetails.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: Principal, name: "principal", traits: {"smithy.api#required" => {}}))
    PrincipalRoleEntitlementDetails.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    PrincipalRoleEntitlementDetails.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: Account, name: "account", traits: {"smithy.api#required" => {}}))
    PrincipalRoleEntitlementDetails.add_member(:account_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "accountName"))
    PrincipalRoleEntitlementDetails.type = Types::PrincipalRoleEntitlementDetails
    PrincipalRoleEntitlementFilter.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalFilter, name: "principal"))
    PrincipalRoleEntitlementFilter.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn"))
    PrincipalRoleEntitlementFilter.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: Account, name: "account"))
    PrincipalRoleEntitlementFilter.type = Types::PrincipalRoleEntitlementFilter
    PrincipalRoleEntitlementSummary.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: Principal, name: "principal", traits: {"smithy.api#required" => {}}))
    PrincipalRoleEntitlementSummary.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    PrincipalRoleEntitlementSummary.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: Account, name: "account", traits: {"smithy.api#required" => {}}))
    PrincipalRoleEntitlementSummary.add_member(:account_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "accountName"))
    PrincipalRoleEntitlementSummary.type = Types::PrincipalRoleEntitlementSummary
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Status.add_member(:create_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    Status.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    Status.add_member(:delete_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    Status.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    Status.add_member(:delete_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_FAILED", traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    TagKeys.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TagsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    TagsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, name: "tagKeys", traits: {"aws.iam#conditionKeyValue" => "aws:TagKeys", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ValidationException.type = Types::ValidationException

    AWSAccountAccess = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.accountaccess#AWSAccountAccess"
      service.name = "AWSAccountAccess"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "Account Access", "arnNamespace" => "account-access"}, "aws.api#tagEnabled" => {}, "aws.auth#sigv4" => {"name" => "account-access"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardRegionalEndpoints" => {}, "aws.iam#defineConditionKeys" => {"aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Tag Keys", "externalDocumentation" => "http://example.com"}}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["Content-Type", "Content-Length"]}, "smithy.api#title" => "Account Access", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}, "Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://account-access-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://account-access.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 6, "nodes" => "/////wAAAAH/////AAAAAAAAAAYAAAADAAAAAQAAAAQF9eEFAAAAAgAAAAUF9eEFAAAAAwX14QMF9eEEAAAAAwX14QEF9eEC"}}
      service.add_operation(:create_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accountaccess#CreateApplication"
        operation.name = "CreateApplication"
        operation.input = CreateApplicationRequest
        operation.output = CreateApplicationResponse
        operation.errors << AccessDeniedException
        operation.errors << AlreadyCreatedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/applications", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_entitlement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accountaccess#CreateEntitlement"
        operation.name = "CreateEntitlement"
        operation.input = CreateEntitlementRequest
        operation.output = CreateEntitlementResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/entitlements", "method" => "POST", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accountaccess#DeleteApplication"
        operation.name = "DeleteApplication"
        operation.input = DeleteApplicationRequest
        operation.output = DeleteApplicationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationArn}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_entitlement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accountaccess#DeleteEntitlement"
        operation.name = "DeleteEntitlement"
        operation.input = DeleteEntitlementRequest
        operation.output = DeleteEntitlementResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/entitlements/{entitlementId}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accountaccess#GetApplication"
        operation.name = "GetApplication"
        operation.input = GetApplicationRequest
        operation.output = GetApplicationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/applications/{applicationArn}", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetApplicationUnauthorized", "params" => {"applicationArn" => "arn:aws:account-access:us-east-1:123456789012:application/unauthorized-app-0123"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.accountaccess#AccessDeniedException"}}}]}
      end)
      service.add_operation(:get_entitlement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accountaccess#GetEntitlement"
        operation.name = "GetEntitlement"
        operation.input = GetEntitlementRequest
        operation.output = GetEntitlementResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/entitlements/{entitlementId}", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetEntitlementUnauthorized", "params" => {"applicationArn" => "arn:aws:account-access:us-east-1:123456789012:application/test-app-1234567890abcdef", "entitlementId" => "entitlement-smoke-test-id"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.accountaccess#AccessDeniedException"}}}]}
      end)
      service.add_operation(:list_applications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accountaccess#ListApplications"
        operation.name = "ListApplications"
        operation.input = ListApplicationsRequest
        operation.output = ListApplicationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/applications-list", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListApplicationsSuccess", "params" => {"maxResults" => 1}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}, "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListApplications.new
      end)
      service.add_operation(:list_entitlements, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accountaccess#ListEntitlements"
        operation.name = "ListEntitlements"
        operation.input = ListEntitlementsRequest
        operation.output = ListEntitlementsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/entitlements-list", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListEntitlementsWithFilters", "params" => {"applicationArn" => "arn:aws:account-access:us-east-1:123456789012:application/test-app-1234567890abcdef", "filter" => {"principalRole" => {"account" => "123456789012", "principal" => {"identityCenter" => {"userId" => "12345678-1234-1234-1234-123456789012"}}}}, "maxResults" => 10}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.accountaccess#AccessDeniedException"}}}]}
        operation[:paginator] = Paginators::ListEntitlements.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accountaccess#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accountaccess#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}"}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accountaccess#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "aws:TagKeys"], "smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
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
