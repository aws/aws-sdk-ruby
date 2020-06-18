# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RAM
  # @api private
  module ClientApi

    include Seahorse::Model

    AcceptResourceShareInvitationRequest = Shapes::StructureShape.new(name: 'AcceptResourceShareInvitationRequest')
    AcceptResourceShareInvitationResponse = Shapes::StructureShape.new(name: 'AcceptResourceShareInvitationResponse')
    AssociateResourceSharePermissionRequest = Shapes::StructureShape.new(name: 'AssociateResourceSharePermissionRequest')
    AssociateResourceSharePermissionResponse = Shapes::StructureShape.new(name: 'AssociateResourceSharePermissionResponse')
    AssociateResourceShareRequest = Shapes::StructureShape.new(name: 'AssociateResourceShareRequest')
    AssociateResourceShareResponse = Shapes::StructureShape.new(name: 'AssociateResourceShareResponse')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CreateResourceShareRequest = Shapes::StructureShape.new(name: 'CreateResourceShareRequest')
    CreateResourceShareResponse = Shapes::StructureShape.new(name: 'CreateResourceShareResponse')
    DateTime = Shapes::TimestampShape.new(name: 'DateTime')
    DeleteResourceShareRequest = Shapes::StructureShape.new(name: 'DeleteResourceShareRequest')
    DeleteResourceShareResponse = Shapes::StructureShape.new(name: 'DeleteResourceShareResponse')
    DisassociateResourceSharePermissionRequest = Shapes::StructureShape.new(name: 'DisassociateResourceSharePermissionRequest')
    DisassociateResourceSharePermissionResponse = Shapes::StructureShape.new(name: 'DisassociateResourceSharePermissionResponse')
    DisassociateResourceShareRequest = Shapes::StructureShape.new(name: 'DisassociateResourceShareRequest')
    DisassociateResourceShareResponse = Shapes::StructureShape.new(name: 'DisassociateResourceShareResponse')
    EnableSharingWithAwsOrganizationRequest = Shapes::StructureShape.new(name: 'EnableSharingWithAwsOrganizationRequest')
    EnableSharingWithAwsOrganizationResponse = Shapes::StructureShape.new(name: 'EnableSharingWithAwsOrganizationResponse')
    GetPermissionRequest = Shapes::StructureShape.new(name: 'GetPermissionRequest')
    GetPermissionResponse = Shapes::StructureShape.new(name: 'GetPermissionResponse')
    GetResourcePoliciesRequest = Shapes::StructureShape.new(name: 'GetResourcePoliciesRequest')
    GetResourcePoliciesResponse = Shapes::StructureShape.new(name: 'GetResourcePoliciesResponse')
    GetResourceShareAssociationsRequest = Shapes::StructureShape.new(name: 'GetResourceShareAssociationsRequest')
    GetResourceShareAssociationsResponse = Shapes::StructureShape.new(name: 'GetResourceShareAssociationsResponse')
    GetResourceShareInvitationsRequest = Shapes::StructureShape.new(name: 'GetResourceShareInvitationsRequest')
    GetResourceShareInvitationsResponse = Shapes::StructureShape.new(name: 'GetResourceShareInvitationsResponse')
    GetResourceSharesRequest = Shapes::StructureShape.new(name: 'GetResourceSharesRequest')
    GetResourceSharesResponse = Shapes::StructureShape.new(name: 'GetResourceSharesResponse')
    IdempotentParameterMismatchException = Shapes::StructureShape.new(name: 'IdempotentParameterMismatchException')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InvalidClientTokenException = Shapes::StructureShape.new(name: 'InvalidClientTokenException')
    InvalidMaxResultsException = Shapes::StructureShape.new(name: 'InvalidMaxResultsException')
    InvalidNextTokenException = Shapes::StructureShape.new(name: 'InvalidNextTokenException')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    InvalidResourceTypeException = Shapes::StructureShape.new(name: 'InvalidResourceTypeException')
    InvalidStateTransitionException = Shapes::StructureShape.new(name: 'InvalidStateTransitionException')
    ListPendingInvitationResourcesRequest = Shapes::StructureShape.new(name: 'ListPendingInvitationResourcesRequest')
    ListPendingInvitationResourcesResponse = Shapes::StructureShape.new(name: 'ListPendingInvitationResourcesResponse')
    ListPermissionsRequest = Shapes::StructureShape.new(name: 'ListPermissionsRequest')
    ListPermissionsResponse = Shapes::StructureShape.new(name: 'ListPermissionsResponse')
    ListPrincipalsRequest = Shapes::StructureShape.new(name: 'ListPrincipalsRequest')
    ListPrincipalsResponse = Shapes::StructureShape.new(name: 'ListPrincipalsResponse')
    ListResourceSharePermissionsRequest = Shapes::StructureShape.new(name: 'ListResourceSharePermissionsRequest')
    ListResourceSharePermissionsResponse = Shapes::StructureShape.new(name: 'ListResourceSharePermissionsResponse')
    ListResourceTypesRequest = Shapes::StructureShape.new(name: 'ListResourceTypesRequest')
    ListResourceTypesResponse = Shapes::StructureShape.new(name: 'ListResourceTypesResponse')
    ListResourcesRequest = Shapes::StructureShape.new(name: 'ListResourcesRequest')
    ListResourcesResponse = Shapes::StructureShape.new(name: 'ListResourcesResponse')
    MalformedArnException = Shapes::StructureShape.new(name: 'MalformedArnException')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MissingRequiredParameterException = Shapes::StructureShape.new(name: 'MissingRequiredParameterException')
    OperationNotPermittedException = Shapes::StructureShape.new(name: 'OperationNotPermittedException')
    PermissionArnList = Shapes::ListShape.new(name: 'PermissionArnList')
    Policy = Shapes::StringShape.new(name: 'Policy')
    PolicyList = Shapes::ListShape.new(name: 'PolicyList')
    Principal = Shapes::StructureShape.new(name: 'Principal')
    PrincipalArnOrIdList = Shapes::ListShape.new(name: 'PrincipalArnOrIdList')
    PrincipalList = Shapes::ListShape.new(name: 'PrincipalList')
    PromoteResourceShareCreatedFromPolicyRequest = Shapes::StructureShape.new(name: 'PromoteResourceShareCreatedFromPolicyRequest')
    PromoteResourceShareCreatedFromPolicyResponse = Shapes::StructureShape.new(name: 'PromoteResourceShareCreatedFromPolicyResponse')
    RejectResourceShareInvitationRequest = Shapes::StructureShape.new(name: 'RejectResourceShareInvitationRequest')
    RejectResourceShareInvitationResponse = Shapes::StructureShape.new(name: 'RejectResourceShareInvitationResponse')
    Resource = Shapes::StructureShape.new(name: 'Resource')
    ResourceArnList = Shapes::ListShape.new(name: 'ResourceArnList')
    ResourceArnNotFoundException = Shapes::StructureShape.new(name: 'ResourceArnNotFoundException')
    ResourceList = Shapes::ListShape.new(name: 'ResourceList')
    ResourceOwner = Shapes::StringShape.new(name: 'ResourceOwner')
    ResourceShare = Shapes::StructureShape.new(name: 'ResourceShare')
    ResourceShareArnList = Shapes::ListShape.new(name: 'ResourceShareArnList')
    ResourceShareAssociation = Shapes::StructureShape.new(name: 'ResourceShareAssociation')
    ResourceShareAssociationList = Shapes::ListShape.new(name: 'ResourceShareAssociationList')
    ResourceShareAssociationStatus = Shapes::StringShape.new(name: 'ResourceShareAssociationStatus')
    ResourceShareAssociationType = Shapes::StringShape.new(name: 'ResourceShareAssociationType')
    ResourceShareFeatureSet = Shapes::StringShape.new(name: 'ResourceShareFeatureSet')
    ResourceShareInvitation = Shapes::StructureShape.new(name: 'ResourceShareInvitation')
    ResourceShareInvitationAlreadyAcceptedException = Shapes::StructureShape.new(name: 'ResourceShareInvitationAlreadyAcceptedException')
    ResourceShareInvitationAlreadyRejectedException = Shapes::StructureShape.new(name: 'ResourceShareInvitationAlreadyRejectedException')
    ResourceShareInvitationArnList = Shapes::ListShape.new(name: 'ResourceShareInvitationArnList')
    ResourceShareInvitationArnNotFoundException = Shapes::StructureShape.new(name: 'ResourceShareInvitationArnNotFoundException')
    ResourceShareInvitationExpiredException = Shapes::StructureShape.new(name: 'ResourceShareInvitationExpiredException')
    ResourceShareInvitationList = Shapes::ListShape.new(name: 'ResourceShareInvitationList')
    ResourceShareInvitationStatus = Shapes::StringShape.new(name: 'ResourceShareInvitationStatus')
    ResourceShareLimitExceededException = Shapes::StructureShape.new(name: 'ResourceShareLimitExceededException')
    ResourceShareList = Shapes::ListShape.new(name: 'ResourceShareList')
    ResourceSharePermissionDetail = Shapes::StructureShape.new(name: 'ResourceSharePermissionDetail')
    ResourceSharePermissionList = Shapes::ListShape.new(name: 'ResourceSharePermissionList')
    ResourceSharePermissionSummary = Shapes::StructureShape.new(name: 'ResourceSharePermissionSummary')
    ResourceShareStatus = Shapes::StringShape.new(name: 'ResourceShareStatus')
    ResourceStatus = Shapes::StringShape.new(name: 'ResourceStatus')
    ServerInternalException = Shapes::StructureShape.new(name: 'ServerInternalException')
    ServiceNameAndResourceType = Shapes::StructureShape.new(name: 'ServiceNameAndResourceType')
    ServiceNameAndResourceTypeList = Shapes::ListShape.new(name: 'ServiceNameAndResourceTypeList')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    String = Shapes::StringShape.new(name: 'String')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagFilter = Shapes::StructureShape.new(name: 'TagFilter')
    TagFilters = Shapes::ListShape.new(name: 'TagFilters')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagLimitExceededException = Shapes::StructureShape.new(name: 'TagLimitExceededException')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagPolicyViolationException = Shapes::StructureShape.new(name: 'TagPolicyViolationException')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TagValueList = Shapes::ListShape.new(name: 'TagValueList')
    UnknownResourceException = Shapes::StructureShape.new(name: 'UnknownResourceException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateResourceShareRequest = Shapes::StructureShape.new(name: 'UpdateResourceShareRequest')
    UpdateResourceShareResponse = Shapes::StructureShape.new(name: 'UpdateResourceShareResponse')

    AcceptResourceShareInvitationRequest.add_member(:resource_share_invitation_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceShareInvitationArn"))
    AcceptResourceShareInvitationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken"))
    AcceptResourceShareInvitationRequest.struct_class = Types::AcceptResourceShareInvitationRequest

    AcceptResourceShareInvitationResponse.add_member(:resource_share_invitation, Shapes::ShapeRef.new(shape: ResourceShareInvitation, location_name: "resourceShareInvitation"))
    AcceptResourceShareInvitationResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken"))
    AcceptResourceShareInvitationResponse.struct_class = Types::AcceptResourceShareInvitationResponse

    AssociateResourceSharePermissionRequest.add_member(:resource_share_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceShareArn"))
    AssociateResourceSharePermissionRequest.add_member(:permission_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "permissionArn"))
    AssociateResourceSharePermissionRequest.add_member(:replace, Shapes::ShapeRef.new(shape: Boolean, location_name: "replace"))
    AssociateResourceSharePermissionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken"))
    AssociateResourceSharePermissionRequest.struct_class = Types::AssociateResourceSharePermissionRequest

    AssociateResourceSharePermissionResponse.add_member(:return_value, Shapes::ShapeRef.new(shape: Boolean, location_name: "returnValue"))
    AssociateResourceSharePermissionResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken"))
    AssociateResourceSharePermissionResponse.struct_class = Types::AssociateResourceSharePermissionResponse

    AssociateResourceShareRequest.add_member(:resource_share_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceShareArn"))
    AssociateResourceShareRequest.add_member(:resource_arns, Shapes::ShapeRef.new(shape: ResourceArnList, location_name: "resourceArns"))
    AssociateResourceShareRequest.add_member(:principals, Shapes::ShapeRef.new(shape: PrincipalArnOrIdList, location_name: "principals"))
    AssociateResourceShareRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken"))
    AssociateResourceShareRequest.struct_class = Types::AssociateResourceShareRequest

    AssociateResourceShareResponse.add_member(:resource_share_associations, Shapes::ShapeRef.new(shape: ResourceShareAssociationList, location_name: "resourceShareAssociations"))
    AssociateResourceShareResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken"))
    AssociateResourceShareResponse.struct_class = Types::AssociateResourceShareResponse

    CreateResourceShareRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    CreateResourceShareRequest.add_member(:resource_arns, Shapes::ShapeRef.new(shape: ResourceArnList, location_name: "resourceArns"))
    CreateResourceShareRequest.add_member(:principals, Shapes::ShapeRef.new(shape: PrincipalArnOrIdList, location_name: "principals"))
    CreateResourceShareRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateResourceShareRequest.add_member(:allow_external_principals, Shapes::ShapeRef.new(shape: Boolean, location_name: "allowExternalPrincipals"))
    CreateResourceShareRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken"))
    CreateResourceShareRequest.add_member(:permission_arns, Shapes::ShapeRef.new(shape: PermissionArnList, location_name: "permissionArns"))
    CreateResourceShareRequest.struct_class = Types::CreateResourceShareRequest

    CreateResourceShareResponse.add_member(:resource_share, Shapes::ShapeRef.new(shape: ResourceShare, location_name: "resourceShare"))
    CreateResourceShareResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken"))
    CreateResourceShareResponse.struct_class = Types::CreateResourceShareResponse

    DeleteResourceShareRequest.add_member(:resource_share_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "querystring", location_name: "resourceShareArn"))
    DeleteResourceShareRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "clientToken"))
    DeleteResourceShareRequest.struct_class = Types::DeleteResourceShareRequest

    DeleteResourceShareResponse.add_member(:return_value, Shapes::ShapeRef.new(shape: Boolean, location_name: "returnValue"))
    DeleteResourceShareResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken"))
    DeleteResourceShareResponse.struct_class = Types::DeleteResourceShareResponse

    DisassociateResourceSharePermissionRequest.add_member(:resource_share_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceShareArn"))
    DisassociateResourceSharePermissionRequest.add_member(:permission_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "permissionArn"))
    DisassociateResourceSharePermissionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken"))
    DisassociateResourceSharePermissionRequest.struct_class = Types::DisassociateResourceSharePermissionRequest

    DisassociateResourceSharePermissionResponse.add_member(:return_value, Shapes::ShapeRef.new(shape: Boolean, location_name: "returnValue"))
    DisassociateResourceSharePermissionResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken"))
    DisassociateResourceSharePermissionResponse.struct_class = Types::DisassociateResourceSharePermissionResponse

    DisassociateResourceShareRequest.add_member(:resource_share_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceShareArn"))
    DisassociateResourceShareRequest.add_member(:resource_arns, Shapes::ShapeRef.new(shape: ResourceArnList, location_name: "resourceArns"))
    DisassociateResourceShareRequest.add_member(:principals, Shapes::ShapeRef.new(shape: PrincipalArnOrIdList, location_name: "principals"))
    DisassociateResourceShareRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken"))
    DisassociateResourceShareRequest.struct_class = Types::DisassociateResourceShareRequest

    DisassociateResourceShareResponse.add_member(:resource_share_associations, Shapes::ShapeRef.new(shape: ResourceShareAssociationList, location_name: "resourceShareAssociations"))
    DisassociateResourceShareResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken"))
    DisassociateResourceShareResponse.struct_class = Types::DisassociateResourceShareResponse

    EnableSharingWithAwsOrganizationRequest.struct_class = Types::EnableSharingWithAwsOrganizationRequest

    EnableSharingWithAwsOrganizationResponse.add_member(:return_value, Shapes::ShapeRef.new(shape: Boolean, location_name: "returnValue"))
    EnableSharingWithAwsOrganizationResponse.struct_class = Types::EnableSharingWithAwsOrganizationResponse

    GetPermissionRequest.add_member(:permission_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "permissionArn"))
    GetPermissionRequest.add_member(:permission_version, Shapes::ShapeRef.new(shape: Integer, location_name: "permissionVersion"))
    GetPermissionRequest.struct_class = Types::GetPermissionRequest

    GetPermissionResponse.add_member(:permission, Shapes::ShapeRef.new(shape: ResourceSharePermissionDetail, location_name: "permission"))
    GetPermissionResponse.struct_class = Types::GetPermissionResponse

    GetResourcePoliciesRequest.add_member(:resource_arns, Shapes::ShapeRef.new(shape: ResourceArnList, required: true, location_name: "resourceArns"))
    GetResourcePoliciesRequest.add_member(:principal, Shapes::ShapeRef.new(shape: String, location_name: "principal"))
    GetResourcePoliciesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    GetResourcePoliciesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    GetResourcePoliciesRequest.struct_class = Types::GetResourcePoliciesRequest

    GetResourcePoliciesResponse.add_member(:policies, Shapes::ShapeRef.new(shape: PolicyList, location_name: "policies"))
    GetResourcePoliciesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    GetResourcePoliciesResponse.struct_class = Types::GetResourcePoliciesResponse

    GetResourceShareAssociationsRequest.add_member(:association_type, Shapes::ShapeRef.new(shape: ResourceShareAssociationType, required: true, location_name: "associationType"))
    GetResourceShareAssociationsRequest.add_member(:resource_share_arns, Shapes::ShapeRef.new(shape: ResourceShareArnList, location_name: "resourceShareArns"))
    GetResourceShareAssociationsRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, location_name: "resourceArn"))
    GetResourceShareAssociationsRequest.add_member(:principal, Shapes::ShapeRef.new(shape: String, location_name: "principal"))
    GetResourceShareAssociationsRequest.add_member(:association_status, Shapes::ShapeRef.new(shape: ResourceShareAssociationStatus, location_name: "associationStatus"))
    GetResourceShareAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    GetResourceShareAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    GetResourceShareAssociationsRequest.struct_class = Types::GetResourceShareAssociationsRequest

    GetResourceShareAssociationsResponse.add_member(:resource_share_associations, Shapes::ShapeRef.new(shape: ResourceShareAssociationList, location_name: "resourceShareAssociations"))
    GetResourceShareAssociationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    GetResourceShareAssociationsResponse.struct_class = Types::GetResourceShareAssociationsResponse

    GetResourceShareInvitationsRequest.add_member(:resource_share_invitation_arns, Shapes::ShapeRef.new(shape: ResourceShareInvitationArnList, location_name: "resourceShareInvitationArns"))
    GetResourceShareInvitationsRequest.add_member(:resource_share_arns, Shapes::ShapeRef.new(shape: ResourceShareArnList, location_name: "resourceShareArns"))
    GetResourceShareInvitationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    GetResourceShareInvitationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    GetResourceShareInvitationsRequest.struct_class = Types::GetResourceShareInvitationsRequest

    GetResourceShareInvitationsResponse.add_member(:resource_share_invitations, Shapes::ShapeRef.new(shape: ResourceShareInvitationList, location_name: "resourceShareInvitations"))
    GetResourceShareInvitationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    GetResourceShareInvitationsResponse.struct_class = Types::GetResourceShareInvitationsResponse

    GetResourceSharesRequest.add_member(:resource_share_arns, Shapes::ShapeRef.new(shape: ResourceShareArnList, location_name: "resourceShareArns"))
    GetResourceSharesRequest.add_member(:resource_share_status, Shapes::ShapeRef.new(shape: ResourceShareStatus, location_name: "resourceShareStatus"))
    GetResourceSharesRequest.add_member(:resource_owner, Shapes::ShapeRef.new(shape: ResourceOwner, required: true, location_name: "resourceOwner"))
    GetResourceSharesRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    GetResourceSharesRequest.add_member(:tag_filters, Shapes::ShapeRef.new(shape: TagFilters, location_name: "tagFilters"))
    GetResourceSharesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    GetResourceSharesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    GetResourceSharesRequest.struct_class = Types::GetResourceSharesRequest

    GetResourceSharesResponse.add_member(:resource_shares, Shapes::ShapeRef.new(shape: ResourceShareList, location_name: "resourceShares"))
    GetResourceSharesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    GetResourceSharesResponse.struct_class = Types::GetResourceSharesResponse

    IdempotentParameterMismatchException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    IdempotentParameterMismatchException.struct_class = Types::IdempotentParameterMismatchException

    InvalidClientTokenException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InvalidClientTokenException.struct_class = Types::InvalidClientTokenException

    InvalidMaxResultsException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InvalidMaxResultsException.struct_class = Types::InvalidMaxResultsException

    InvalidNextTokenException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InvalidNextTokenException.struct_class = Types::InvalidNextTokenException

    InvalidParameterException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InvalidParameterException.struct_class = Types::InvalidParameterException

    InvalidResourceTypeException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InvalidResourceTypeException.struct_class = Types::InvalidResourceTypeException

    InvalidStateTransitionException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InvalidStateTransitionException.struct_class = Types::InvalidStateTransitionException

    ListPendingInvitationResourcesRequest.add_member(:resource_share_invitation_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceShareInvitationArn"))
    ListPendingInvitationResourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListPendingInvitationResourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListPendingInvitationResourcesRequest.struct_class = Types::ListPendingInvitationResourcesRequest

    ListPendingInvitationResourcesResponse.add_member(:resources, Shapes::ShapeRef.new(shape: ResourceList, location_name: "resources"))
    ListPendingInvitationResourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListPendingInvitationResourcesResponse.struct_class = Types::ListPendingInvitationResourcesResponse

    ListPermissionsRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ListPermissionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListPermissionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListPermissionsRequest.struct_class = Types::ListPermissionsRequest

    ListPermissionsResponse.add_member(:permissions, Shapes::ShapeRef.new(shape: ResourceSharePermissionList, location_name: "permissions"))
    ListPermissionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListPermissionsResponse.struct_class = Types::ListPermissionsResponse

    ListPrincipalsRequest.add_member(:resource_owner, Shapes::ShapeRef.new(shape: ResourceOwner, required: true, location_name: "resourceOwner"))
    ListPrincipalsRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, location_name: "resourceArn"))
    ListPrincipalsRequest.add_member(:principals, Shapes::ShapeRef.new(shape: PrincipalArnOrIdList, location_name: "principals"))
    ListPrincipalsRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ListPrincipalsRequest.add_member(:resource_share_arns, Shapes::ShapeRef.new(shape: ResourceShareArnList, location_name: "resourceShareArns"))
    ListPrincipalsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListPrincipalsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListPrincipalsRequest.struct_class = Types::ListPrincipalsRequest

    ListPrincipalsResponse.add_member(:principals, Shapes::ShapeRef.new(shape: PrincipalList, location_name: "principals"))
    ListPrincipalsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListPrincipalsResponse.struct_class = Types::ListPrincipalsResponse

    ListResourceSharePermissionsRequest.add_member(:resource_share_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceShareArn"))
    ListResourceSharePermissionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListResourceSharePermissionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListResourceSharePermissionsRequest.struct_class = Types::ListResourceSharePermissionsRequest

    ListResourceSharePermissionsResponse.add_member(:permissions, Shapes::ShapeRef.new(shape: ResourceSharePermissionList, location_name: "permissions"))
    ListResourceSharePermissionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListResourceSharePermissionsResponse.struct_class = Types::ListResourceSharePermissionsResponse

    ListResourceTypesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListResourceTypesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListResourceTypesRequest.struct_class = Types::ListResourceTypesRequest

    ListResourceTypesResponse.add_member(:resource_types, Shapes::ShapeRef.new(shape: ServiceNameAndResourceTypeList, location_name: "resourceTypes"))
    ListResourceTypesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListResourceTypesResponse.struct_class = Types::ListResourceTypesResponse

    ListResourcesRequest.add_member(:resource_owner, Shapes::ShapeRef.new(shape: ResourceOwner, required: true, location_name: "resourceOwner"))
    ListResourcesRequest.add_member(:principal, Shapes::ShapeRef.new(shape: String, location_name: "principal"))
    ListResourcesRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ListResourcesRequest.add_member(:resource_arns, Shapes::ShapeRef.new(shape: ResourceArnList, location_name: "resourceArns"))
    ListResourcesRequest.add_member(:resource_share_arns, Shapes::ShapeRef.new(shape: ResourceShareArnList, location_name: "resourceShareArns"))
    ListResourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListResourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListResourcesRequest.struct_class = Types::ListResourcesRequest

    ListResourcesResponse.add_member(:resources, Shapes::ShapeRef.new(shape: ResourceList, location_name: "resources"))
    ListResourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListResourcesResponse.struct_class = Types::ListResourcesResponse

    MalformedArnException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    MalformedArnException.struct_class = Types::MalformedArnException

    MissingRequiredParameterException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    MissingRequiredParameterException.struct_class = Types::MissingRequiredParameterException

    OperationNotPermittedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    OperationNotPermittedException.struct_class = Types::OperationNotPermittedException

    PermissionArnList.member = Shapes::ShapeRef.new(shape: String)

    PolicyList.member = Shapes::ShapeRef.new(shape: Policy)

    Principal.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    Principal.add_member(:resource_share_arn, Shapes::ShapeRef.new(shape: String, location_name: "resourceShareArn"))
    Principal.add_member(:creation_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "creationTime"))
    Principal.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "lastUpdatedTime"))
    Principal.add_member(:external, Shapes::ShapeRef.new(shape: Boolean, location_name: "external"))
    Principal.struct_class = Types::Principal

    PrincipalArnOrIdList.member = Shapes::ShapeRef.new(shape: String)

    PrincipalList.member = Shapes::ShapeRef.new(shape: Principal)

    PromoteResourceShareCreatedFromPolicyRequest.add_member(:resource_share_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "querystring", location_name: "resourceShareArn"))
    PromoteResourceShareCreatedFromPolicyRequest.struct_class = Types::PromoteResourceShareCreatedFromPolicyRequest

    PromoteResourceShareCreatedFromPolicyResponse.add_member(:return_value, Shapes::ShapeRef.new(shape: Boolean, location_name: "returnValue"))
    PromoteResourceShareCreatedFromPolicyResponse.struct_class = Types::PromoteResourceShareCreatedFromPolicyResponse

    RejectResourceShareInvitationRequest.add_member(:resource_share_invitation_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceShareInvitationArn"))
    RejectResourceShareInvitationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken"))
    RejectResourceShareInvitationRequest.struct_class = Types::RejectResourceShareInvitationRequest

    RejectResourceShareInvitationResponse.add_member(:resource_share_invitation, Shapes::ShapeRef.new(shape: ResourceShareInvitation, location_name: "resourceShareInvitation"))
    RejectResourceShareInvitationResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken"))
    RejectResourceShareInvitationResponse.struct_class = Types::RejectResourceShareInvitationResponse

    Resource.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    Resource.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "type"))
    Resource.add_member(:resource_share_arn, Shapes::ShapeRef.new(shape: String, location_name: "resourceShareArn"))
    Resource.add_member(:resource_group_arn, Shapes::ShapeRef.new(shape: String, location_name: "resourceGroupArn"))
    Resource.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "status"))
    Resource.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "statusMessage"))
    Resource.add_member(:creation_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "creationTime"))
    Resource.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "lastUpdatedTime"))
    Resource.struct_class = Types::Resource

    ResourceArnList.member = Shapes::ShapeRef.new(shape: String)

    ResourceArnNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceArnNotFoundException.struct_class = Types::ResourceArnNotFoundException

    ResourceList.member = Shapes::ShapeRef.new(shape: Resource)

    ResourceShare.add_member(:resource_share_arn, Shapes::ShapeRef.new(shape: String, location_name: "resourceShareArn"))
    ResourceShare.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    ResourceShare.add_member(:owning_account_id, Shapes::ShapeRef.new(shape: String, location_name: "owningAccountId"))
    ResourceShare.add_member(:allow_external_principals, Shapes::ShapeRef.new(shape: Boolean, location_name: "allowExternalPrincipals"))
    ResourceShare.add_member(:status, Shapes::ShapeRef.new(shape: ResourceShareStatus, location_name: "status"))
    ResourceShare.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "statusMessage"))
    ResourceShare.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    ResourceShare.add_member(:creation_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "creationTime"))
    ResourceShare.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "lastUpdatedTime"))
    ResourceShare.add_member(:feature_set, Shapes::ShapeRef.new(shape: ResourceShareFeatureSet, location_name: "featureSet"))
    ResourceShare.struct_class = Types::ResourceShare

    ResourceShareArnList.member = Shapes::ShapeRef.new(shape: String)

    ResourceShareAssociation.add_member(:resource_share_arn, Shapes::ShapeRef.new(shape: String, location_name: "resourceShareArn"))
    ResourceShareAssociation.add_member(:resource_share_name, Shapes::ShapeRef.new(shape: String, location_name: "resourceShareName"))
    ResourceShareAssociation.add_member(:associated_entity, Shapes::ShapeRef.new(shape: String, location_name: "associatedEntity"))
    ResourceShareAssociation.add_member(:association_type, Shapes::ShapeRef.new(shape: ResourceShareAssociationType, location_name: "associationType"))
    ResourceShareAssociation.add_member(:status, Shapes::ShapeRef.new(shape: ResourceShareAssociationStatus, location_name: "status"))
    ResourceShareAssociation.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "statusMessage"))
    ResourceShareAssociation.add_member(:creation_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "creationTime"))
    ResourceShareAssociation.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "lastUpdatedTime"))
    ResourceShareAssociation.add_member(:external, Shapes::ShapeRef.new(shape: Boolean, location_name: "external"))
    ResourceShareAssociation.struct_class = Types::ResourceShareAssociation

    ResourceShareAssociationList.member = Shapes::ShapeRef.new(shape: ResourceShareAssociation)

    ResourceShareInvitation.add_member(:resource_share_invitation_arn, Shapes::ShapeRef.new(shape: String, location_name: "resourceShareInvitationArn"))
    ResourceShareInvitation.add_member(:resource_share_name, Shapes::ShapeRef.new(shape: String, location_name: "resourceShareName"))
    ResourceShareInvitation.add_member(:resource_share_arn, Shapes::ShapeRef.new(shape: String, location_name: "resourceShareArn"))
    ResourceShareInvitation.add_member(:sender_account_id, Shapes::ShapeRef.new(shape: String, location_name: "senderAccountId"))
    ResourceShareInvitation.add_member(:receiver_account_id, Shapes::ShapeRef.new(shape: String, location_name: "receiverAccountId"))
    ResourceShareInvitation.add_member(:invitation_timestamp, Shapes::ShapeRef.new(shape: DateTime, location_name: "invitationTimestamp"))
    ResourceShareInvitation.add_member(:status, Shapes::ShapeRef.new(shape: ResourceShareInvitationStatus, location_name: "status"))
    ResourceShareInvitation.add_member(:resource_share_associations, Shapes::ShapeRef.new(shape: ResourceShareAssociationList, deprecated: true, location_name: "resourceShareAssociations", metadata: {"deprecatedMessage"=>"This member has been deprecated. Use ListPendingInvitationResources."}))
    ResourceShareInvitation.struct_class = Types::ResourceShareInvitation

    ResourceShareInvitationAlreadyAcceptedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceShareInvitationAlreadyAcceptedException.struct_class = Types::ResourceShareInvitationAlreadyAcceptedException

    ResourceShareInvitationAlreadyRejectedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceShareInvitationAlreadyRejectedException.struct_class = Types::ResourceShareInvitationAlreadyRejectedException

    ResourceShareInvitationArnList.member = Shapes::ShapeRef.new(shape: String)

    ResourceShareInvitationArnNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceShareInvitationArnNotFoundException.struct_class = Types::ResourceShareInvitationArnNotFoundException

    ResourceShareInvitationExpiredException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceShareInvitationExpiredException.struct_class = Types::ResourceShareInvitationExpiredException

    ResourceShareInvitationList.member = Shapes::ShapeRef.new(shape: ResourceShareInvitation)

    ResourceShareLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceShareLimitExceededException.struct_class = Types::ResourceShareLimitExceededException

    ResourceShareList.member = Shapes::ShapeRef.new(shape: ResourceShare)

    ResourceSharePermissionDetail.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    ResourceSharePermissionDetail.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "version"))
    ResourceSharePermissionDetail.add_member(:default_version, Shapes::ShapeRef.new(shape: Boolean, location_name: "defaultVersion"))
    ResourceSharePermissionDetail.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    ResourceSharePermissionDetail.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ResourceSharePermissionDetail.add_member(:permission, Shapes::ShapeRef.new(shape: String, location_name: "permission"))
    ResourceSharePermissionDetail.add_member(:creation_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "creationTime"))
    ResourceSharePermissionDetail.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "lastUpdatedTime"))
    ResourceSharePermissionDetail.struct_class = Types::ResourceSharePermissionDetail

    ResourceSharePermissionList.member = Shapes::ShapeRef.new(shape: ResourceSharePermissionSummary)

    ResourceSharePermissionSummary.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    ResourceSharePermissionSummary.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "version"))
    ResourceSharePermissionSummary.add_member(:default_version, Shapes::ShapeRef.new(shape: Boolean, location_name: "defaultVersion"))
    ResourceSharePermissionSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    ResourceSharePermissionSummary.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ResourceSharePermissionSummary.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "status"))
    ResourceSharePermissionSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "creationTime"))
    ResourceSharePermissionSummary.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "lastUpdatedTime"))
    ResourceSharePermissionSummary.struct_class = Types::ResourceSharePermissionSummary

    ServerInternalException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServerInternalException.struct_class = Types::ServerInternalException

    ServiceNameAndResourceType.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ServiceNameAndResourceType.add_member(:service_name, Shapes::ShapeRef.new(shape: String, location_name: "serviceName"))
    ServiceNameAndResourceType.struct_class = Types::ServiceNameAndResourceType

    ServiceNameAndResourceTypeList.member = Shapes::ShapeRef.new(shape: ServiceNameAndResourceType)

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, location_name: "key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "value"))
    Tag.struct_class = Types::Tag

    TagFilter.add_member(:tag_key, Shapes::ShapeRef.new(shape: TagKey, location_name: "tagKey"))
    TagFilter.add_member(:tag_values, Shapes::ShapeRef.new(shape: TagValueList, location_name: "tagValues"))
    TagFilter.struct_class = Types::TagFilter

    TagFilters.member = Shapes::ShapeRef.new(shape: TagFilter)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    TagLimitExceededException.struct_class = Types::TagLimitExceededException

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagPolicyViolationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    TagPolicyViolationException.struct_class = Types::TagPolicyViolationException

    TagResourceRequest.add_member(:resource_share_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceShareArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TagValueList.member = Shapes::ShapeRef.new(shape: TagValue)

    UnknownResourceException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    UnknownResourceException.struct_class = Types::UnknownResourceException

    UntagResourceRequest.add_member(:resource_share_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceShareArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateResourceShareRequest.add_member(:resource_share_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceShareArn"))
    UpdateResourceShareRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    UpdateResourceShareRequest.add_member(:allow_external_principals, Shapes::ShapeRef.new(shape: Boolean, location_name: "allowExternalPrincipals"))
    UpdateResourceShareRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken"))
    UpdateResourceShareRequest.struct_class = Types::UpdateResourceShareRequest

    UpdateResourceShareResponse.add_member(:resource_share, Shapes::ShapeRef.new(shape: ResourceShare, location_name: "resourceShare"))
    UpdateResourceShareResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken"))
    UpdateResourceShareResponse.struct_class = Types::UpdateResourceShareResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-01-04"

      api.metadata = {
        "apiVersion" => "2018-01-04",
        "endpointPrefix" => "ram",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "RAM",
        "serviceFullName" => "AWS Resource Access Manager",
        "serviceId" => "RAM",
        "signatureVersion" => "v4",
        "uid" => "ram-2018-01-04",
      }

      api.add_operation(:accept_resource_share_invitation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AcceptResourceShareInvitation"
        o.http_method = "POST"
        o.http_request_uri = "/acceptresourceshareinvitation"
        o.input = Shapes::ShapeRef.new(shape: AcceptResourceShareInvitationRequest)
        o.output = Shapes::ShapeRef.new(shape: AcceptResourceShareInvitationResponse)
        o.errors << Shapes::ShapeRef.new(shape: MalformedArnException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceShareInvitationArnNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceShareInvitationAlreadyAcceptedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceShareInvitationAlreadyRejectedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceShareInvitationExpiredException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClientTokenException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
      end)

      api.add_operation(:associate_resource_share, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateResourceShare"
        o.http_method = "POST"
        o.http_request_uri = "/associateresourceshare"
        o.input = Shapes::ShapeRef.new(shape: AssociateResourceShareRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateResourceShareResponse)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateTransitionException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceShareLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: MalformedArnException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateTransitionException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClientTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceException)
      end)

      api.add_operation(:associate_resource_share_permission, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateResourceSharePermission"
        o.http_method = "POST"
        o.http_request_uri = "/associateresourcesharepermission"
        o.input = Shapes::ShapeRef.new(shape: AssociateResourceSharePermissionRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateResourceSharePermissionResponse)
        o.errors << Shapes::ShapeRef.new(shape: MalformedArnException)
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClientTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:create_resource_share, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateResourceShare"
        o.http_method = "POST"
        o.http_request_uri = "/createresourceshare"
        o.input = Shapes::ShapeRef.new(shape: CreateResourceShareRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateResourceShareResponse)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateTransitionException)
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceException)
        o.errors << Shapes::ShapeRef.new(shape: MalformedArnException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClientTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceShareLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: TagPolicyViolationException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:delete_resource_share, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResourceShare"
        o.http_method = "DELETE"
        o.http_request_uri = "/deleteresourceshare"
        o.input = Shapes::ShapeRef.new(shape: DeleteResourceShareRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteResourceShareResponse)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateTransitionException)
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceException)
        o.errors << Shapes::ShapeRef.new(shape: MalformedArnException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClientTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:disassociate_resource_share, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateResourceShare"
        o.http_method = "POST"
        o.http_request_uri = "/disassociateresourceshare"
        o.input = Shapes::ShapeRef.new(shape: DisassociateResourceShareRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateResourceShareResponse)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceShareLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: MalformedArnException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateTransitionException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClientTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceException)
      end)

      api.add_operation(:disassociate_resource_share_permission, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateResourceSharePermission"
        o.http_method = "POST"
        o.http_request_uri = "/disassociateresourcesharepermission"
        o.input = Shapes::ShapeRef.new(shape: DisassociateResourceSharePermissionRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateResourceSharePermissionResponse)
        o.errors << Shapes::ShapeRef.new(shape: MalformedArnException)
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClientTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:enable_sharing_with_aws_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableSharingWithAwsOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/enablesharingwithawsorganization"
        o.input = Shapes::ShapeRef.new(shape: EnableSharingWithAwsOrganizationRequest)
        o.output = Shapes::ShapeRef.new(shape: EnableSharingWithAwsOrganizationResponse)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:get_permission, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPermission"
        o.http_method = "POST"
        o.http_request_uri = "/getpermission"
        o.input = Shapes::ShapeRef.new(shape: GetPermissionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPermissionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MalformedArnException)
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:get_resource_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourcePolicies"
        o.http_method = "POST"
        o.http_request_uri = "/getresourcepolicies"
        o.input = Shapes::ShapeRef.new(shape: GetResourcePoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourcePoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: MalformedArnException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceArnNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_resource_share_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourceShareAssociations"
        o.http_method = "POST"
        o.http_request_uri = "/getresourceshareassociations"
        o.input = Shapes::ShapeRef.new(shape: GetResourceShareAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourceShareAssociationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceException)
        o.errors << Shapes::ShapeRef.new(shape: MalformedArnException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_resource_share_invitations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourceShareInvitations"
        o.http_method = "POST"
        o.http_request_uri = "/getresourceshareinvitations"
        o.input = Shapes::ShapeRef.new(shape: GetResourceShareInvitationsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourceShareInvitationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceShareInvitationArnNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidMaxResultsException)
        o.errors << Shapes::ShapeRef.new(shape: MalformedArnException)
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_resource_shares, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourceShares"
        o.http_method = "POST"
        o.http_request_uri = "/getresourceshares"
        o.input = Shapes::ShapeRef.new(shape: GetResourceSharesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourceSharesResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceException)
        o.errors << Shapes::ShapeRef.new(shape: MalformedArnException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_pending_invitation_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPendingInvitationResources"
        o.http_method = "POST"
        o.http_request_uri = "/listpendinginvitationresources"
        o.input = Shapes::ShapeRef.new(shape: ListPendingInvitationResourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPendingInvitationResourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: MalformedArnException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceShareInvitationArnNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceShareInvitationAlreadyRejectedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceShareInvitationExpiredException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPermissions"
        o.http_method = "POST"
        o.http_request_uri = "/listpermissions"
        o.input = Shapes::ShapeRef.new(shape: ListPermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPermissionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:list_principals, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPrincipals"
        o.http_method = "POST"
        o.http_request_uri = "/listprincipals"
        o.input = Shapes::ShapeRef.new(shape: ListPrincipalsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPrincipalsResponse)
        o.errors << Shapes::ShapeRef.new(shape: MalformedArnException)
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_resource_share_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResourceSharePermissions"
        o.http_method = "POST"
        o.http_request_uri = "/listresourcesharepermissions"
        o.input = Shapes::ShapeRef.new(shape: ListResourceSharePermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListResourceSharePermissionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MalformedArnException)
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
      end)

      api.add_operation(:list_resource_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResourceTypes"
        o.http_method = "POST"
        o.http_request_uri = "/listresourcetypes"
        o.input = Shapes::ShapeRef.new(shape: ListResourceTypesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListResourceTypesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:list_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResources"
        o.http_method = "POST"
        o.http_request_uri = "/listresources"
        o.input = Shapes::ShapeRef.new(shape: ListResourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListResourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceTypeException)
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceException)
        o.errors << Shapes::ShapeRef.new(shape: MalformedArnException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:promote_resource_share_created_from_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PromoteResourceShareCreatedFromPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/promoteresourcesharecreatedfrompolicy"
        o.input = Shapes::ShapeRef.new(shape: PromoteResourceShareCreatedFromPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PromoteResourceShareCreatedFromPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: MalformedArnException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceException)
      end)

      api.add_operation(:reject_resource_share_invitation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RejectResourceShareInvitation"
        o.http_method = "POST"
        o.http_request_uri = "/rejectresourceshareinvitation"
        o.input = Shapes::ShapeRef.new(shape: RejectResourceShareInvitationRequest)
        o.output = Shapes::ShapeRef.new(shape: RejectResourceShareInvitationResponse)
        o.errors << Shapes::ShapeRef.new(shape: MalformedArnException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceShareInvitationArnNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceShareInvitationAlreadyAcceptedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceShareInvitationAlreadyRejectedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceShareInvitationExpiredException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClientTokenException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tagresource"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MalformedArnException)
        o.errors << Shapes::ShapeRef.new(shape: TagLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceArnNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TagPolicyViolationException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/untagresource"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:update_resource_share, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateResourceShare"
        o.http_method = "POST"
        o.http_request_uri = "/updateresourceshare"
        o.input = Shapes::ShapeRef.new(shape: UpdateResourceShareRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateResourceShareResponse)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: UnknownResourceException)
        o.errors << Shapes::ShapeRef.new(shape: MalformedArnException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClientTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ServerInternalException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)
    end

  end
end
