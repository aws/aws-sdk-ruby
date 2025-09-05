# frozen_string_literal: true

# This is generated code!

module Aws::RAM
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AcceptResourceShareInvitationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#AcceptResourceShareInvitationRequest', name: 'AcceptResourceShareInvitationRequest')
    AcceptResourceShareInvitationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#AcceptResourceShareInvitationResponse', name: 'AcceptResourceShareInvitationResponse')
    AssociateResourceSharePermissionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#AssociateResourceSharePermissionRequest', name: 'AssociateResourceSharePermissionRequest')
    AssociateResourceSharePermissionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#AssociateResourceSharePermissionResponse', name: 'AssociateResourceSharePermissionResponse')
    AssociateResourceShareRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#AssociateResourceShareRequest', name: 'AssociateResourceShareRequest')
    AssociateResourceShareResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#AssociateResourceShareResponse', name: 'AssociateResourceShareResponse')
    AssociatedPermission = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#AssociatedPermission', name: 'AssociatedPermission')
    AssociatedPermissionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ram#AssociatedPermissionList', name: 'AssociatedPermissionList')
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.ram#Boolean', name: 'Boolean')
    CreatePermissionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#CreatePermissionRequest', name: 'CreatePermissionRequest')
    CreatePermissionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#CreatePermissionResponse', name: 'CreatePermissionResponse')
    CreatePermissionVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#CreatePermissionVersionRequest', name: 'CreatePermissionVersionRequest')
    CreatePermissionVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#CreatePermissionVersionResponse', name: 'CreatePermissionVersionResponse')
    CreateResourceShareRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#CreateResourceShareRequest', name: 'CreateResourceShareRequest')
    CreateResourceShareResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#CreateResourceShareResponse', name: 'CreateResourceShareResponse')
    DateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.ram#DateTime', name: 'DateTime')
    DeletePermissionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#DeletePermissionRequest', name: 'DeletePermissionRequest')
    DeletePermissionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#DeletePermissionResponse', name: 'DeletePermissionResponse')
    DeletePermissionVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#DeletePermissionVersionRequest', name: 'DeletePermissionVersionRequest')
    DeletePermissionVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#DeletePermissionVersionResponse', name: 'DeletePermissionVersionResponse')
    DeleteResourceShareRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#DeleteResourceShareRequest', name: 'DeleteResourceShareRequest')
    DeleteResourceShareResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#DeleteResourceShareResponse', name: 'DeleteResourceShareResponse')
    DisassociateResourceSharePermissionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#DisassociateResourceSharePermissionRequest', name: 'DisassociateResourceSharePermissionRequest')
    DisassociateResourceSharePermissionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#DisassociateResourceSharePermissionResponse', name: 'DisassociateResourceSharePermissionResponse')
    DisassociateResourceShareRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#DisassociateResourceShareRequest', name: 'DisassociateResourceShareRequest')
    DisassociateResourceShareResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#DisassociateResourceShareResponse', name: 'DisassociateResourceShareResponse')
    EnableSharingWithAwsOrganizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#EnableSharingWithAwsOrganizationRequest', name: 'EnableSharingWithAwsOrganizationRequest')
    EnableSharingWithAwsOrganizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#EnableSharingWithAwsOrganizationResponse', name: 'EnableSharingWithAwsOrganizationResponse')
    GetPermissionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#GetPermissionRequest', name: 'GetPermissionRequest')
    GetPermissionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#GetPermissionResponse', name: 'GetPermissionResponse')
    GetResourcePoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#GetResourcePoliciesRequest', name: 'GetResourcePoliciesRequest')
    GetResourcePoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#GetResourcePoliciesResponse', name: 'GetResourcePoliciesResponse')
    GetResourceShareAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#GetResourceShareAssociationsRequest', name: 'GetResourceShareAssociationsRequest')
    GetResourceShareAssociationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#GetResourceShareAssociationsResponse', name: 'GetResourceShareAssociationsResponse')
    GetResourceShareInvitationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#GetResourceShareInvitationsRequest', name: 'GetResourceShareInvitationsRequest')
    GetResourceShareInvitationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#GetResourceShareInvitationsResponse', name: 'GetResourceShareInvitationsResponse')
    GetResourceSharesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#GetResourceSharesRequest', name: 'GetResourceSharesRequest')
    GetResourceSharesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#GetResourceSharesResponse', name: 'GetResourceSharesResponse')
    IdempotentParameterMismatchException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#IdempotentParameterMismatchException', name: 'IdempotentParameterMismatchException', traits: {"aws.protocols#awsQueryError" => {"code" => "IdempotentParameterMismatch", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ram#Integer', name: 'Integer')
    InvalidClientTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#InvalidClientTokenException', name: 'InvalidClientTokenException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidClientToken", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidMaxResultsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#InvalidMaxResultsException', name: 'InvalidMaxResultsException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidMaxResults", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidNextTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#InvalidNextTokenException', name: 'InvalidNextTokenException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidNextToken", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#InvalidParameterException', name: 'InvalidParameterException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidParameter", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidPolicyException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#InvalidPolicyException', name: 'InvalidPolicyException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidPolicy", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidResourceTypeException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#InvalidResourceTypeException', name: 'InvalidResourceTypeException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidResourceType.Unknown", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidStateTransitionException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#InvalidStateTransitionException', name: 'InvalidStateTransitionException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidStateTransitionException.Unknown", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListPendingInvitationResourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#ListPendingInvitationResourcesRequest', name: 'ListPendingInvitationResourcesRequest')
    ListPendingInvitationResourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#ListPendingInvitationResourcesResponse', name: 'ListPendingInvitationResourcesResponse')
    ListPermissionAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#ListPermissionAssociationsRequest', name: 'ListPermissionAssociationsRequest')
    ListPermissionAssociationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#ListPermissionAssociationsResponse', name: 'ListPermissionAssociationsResponse')
    ListPermissionVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#ListPermissionVersionsRequest', name: 'ListPermissionVersionsRequest')
    ListPermissionVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#ListPermissionVersionsResponse', name: 'ListPermissionVersionsResponse')
    ListPermissionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#ListPermissionsRequest', name: 'ListPermissionsRequest')
    ListPermissionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#ListPermissionsResponse', name: 'ListPermissionsResponse')
    ListPrincipalsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#ListPrincipalsRequest', name: 'ListPrincipalsRequest')
    ListPrincipalsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#ListPrincipalsResponse', name: 'ListPrincipalsResponse')
    ListReplacePermissionAssociationsWorkRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#ListReplacePermissionAssociationsWorkRequest', name: 'ListReplacePermissionAssociationsWorkRequest')
    ListReplacePermissionAssociationsWorkResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#ListReplacePermissionAssociationsWorkResponse', name: 'ListReplacePermissionAssociationsWorkResponse')
    ListResourceSharePermissionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#ListResourceSharePermissionsRequest', name: 'ListResourceSharePermissionsRequest')
    ListResourceSharePermissionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#ListResourceSharePermissionsResponse', name: 'ListResourceSharePermissionsResponse')
    ListResourceTypesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#ListResourceTypesRequest', name: 'ListResourceTypesRequest')
    ListResourceTypesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#ListResourceTypesResponse', name: 'ListResourceTypesResponse')
    ListResourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#ListResourcesRequest', name: 'ListResourcesRequest')
    ListResourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#ListResourcesResponse', name: 'ListResourcesResponse')
    MalformedArnException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#MalformedArnException', name: 'MalformedArnException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidArn.Malformed", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MalformedPolicyTemplateException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#MalformedPolicyTemplateException', name: 'MalformedPolicyTemplateException', traits: {"aws.protocols#awsQueryError" => {"code" => "MalformedPolicyTemplateException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.ram#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 500}})
    MissingRequiredParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#MissingRequiredParameterException', name: 'MissingRequiredParameterException', traits: {"aws.protocols#awsQueryError" => {"code" => "MissingRequiredParameter", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    OperationNotPermittedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#OperationNotPermittedException', name: 'OperationNotPermittedException', traits: {"aws.protocols#awsQueryError" => {"code" => "OperationNotPermitted", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    PermissionAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#PermissionAlreadyExistsException', name: 'PermissionAlreadyExistsException', traits: {"aws.protocols#awsQueryError" => {"code" => "PermissionAlreadyExistsException", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    PermissionArnList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ram#PermissionArnList', name: 'PermissionArnList')
    PermissionFeatureSet = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ram#PermissionFeatureSet', name: 'PermissionFeatureSet')
    PermissionLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#PermissionLimitExceededException', name: 'PermissionLimitExceededException', traits: {"aws.protocols#awsQueryError" => {"code" => "PermissionLimitExceededException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    PermissionName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ram#PermissionName', name: 'PermissionName', traits: {"smithy.api#length" => {"min" => 1, "max" => 36}, "smithy.api#pattern" => "^[\\w.-]*$"})
    PermissionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ram#PermissionStatus', name: 'PermissionStatus')
    PermissionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ram#PermissionType', name: 'PermissionType')
    PermissionTypeFilter = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ram#PermissionTypeFilter', name: 'PermissionTypeFilter')
    PermissionVersionsLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#PermissionVersionsLimitExceededException', name: 'PermissionVersionsLimitExceededException', traits: {"aws.protocols#awsQueryError" => {"code" => "PermissionVersionsLimitExceededException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Policy = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ram#Policy', name: 'Policy')
    PolicyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ram#PolicyList', name: 'PolicyList')
    Principal = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#Principal', name: 'Principal')
    PrincipalArnOrIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ram#PrincipalArnOrIdList', name: 'PrincipalArnOrIdList')
    PrincipalList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ram#PrincipalList', name: 'PrincipalList')
    PromotePermissionCreatedFromPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#PromotePermissionCreatedFromPolicyRequest', name: 'PromotePermissionCreatedFromPolicyRequest')
    PromotePermissionCreatedFromPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#PromotePermissionCreatedFromPolicyResponse', name: 'PromotePermissionCreatedFromPolicyResponse')
    PromoteResourceShareCreatedFromPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#PromoteResourceShareCreatedFromPolicyRequest', name: 'PromoteResourceShareCreatedFromPolicyRequest')
    PromoteResourceShareCreatedFromPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#PromoteResourceShareCreatedFromPolicyResponse', name: 'PromoteResourceShareCreatedFromPolicyResponse')
    RejectResourceShareInvitationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#RejectResourceShareInvitationRequest', name: 'RejectResourceShareInvitationRequest')
    RejectResourceShareInvitationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#RejectResourceShareInvitationResponse', name: 'RejectResourceShareInvitationResponse')
    ReplacePermissionAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#ReplacePermissionAssociationsRequest', name: 'ReplacePermissionAssociationsRequest')
    ReplacePermissionAssociationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#ReplacePermissionAssociationsResponse', name: 'ReplacePermissionAssociationsResponse')
    ReplacePermissionAssociationsWork = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#ReplacePermissionAssociationsWork', name: 'ReplacePermissionAssociationsWork')
    ReplacePermissionAssociationsWorkIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ram#ReplacePermissionAssociationsWorkIdList', name: 'ReplacePermissionAssociationsWorkIdList')
    ReplacePermissionAssociationsWorkList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ram#ReplacePermissionAssociationsWorkList', name: 'ReplacePermissionAssociationsWorkList')
    ReplacePermissionAssociationsWorkStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ram#ReplacePermissionAssociationsWorkStatus', name: 'ReplacePermissionAssociationsWorkStatus')
    Resource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#Resource', name: 'Resource')
    ResourceArnList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ram#ResourceArnList', name: 'ResourceArnList')
    ResourceArnNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#ResourceArnNotFoundException', name: 'ResourceArnNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidResourceArn.NotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ram#ResourceList', name: 'ResourceList')
    ResourceOwner = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ram#ResourceOwner', name: 'ResourceOwner')
    ResourceRegionScope = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ram#ResourceRegionScope', name: 'ResourceRegionScope')
    ResourceRegionScopeFilter = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ram#ResourceRegionScopeFilter', name: 'ResourceRegionScopeFilter')
    ResourceShare = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#ResourceShare', name: 'ResourceShare')
    ResourceShareArnList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ram#ResourceShareArnList', name: 'ResourceShareArnList')
    ResourceShareAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#ResourceShareAssociation', name: 'ResourceShareAssociation')
    ResourceShareAssociationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ram#ResourceShareAssociationList', name: 'ResourceShareAssociationList')
    ResourceShareAssociationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ram#ResourceShareAssociationStatus', name: 'ResourceShareAssociationStatus')
    ResourceShareAssociationType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ram#ResourceShareAssociationType', name: 'ResourceShareAssociationType')
    ResourceShareFeatureSet = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ram#ResourceShareFeatureSet', name: 'ResourceShareFeatureSet')
    ResourceShareInvitation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#ResourceShareInvitation', name: 'ResourceShareInvitation')
    ResourceShareInvitationAlreadyAcceptedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#ResourceShareInvitationAlreadyAcceptedException', name: 'ResourceShareInvitationAlreadyAcceptedException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidResourceShareInvitationArn.AlreadyAccepted", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceShareInvitationAlreadyRejectedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#ResourceShareInvitationAlreadyRejectedException', name: 'ResourceShareInvitationAlreadyRejectedException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidResourceShareInvitationArn.AlreadyRejected", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceShareInvitationArnList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ram#ResourceShareInvitationArnList', name: 'ResourceShareInvitationArnList')
    ResourceShareInvitationArnNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#ResourceShareInvitationArnNotFoundException', name: 'ResourceShareInvitationArnNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidResourceShareInvitationArn.NotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceShareInvitationExpiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#ResourceShareInvitationExpiredException', name: 'ResourceShareInvitationExpiredException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidResourceShareInvitationArn.Expired", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceShareInvitationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ram#ResourceShareInvitationList', name: 'ResourceShareInvitationList')
    ResourceShareInvitationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ram#ResourceShareInvitationStatus', name: 'ResourceShareInvitationStatus')
    ResourceShareLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#ResourceShareLimitExceededException', name: 'ResourceShareLimitExceededException', traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceShareLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceShareList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ram#ResourceShareList', name: 'ResourceShareList')
    ResourceSharePermissionDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#ResourceSharePermissionDetail', name: 'ResourceSharePermissionDetail')
    ResourceSharePermissionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ram#ResourceSharePermissionList', name: 'ResourceSharePermissionList')
    ResourceSharePermissionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#ResourceSharePermissionSummary', name: 'ResourceSharePermissionSummary')
    ResourceShareStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ram#ResourceShareStatus', name: 'ResourceShareStatus')
    ResourceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.ram#ResourceStatus', name: 'ResourceStatus')
    ServerInternalException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#ServerInternalException', name: 'ServerInternalException', traits: {"aws.protocols#awsQueryError" => {"code" => "InternalError", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ServiceNameAndResourceType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#ServiceNameAndResourceType', name: 'ServiceNameAndResourceType')
    ServiceNameAndResourceTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ram#ServiceNameAndResourceTypeList', name: 'ServiceNameAndResourceTypeList')
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#ServiceUnavailableException', name: 'ServiceUnavailableException', traits: {"aws.protocols#awsQueryError" => {"code" => "Unavailable", "httpResponseCode" => 503}, "smithy.api#error" => "server", "smithy.api#httpError" => 503})
    SetDefaultPermissionVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#SetDefaultPermissionVersionRequest', name: 'SetDefaultPermissionVersionRequest')
    SetDefaultPermissionVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#SetDefaultPermissionVersionResponse', name: 'SetDefaultPermissionVersionResponse')
    SourceArnOrAccountList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ram#SourceArnOrAccountList', name: 'SourceArnOrAccountList')
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ram#String', name: 'String')
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#Tag', name: 'Tag')
    TagFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#TagFilter', name: 'TagFilter')
    TagFilters = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ram#TagFilters', name: 'TagFilters')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ram#TagKey', name: 'TagKey')
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ram#TagKeyList', name: 'TagKeyList')
    TagLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#TagLimitExceededException', name: 'TagLimitExceededException', traits: {"aws.protocols#awsQueryError" => {"code" => "TagLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ram#TagList', name: 'TagList')
    TagPolicyViolationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#TagPolicyViolationException', name: 'TagPolicyViolationException', traits: {"aws.protocols#awsQueryError" => {"code" => "TagPolicyViolation", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.ram#TagValue', name: 'TagValue')
    TagValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.ram#TagValueList', name: 'TagValueList')
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#ThrottlingException', name: 'ThrottlingException', traits: {"aws.protocols#awsQueryError" => {"code" => "ThrottlingException", "httpResponseCode" => 429}, "smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UnknownResourceException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#UnknownResourceException', name: 'UnknownResourceException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidResourceShareArn.NotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UnmatchedPolicyPermissionException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#UnmatchedPolicyPermissionException', name: 'UnmatchedPolicyPermissionException', traits: {"aws.protocols#awsQueryError" => {"code" => "UnmatchedPolicyPermissionException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateResourceShareRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#UpdateResourceShareRequest', name: 'UpdateResourceShareRequest')
    UpdateResourceShareResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.ram#UpdateResourceShareResponse', name: 'UpdateResourceShareResponse')

    AcceptResourceShareInvitationRequest.add_member(:resource_share_invitation_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceShareInvitationArn', traits: {"smithy.api#required" => {}}))
    AcceptResourceShareInvitationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken'))
    AcceptResourceShareInvitationRequest.type = Types::AcceptResourceShareInvitationRequest
    AcceptResourceShareInvitationResponse.add_member(:resource_share_invitation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShareInvitation, location_name: 'resourceShareInvitation'))
    AcceptResourceShareInvitationResponse.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken'))
    AcceptResourceShareInvitationResponse.type = Types::AcceptResourceShareInvitationResponse
    AssociateResourceSharePermissionRequest.add_member(:resource_share_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceShareArn', traits: {"smithy.api#required" => {}}))
    AssociateResourceSharePermissionRequest.add_member(:permission_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'permissionArn', traits: {"smithy.api#required" => {}}))
    AssociateResourceSharePermissionRequest.add_member(:replace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'replace'))
    AssociateResourceSharePermissionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken'))
    AssociateResourceSharePermissionRequest.add_member(:permission_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'permissionVersion'))
    AssociateResourceSharePermissionRequest.type = Types::AssociateResourceSharePermissionRequest
    AssociateResourceSharePermissionResponse.add_member(:return_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'returnValue'))
    AssociateResourceSharePermissionResponse.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken'))
    AssociateResourceSharePermissionResponse.type = Types::AssociateResourceSharePermissionResponse
    AssociateResourceShareRequest.add_member(:resource_share_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceShareArn', traits: {"smithy.api#required" => {}}))
    AssociateResourceShareRequest.add_member(:resource_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArnList, location_name: 'resourceArns'))
    AssociateResourceShareRequest.add_member(:principals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalArnOrIdList, location_name: 'principals'))
    AssociateResourceShareRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken'))
    AssociateResourceShareRequest.add_member(:sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceArnOrAccountList, location_name: 'sources'))
    AssociateResourceShareRequest.type = Types::AssociateResourceShareRequest
    AssociateResourceShareResponse.add_member(:resource_share_associations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShareAssociationList, location_name: 'resourceShareAssociations'))
    AssociateResourceShareResponse.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken'))
    AssociateResourceShareResponse.type = Types::AssociateResourceShareResponse
    AssociatedPermission.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn'))
    AssociatedPermission.add_member(:permission_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'permissionVersion'))
    AssociatedPermission.add_member(:default_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'defaultVersion'))
    AssociatedPermission.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceType'))
    AssociatedPermission.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'status'))
    AssociatedPermission.add_member(:feature_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionFeatureSet, location_name: 'featureSet'))
    AssociatedPermission.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'lastUpdatedTime'))
    AssociatedPermission.add_member(:resource_share_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceShareArn'))
    AssociatedPermission.type = Types::AssociatedPermission
    AssociatedPermissionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedPermission, traits: {"smithy.api#xmlName" => "item"})
    CreatePermissionRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreatePermissionRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceType', traits: {"smithy.api#required" => {}}))
    CreatePermissionRequest.add_member(:policy_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, location_name: 'policyTemplate', traits: {"smithy.api#required" => {}}))
    CreatePermissionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken'))
    CreatePermissionRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    CreatePermissionRequest.type = Types::CreatePermissionRequest
    CreatePermissionResponse.add_member(:permission, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSharePermissionSummary, location_name: 'permission'))
    CreatePermissionResponse.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken'))
    CreatePermissionResponse.type = Types::CreatePermissionResponse
    CreatePermissionVersionRequest.add_member(:permission_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'permissionArn', traits: {"smithy.api#required" => {}}))
    CreatePermissionVersionRequest.add_member(:policy_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, location_name: 'policyTemplate', traits: {"smithy.api#required" => {}}))
    CreatePermissionVersionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken'))
    CreatePermissionVersionRequest.type = Types::CreatePermissionVersionRequest
    CreatePermissionVersionResponse.add_member(:permission, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSharePermissionDetail, location_name: 'permission'))
    CreatePermissionVersionResponse.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken'))
    CreatePermissionVersionResponse.type = Types::CreatePermissionVersionResponse
    CreateResourceShareRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateResourceShareRequest.add_member(:resource_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArnList, location_name: 'resourceArns'))
    CreateResourceShareRequest.add_member(:principals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalArnOrIdList, location_name: 'principals'))
    CreateResourceShareRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    CreateResourceShareRequest.add_member(:allow_external_principals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'allowExternalPrincipals'))
    CreateResourceShareRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken'))
    CreateResourceShareRequest.add_member(:permission_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionArnList, location_name: 'permissionArns'))
    CreateResourceShareRequest.add_member(:sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceArnOrAccountList, location_name: 'sources'))
    CreateResourceShareRequest.type = Types::CreateResourceShareRequest
    CreateResourceShareResponse.add_member(:resource_share, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShare, location_name: 'resourceShare'))
    CreateResourceShareResponse.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken'))
    CreateResourceShareResponse.type = Types::CreateResourceShareResponse
    DeletePermissionRequest.add_member(:permission_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'permissionArn', traits: {"smithy.api#httpQuery" => "permissionArn", "smithy.api#required" => {}}))
    DeletePermissionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken', traits: {"smithy.api#httpQuery" => "clientToken"}))
    DeletePermissionRequest.type = Types::DeletePermissionRequest
    DeletePermissionResponse.add_member(:return_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'returnValue', traits: {"smithy.api#xmlName" => "return"}))
    DeletePermissionResponse.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken'))
    DeletePermissionResponse.add_member(:permission_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionStatus, location_name: 'permissionStatus'))
    DeletePermissionResponse.type = Types::DeletePermissionResponse
    DeletePermissionVersionRequest.add_member(:permission_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'permissionArn', traits: {"smithy.api#httpQuery" => "permissionArn", "smithy.api#required" => {}}))
    DeletePermissionVersionRequest.add_member(:permission_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'permissionVersion', traits: {"smithy.api#httpQuery" => "permissionVersion", "smithy.api#required" => {}}))
    DeletePermissionVersionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken', traits: {"smithy.api#httpQuery" => "clientToken"}))
    DeletePermissionVersionRequest.type = Types::DeletePermissionVersionRequest
    DeletePermissionVersionResponse.add_member(:return_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'returnValue', traits: {"smithy.api#xmlName" => "return"}))
    DeletePermissionVersionResponse.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken'))
    DeletePermissionVersionResponse.add_member(:permission_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionStatus, location_name: 'permissionStatus'))
    DeletePermissionVersionResponse.type = Types::DeletePermissionVersionResponse
    DeleteResourceShareRequest.add_member(:resource_share_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceShareArn', traits: {"smithy.api#httpQuery" => "resourceShareArn", "smithy.api#required" => {}}))
    DeleteResourceShareRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken', traits: {"smithy.api#httpQuery" => "clientToken"}))
    DeleteResourceShareRequest.type = Types::DeleteResourceShareRequest
    DeleteResourceShareResponse.add_member(:return_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'returnValue', traits: {"smithy.api#xmlName" => "return"}))
    DeleteResourceShareResponse.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken'))
    DeleteResourceShareResponse.type = Types::DeleteResourceShareResponse
    DisassociateResourceSharePermissionRequest.add_member(:resource_share_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceShareArn', traits: {"smithy.api#required" => {}}))
    DisassociateResourceSharePermissionRequest.add_member(:permission_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'permissionArn', traits: {"smithy.api#required" => {}}))
    DisassociateResourceSharePermissionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken'))
    DisassociateResourceSharePermissionRequest.type = Types::DisassociateResourceSharePermissionRequest
    DisassociateResourceSharePermissionResponse.add_member(:return_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'returnValue'))
    DisassociateResourceSharePermissionResponse.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken'))
    DisassociateResourceSharePermissionResponse.type = Types::DisassociateResourceSharePermissionResponse
    DisassociateResourceShareRequest.add_member(:resource_share_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceShareArn', traits: {"smithy.api#required" => {}}))
    DisassociateResourceShareRequest.add_member(:resource_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArnList, location_name: 'resourceArns'))
    DisassociateResourceShareRequest.add_member(:principals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalArnOrIdList, location_name: 'principals'))
    DisassociateResourceShareRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken'))
    DisassociateResourceShareRequest.add_member(:sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceArnOrAccountList, location_name: 'sources'))
    DisassociateResourceShareRequest.type = Types::DisassociateResourceShareRequest
    DisassociateResourceShareResponse.add_member(:resource_share_associations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShareAssociationList, location_name: 'resourceShareAssociations'))
    DisassociateResourceShareResponse.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken'))
    DisassociateResourceShareResponse.type = Types::DisassociateResourceShareResponse
    EnableSharingWithAwsOrganizationRequest.type = Types::EnableSharingWithAwsOrganizationRequest
    EnableSharingWithAwsOrganizationResponse.add_member(:return_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'returnValue', traits: {"smithy.api#xmlName" => "return"}))
    EnableSharingWithAwsOrganizationResponse.type = Types::EnableSharingWithAwsOrganizationResponse
    GetPermissionRequest.add_member(:permission_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'permissionArn', traits: {"smithy.api#required" => {}}))
    GetPermissionRequest.add_member(:permission_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'permissionVersion'))
    GetPermissionRequest.type = Types::GetPermissionRequest
    GetPermissionResponse.add_member(:permission, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSharePermissionDetail, location_name: 'permission'))
    GetPermissionResponse.type = Types::GetPermissionResponse
    GetResourcePoliciesRequest.add_member(:resource_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArnList, location_name: 'resourceArns', traits: {"smithy.api#required" => {}}))
    GetResourcePoliciesRequest.add_member(:principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'principal'))
    GetResourcePoliciesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    GetResourcePoliciesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    GetResourcePoliciesRequest.type = Types::GetResourcePoliciesRequest
    GetResourcePoliciesResponse.add_member(:policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyList, location_name: 'policies'))
    GetResourcePoliciesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    GetResourcePoliciesResponse.type = Types::GetResourcePoliciesResponse
    GetResourceShareAssociationsRequest.add_member(:association_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShareAssociationType, location_name: 'associationType', traits: {"smithy.api#required" => {}}))
    GetResourceShareAssociationsRequest.add_member(:resource_share_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShareArnList, location_name: 'resourceShareArns'))
    GetResourceShareAssociationsRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceArn'))
    GetResourceShareAssociationsRequest.add_member(:principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'principal'))
    GetResourceShareAssociationsRequest.add_member(:association_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShareAssociationStatus, location_name: 'associationStatus'))
    GetResourceShareAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    GetResourceShareAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    GetResourceShareAssociationsRequest.type = Types::GetResourceShareAssociationsRequest
    GetResourceShareAssociationsResponse.add_member(:resource_share_associations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShareAssociationList, location_name: 'resourceShareAssociations'))
    GetResourceShareAssociationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    GetResourceShareAssociationsResponse.type = Types::GetResourceShareAssociationsResponse
    GetResourceShareInvitationsRequest.add_member(:resource_share_invitation_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShareInvitationArnList, location_name: 'resourceShareInvitationArns'))
    GetResourceShareInvitationsRequest.add_member(:resource_share_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShareArnList, location_name: 'resourceShareArns'))
    GetResourceShareInvitationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    GetResourceShareInvitationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    GetResourceShareInvitationsRequest.type = Types::GetResourceShareInvitationsRequest
    GetResourceShareInvitationsResponse.add_member(:resource_share_invitations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShareInvitationList, location_name: 'resourceShareInvitations'))
    GetResourceShareInvitationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    GetResourceShareInvitationsResponse.type = Types::GetResourceShareInvitationsResponse
    GetResourceSharesRequest.add_member(:resource_share_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShareArnList, location_name: 'resourceShareArns'))
    GetResourceSharesRequest.add_member(:resource_share_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShareStatus, location_name: 'resourceShareStatus'))
    GetResourceSharesRequest.add_member(:resource_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceOwner, location_name: 'resourceOwner', traits: {"smithy.api#required" => {}}))
    GetResourceSharesRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name'))
    GetResourceSharesRequest.add_member(:tag_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagFilters, location_name: 'tagFilters'))
    GetResourceSharesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    GetResourceSharesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    GetResourceSharesRequest.add_member(:permission_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'permissionArn'))
    GetResourceSharesRequest.add_member(:permission_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'permissionVersion'))
    GetResourceSharesRequest.type = Types::GetResourceSharesRequest
    GetResourceSharesResponse.add_member(:resource_shares, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShareList, location_name: 'resourceShares'))
    GetResourceSharesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    GetResourceSharesResponse.type = Types::GetResourceSharesResponse
    IdempotentParameterMismatchException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    IdempotentParameterMismatchException.type = Types::IdempotentParameterMismatchException
    InvalidClientTokenException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InvalidClientTokenException.type = Types::InvalidClientTokenException
    InvalidMaxResultsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InvalidMaxResultsException.type = Types::InvalidMaxResultsException
    InvalidNextTokenException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    InvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InvalidParameterException.type = Types::InvalidParameterException
    InvalidPolicyException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InvalidPolicyException.type = Types::InvalidPolicyException
    InvalidResourceTypeException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InvalidResourceTypeException.type = Types::InvalidResourceTypeException
    InvalidStateTransitionException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InvalidStateTransitionException.type = Types::InvalidStateTransitionException
    ListPendingInvitationResourcesRequest.add_member(:resource_share_invitation_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceShareInvitationArn', traits: {"smithy.api#required" => {}}))
    ListPendingInvitationResourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListPendingInvitationResourcesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    ListPendingInvitationResourcesRequest.add_member(:resource_region_scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceRegionScopeFilter, location_name: 'resourceRegionScope'))
    ListPendingInvitationResourcesRequest.type = Types::ListPendingInvitationResourcesRequest
    ListPendingInvitationResourcesResponse.add_member(:resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceList, location_name: 'resources'))
    ListPendingInvitationResourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListPendingInvitationResourcesResponse.type = Types::ListPendingInvitationResourcesResponse
    ListPermissionAssociationsRequest.add_member(:permission_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'permissionArn'))
    ListPermissionAssociationsRequest.add_member(:permission_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'permissionVersion'))
    ListPermissionAssociationsRequest.add_member(:association_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShareAssociationStatus, location_name: 'associationStatus'))
    ListPermissionAssociationsRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceType'))
    ListPermissionAssociationsRequest.add_member(:feature_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionFeatureSet, location_name: 'featureSet'))
    ListPermissionAssociationsRequest.add_member(:default_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'defaultVersion'))
    ListPermissionAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListPermissionAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    ListPermissionAssociationsRequest.type = Types::ListPermissionAssociationsRequest
    ListPermissionAssociationsResponse.add_member(:permissions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedPermissionList, location_name: 'permissions'))
    ListPermissionAssociationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListPermissionAssociationsResponse.type = Types::ListPermissionAssociationsResponse
    ListPermissionVersionsRequest.add_member(:permission_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'permissionArn', traits: {"smithy.api#required" => {}}))
    ListPermissionVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListPermissionVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    ListPermissionVersionsRequest.type = Types::ListPermissionVersionsRequest
    ListPermissionVersionsResponse.add_member(:permissions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSharePermissionList, location_name: 'permissions'))
    ListPermissionVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListPermissionVersionsResponse.type = Types::ListPermissionVersionsResponse
    ListPermissionsRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceType'))
    ListPermissionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListPermissionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    ListPermissionsRequest.add_member(:permission_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionTypeFilter, location_name: 'permissionType'))
    ListPermissionsRequest.type = Types::ListPermissionsRequest
    ListPermissionsResponse.add_member(:permissions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSharePermissionList, location_name: 'permissions'))
    ListPermissionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListPermissionsResponse.type = Types::ListPermissionsResponse
    ListPrincipalsRequest.add_member(:resource_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceOwner, location_name: 'resourceOwner', traits: {"smithy.api#required" => {}}))
    ListPrincipalsRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceArn'))
    ListPrincipalsRequest.add_member(:principals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalArnOrIdList, location_name: 'principals'))
    ListPrincipalsRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceType'))
    ListPrincipalsRequest.add_member(:resource_share_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShareArnList, location_name: 'resourceShareArns'))
    ListPrincipalsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListPrincipalsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    ListPrincipalsRequest.type = Types::ListPrincipalsRequest
    ListPrincipalsResponse.add_member(:principals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalList, location_name: 'principals'))
    ListPrincipalsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListPrincipalsResponse.type = Types::ListPrincipalsResponse
    ListReplacePermissionAssociationsWorkRequest.add_member(:work_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplacePermissionAssociationsWorkIdList, location_name: 'workIds'))
    ListReplacePermissionAssociationsWorkRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplacePermissionAssociationsWorkStatus, location_name: 'status'))
    ListReplacePermissionAssociationsWorkRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListReplacePermissionAssociationsWorkRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    ListReplacePermissionAssociationsWorkRequest.type = Types::ListReplacePermissionAssociationsWorkRequest
    ListReplacePermissionAssociationsWorkResponse.add_member(:replace_permission_associations_works, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplacePermissionAssociationsWorkList, location_name: 'replacePermissionAssociationsWorks'))
    ListReplacePermissionAssociationsWorkResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListReplacePermissionAssociationsWorkResponse.type = Types::ListReplacePermissionAssociationsWorkResponse
    ListResourceSharePermissionsRequest.add_member(:resource_share_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceShareArn', traits: {"smithy.api#required" => {}}))
    ListResourceSharePermissionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListResourceSharePermissionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    ListResourceSharePermissionsRequest.type = Types::ListResourceSharePermissionsRequest
    ListResourceSharePermissionsResponse.add_member(:permissions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSharePermissionList, location_name: 'permissions'))
    ListResourceSharePermissionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListResourceSharePermissionsResponse.type = Types::ListResourceSharePermissionsResponse
    ListResourceTypesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListResourceTypesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    ListResourceTypesRequest.add_member(:resource_region_scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceRegionScopeFilter, location_name: 'resourceRegionScope'))
    ListResourceTypesRequest.type = Types::ListResourceTypesRequest
    ListResourceTypesResponse.add_member(:resource_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNameAndResourceTypeList, location_name: 'resourceTypes'))
    ListResourceTypesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListResourceTypesResponse.type = Types::ListResourceTypesResponse
    ListResourcesRequest.add_member(:resource_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceOwner, location_name: 'resourceOwner', traits: {"smithy.api#required" => {}}))
    ListResourcesRequest.add_member(:principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'principal'))
    ListResourcesRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceType'))
    ListResourcesRequest.add_member(:resource_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArnList, location_name: 'resourceArns'))
    ListResourcesRequest.add_member(:resource_share_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShareArnList, location_name: 'resourceShareArns'))
    ListResourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListResourcesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    ListResourcesRequest.add_member(:resource_region_scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceRegionScopeFilter, location_name: 'resourceRegionScope'))
    ListResourcesRequest.type = Types::ListResourcesRequest
    ListResourcesResponse.add_member(:resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceList, location_name: 'resources'))
    ListResourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListResourcesResponse.type = Types::ListResourcesResponse
    MalformedArnException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    MalformedArnException.type = Types::MalformedArnException
    MalformedPolicyTemplateException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    MalformedPolicyTemplateException.type = Types::MalformedPolicyTemplateException
    MissingRequiredParameterException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    MissingRequiredParameterException.type = Types::MissingRequiredParameterException
    OperationNotPermittedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    OperationNotPermittedException.type = Types::OperationNotPermittedException
    PermissionAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    PermissionAlreadyExistsException.type = Types::PermissionAlreadyExistsException
    PermissionArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "item"})
    PermissionFeatureSet.add_member(:created_from_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED_FROM_POLICY', traits: {"smithy.api#enumValue" => "CREATED_FROM_POLICY"}))
    PermissionFeatureSet.add_member(:promoting_to_standard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROMOTING_TO_STANDARD', traits: {"smithy.api#enumValue" => "PROMOTING_TO_STANDARD"}))
    PermissionFeatureSet.add_member(:standard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STANDARD', traits: {"smithy.api#enumValue" => "STANDARD"}))
    PermissionLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    PermissionLimitExceededException.type = Types::PermissionLimitExceededException
    PermissionStatus.add_member(:attachable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ATTACHABLE', traits: {"smithy.api#enumValue" => "ATTACHABLE"}))
    PermissionStatus.add_member(:unattachable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNATTACHABLE', traits: {"smithy.api#enumValue" => "UNATTACHABLE"}))
    PermissionStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    PermissionStatus.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    PermissionType.add_member(:customer_managed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOMER_MANAGED', traits: {"smithy.api#enumValue" => "CUSTOMER_MANAGED"}))
    PermissionType.add_member(:aws_managed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_MANAGED', traits: {"smithy.api#enumValue" => "AWS_MANAGED"}))
    PermissionTypeFilter.add_member(:all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    PermissionTypeFilter.add_member(:aws_managed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_MANAGED', traits: {"smithy.api#enumValue" => "AWS_MANAGED"}))
    PermissionTypeFilter.add_member(:customer_managed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOMER_MANAGED', traits: {"smithy.api#enumValue" => "CUSTOMER_MANAGED"}))
    PermissionVersionsLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    PermissionVersionsLimitExceededException.type = Types::PermissionVersionsLimitExceededException
    PolicyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, traits: {"smithy.api#xmlName" => "item"})
    Principal.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id'))
    Principal.add_member(:resource_share_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceShareArn'))
    Principal.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'creationTime'))
    Principal.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'lastUpdatedTime'))
    Principal.add_member(:external, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'external'))
    Principal.type = Types::Principal
    PrincipalArnOrIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "item"})
    PrincipalList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Principal, traits: {"smithy.api#xmlName" => "item"})
    PromotePermissionCreatedFromPolicyRequest.add_member(:permission_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'permissionArn', traits: {"smithy.api#required" => {}}))
    PromotePermissionCreatedFromPolicyRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#required" => {}}))
    PromotePermissionCreatedFromPolicyRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken'))
    PromotePermissionCreatedFromPolicyRequest.type = Types::PromotePermissionCreatedFromPolicyRequest
    PromotePermissionCreatedFromPolicyResponse.add_member(:permission, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSharePermissionSummary, location_name: 'permission'))
    PromotePermissionCreatedFromPolicyResponse.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken'))
    PromotePermissionCreatedFromPolicyResponse.type = Types::PromotePermissionCreatedFromPolicyResponse
    PromoteResourceShareCreatedFromPolicyRequest.add_member(:resource_share_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceShareArn', traits: {"smithy.api#httpQuery" => "resourceShareArn", "smithy.api#required" => {}}))
    PromoteResourceShareCreatedFromPolicyRequest.type = Types::PromoteResourceShareCreatedFromPolicyRequest
    PromoteResourceShareCreatedFromPolicyResponse.add_member(:return_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'returnValue', traits: {"smithy.api#xmlName" => "return"}))
    PromoteResourceShareCreatedFromPolicyResponse.type = Types::PromoteResourceShareCreatedFromPolicyResponse
    RejectResourceShareInvitationRequest.add_member(:resource_share_invitation_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceShareInvitationArn', traits: {"smithy.api#required" => {}}))
    RejectResourceShareInvitationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken'))
    RejectResourceShareInvitationRequest.type = Types::RejectResourceShareInvitationRequest
    RejectResourceShareInvitationResponse.add_member(:resource_share_invitation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShareInvitation, location_name: 'resourceShareInvitation'))
    RejectResourceShareInvitationResponse.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken'))
    RejectResourceShareInvitationResponse.type = Types::RejectResourceShareInvitationResponse
    ReplacePermissionAssociationsRequest.add_member(:from_permission_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'fromPermissionArn', traits: {"smithy.api#required" => {}}))
    ReplacePermissionAssociationsRequest.add_member(:from_permission_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'fromPermissionVersion'))
    ReplacePermissionAssociationsRequest.add_member(:to_permission_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'toPermissionArn', traits: {"smithy.api#required" => {}}))
    ReplacePermissionAssociationsRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken'))
    ReplacePermissionAssociationsRequest.type = Types::ReplacePermissionAssociationsRequest
    ReplacePermissionAssociationsResponse.add_member(:replace_permission_associations_work, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplacePermissionAssociationsWork, location_name: 'replacePermissionAssociationsWork'))
    ReplacePermissionAssociationsResponse.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken'))
    ReplacePermissionAssociationsResponse.type = Types::ReplacePermissionAssociationsResponse
    ReplacePermissionAssociationsWork.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id'))
    ReplacePermissionAssociationsWork.add_member(:from_permission_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'fromPermissionArn'))
    ReplacePermissionAssociationsWork.add_member(:from_permission_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'fromPermissionVersion'))
    ReplacePermissionAssociationsWork.add_member(:to_permission_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'toPermissionArn'))
    ReplacePermissionAssociationsWork.add_member(:to_permission_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'toPermissionVersion'))
    ReplacePermissionAssociationsWork.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplacePermissionAssociationsWorkStatus, location_name: 'status'))
    ReplacePermissionAssociationsWork.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'statusMessage'))
    ReplacePermissionAssociationsWork.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'creationTime'))
    ReplacePermissionAssociationsWork.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'lastUpdatedTime'))
    ReplacePermissionAssociationsWork.type = Types::ReplacePermissionAssociationsWork
    ReplacePermissionAssociationsWorkIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "item"})
    ReplacePermissionAssociationsWorkList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplacePermissionAssociationsWork, traits: {"smithy.api#xmlName" => "item"})
    ReplacePermissionAssociationsWorkStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ReplacePermissionAssociationsWorkStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ReplacePermissionAssociationsWorkStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    Resource.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn'))
    Resource.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'type'))
    Resource.add_member(:resource_share_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceShareArn'))
    Resource.add_member(:resource_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceGroupArn'))
    Resource.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceStatus, location_name: 'status'))
    Resource.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'statusMessage'))
    Resource.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'creationTime'))
    Resource.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'lastUpdatedTime'))
    Resource.add_member(:resource_region_scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceRegionScope, location_name: 'resourceRegionScope'))
    Resource.type = Types::Resource
    ResourceArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "item"})
    ResourceArnNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceArnNotFoundException.type = Types::ResourceArnNotFoundException
    ResourceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Resource, traits: {"smithy.api#xmlName" => "item"})
    ResourceOwner.add_member(:self, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SELF', traits: {"smithy.api#enumValue" => "SELF"}))
    ResourceOwner.add_member(:other_accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER_ACCOUNTS', traits: {"smithy.api#enumValue" => "OTHER-ACCOUNTS"}))
    ResourceRegionScope.add_member(:regional, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REGIONAL', traits: {"smithy.api#enumValue" => "REGIONAL"}))
    ResourceRegionScope.add_member(:global, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GLOBAL', traits: {"smithy.api#enumValue" => "GLOBAL"}))
    ResourceRegionScopeFilter.add_member(:all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    ResourceRegionScopeFilter.add_member(:regional, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REGIONAL', traits: {"smithy.api#enumValue" => "REGIONAL"}))
    ResourceRegionScopeFilter.add_member(:global, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GLOBAL', traits: {"smithy.api#enumValue" => "GLOBAL"}))
    ResourceShare.add_member(:resource_share_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceShareArn'))
    ResourceShare.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name'))
    ResourceShare.add_member(:owning_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'owningAccountId'))
    ResourceShare.add_member(:allow_external_principals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'allowExternalPrincipals'))
    ResourceShare.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShareStatus, location_name: 'status'))
    ResourceShare.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'statusMessage'))
    ResourceShare.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    ResourceShare.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'creationTime'))
    ResourceShare.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'lastUpdatedTime'))
    ResourceShare.add_member(:feature_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShareFeatureSet, location_name: 'featureSet'))
    ResourceShare.type = Types::ResourceShare
    ResourceShareArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "item"})
    ResourceShareAssociation.add_member(:resource_share_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceShareArn'))
    ResourceShareAssociation.add_member(:resource_share_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceShareName'))
    ResourceShareAssociation.add_member(:associated_entity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'associatedEntity'))
    ResourceShareAssociation.add_member(:association_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShareAssociationType, location_name: 'associationType'))
    ResourceShareAssociation.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShareAssociationStatus, location_name: 'status'))
    ResourceShareAssociation.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'statusMessage'))
    ResourceShareAssociation.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'creationTime'))
    ResourceShareAssociation.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'lastUpdatedTime'))
    ResourceShareAssociation.add_member(:external, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'external'))
    ResourceShareAssociation.type = Types::ResourceShareAssociation
    ResourceShareAssociationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShareAssociation, traits: {"smithy.api#xmlName" => "item"})
    ResourceShareAssociationStatus.add_member(:associating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSOCIATING', traits: {"smithy.api#enumValue" => "ASSOCIATING"}))
    ResourceShareAssociationStatus.add_member(:associated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSOCIATED', traits: {"smithy.api#enumValue" => "ASSOCIATED"}))
    ResourceShareAssociationStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ResourceShareAssociationStatus.add_member(:disassociating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISASSOCIATING', traits: {"smithy.api#enumValue" => "DISASSOCIATING"}))
    ResourceShareAssociationStatus.add_member(:disassociated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISASSOCIATED', traits: {"smithy.api#enumValue" => "DISASSOCIATED"}))
    ResourceShareAssociationType.add_member(:principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRINCIPAL', traits: {"smithy.api#enumValue" => "PRINCIPAL"}))
    ResourceShareAssociationType.add_member(:resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE', traits: {"smithy.api#enumValue" => "RESOURCE"}))
    ResourceShareFeatureSet.add_member(:created_from_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED_FROM_POLICY', traits: {"smithy.api#enumValue" => "CREATED_FROM_POLICY"}))
    ResourceShareFeatureSet.add_member(:promoting_to_standard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROMOTING_TO_STANDARD', traits: {"smithy.api#enumValue" => "PROMOTING_TO_STANDARD"}))
    ResourceShareFeatureSet.add_member(:standard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STANDARD', traits: {"smithy.api#enumValue" => "STANDARD"}))
    ResourceShareInvitation.add_member(:resource_share_invitation_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceShareInvitationArn'))
    ResourceShareInvitation.add_member(:resource_share_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceShareName'))
    ResourceShareInvitation.add_member(:resource_share_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceShareArn'))
    ResourceShareInvitation.add_member(:sender_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'senderAccountId'))
    ResourceShareInvitation.add_member(:receiver_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'receiverAccountId'))
    ResourceShareInvitation.add_member(:invitation_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'invitationTimestamp'))
    ResourceShareInvitation.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShareInvitationStatus, location_name: 'status'))
    ResourceShareInvitation.add_member(:resource_share_associations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShareAssociationList, location_name: 'resourceShareAssociations', traits: {"smithy.api#deprecated" => {"message" => "This member has been deprecated. Use ListPendingInvitationResources."}}))
    ResourceShareInvitation.add_member(:receiver_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'receiverArn'))
    ResourceShareInvitation.type = Types::ResourceShareInvitation
    ResourceShareInvitationAlreadyAcceptedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceShareInvitationAlreadyAcceptedException.type = Types::ResourceShareInvitationAlreadyAcceptedException
    ResourceShareInvitationAlreadyRejectedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceShareInvitationAlreadyRejectedException.type = Types::ResourceShareInvitationAlreadyRejectedException
    ResourceShareInvitationArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "item"})
    ResourceShareInvitationArnNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceShareInvitationArnNotFoundException.type = Types::ResourceShareInvitationArnNotFoundException
    ResourceShareInvitationExpiredException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceShareInvitationExpiredException.type = Types::ResourceShareInvitationExpiredException
    ResourceShareInvitationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShareInvitation, traits: {"smithy.api#xmlName" => "item"})
    ResourceShareInvitationStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    ResourceShareInvitationStatus.add_member(:accepted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCEPTED', traits: {"smithy.api#enumValue" => "ACCEPTED"}))
    ResourceShareInvitationStatus.add_member(:rejected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECTED', traits: {"smithy.api#enumValue" => "REJECTED"}))
    ResourceShareInvitationStatus.add_member(:expired, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPIRED', traits: {"smithy.api#enumValue" => "EXPIRED"}))
    ResourceShareLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceShareLimitExceededException.type = Types::ResourceShareLimitExceededException
    ResourceShareList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShare, traits: {"smithy.api#xmlName" => "item"})
    ResourceSharePermissionDetail.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn'))
    ResourceSharePermissionDetail.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'version'))
    ResourceSharePermissionDetail.add_member(:default_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'defaultVersion'))
    ResourceSharePermissionDetail.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name'))
    ResourceSharePermissionDetail.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceType'))
    ResourceSharePermissionDetail.add_member(:permission, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'permission'))
    ResourceSharePermissionDetail.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'creationTime'))
    ResourceSharePermissionDetail.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'lastUpdatedTime'))
    ResourceSharePermissionDetail.add_member(:is_resource_type_default, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'isResourceTypeDefault'))
    ResourceSharePermissionDetail.add_member(:permission_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionType, location_name: 'permissionType'))
    ResourceSharePermissionDetail.add_member(:feature_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionFeatureSet, location_name: 'featureSet'))
    ResourceSharePermissionDetail.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionStatus, location_name: 'status'))
    ResourceSharePermissionDetail.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    ResourceSharePermissionDetail.type = Types::ResourceSharePermissionDetail
    ResourceSharePermissionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSharePermissionSummary, traits: {"smithy.api#xmlName" => "item"})
    ResourceSharePermissionSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn'))
    ResourceSharePermissionSummary.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'version'))
    ResourceSharePermissionSummary.add_member(:default_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'defaultVersion'))
    ResourceSharePermissionSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name'))
    ResourceSharePermissionSummary.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceType'))
    ResourceSharePermissionSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'status'))
    ResourceSharePermissionSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'creationTime'))
    ResourceSharePermissionSummary.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'lastUpdatedTime'))
    ResourceSharePermissionSummary.add_member(:is_resource_type_default, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'isResourceTypeDefault'))
    ResourceSharePermissionSummary.add_member(:permission_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionType, location_name: 'permissionType'))
    ResourceSharePermissionSummary.add_member(:feature_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionFeatureSet, location_name: 'featureSet'))
    ResourceSharePermissionSummary.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    ResourceSharePermissionSummary.type = Types::ResourceSharePermissionSummary
    ResourceShareStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    ResourceShareStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ResourceShareStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ResourceShareStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    ResourceShareStatus.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    ResourceStatus.add_member(:available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    ResourceStatus.add_member(:zonal_resource_inaccessible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ZONAL_RESOURCE_INACCESSIBLE', traits: {"smithy.api#enumValue" => "ZONAL_RESOURCE_INACCESSIBLE"}))
    ResourceStatus.add_member(:limit_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "LIMIT_EXCEEDED"}))
    ResourceStatus.add_member(:unavailable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNAVAILABLE', traits: {"smithy.api#enumValue" => "UNAVAILABLE"}))
    ResourceStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    ServerInternalException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServerInternalException.type = Types::ServerInternalException
    ServiceNameAndResourceType.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceType'))
    ServiceNameAndResourceType.add_member(:service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceName'))
    ServiceNameAndResourceType.add_member(:resource_region_scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceRegionScope, location_name: 'resourceRegionScope'))
    ServiceNameAndResourceType.type = Types::ServiceNameAndResourceType
    ServiceNameAndResourceTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNameAndResourceType, traits: {"smithy.api#xmlName" => "item"})
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    SetDefaultPermissionVersionRequest.add_member(:permission_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'permissionArn', traits: {"smithy.api#required" => {}}))
    SetDefaultPermissionVersionRequest.add_member(:permission_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'permissionVersion', traits: {"smithy.api#required" => {}}))
    SetDefaultPermissionVersionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken'))
    SetDefaultPermissionVersionRequest.type = Types::SetDefaultPermissionVersionRequest
    SetDefaultPermissionVersionResponse.add_member(:return_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'returnValue', traits: {"smithy.api#xmlName" => "return"}))
    SetDefaultPermissionVersionResponse.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken'))
    SetDefaultPermissionVersionResponse.type = Types::SetDefaultPermissionVersionResponse
    SourceArnOrAccountList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "item"})
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'key'))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'value'))
    Tag.type = Types::Tag
    TagFilter.add_member(:tag_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'tagKey'))
    TagFilter.add_member(:tag_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValueList, location_name: 'tagValues'))
    TagFilter.type = Types::TagFilter
    TagFilters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagFilter)
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    TagLimitExceededException.type = Types::TagLimitExceededException
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagPolicyViolationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    TagPolicyViolationException.type = Types::TagPolicyViolationException
    TagResourceRequest.add_member(:resource_share_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceShareArn'))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceArn'))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TagValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    UnknownResourceException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    UnknownResourceException.type = Types::UnknownResourceException
    UnmatchedPolicyPermissionException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    UnmatchedPolicyPermissionException.type = Types::UnmatchedPolicyPermissionException
    UntagResourceRequest.add_member(:resource_share_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceShareArn'))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceArn'))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateResourceShareRequest.add_member(:resource_share_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceShareArn', traits: {"smithy.api#required" => {}}))
    UpdateResourceShareRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name'))
    UpdateResourceShareRequest.add_member(:allow_external_principals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'allowExternalPrincipals'))
    UpdateResourceShareRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken'))
    UpdateResourceShareRequest.type = Types::UpdateResourceShareRequest
    UpdateResourceShareResponse.add_member(:resource_share, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShare, location_name: 'resourceShare'))
    UpdateResourceShareResponse.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken'))
    UpdateResourceShareResponse.type = Types::UpdateResourceShareResponse

    AmazonResourceSharing = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.ram#AmazonResourceSharing"
      service.name = "AmazonResourceSharing"
      service.version = "2018-01-04"
      service.traits = {"aws.api#service" => {"sdkId" => "RAM", "arnNamespace" => "ram", "cloudFormationName" => "RAM", "cloudTrailEventSource" => "ram.amazonaws.com", "endpointPrefix" => "ram"}, "aws.auth#sigv4" => {"name" => "ram"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Resource Access Manager"}
      service.add_operation(:accept_resource_share_invitation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ram#AcceptResourceShareInvitation"
        operation.name = "AcceptResourceShareInvitation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptResourceShareInvitationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptResourceShareInvitationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClientTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShareInvitationAlreadyAcceptedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShareInvitationAlreadyRejectedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShareInvitationArnNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShareInvitationExpiredException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/acceptresourceshareinvitation", "code" => 200}}
      end)
      service.add_operation(:associate_resource_share, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ram#AssociateResourceShare"
        operation.name = "AssociateResourceShare"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateResourceShareRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateResourceShareResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClientTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateTransitionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShareLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownResourceException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/associateresourceshare", "code" => 200}}
      end)
      service.add_operation(:associate_resource_share_permission, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ram#AssociateResourceSharePermission"
        operation.name = "AssociateResourceSharePermission"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateResourceSharePermissionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateResourceSharePermissionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClientTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownResourceException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/associateresourcesharepermission", "code" => 200}}
      end)
      service.add_operation(:create_permission, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ram#CreatePermission"
        operation.name = "CreatePermission"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePermissionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePermissionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClientTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPolicyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedPolicyTemplateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/createpermission", "code" => 200}}
      end)
      service.add_operation(:create_permission_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ram#CreatePermissionVersion"
        operation.name = "CreatePermissionVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePermissionVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePermissionVersionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClientTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPolicyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedPolicyTemplateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionVersionsLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownResourceException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/createpermissionversion", "code" => 200}}
      end)
      service.add_operation(:create_resource_share, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ram#CreateResourceShare"
        operation.name = "CreateResourceShare"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateResourceShareRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateResourceShareResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClientTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateTransitionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShareLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagPolicyViolationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownResourceException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/createresourceshare", "code" => 200}}
      end)
      service.add_operation(:delete_permission, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ram#DeletePermission"
        operation.name = "DeletePermission"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePermissionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePermissionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClientTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownResourceException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/deletepermission", "code" => 200}}
      end)
      service.add_operation(:delete_permission_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ram#DeletePermissionVersion"
        operation.name = "DeletePermissionVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePermissionVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePermissionVersionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClientTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownResourceException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/deletepermissionversion", "code" => 200}}
      end)
      service.add_operation(:delete_resource_share, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ram#DeleteResourceShare"
        operation.name = "DeleteResourceShare"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourceShareRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourceShareResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClientTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateTransitionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownResourceException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/deleteresourceshare", "code" => 200}}
      end)
      service.add_operation(:disassociate_resource_share, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ram#DisassociateResourceShare"
        operation.name = "DisassociateResourceShare"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateResourceShareRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateResourceShareResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClientTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateTransitionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShareLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownResourceException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/disassociateresourceshare", "code" => 200}}
      end)
      service.add_operation(:disassociate_resource_share_permission, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ram#DisassociateResourceSharePermission"
        operation.name = "DisassociateResourceSharePermission"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateResourceSharePermissionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateResourceSharePermissionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClientTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateTransitionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownResourceException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/disassociateresourcesharepermission", "code" => 200}}
      end)
      service.add_operation(:enable_sharing_with_aws_organization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ram#EnableSharingWithAwsOrganization"
        operation.name = "EnableSharingWithAwsOrganization"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableSharingWithAwsOrganizationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableSharingWithAwsOrganizationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/enablesharingwithawsorganization", "code" => 200}}
      end)
      service.add_operation(:get_permission, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ram#GetPermission"
        operation.name = "GetPermission"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPermissionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPermissionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownResourceException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/getpermission", "code" => 200}}
      end)
      service.add_operation(:get_resource_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ram#GetResourcePolicies"
        operation.name = "GetResourcePolicies"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcePoliciesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcePoliciesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArnNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/getresourcepolicies", "code" => 200}}
        operation[:paginator] = Paginators::GetResourcePolicies.new
      end)
      service.add_operation(:get_resource_share_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ram#GetResourceShareAssociations"
        operation.name = "GetResourceShareAssociations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourceShareAssociationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourceShareAssociationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownResourceException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/getresourceshareassociations", "code" => 200}}
        operation[:paginator] = Paginators::GetResourceShareAssociations.new
      end)
      service.add_operation(:get_resource_share_invitations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ram#GetResourceShareInvitations"
        operation.name = "GetResourceShareInvitations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourceShareInvitationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourceShareInvitationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidMaxResultsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShareInvitationArnNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownResourceException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/getresourceshareinvitations", "code" => 200}}
        operation[:paginator] = Paginators::GetResourceShareInvitations.new
      end)
      service.add_operation(:get_resource_shares, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ram#GetResourceShares"
        operation.name = "GetResourceShares"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourceSharesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourceSharesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownResourceException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/getresourceshares", "code" => 200}}
        operation[:paginator] = Paginators::GetResourceShares.new
      end)
      service.add_operation(:list_pending_invitation_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ram#ListPendingInvitationResources"
        operation.name = "ListPendingInvitationResources"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPendingInvitationResourcesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPendingInvitationResourcesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShareInvitationAlreadyRejectedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShareInvitationArnNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShareInvitationExpiredException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/listpendinginvitationresources", "code" => 200}}
        operation[:paginator] = Paginators::ListPendingInvitationResources.new
      end)
      service.add_operation(:list_permission_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ram#ListPermissionAssociations"
        operation.name = "ListPermissionAssociations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPermissionAssociationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPermissionAssociationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/listpermissionassociations", "code" => 200}}
        operation[:paginator] = Paginators::ListPermissionAssociations.new
      end)
      service.add_operation(:list_permission_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ram#ListPermissionVersions"
        operation.name = "ListPermissionVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPermissionVersionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPermissionVersionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownResourceException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/listpermissionversions", "code" => 200}}
        operation[:paginator] = Paginators::ListPermissionVersions.new
      end)
      service.add_operation(:list_permissions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ram#ListPermissions"
        operation.name = "ListPermissions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPermissionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPermissionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/listpermissions", "code" => 200}}
        operation[:paginator] = Paginators::ListPermissions.new
      end)
      service.add_operation(:list_principals, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ram#ListPrincipals"
        operation.name = "ListPrincipals"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPrincipalsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPrincipalsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownResourceException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/listprincipals", "code" => 200}}
        operation[:paginator] = Paginators::ListPrincipals.new
      end)
      service.add_operation(:list_replace_permission_associations_work, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ram#ListReplacePermissionAssociationsWork"
        operation.name = "ListReplacePermissionAssociationsWork"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListReplacePermissionAssociationsWorkRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListReplacePermissionAssociationsWorkResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/listreplacepermissionassociationswork", "code" => 200}}
        operation[:paginator] = Paginators::ListReplacePermissionAssociationsWork.new
      end)
      service.add_operation(:list_resource_share_permissions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ram#ListResourceSharePermissions"
        operation.name = "ListResourceSharePermissions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourceSharePermissionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourceSharePermissionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownResourceException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/listresourcesharepermissions", "code" => 200}}
        operation[:paginator] = Paginators::ListResourceSharePermissions.new
      end)
      service.add_operation(:list_resource_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ram#ListResourceTypes"
        operation.name = "ListResourceTypes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourceTypesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourceTypesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/listresourcetypes", "code" => 200}}
        operation[:paginator] = Paginators::ListResourceTypes.new
      end)
      service.add_operation(:list_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ram#ListResources"
        operation.name = "ListResources"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourcesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourcesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceTypeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownResourceException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/listresources", "code" => 200}}
        operation[:paginator] = Paginators::ListResources.new
      end)
      service.add_operation(:promote_permission_created_from_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ram#PromotePermissionCreatedFromPolicy"
        operation.name = "PromotePermissionCreatedFromPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PromotePermissionCreatedFromPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PromotePermissionCreatedFromPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownResourceException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/promotepermissioncreatedfrompolicy", "code" => 200}}
      end)
      service.add_operation(:promote_resource_share_created_from_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ram#PromoteResourceShareCreatedFromPolicy"
        operation.name = "PromoteResourceShareCreatedFromPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PromoteResourceShareCreatedFromPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PromoteResourceShareCreatedFromPolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateTransitionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShareLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownResourceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnmatchedPolicyPermissionException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/promoteresourcesharecreatedfrompolicy", "code" => 200}}
      end)
      service.add_operation(:reject_resource_share_invitation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ram#RejectResourceShareInvitation"
        operation.name = "RejectResourceShareInvitation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RejectResourceShareInvitationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RejectResourceShareInvitationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClientTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShareInvitationAlreadyAcceptedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShareInvitationAlreadyRejectedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShareInvitationArnNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShareInvitationExpiredException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/rejectresourceshareinvitation", "code" => 200}}
      end)
      service.add_operation(:replace_permission_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ram#ReplacePermissionAssociations"
        operation.name = "ReplacePermissionAssociations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplacePermissionAssociationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplacePermissionAssociationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClientTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownResourceException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/replacepermissionassociations", "code" => 200}}
      end)
      service.add_operation(:set_default_permission_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ram#SetDefaultPermissionVersion"
        operation.name = "SetDefaultPermissionVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetDefaultPermissionVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetDefaultPermissionVersionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClientTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownResourceException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/setdefaultpermissionversion", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ram#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArnNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagPolicyViolationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownResourceException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tagresource", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ram#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownResourceException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/untagresource", "code" => 200}}
      end)
      service.add_operation(:update_resource_share, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ram#UpdateResourceShare"
        operation.name = "UpdateResourceShare"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResourceShareRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResourceShareResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClientTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MalformedArnException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerInternalException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownResourceException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/updateresourceshare", "code" => 200}}
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
