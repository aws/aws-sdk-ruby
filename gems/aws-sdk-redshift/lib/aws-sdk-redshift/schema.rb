# frozen_string_literal: true

# This is generated code!

module Aws::Redshift
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AcceptReservedNodeExchangeInputMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#AcceptReservedNodeExchangeInputMessage", name: "AcceptReservedNodeExchangeInputMessage")
    AcceptReservedNodeExchangeOutputMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#AcceptReservedNodeExchangeOutputMessage", name: "AcceptReservedNodeExchangeOutputMessage")
    AccessToClusterDeniedFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#AccessToClusterDeniedFault", name: "AccessToClusterDeniedFault", traits: {"aws.protocols#awsQueryError" => {"code" => "AccessToClusterDenied", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AccessToSnapshotDeniedFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#AccessToSnapshotDeniedFault", name: "AccessToSnapshotDeniedFault", traits: {"aws.protocols#awsQueryError" => {"code" => "AccessToSnapshotDenied", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AccountAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#AccountAttribute", name: "AccountAttribute")
    AccountWithRestoreAccess = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#AccountWithRestoreAccess", name: "AccountWithRestoreAccess")
    AccountsWithRestoreAccessList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#AccountsWithRestoreAccessList", name: "AccountsWithRestoreAccessList")
    ActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.redshift#ActionType", name: "ActionType")
    AddPartnerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#AddPartnerInput", name: "AddPartnerInput")
    AddPartnerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#AddPartnerOutput", name: "AddPartnerOutput")
    AquaConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#AquaConfiguration", name: "AquaConfiguration")
    AquaConfigurationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.redshift#AquaConfigurationStatus", name: "AquaConfigurationStatus")
    AquaStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.redshift#AquaStatus", name: "AquaStatus")
    AssociateDataShareConsumerMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#AssociateDataShareConsumerMessage", name: "AssociateDataShareConsumerMessage")
    AssociateDataShareConsumerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#AssociateDataShareConsumerOutput", name: "AssociateDataShareConsumerOutput")
    AssociatedClusterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#AssociatedClusterList", name: "AssociatedClusterList")
    Association = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#Association", name: "Association")
    AssociationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#AssociationList", name: "AssociationList")
    AttributeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#AttributeList", name: "AttributeList")
    AttributeNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#AttributeNameList", name: "AttributeNameList")
    AttributeValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#AttributeValueList", name: "AttributeValueList")
    AttributeValueTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#AttributeValueTarget", name: "AttributeValueTarget")
    AuthenticationProfile = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#AuthenticationProfile", name: "AuthenticationProfile")
    AuthenticationProfileAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#AuthenticationProfileAlreadyExistsFault", name: "AuthenticationProfileAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "AuthenticationProfileAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AuthenticationProfileList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#AuthenticationProfileList", name: "AuthenticationProfileList")
    AuthenticationProfileNameString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshift#AuthenticationProfileNameString", name: "AuthenticationProfileNameString", traits: {"smithy.api#length" => {"min" => 0, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-]+$"})
    AuthenticationProfileNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#AuthenticationProfileNotFoundFault", name: "AuthenticationProfileNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "AuthenticationProfileNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    AuthenticationProfileQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#AuthenticationProfileQuotaExceededFault", name: "AuthenticationProfileQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "AuthenticationProfileQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AuthorizationAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#AuthorizationAlreadyExistsFault", name: "AuthorizationAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "AuthorizationAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AuthorizationNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#AuthorizationNotFoundFault", name: "AuthorizationNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "AuthorizationNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    AuthorizationQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#AuthorizationQuotaExceededFault", name: "AuthorizationQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "AuthorizationQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AuthorizationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.redshift#AuthorizationStatus", name: "AuthorizationStatus")
    AuthorizeClusterSecurityGroupIngressMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#AuthorizeClusterSecurityGroupIngressMessage", name: "AuthorizeClusterSecurityGroupIngressMessage")
    AuthorizeClusterSecurityGroupIngressResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#AuthorizeClusterSecurityGroupIngressResult", name: "AuthorizeClusterSecurityGroupIngressResult")
    AuthorizeDataShareMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#AuthorizeDataShareMessage", name: "AuthorizeDataShareMessage")
    AuthorizeDataShareOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#AuthorizeDataShareOutput", name: "AuthorizeDataShareOutput")
    AuthorizeEndpointAccessMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#AuthorizeEndpointAccessMessage", name: "AuthorizeEndpointAccessMessage")
    AuthorizeEndpointAccessOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#AuthorizeEndpointAccessOutput", name: "AuthorizeEndpointAccessOutput")
    AuthorizeSnapshotAccessMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#AuthorizeSnapshotAccessMessage", name: "AuthorizeSnapshotAccessMessage")
    AuthorizeSnapshotAccessResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#AuthorizeSnapshotAccessResult", name: "AuthorizeSnapshotAccessResult")
    AuthorizedAudienceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#AuthorizedAudienceList", name: "AuthorizedAudienceList")
    AuthorizedTokenIssuer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#AuthorizedTokenIssuer", name: "AuthorizedTokenIssuer")
    AuthorizedTokenIssuerList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#AuthorizedTokenIssuerList", name: "AuthorizedTokenIssuerList")
    AvailabilityZone = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#AvailabilityZone", name: "AvailabilityZone")
    AvailabilityZoneList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#AvailabilityZoneList", name: "AvailabilityZoneList")
    BatchDeleteClusterSnapshotsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#BatchDeleteClusterSnapshotsRequest", name: "BatchDeleteClusterSnapshotsRequest")
    BatchDeleteClusterSnapshotsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#BatchDeleteClusterSnapshotsResult", name: "BatchDeleteClusterSnapshotsResult")
    BatchDeleteRequestSizeExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#BatchDeleteRequestSizeExceededFault", name: "BatchDeleteRequestSizeExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "BatchDeleteRequestSizeExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BatchModifyClusterSnapshotsLimitExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#BatchModifyClusterSnapshotsLimitExceededFault", name: "BatchModifyClusterSnapshotsLimitExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "BatchModifyClusterSnapshotsLimitExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BatchModifyClusterSnapshotsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#BatchModifyClusterSnapshotsMessage", name: "BatchModifyClusterSnapshotsMessage")
    BatchModifyClusterSnapshotsOutputMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#BatchModifyClusterSnapshotsOutputMessage", name: "BatchModifyClusterSnapshotsOutputMessage")
    BatchSnapshotOperationErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#BatchSnapshotOperationErrorList", name: "BatchSnapshotOperationErrorList")
    BatchSnapshotOperationErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#BatchSnapshotOperationErrors", name: "BatchSnapshotOperationErrors")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.redshift#Boolean", name: "Boolean")
    BooleanOptional = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.redshift#BooleanOptional", name: "BooleanOptional")
    BucketNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#BucketNotFoundFault", name: "BucketNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "BucketNotFoundFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CancelResizeMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#CancelResizeMessage", name: "CancelResizeMessage")
    CancelResizeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#CancelResizeOutput", name: "CancelResizeOutput")
    CertificateAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#CertificateAssociation", name: "CertificateAssociation")
    CertificateAssociationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#CertificateAssociationList", name: "CertificateAssociationList")
    Cluster = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#Cluster", name: "Cluster")
    ClusterAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ClusterAlreadyExistsFault", name: "ClusterAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClusterAssociatedToSchedule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ClusterAssociatedToSchedule", name: "ClusterAssociatedToSchedule")
    ClusterDbRevision = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ClusterDbRevision", name: "ClusterDbRevision")
    ClusterDbRevisionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#ClusterDbRevisionsList", name: "ClusterDbRevisionsList")
    ClusterDbRevisionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ClusterDbRevisionsMessage", name: "ClusterDbRevisionsMessage")
    ClusterIamRole = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ClusterIamRole", name: "ClusterIamRole")
    ClusterIamRoleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#ClusterIamRoleList", name: "ClusterIamRoleList")
    ClusterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#ClusterList", name: "ClusterList")
    ClusterNode = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ClusterNode", name: "ClusterNode")
    ClusterNodesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#ClusterNodesList", name: "ClusterNodesList")
    ClusterNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ClusterNotFoundFault", name: "ClusterNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ClusterOnLatestRevisionFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ClusterOnLatestRevisionFault", name: "ClusterOnLatestRevisionFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterOnLatestRevision", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClusterParameterGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ClusterParameterGroup", name: "ClusterParameterGroup")
    ClusterParameterGroupAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ClusterParameterGroupAlreadyExistsFault", name: "ClusterParameterGroupAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterParameterGroupAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClusterParameterGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ClusterParameterGroupNotFoundFault", name: "ClusterParameterGroupNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterParameterGroupNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ClusterParameterGroupQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ClusterParameterGroupQuotaExceededFault", name: "ClusterParameterGroupQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterParameterGroupQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClusterParameterGroupStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ClusterParameterGroupStatus", name: "ClusterParameterGroupStatus")
    ClusterParameterGroupStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#ClusterParameterGroupStatusList", name: "ClusterParameterGroupStatusList")
    ClusterParameterGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ClusterParameterGroupsMessage", name: "ClusterParameterGroupsMessage")
    ClusterParameterStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ClusterParameterStatus", name: "ClusterParameterStatus")
    ClusterParameterStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#ClusterParameterStatusList", name: "ClusterParameterStatusList")
    ClusterQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ClusterQuotaExceededFault", name: "ClusterQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClusterSecurityGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ClusterSecurityGroup", name: "ClusterSecurityGroup")
    ClusterSecurityGroupAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ClusterSecurityGroupAlreadyExistsFault", name: "ClusterSecurityGroupAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterSecurityGroupAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClusterSecurityGroupMembership = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ClusterSecurityGroupMembership", name: "ClusterSecurityGroupMembership")
    ClusterSecurityGroupMembershipList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#ClusterSecurityGroupMembershipList", name: "ClusterSecurityGroupMembershipList")
    ClusterSecurityGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ClusterSecurityGroupMessage", name: "ClusterSecurityGroupMessage")
    ClusterSecurityGroupNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#ClusterSecurityGroupNameList", name: "ClusterSecurityGroupNameList")
    ClusterSecurityGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ClusterSecurityGroupNotFoundFault", name: "ClusterSecurityGroupNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterSecurityGroupNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ClusterSecurityGroupQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ClusterSecurityGroupQuotaExceededFault", name: "ClusterSecurityGroupQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "QuotaExceeded.ClusterSecurityGroup", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClusterSecurityGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#ClusterSecurityGroups", name: "ClusterSecurityGroups")
    ClusterSnapshotAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ClusterSnapshotAlreadyExistsFault", name: "ClusterSnapshotAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterSnapshotAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClusterSnapshotCopyStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ClusterSnapshotCopyStatus", name: "ClusterSnapshotCopyStatus")
    ClusterSnapshotNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ClusterSnapshotNotFoundFault", name: "ClusterSnapshotNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterSnapshotNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ClusterSnapshotQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ClusterSnapshotQuotaExceededFault", name: "ClusterSnapshotQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterSnapshotQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClusterSubnetGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ClusterSubnetGroup", name: "ClusterSubnetGroup")
    ClusterSubnetGroupAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ClusterSubnetGroupAlreadyExistsFault", name: "ClusterSubnetGroupAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterSubnetGroupAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClusterSubnetGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ClusterSubnetGroupMessage", name: "ClusterSubnetGroupMessage")
    ClusterSubnetGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ClusterSubnetGroupNotFoundFault", name: "ClusterSubnetGroupNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterSubnetGroupNotFoundFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClusterSubnetGroupQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ClusterSubnetGroupQuotaExceededFault", name: "ClusterSubnetGroupQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterSubnetGroupQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClusterSubnetGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#ClusterSubnetGroups", name: "ClusterSubnetGroups")
    ClusterSubnetQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ClusterSubnetQuotaExceededFault", name: "ClusterSubnetQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterSubnetQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClusterVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ClusterVersion", name: "ClusterVersion")
    ClusterVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#ClusterVersionList", name: "ClusterVersionList")
    ClusterVersionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ClusterVersionsMessage", name: "ClusterVersionsMessage")
    ClustersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ClustersMessage", name: "ClustersMessage")
    ConflictPolicyUpdateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ConflictPolicyUpdateFault", name: "ConflictPolicyUpdateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ConflictPolicyUpdateFault", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConsumerIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#ConsumerIdentifierList", name: "ConsumerIdentifierList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    CopyClusterSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#CopyClusterSnapshotMessage", name: "CopyClusterSnapshotMessage")
    CopyClusterSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#CopyClusterSnapshotResult", name: "CopyClusterSnapshotResult")
    CopyToRegionDisabledFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#CopyToRegionDisabledFault", name: "CopyToRegionDisabledFault", traits: {"aws.protocols#awsQueryError" => {"code" => "CopyToRegionDisabledFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CreateAuthenticationProfileMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#CreateAuthenticationProfileMessage", name: "CreateAuthenticationProfileMessage")
    CreateAuthenticationProfileResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#CreateAuthenticationProfileResult", name: "CreateAuthenticationProfileResult")
    CreateClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#CreateClusterMessage", name: "CreateClusterMessage")
    CreateClusterParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#CreateClusterParameterGroupMessage", name: "CreateClusterParameterGroupMessage")
    CreateClusterParameterGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#CreateClusterParameterGroupResult", name: "CreateClusterParameterGroupResult")
    CreateClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#CreateClusterResult", name: "CreateClusterResult")
    CreateClusterSecurityGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#CreateClusterSecurityGroupMessage", name: "CreateClusterSecurityGroupMessage")
    CreateClusterSecurityGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#CreateClusterSecurityGroupResult", name: "CreateClusterSecurityGroupResult")
    CreateClusterSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#CreateClusterSnapshotMessage", name: "CreateClusterSnapshotMessage")
    CreateClusterSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#CreateClusterSnapshotResult", name: "CreateClusterSnapshotResult")
    CreateClusterSubnetGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#CreateClusterSubnetGroupMessage", name: "CreateClusterSubnetGroupMessage")
    CreateClusterSubnetGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#CreateClusterSubnetGroupResult", name: "CreateClusterSubnetGroupResult")
    CreateCustomDomainAssociationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#CreateCustomDomainAssociationMessage", name: "CreateCustomDomainAssociationMessage")
    CreateCustomDomainAssociationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#CreateCustomDomainAssociationResult", name: "CreateCustomDomainAssociationResult")
    CreateEndpointAccessMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#CreateEndpointAccessMessage", name: "CreateEndpointAccessMessage")
    CreateEndpointAccessOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#CreateEndpointAccessOutput", name: "CreateEndpointAccessOutput")
    CreateEventSubscriptionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#CreateEventSubscriptionMessage", name: "CreateEventSubscriptionMessage")
    CreateEventSubscriptionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#CreateEventSubscriptionResult", name: "CreateEventSubscriptionResult")
    CreateHsmClientCertificateMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#CreateHsmClientCertificateMessage", name: "CreateHsmClientCertificateMessage")
    CreateHsmClientCertificateResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#CreateHsmClientCertificateResult", name: "CreateHsmClientCertificateResult")
    CreateHsmConfigurationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#CreateHsmConfigurationMessage", name: "CreateHsmConfigurationMessage")
    CreateHsmConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#CreateHsmConfigurationResult", name: "CreateHsmConfigurationResult")
    CreateIntegrationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#CreateIntegrationMessage", name: "CreateIntegrationMessage")
    CreateIntegrationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#CreateIntegrationOutput", name: "CreateIntegrationOutput")
    CreateRedshiftIdcApplicationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#CreateRedshiftIdcApplicationMessage", name: "CreateRedshiftIdcApplicationMessage")
    CreateRedshiftIdcApplicationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#CreateRedshiftIdcApplicationResult", name: "CreateRedshiftIdcApplicationResult")
    CreateScheduledActionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#CreateScheduledActionMessage", name: "CreateScheduledActionMessage")
    CreateScheduledActionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#CreateScheduledActionOutput", name: "CreateScheduledActionOutput")
    CreateSnapshotCopyGrantMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#CreateSnapshotCopyGrantMessage", name: "CreateSnapshotCopyGrantMessage")
    CreateSnapshotCopyGrantResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#CreateSnapshotCopyGrantResult", name: "CreateSnapshotCopyGrantResult")
    CreateSnapshotScheduleMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#CreateSnapshotScheduleMessage", name: "CreateSnapshotScheduleMessage")
    CreateSnapshotScheduleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#CreateSnapshotScheduleOutput", name: "CreateSnapshotScheduleOutput")
    CreateTagsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#CreateTagsMessage", name: "CreateTagsMessage")
    CreateUsageLimitMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#CreateUsageLimitMessage", name: "CreateUsageLimitMessage")
    CreateUsageLimitOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#CreateUsageLimitOutput", name: "CreateUsageLimitOutput")
    CustomCnameAssociationFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#CustomCnameAssociationFault", name: "CustomCnameAssociationFault", traits: {"aws.protocols#awsQueryError" => {"code" => "CustomCnameAssociationFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CustomDomainAssociationNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#CustomDomainAssociationNotFoundFault", name: "CustomDomainAssociationNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "CustomDomainAssociationNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    CustomDomainAssociationsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#CustomDomainAssociationsMessage", name: "CustomDomainAssociationsMessage")
    CustomDomainCertificateArnString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshift#CustomDomainCertificateArnString", name: "CustomDomainCertificateArnString", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[\\w+=/,.@-]+:acm:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=,.@-]+)*$"})
    CustomDomainNameString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshift#CustomDomainNameString", name: "CustomDomainNameString", traits: {"smithy.api#length" => {"min" => 1, "max" => 253}, "smithy.api#pattern" => "^(((?!-)[A-Za-z0-9-]{0,62}[A-Za-z0-9])\\.)+((?!-)[A-Za-z0-9-]{1,62}[A-Za-z0-9])$"})
    CustomerStorageMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#CustomerStorageMessage", name: "CustomerStorageMessage")
    DataShare = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DataShare", name: "DataShare")
    DataShareAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DataShareAssociation", name: "DataShareAssociation")
    DataShareAssociationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#DataShareAssociationList", name: "DataShareAssociationList")
    DataShareList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#DataShareList", name: "DataShareList")
    DataShareStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.redshift#DataShareStatus", name: "DataShareStatus")
    DataShareStatusForConsumer = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.redshift#DataShareStatusForConsumer", name: "DataShareStatusForConsumer")
    DataShareStatusForProducer = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.redshift#DataShareStatusForProducer", name: "DataShareStatusForProducer")
    DataShareType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.redshift#DataShareType", name: "DataShareType")
    DataTransferProgress = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DataTransferProgress", name: "DataTransferProgress")
    DbGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#DbGroupList", name: "DbGroupList")
    DeauthorizeDataShareMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DeauthorizeDataShareMessage", name: "DeauthorizeDataShareMessage")
    DeauthorizeDataShareOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DeauthorizeDataShareOutput", name: "DeauthorizeDataShareOutput")
    DefaultClusterParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DefaultClusterParameters", name: "DefaultClusterParameters")
    DeferredMaintenanceWindow = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DeferredMaintenanceWindow", name: "DeferredMaintenanceWindow")
    DeferredMaintenanceWindowsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#DeferredMaintenanceWindowsList", name: "DeferredMaintenanceWindowsList")
    DeleteAuthenticationProfileMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DeleteAuthenticationProfileMessage", name: "DeleteAuthenticationProfileMessage")
    DeleteAuthenticationProfileResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DeleteAuthenticationProfileResult", name: "DeleteAuthenticationProfileResult")
    DeleteClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DeleteClusterMessage", name: "DeleteClusterMessage")
    DeleteClusterParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DeleteClusterParameterGroupMessage", name: "DeleteClusterParameterGroupMessage")
    DeleteClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DeleteClusterResult", name: "DeleteClusterResult")
    DeleteClusterSecurityGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DeleteClusterSecurityGroupMessage", name: "DeleteClusterSecurityGroupMessage")
    DeleteClusterSnapshotInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DeleteClusterSnapshotInput", name: "DeleteClusterSnapshotInput")
    DeleteClusterSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DeleteClusterSnapshotMessage", name: "DeleteClusterSnapshotMessage")
    DeleteClusterSnapshotMessageList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#DeleteClusterSnapshotMessageList", name: "DeleteClusterSnapshotMessageList")
    DeleteClusterSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DeleteClusterSnapshotResult", name: "DeleteClusterSnapshotResult")
    DeleteClusterSubnetGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DeleteClusterSubnetGroupMessage", name: "DeleteClusterSubnetGroupMessage")
    DeleteCustomDomainAssociationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DeleteCustomDomainAssociationMessage", name: "DeleteCustomDomainAssociationMessage")
    DeleteEndpointAccessMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DeleteEndpointAccessMessage", name: "DeleteEndpointAccessMessage")
    DeleteEndpointAccessOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DeleteEndpointAccessOutput", name: "DeleteEndpointAccessOutput")
    DeleteEventSubscriptionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DeleteEventSubscriptionMessage", name: "DeleteEventSubscriptionMessage")
    DeleteHsmClientCertificateMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DeleteHsmClientCertificateMessage", name: "DeleteHsmClientCertificateMessage")
    DeleteHsmConfigurationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DeleteHsmConfigurationMessage", name: "DeleteHsmConfigurationMessage")
    DeleteIntegrationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DeleteIntegrationMessage", name: "DeleteIntegrationMessage")
    DeleteIntegrationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DeleteIntegrationOutput", name: "DeleteIntegrationOutput")
    DeletePartnerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DeletePartnerInput", name: "DeletePartnerInput")
    DeletePartnerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DeletePartnerOutput", name: "DeletePartnerOutput")
    DeleteRedshiftIdcApplicationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DeleteRedshiftIdcApplicationMessage", name: "DeleteRedshiftIdcApplicationMessage")
    DeleteResourcePolicyMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DeleteResourcePolicyMessage", name: "DeleteResourcePolicyMessage")
    DeleteScheduledActionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DeleteScheduledActionMessage", name: "DeleteScheduledActionMessage")
    DeleteSnapshotCopyGrantMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DeleteSnapshotCopyGrantMessage", name: "DeleteSnapshotCopyGrantMessage")
    DeleteSnapshotScheduleMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DeleteSnapshotScheduleMessage", name: "DeleteSnapshotScheduleMessage")
    DeleteTagsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DeleteTagsMessage", name: "DeleteTagsMessage")
    DeleteUsageLimitMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DeleteUsageLimitMessage", name: "DeleteUsageLimitMessage")
    DependentServiceAccessDeniedFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DependentServiceAccessDeniedFault", name: "DependentServiceAccessDeniedFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DependentServiceAccessDenied", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    DependentServiceRequestThrottlingFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DependentServiceRequestThrottlingFault", name: "DependentServiceRequestThrottlingFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DependentServiceRequestThrottlingFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DependentServiceUnavailableFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DependentServiceUnavailableFault", name: "DependentServiceUnavailableFault", traits: {"aws.protocols#awsQueryError" => {"code" => "DependentServiceUnavailableFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DeregisterNamespaceInputMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DeregisterNamespaceInputMessage", name: "DeregisterNamespaceInputMessage")
    DeregisterNamespaceOutputMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DeregisterNamespaceOutputMessage", name: "DeregisterNamespaceOutputMessage")
    DescribeAccountAttributesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeAccountAttributesMessage", name: "DescribeAccountAttributesMessage")
    DescribeAccountAttributesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeAccountAttributesOutput", name: "DescribeAccountAttributesOutput")
    DescribeAuthenticationProfilesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeAuthenticationProfilesMessage", name: "DescribeAuthenticationProfilesMessage")
    DescribeAuthenticationProfilesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeAuthenticationProfilesResult", name: "DescribeAuthenticationProfilesResult")
    DescribeClusterDbRevisionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeClusterDbRevisionsMessage", name: "DescribeClusterDbRevisionsMessage")
    DescribeClusterParameterGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeClusterParameterGroupsMessage", name: "DescribeClusterParameterGroupsMessage")
    DescribeClusterParametersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeClusterParametersMessage", name: "DescribeClusterParametersMessage")
    DescribeClusterParametersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeClusterParametersOutput", name: "DescribeClusterParametersOutput")
    DescribeClusterSecurityGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeClusterSecurityGroupsMessage", name: "DescribeClusterSecurityGroupsMessage")
    DescribeClusterSnapshotsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeClusterSnapshotsMessage", name: "DescribeClusterSnapshotsMessage")
    DescribeClusterSubnetGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeClusterSubnetGroupsMessage", name: "DescribeClusterSubnetGroupsMessage")
    DescribeClusterTracksMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeClusterTracksMessage", name: "DescribeClusterTracksMessage")
    DescribeClusterVersionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeClusterVersionsMessage", name: "DescribeClusterVersionsMessage")
    DescribeClustersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeClustersMessage", name: "DescribeClustersMessage")
    DescribeCustomDomainAssociationsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeCustomDomainAssociationsMessage", name: "DescribeCustomDomainAssociationsMessage")
    DescribeDataSharesForConsumerMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeDataSharesForConsumerMessage", name: "DescribeDataSharesForConsumerMessage")
    DescribeDataSharesForConsumerResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeDataSharesForConsumerResult", name: "DescribeDataSharesForConsumerResult")
    DescribeDataSharesForProducerMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeDataSharesForProducerMessage", name: "DescribeDataSharesForProducerMessage")
    DescribeDataSharesForProducerResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeDataSharesForProducerResult", name: "DescribeDataSharesForProducerResult")
    DescribeDataSharesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeDataSharesMessage", name: "DescribeDataSharesMessage")
    DescribeDataSharesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeDataSharesResult", name: "DescribeDataSharesResult")
    DescribeDefaultClusterParametersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeDefaultClusterParametersMessage", name: "DescribeDefaultClusterParametersMessage")
    DescribeDefaultClusterParametersResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeDefaultClusterParametersResult", name: "DescribeDefaultClusterParametersResult")
    DescribeEndpointAccessMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeEndpointAccessMessage", name: "DescribeEndpointAccessMessage")
    DescribeEndpointAccessOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeEndpointAccessOutput", name: "DescribeEndpointAccessOutput")
    DescribeEndpointAuthorizationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeEndpointAuthorizationMessage", name: "DescribeEndpointAuthorizationMessage")
    DescribeEndpointAuthorizationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeEndpointAuthorizationOutput", name: "DescribeEndpointAuthorizationOutput")
    DescribeEventCategoriesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeEventCategoriesMessage", name: "DescribeEventCategoriesMessage")
    DescribeEventSubscriptionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeEventSubscriptionsMessage", name: "DescribeEventSubscriptionsMessage")
    DescribeEventsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeEventsMessage", name: "DescribeEventsMessage")
    DescribeHsmClientCertificatesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeHsmClientCertificatesMessage", name: "DescribeHsmClientCertificatesMessage")
    DescribeHsmConfigurationsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeHsmConfigurationsMessage", name: "DescribeHsmConfigurationsMessage")
    DescribeInboundIntegrationsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeInboundIntegrationsMessage", name: "DescribeInboundIntegrationsMessage")
    DescribeIntegrationsFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeIntegrationsFilter", name: "DescribeIntegrationsFilter")
    DescribeIntegrationsFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#DescribeIntegrationsFilterList", name: "DescribeIntegrationsFilterList")
    DescribeIntegrationsFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.redshift#DescribeIntegrationsFilterName", name: "DescribeIntegrationsFilterName")
    DescribeIntegrationsFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#DescribeIntegrationsFilterValueList", name: "DescribeIntegrationsFilterValueList")
    DescribeIntegrationsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeIntegrationsMessage", name: "DescribeIntegrationsMessage")
    DescribeLoggingStatusMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeLoggingStatusMessage", name: "DescribeLoggingStatusMessage")
    DescribeLoggingStatusOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeLoggingStatusOutput", name: "DescribeLoggingStatusOutput")
    DescribeNodeConfigurationOptionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeNodeConfigurationOptionsMessage", name: "DescribeNodeConfigurationOptionsMessage")
    DescribeOrderableClusterOptionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeOrderableClusterOptionsMessage", name: "DescribeOrderableClusterOptionsMessage")
    DescribePartnersInputMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribePartnersInputMessage", name: "DescribePartnersInputMessage")
    DescribePartnersOutputMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribePartnersOutputMessage", name: "DescribePartnersOutputMessage")
    DescribeRedshiftIdcApplicationsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeRedshiftIdcApplicationsMessage", name: "DescribeRedshiftIdcApplicationsMessage")
    DescribeRedshiftIdcApplicationsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeRedshiftIdcApplicationsResult", name: "DescribeRedshiftIdcApplicationsResult")
    DescribeReservedNodeExchangeStatusInputMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeReservedNodeExchangeStatusInputMessage", name: "DescribeReservedNodeExchangeStatusInputMessage")
    DescribeReservedNodeExchangeStatusOutputMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeReservedNodeExchangeStatusOutputMessage", name: "DescribeReservedNodeExchangeStatusOutputMessage")
    DescribeReservedNodeOfferingsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeReservedNodeOfferingsMessage", name: "DescribeReservedNodeOfferingsMessage")
    DescribeReservedNodesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeReservedNodesMessage", name: "DescribeReservedNodesMessage")
    DescribeResizeMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeResizeMessage", name: "DescribeResizeMessage")
    DescribeResizeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeResizeOutput", name: "DescribeResizeOutput")
    DescribeScheduledActionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeScheduledActionsMessage", name: "DescribeScheduledActionsMessage")
    DescribeSnapshotCopyGrantsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeSnapshotCopyGrantsMessage", name: "DescribeSnapshotCopyGrantsMessage")
    DescribeSnapshotSchedulesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeSnapshotSchedulesMessage", name: "DescribeSnapshotSchedulesMessage")
    DescribeSnapshotSchedulesOutputMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeSnapshotSchedulesOutputMessage", name: "DescribeSnapshotSchedulesOutputMessage")
    DescribeTableRestoreStatusMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeTableRestoreStatusMessage", name: "DescribeTableRestoreStatusMessage")
    DescribeTagsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeTagsMessage", name: "DescribeTagsMessage")
    DescribeUsageLimitsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeUsageLimitsMessage", name: "DescribeUsageLimitsMessage")
    DescribeUsageLimitsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DescribeUsageLimitsOutput", name: "DescribeUsageLimitsOutput")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshift#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^.*$"})
    DisableLoggingMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DisableLoggingMessage", name: "DisableLoggingMessage")
    DisableLoggingOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DisableLoggingOutput", name: "DisableLoggingOutput")
    DisableSnapshotCopyMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DisableSnapshotCopyMessage", name: "DisableSnapshotCopyMessage")
    DisableSnapshotCopyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DisableSnapshotCopyResult", name: "DisableSnapshotCopyResult")
    DisassociateDataShareConsumerMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DisassociateDataShareConsumerMessage", name: "DisassociateDataShareConsumerMessage")
    DisassociateDataShareConsumerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#DisassociateDataShareConsumerOutput", name: "DisassociateDataShareConsumerOutput")
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.redshift#Double", name: "Double")
    DoubleOptional = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.redshift#DoubleOptional", name: "DoubleOptional")
    EC2SecurityGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#EC2SecurityGroup", name: "EC2SecurityGroup")
    EC2SecurityGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#EC2SecurityGroupList", name: "EC2SecurityGroupList")
    ElasticIpStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ElasticIpStatus", name: "ElasticIpStatus")
    EligibleTracksToUpdateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#EligibleTracksToUpdateList", name: "EligibleTracksToUpdateList")
    EnableLoggingMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#EnableLoggingMessage", name: "EnableLoggingMessage")
    EnableLoggingOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#EnableLoggingOutput", name: "EnableLoggingOutput")
    EnableSnapshotCopyMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#EnableSnapshotCopyMessage", name: "EnableSnapshotCopyMessage")
    EnableSnapshotCopyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#EnableSnapshotCopyResult", name: "EnableSnapshotCopyResult")
    EncryptionContextMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.redshift#EncryptionContextMap", name: "EncryptionContextMap")
    Endpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#Endpoint", name: "Endpoint")
    EndpointAccess = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#EndpointAccess", name: "EndpointAccess")
    EndpointAccesses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#EndpointAccesses", name: "EndpointAccesses")
    EndpointAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#EndpointAlreadyExistsFault", name: "EndpointAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "EndpointAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EndpointAuthorization = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#EndpointAuthorization", name: "EndpointAuthorization")
    EndpointAuthorizationAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#EndpointAuthorizationAlreadyExistsFault", name: "EndpointAuthorizationAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "EndpointAuthorizationAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EndpointAuthorizationNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#EndpointAuthorizationNotFoundFault", name: "EndpointAuthorizationNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "EndpointAuthorizationNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    EndpointAuthorizations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#EndpointAuthorizations", name: "EndpointAuthorizations")
    EndpointAuthorizationsPerClusterLimitExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#EndpointAuthorizationsPerClusterLimitExceededFault", name: "EndpointAuthorizationsPerClusterLimitExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "EndpointAuthorizationsPerClusterLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EndpointNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#EndpointNotFoundFault", name: "EndpointNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "EndpointNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    EndpointsPerAuthorizationLimitExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#EndpointsPerAuthorizationLimitExceededFault", name: "EndpointsPerAuthorizationLimitExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "EndpointsPerAuthorizationLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EndpointsPerClusterLimitExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#EndpointsPerClusterLimitExceededFault", name: "EndpointsPerClusterLimitExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "EndpointsPerClusterLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Event = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#Event", name: "Event")
    EventCategoriesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#EventCategoriesList", name: "EventCategoriesList")
    EventCategoriesMap = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#EventCategoriesMap", name: "EventCategoriesMap")
    EventCategoriesMapList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#EventCategoriesMapList", name: "EventCategoriesMapList")
    EventCategoriesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#EventCategoriesMessage", name: "EventCategoriesMessage")
    EventInfoMap = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#EventInfoMap", name: "EventInfoMap")
    EventInfoMapList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#EventInfoMapList", name: "EventInfoMapList")
    EventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#EventList", name: "EventList")
    EventSubscription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#EventSubscription", name: "EventSubscription")
    EventSubscriptionQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#EventSubscriptionQuotaExceededFault", name: "EventSubscriptionQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "EventSubscriptionQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EventSubscriptionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#EventSubscriptionsList", name: "EventSubscriptionsList")
    EventSubscriptionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#EventSubscriptionsMessage", name: "EventSubscriptionsMessage")
    EventsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#EventsMessage", name: "EventsMessage")
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshift#ExceptionMessage", name: "ExceptionMessage")
    FailoverPrimaryComputeInputMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#FailoverPrimaryComputeInputMessage", name: "FailoverPrimaryComputeInputMessage")
    FailoverPrimaryComputeResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#FailoverPrimaryComputeResult", name: "FailoverPrimaryComputeResult")
    GetClusterCredentialsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#GetClusterCredentialsMessage", name: "GetClusterCredentialsMessage")
    GetClusterCredentialsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#GetClusterCredentialsOutput", name: "GetClusterCredentialsOutput")
    GetClusterCredentialsWithIAMMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#GetClusterCredentialsWithIAMMessage", name: "GetClusterCredentialsWithIAMMessage")
    GetClusterCredentialsWithIAMOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#GetClusterCredentialsWithIAMOutput", name: "GetClusterCredentialsWithIAMOutput")
    GetReservedNodeExchangeConfigurationOptionsInputMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#GetReservedNodeExchangeConfigurationOptionsInputMessage", name: "GetReservedNodeExchangeConfigurationOptionsInputMessage")
    GetReservedNodeExchangeConfigurationOptionsOutputMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#GetReservedNodeExchangeConfigurationOptionsOutputMessage", name: "GetReservedNodeExchangeConfigurationOptionsOutputMessage")
    GetReservedNodeExchangeOfferingsInputMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#GetReservedNodeExchangeOfferingsInputMessage", name: "GetReservedNodeExchangeOfferingsInputMessage")
    GetReservedNodeExchangeOfferingsOutputMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#GetReservedNodeExchangeOfferingsOutputMessage", name: "GetReservedNodeExchangeOfferingsOutputMessage")
    GetResourcePolicyMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#GetResourcePolicyMessage", name: "GetResourcePolicyMessage")
    GetResourcePolicyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#GetResourcePolicyResult", name: "GetResourcePolicyResult")
    HsmClientCertificate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#HsmClientCertificate", name: "HsmClientCertificate")
    HsmClientCertificateAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#HsmClientCertificateAlreadyExistsFault", name: "HsmClientCertificateAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "HsmClientCertificateAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    HsmClientCertificateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#HsmClientCertificateList", name: "HsmClientCertificateList")
    HsmClientCertificateMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#HsmClientCertificateMessage", name: "HsmClientCertificateMessage")
    HsmClientCertificateNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#HsmClientCertificateNotFoundFault", name: "HsmClientCertificateNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "HsmClientCertificateNotFoundFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    HsmClientCertificateQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#HsmClientCertificateQuotaExceededFault", name: "HsmClientCertificateQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "HsmClientCertificateQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    HsmConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#HsmConfiguration", name: "HsmConfiguration")
    HsmConfigurationAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#HsmConfigurationAlreadyExistsFault", name: "HsmConfigurationAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "HsmConfigurationAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    HsmConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#HsmConfigurationList", name: "HsmConfigurationList")
    HsmConfigurationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#HsmConfigurationMessage", name: "HsmConfigurationMessage")
    HsmConfigurationNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#HsmConfigurationNotFoundFault", name: "HsmConfigurationNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "HsmConfigurationNotFoundFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    HsmConfigurationQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#HsmConfigurationQuotaExceededFault", name: "HsmConfigurationQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "HsmConfigurationQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    HsmStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#HsmStatus", name: "HsmStatus")
    IPRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#IPRange", name: "IPRange")
    IPRangeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#IPRangeList", name: "IPRangeList")
    IamRoleArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#IamRoleArnList", name: "IamRoleArnList")
    IdcDisplayNameString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshift#IdcDisplayNameString", name: "IdcDisplayNameString", traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[\\w+=,.@-]+$"})
    IdentityNamespaceString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshift#IdentityNamespaceString", name: "IdentityNamespaceString", traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[a-zA-Z0-9_+.\#@$-]+$"})
    ImpactRankingType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.redshift#ImpactRankingType", name: "ImpactRankingType")
    ImportTablesCompleted = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#ImportTablesCompleted", name: "ImportTablesCompleted")
    ImportTablesInProgress = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#ImportTablesInProgress", name: "ImportTablesInProgress")
    ImportTablesNotStarted = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#ImportTablesNotStarted", name: "ImportTablesNotStarted")
    InProgressTableRestoreQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#InProgressTableRestoreQuotaExceededFault", name: "InProgressTableRestoreQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InProgressTableRestoreQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InboundIntegration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#InboundIntegration", name: "InboundIntegration")
    InboundIntegrationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshift#InboundIntegrationArn", name: "InboundIntegrationArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^arn:aws[a-z\\-]*:.+:[a-z0-9\\-]*:[0-9]*:integration:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    InboundIntegrationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#InboundIntegrationList", name: "InboundIntegrationList")
    InboundIntegrationsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#InboundIntegrationsMessage", name: "InboundIntegrationsMessage")
    IncompatibleOrderableOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#IncompatibleOrderableOptions", name: "IncompatibleOrderableOptions", traits: {"aws.protocols#awsQueryError" => {"code" => "IncompatibleOrderableOptions", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InsufficientClusterCapacityFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#InsufficientClusterCapacityFault", name: "InsufficientClusterCapacityFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InsufficientClusterCapacity", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InsufficientS3BucketPolicyFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#InsufficientS3BucketPolicyFault", name: "InsufficientS3BucketPolicyFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InsufficientS3BucketPolicyFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.redshift#Integer", name: "Integer")
    IntegerOptional = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.redshift#IntegerOptional", name: "IntegerOptional")
    Integration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#Integration", name: "Integration")
    IntegrationAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#IntegrationAlreadyExistsFault", name: "IntegrationAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "IntegrationAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IntegrationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshift#IntegrationArn", name: "IntegrationArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^arn:aws[a-z\\-]*:redshift:[a-z0-9\\-]*:[0-9]*:integration:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    IntegrationConflictOperationFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#IntegrationConflictOperationFault", name: "IntegrationConflictOperationFault", traits: {"aws.protocols#awsQueryError" => {"code" => "IntegrationConflictOperationFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IntegrationConflictStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#IntegrationConflictStateFault", name: "IntegrationConflictStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "IntegrationConflictStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IntegrationDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshift#IntegrationDescription", name: "IntegrationDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^.*$"})
    IntegrationError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#IntegrationError", name: "IntegrationError")
    IntegrationErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#IntegrationErrorList", name: "IntegrationErrorList")
    IntegrationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#IntegrationList", name: "IntegrationList")
    IntegrationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshift#IntegrationName", name: "IntegrationName", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9]*(-[a-zA-Z0-9]+)*$"})
    IntegrationNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#IntegrationNotFoundFault", name: "IntegrationNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "IntegrationNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    IntegrationQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#IntegrationQuotaExceededFault", name: "IntegrationQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "IntegrationQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IntegrationSourceNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#IntegrationSourceNotFoundFault", name: "IntegrationSourceNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "IntegrationSourceNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    IntegrationTargetNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#IntegrationTargetNotFoundFault", name: "IntegrationTargetNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "IntegrationTargetNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    IntegrationsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#IntegrationsMessage", name: "IntegrationsMessage")
    InvalidAuthenticationProfileRequestFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#InvalidAuthenticationProfileRequestFault", name: "InvalidAuthenticationProfileRequestFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidAuthenticationProfileRequestFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidAuthorizationStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#InvalidAuthorizationStateFault", name: "InvalidAuthorizationStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidAuthorizationState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidClusterParameterGroupStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#InvalidClusterParameterGroupStateFault", name: "InvalidClusterParameterGroupStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidClusterParameterGroupState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidClusterSecurityGroupStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#InvalidClusterSecurityGroupStateFault", name: "InvalidClusterSecurityGroupStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidClusterSecurityGroupState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidClusterSnapshotScheduleStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#InvalidClusterSnapshotScheduleStateFault", name: "InvalidClusterSnapshotScheduleStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidClusterSnapshotScheduleState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidClusterSnapshotStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#InvalidClusterSnapshotStateFault", name: "InvalidClusterSnapshotStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidClusterSnapshotState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidClusterStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#InvalidClusterStateFault", name: "InvalidClusterStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidClusterState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidClusterSubnetGroupStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#InvalidClusterSubnetGroupStateFault", name: "InvalidClusterSubnetGroupStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidClusterSubnetGroupStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidClusterSubnetStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#InvalidClusterSubnetStateFault", name: "InvalidClusterSubnetStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidClusterSubnetStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidClusterTrackFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#InvalidClusterTrackFault", name: "InvalidClusterTrackFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidClusterTrack", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDataShareFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#InvalidDataShareFault", name: "InvalidDataShareFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDataShareFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidElasticIpFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#InvalidElasticIpFault", name: "InvalidElasticIpFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidElasticIpFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidEndpointStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#InvalidEndpointStateFault", name: "InvalidEndpointStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidEndpointState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidHsmClientCertificateStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#InvalidHsmClientCertificateStateFault", name: "InvalidHsmClientCertificateStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidHsmClientCertificateStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidHsmConfigurationStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#InvalidHsmConfigurationStateFault", name: "InvalidHsmConfigurationStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidHsmConfigurationStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidNamespaceFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#InvalidNamespaceFault", name: "InvalidNamespaceFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidNamespaceFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidPolicyFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#InvalidPolicyFault", name: "InvalidPolicyFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidPolicyFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidReservedNodeStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#InvalidReservedNodeStateFault", name: "InvalidReservedNodeStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidReservedNodeState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRestoreFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#InvalidRestoreFault", name: "InvalidRestoreFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidRestore", "httpResponseCode" => 406}, "smithy.api#error" => "client", "smithy.api#httpError" => 406})
    InvalidRetentionPeriodFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#InvalidRetentionPeriodFault", name: "InvalidRetentionPeriodFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidRetentionPeriodFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidS3BucketNameFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#InvalidS3BucketNameFault", name: "InvalidS3BucketNameFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidS3BucketNameFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidS3KeyPrefixFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#InvalidS3KeyPrefixFault", name: "InvalidS3KeyPrefixFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidS3KeyPrefixFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidScheduleFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#InvalidScheduleFault", name: "InvalidScheduleFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidSchedule", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidScheduledActionFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#InvalidScheduledActionFault", name: "InvalidScheduledActionFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidScheduledAction", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSnapshotCopyGrantStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#InvalidSnapshotCopyGrantStateFault", name: "InvalidSnapshotCopyGrantStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidSnapshotCopyGrantStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSubnet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#InvalidSubnet", name: "InvalidSubnet", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidSubnet", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSubscriptionStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#InvalidSubscriptionStateFault", name: "InvalidSubscriptionStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidSubscriptionStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidTableRestoreArgumentFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#InvalidTableRestoreArgumentFault", name: "InvalidTableRestoreArgumentFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidTableRestoreArgument", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidTagFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#InvalidTagFault", name: "InvalidTagFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidTagFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidUsageLimitFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#InvalidUsageLimitFault", name: "InvalidUsageLimitFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidUsageLimit", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidVPCNetworkStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#InvalidVPCNetworkStateFault", name: "InvalidVPCNetworkStateFault", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidVPCNetworkStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Ipv6CidrBlockNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#Ipv6CidrBlockNotFoundFault", name: "Ipv6CidrBlockNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "Ipv6CidrBlockNotFoundFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LakeFormationQuery = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#LakeFormationQuery", name: "LakeFormationQuery")
    LakeFormationScopeUnion = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.redshift#LakeFormationScopeUnion", name: "LakeFormationScopeUnion")
    LakeFormationServiceIntegrations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#LakeFormationServiceIntegrations", name: "LakeFormationServiceIntegrations")
    LimitExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#LimitExceededFault", name: "LimitExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "LimitExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListRecommendationsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ListRecommendationsMessage", name: "ListRecommendationsMessage")
    ListRecommendationsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ListRecommendationsResult", name: "ListRecommendationsResult")
    LogDestinationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.redshift#LogDestinationType", name: "LogDestinationType")
    LogTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#LogTypeList", name: "LogTypeList")
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.redshift#Long", name: "Long")
    LongOptional = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.redshift#LongOptional", name: "LongOptional")
    MaintenanceTrack = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#MaintenanceTrack", name: "MaintenanceTrack")
    Mode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.redshift#Mode", name: "Mode")
    ModifyAquaInputMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ModifyAquaInputMessage", name: "ModifyAquaInputMessage")
    ModifyAquaOutputMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ModifyAquaOutputMessage", name: "ModifyAquaOutputMessage")
    ModifyAuthenticationProfileMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ModifyAuthenticationProfileMessage", name: "ModifyAuthenticationProfileMessage")
    ModifyAuthenticationProfileResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ModifyAuthenticationProfileResult", name: "ModifyAuthenticationProfileResult")
    ModifyClusterDbRevisionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ModifyClusterDbRevisionMessage", name: "ModifyClusterDbRevisionMessage")
    ModifyClusterDbRevisionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ModifyClusterDbRevisionResult", name: "ModifyClusterDbRevisionResult")
    ModifyClusterIamRolesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ModifyClusterIamRolesMessage", name: "ModifyClusterIamRolesMessage")
    ModifyClusterIamRolesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ModifyClusterIamRolesResult", name: "ModifyClusterIamRolesResult")
    ModifyClusterMaintenanceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ModifyClusterMaintenanceMessage", name: "ModifyClusterMaintenanceMessage")
    ModifyClusterMaintenanceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ModifyClusterMaintenanceResult", name: "ModifyClusterMaintenanceResult")
    ModifyClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ModifyClusterMessage", name: "ModifyClusterMessage")
    ModifyClusterParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ModifyClusterParameterGroupMessage", name: "ModifyClusterParameterGroupMessage")
    ModifyClusterParameterGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ModifyClusterParameterGroupOutput", name: "ModifyClusterParameterGroupOutput")
    ModifyClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ModifyClusterResult", name: "ModifyClusterResult")
    ModifyClusterSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ModifyClusterSnapshotMessage", name: "ModifyClusterSnapshotMessage")
    ModifyClusterSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ModifyClusterSnapshotResult", name: "ModifyClusterSnapshotResult")
    ModifyClusterSnapshotScheduleMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ModifyClusterSnapshotScheduleMessage", name: "ModifyClusterSnapshotScheduleMessage")
    ModifyClusterSubnetGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ModifyClusterSubnetGroupMessage", name: "ModifyClusterSubnetGroupMessage")
    ModifyClusterSubnetGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ModifyClusterSubnetGroupResult", name: "ModifyClusterSubnetGroupResult")
    ModifyCustomDomainAssociationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ModifyCustomDomainAssociationMessage", name: "ModifyCustomDomainAssociationMessage")
    ModifyCustomDomainAssociationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ModifyCustomDomainAssociationResult", name: "ModifyCustomDomainAssociationResult")
    ModifyEndpointAccessMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ModifyEndpointAccessMessage", name: "ModifyEndpointAccessMessage")
    ModifyEndpointAccessOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ModifyEndpointAccessOutput", name: "ModifyEndpointAccessOutput")
    ModifyEventSubscriptionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ModifyEventSubscriptionMessage", name: "ModifyEventSubscriptionMessage")
    ModifyEventSubscriptionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ModifyEventSubscriptionResult", name: "ModifyEventSubscriptionResult")
    ModifyIntegrationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ModifyIntegrationMessage", name: "ModifyIntegrationMessage")
    ModifyIntegrationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ModifyIntegrationOutput", name: "ModifyIntegrationOutput")
    ModifyRedshiftIdcApplicationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ModifyRedshiftIdcApplicationMessage", name: "ModifyRedshiftIdcApplicationMessage")
    ModifyRedshiftIdcApplicationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ModifyRedshiftIdcApplicationResult", name: "ModifyRedshiftIdcApplicationResult")
    ModifyScheduledActionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ModifyScheduledActionMessage", name: "ModifyScheduledActionMessage")
    ModifyScheduledActionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ModifyScheduledActionOutput", name: "ModifyScheduledActionOutput")
    ModifySnapshotCopyRetentionPeriodMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ModifySnapshotCopyRetentionPeriodMessage", name: "ModifySnapshotCopyRetentionPeriodMessage")
    ModifySnapshotCopyRetentionPeriodResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ModifySnapshotCopyRetentionPeriodResult", name: "ModifySnapshotCopyRetentionPeriodResult")
    ModifySnapshotScheduleMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ModifySnapshotScheduleMessage", name: "ModifySnapshotScheduleMessage")
    ModifySnapshotScheduleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ModifySnapshotScheduleOutput", name: "ModifySnapshotScheduleOutput")
    ModifyUsageLimitMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ModifyUsageLimitMessage", name: "ModifyUsageLimitMessage")
    ModifyUsageLimitOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ModifyUsageLimitOutput", name: "ModifyUsageLimitOutput")
    NamespaceIdentifierUnion = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.redshift#NamespaceIdentifierUnion", name: "NamespaceIdentifierUnion")
    NamespaceRegistrationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.redshift#NamespaceRegistrationStatus", name: "NamespaceRegistrationStatus")
    NetworkInterface = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#NetworkInterface", name: "NetworkInterface")
    NetworkInterfaceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#NetworkInterfaceList", name: "NetworkInterfaceList")
    NodeConfigurationOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#NodeConfigurationOption", name: "NodeConfigurationOption")
    NodeConfigurationOptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#NodeConfigurationOptionList", name: "NodeConfigurationOptionList")
    NodeConfigurationOptionsFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#NodeConfigurationOptionsFilter", name: "NodeConfigurationOptionsFilter")
    NodeConfigurationOptionsFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#NodeConfigurationOptionsFilterList", name: "NodeConfigurationOptionsFilterList")
    NodeConfigurationOptionsFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.redshift#NodeConfigurationOptionsFilterName", name: "NodeConfigurationOptionsFilterName")
    NodeConfigurationOptionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#NodeConfigurationOptionsMessage", name: "NodeConfigurationOptionsMessage")
    NumberOfNodesPerClusterLimitExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#NumberOfNodesPerClusterLimitExceededFault", name: "NumberOfNodesPerClusterLimitExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "NumberOfNodesPerClusterLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NumberOfNodesQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#NumberOfNodesQuotaExceededFault", name: "NumberOfNodesQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "NumberOfNodesQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    OperatorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.redshift#OperatorType", name: "OperatorType")
    OrderableClusterOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#OrderableClusterOption", name: "OrderableClusterOption")
    OrderableClusterOptionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#OrderableClusterOptionsList", name: "OrderableClusterOptionsList")
    OrderableClusterOptionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#OrderableClusterOptionsMessage", name: "OrderableClusterOptionsMessage")
    Parameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#Parameter", name: "Parameter")
    ParameterApplyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.redshift#ParameterApplyType", name: "ParameterApplyType")
    ParameterGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#ParameterGroupList", name: "ParameterGroupList")
    ParametersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#ParametersList", name: "ParametersList")
    PartnerIntegrationAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshift#PartnerIntegrationAccountId", name: "PartnerIntegrationAccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]+$"})
    PartnerIntegrationClusterIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshift#PartnerIntegrationClusterIdentifier", name: "PartnerIntegrationClusterIdentifier", traits: {"smithy.api#length" => {"min" => 0, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-]+$"})
    PartnerIntegrationDatabaseName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshift#PartnerIntegrationDatabaseName", name: "PartnerIntegrationDatabaseName", traits: {"smithy.api#length" => {"min" => 0, "max" => 127}, "smithy.api#pattern" => "^[\\p{L}_][\\p{L}\\p{N}@$#_]+$"})
    PartnerIntegrationInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#PartnerIntegrationInfo", name: "PartnerIntegrationInfo")
    PartnerIntegrationInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#PartnerIntegrationInfoList", name: "PartnerIntegrationInfoList")
    PartnerIntegrationPartnerName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshift#PartnerIntegrationPartnerName", name: "PartnerIntegrationPartnerName", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-_]+$"})
    PartnerIntegrationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.redshift#PartnerIntegrationStatus", name: "PartnerIntegrationStatus")
    PartnerIntegrationStatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshift#PartnerIntegrationStatusMessage", name: "PartnerIntegrationStatusMessage", traits: {"smithy.api#length" => {"min" => 0, "max" => 262144}, "smithy.api#pattern" => "^[\\x20-\\x7E]+$"})
    PartnerNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#PartnerNotFoundFault", name: "PartnerNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "PartnerNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    PauseClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#PauseClusterInput", name: "PauseClusterInput")
    PauseClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#PauseClusterMessage", name: "PauseClusterMessage")
    PauseClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#PauseClusterResult", name: "PauseClusterResult")
    PendingActionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#PendingActionsList", name: "PendingActionsList")
    PendingModifiedValues = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#PendingModifiedValues", name: "PendingModifiedValues")
    ProvisionedIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ProvisionedIdentifier", name: "ProvisionedIdentifier")
    PurchaseReservedNodeOfferingMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#PurchaseReservedNodeOfferingMessage", name: "PurchaseReservedNodeOfferingMessage")
    PurchaseReservedNodeOfferingResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#PurchaseReservedNodeOfferingResult", name: "PurchaseReservedNodeOfferingResult")
    PutResourcePolicyMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#PutResourcePolicyMessage", name: "PutResourcePolicyMessage")
    PutResourcePolicyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#PutResourcePolicyResult", name: "PutResourcePolicyResult")
    ReadWriteAccess = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ReadWriteAccess", name: "ReadWriteAccess")
    RebootClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#RebootClusterMessage", name: "RebootClusterMessage")
    RebootClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#RebootClusterResult", name: "RebootClusterResult")
    Recommendation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#Recommendation", name: "Recommendation")
    RecommendationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#RecommendationList", name: "RecommendationList")
    RecommendedAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#RecommendedAction", name: "RecommendedAction")
    RecommendedActionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#RecommendedActionList", name: "RecommendedActionList")
    RecommendedActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.redshift#RecommendedActionType", name: "RecommendedActionType")
    RecurringCharge = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#RecurringCharge", name: "RecurringCharge")
    RecurringChargeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#RecurringChargeList", name: "RecurringChargeList")
    RedshiftIdcApplication = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#RedshiftIdcApplication", name: "RedshiftIdcApplication")
    RedshiftIdcApplicationAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#RedshiftIdcApplicationAlreadyExistsFault", name: "RedshiftIdcApplicationAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "RedshiftIdcApplicationAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    RedshiftIdcApplicationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#RedshiftIdcApplicationList", name: "RedshiftIdcApplicationList")
    RedshiftIdcApplicationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshift#RedshiftIdcApplicationName", name: "RedshiftIdcApplicationName", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-z][a-z0-9]*(-[a-z0-9]+)*$"})
    RedshiftIdcApplicationNotExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#RedshiftIdcApplicationNotExistsFault", name: "RedshiftIdcApplicationNotExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "RedshiftIdcApplicationNotExists", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RedshiftIdcApplicationQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#RedshiftIdcApplicationQuotaExceededFault", name: "RedshiftIdcApplicationQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "RedshiftIdcApplicationQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ReferenceLink = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ReferenceLink", name: "ReferenceLink")
    ReferenceLinkList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#ReferenceLinkList", name: "ReferenceLinkList")
    RegisterNamespaceInputMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#RegisterNamespaceInputMessage", name: "RegisterNamespaceInputMessage")
    RegisterNamespaceOutputMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#RegisterNamespaceOutputMessage", name: "RegisterNamespaceOutputMessage")
    RejectDataShareMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#RejectDataShareMessage", name: "RejectDataShareMessage")
    RejectDataShareOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#RejectDataShareOutput", name: "RejectDataShareOutput")
    ReservedNode = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ReservedNode", name: "ReservedNode")
    ReservedNodeAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ReservedNodeAlreadyExistsFault", name: "ReservedNodeAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ReservedNodeAlreadyExists", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ReservedNodeAlreadyMigratedFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ReservedNodeAlreadyMigratedFault", name: "ReservedNodeAlreadyMigratedFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ReservedNodeAlreadyMigrated", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ReservedNodeConfigurationOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ReservedNodeConfigurationOption", name: "ReservedNodeConfigurationOption")
    ReservedNodeConfigurationOptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#ReservedNodeConfigurationOptionList", name: "ReservedNodeConfigurationOptionList")
    ReservedNodeExchangeActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.redshift#ReservedNodeExchangeActionType", name: "ReservedNodeExchangeActionType")
    ReservedNodeExchangeNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ReservedNodeExchangeNotFoundFault", name: "ReservedNodeExchangeNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ReservedNodeExchangeNotFond", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ReservedNodeExchangeStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ReservedNodeExchangeStatus", name: "ReservedNodeExchangeStatus")
    ReservedNodeExchangeStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#ReservedNodeExchangeStatusList", name: "ReservedNodeExchangeStatusList")
    ReservedNodeExchangeStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.redshift#ReservedNodeExchangeStatusType", name: "ReservedNodeExchangeStatusType")
    ReservedNodeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#ReservedNodeList", name: "ReservedNodeList")
    ReservedNodeNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ReservedNodeNotFoundFault", name: "ReservedNodeNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ReservedNodeNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ReservedNodeOffering = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ReservedNodeOffering", name: "ReservedNodeOffering")
    ReservedNodeOfferingList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#ReservedNodeOfferingList", name: "ReservedNodeOfferingList")
    ReservedNodeOfferingNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ReservedNodeOfferingNotFoundFault", name: "ReservedNodeOfferingNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ReservedNodeOfferingNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ReservedNodeOfferingType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.redshift#ReservedNodeOfferingType", name: "ReservedNodeOfferingType")
    ReservedNodeOfferingsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ReservedNodeOfferingsMessage", name: "ReservedNodeOfferingsMessage")
    ReservedNodeQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ReservedNodeQuotaExceededFault", name: "ReservedNodeQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ReservedNodeQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ReservedNodesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ReservedNodesMessage", name: "ReservedNodesMessage")
    ResetClusterParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ResetClusterParameterGroupMessage", name: "ResetClusterParameterGroupMessage")
    ResetClusterParameterGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ResetClusterParameterGroupOutput", name: "ResetClusterParameterGroupOutput")
    ResizeClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ResizeClusterInput", name: "ResizeClusterInput")
    ResizeClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ResizeClusterMessage", name: "ResizeClusterMessage")
    ResizeClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ResizeClusterResult", name: "ResizeClusterResult")
    ResizeInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ResizeInfo", name: "ResizeInfo")
    ResizeNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ResizeNotFoundFault", name: "ResizeNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ResizeNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ResourceNotFoundFault", name: "ResourceNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourcePolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ResourcePolicy", name: "ResourcePolicy")
    RestorableNodeTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#RestorableNodeTypeList", name: "RestorableNodeTypeList")
    RestoreFromClusterSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#RestoreFromClusterSnapshotMessage", name: "RestoreFromClusterSnapshotMessage")
    RestoreFromClusterSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#RestoreFromClusterSnapshotResult", name: "RestoreFromClusterSnapshotResult")
    RestoreStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#RestoreStatus", name: "RestoreStatus")
    RestoreTableFromClusterSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#RestoreTableFromClusterSnapshotMessage", name: "RestoreTableFromClusterSnapshotMessage")
    RestoreTableFromClusterSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#RestoreTableFromClusterSnapshotResult", name: "RestoreTableFromClusterSnapshotResult")
    ResumeClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ResumeClusterInput", name: "ResumeClusterInput")
    ResumeClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ResumeClusterMessage", name: "ResumeClusterMessage")
    ResumeClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ResumeClusterResult", name: "ResumeClusterResult")
    RevisionTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#RevisionTarget", name: "RevisionTarget")
    RevisionTargetsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#RevisionTargetsList", name: "RevisionTargetsList")
    RevokeClusterSecurityGroupIngressMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#RevokeClusterSecurityGroupIngressMessage", name: "RevokeClusterSecurityGroupIngressMessage")
    RevokeClusterSecurityGroupIngressResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#RevokeClusterSecurityGroupIngressResult", name: "RevokeClusterSecurityGroupIngressResult")
    RevokeEndpointAccessMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#RevokeEndpointAccessMessage", name: "RevokeEndpointAccessMessage")
    RevokeEndpointAccessOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#RevokeEndpointAccessOutput", name: "RevokeEndpointAccessOutput")
    RevokeSnapshotAccessMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#RevokeSnapshotAccessMessage", name: "RevokeSnapshotAccessMessage")
    RevokeSnapshotAccessResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#RevokeSnapshotAccessResult", name: "RevokeSnapshotAccessResult")
    RotateEncryptionKeyMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#RotateEncryptionKeyMessage", name: "RotateEncryptionKeyMessage")
    RotateEncryptionKeyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#RotateEncryptionKeyResult", name: "RotateEncryptionKeyResult")
    S3AccessGrantsScopeUnion = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.redshift#S3AccessGrantsScopeUnion", name: "S3AccessGrantsScopeUnion")
    S3AccessGrantsServiceIntegrations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#S3AccessGrantsServiceIntegrations", name: "S3AccessGrantsServiceIntegrations")
    S3KeyPrefixValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshift#S3KeyPrefixValue", name: "S3KeyPrefixValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*$"})
    SNSInvalidTopicFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#SNSInvalidTopicFault", name: "SNSInvalidTopicFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SNSInvalidTopic", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SNSNoAuthorizationFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#SNSNoAuthorizationFault", name: "SNSNoAuthorizationFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SNSNoAuthorization", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SNSTopicArnNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#SNSTopicArnNotFoundFault", name: "SNSTopicArnNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SNSTopicArnNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ScheduleDefinitionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#ScheduleDefinitionList", name: "ScheduleDefinitionList")
    ScheduleDefinitionTypeUnsupportedFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ScheduleDefinitionTypeUnsupportedFault", name: "ScheduleDefinitionTypeUnsupportedFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ScheduleDefinitionTypeUnsupported", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ScheduleState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.redshift#ScheduleState", name: "ScheduleState")
    ScheduledAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ScheduledAction", name: "ScheduledAction")
    ScheduledActionAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ScheduledActionAlreadyExistsFault", name: "ScheduledActionAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ScheduledActionAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ScheduledActionFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ScheduledActionFilter", name: "ScheduledActionFilter")
    ScheduledActionFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#ScheduledActionFilterList", name: "ScheduledActionFilterList")
    ScheduledActionFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.redshift#ScheduledActionFilterName", name: "ScheduledActionFilterName")
    ScheduledActionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#ScheduledActionList", name: "ScheduledActionList")
    ScheduledActionNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ScheduledActionNotFoundFault", name: "ScheduledActionNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ScheduledActionNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ScheduledActionQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ScheduledActionQuotaExceededFault", name: "ScheduledActionQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ScheduledActionQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ScheduledActionState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.redshift#ScheduledActionState", name: "ScheduledActionState")
    ScheduledActionTimeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#ScheduledActionTimeList", name: "ScheduledActionTimeList")
    ScheduledActionType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ScheduledActionType", name: "ScheduledActionType")
    ScheduledActionTypeUnsupportedFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ScheduledActionTypeUnsupportedFault", name: "ScheduledActionTypeUnsupportedFault", traits: {"aws.protocols#awsQueryError" => {"code" => "ScheduledActionTypeUnsupported", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ScheduledActionTypeValues = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.redshift#ScheduledActionTypeValues", name: "ScheduledActionTypeValues")
    ScheduledActionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ScheduledActionsMessage", name: "ScheduledActionsMessage")
    ScheduledSnapshotTimeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#ScheduledSnapshotTimeList", name: "ScheduledSnapshotTimeList")
    SecondaryClusterInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#SecondaryClusterInfo", name: "SecondaryClusterInfo")
    SensitiveString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshift#SensitiveString", name: "SensitiveString", traits: {"smithy.api#sensitive" => {}})
    ServerlessIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#ServerlessIdentifier", name: "ServerlessIdentifier")
    ServiceAuthorization = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.redshift#ServiceAuthorization", name: "ServiceAuthorization")
    ServiceIntegrationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#ServiceIntegrationList", name: "ServiceIntegrationList")
    ServiceIntegrationsUnion = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.redshift#ServiceIntegrationsUnion", name: "ServiceIntegrationsUnion")
    Snapshot = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#Snapshot", name: "Snapshot")
    SnapshotAttributeToSortBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.redshift#SnapshotAttributeToSortBy", name: "SnapshotAttributeToSortBy")
    SnapshotCopyAlreadyDisabledFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#SnapshotCopyAlreadyDisabledFault", name: "SnapshotCopyAlreadyDisabledFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotCopyAlreadyDisabledFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SnapshotCopyAlreadyEnabledFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#SnapshotCopyAlreadyEnabledFault", name: "SnapshotCopyAlreadyEnabledFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotCopyAlreadyEnabledFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SnapshotCopyDisabledFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#SnapshotCopyDisabledFault", name: "SnapshotCopyDisabledFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotCopyDisabledFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SnapshotCopyGrant = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#SnapshotCopyGrant", name: "SnapshotCopyGrant")
    SnapshotCopyGrantAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#SnapshotCopyGrantAlreadyExistsFault", name: "SnapshotCopyGrantAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotCopyGrantAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SnapshotCopyGrantList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#SnapshotCopyGrantList", name: "SnapshotCopyGrantList")
    SnapshotCopyGrantMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#SnapshotCopyGrantMessage", name: "SnapshotCopyGrantMessage")
    SnapshotCopyGrantNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#SnapshotCopyGrantNotFoundFault", name: "SnapshotCopyGrantNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotCopyGrantNotFoundFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SnapshotCopyGrantQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#SnapshotCopyGrantQuotaExceededFault", name: "SnapshotCopyGrantQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotCopyGrantQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SnapshotErrorMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#SnapshotErrorMessage", name: "SnapshotErrorMessage")
    SnapshotIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#SnapshotIdentifierList", name: "SnapshotIdentifierList")
    SnapshotList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#SnapshotList", name: "SnapshotList")
    SnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#SnapshotMessage", name: "SnapshotMessage")
    SnapshotSchedule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#SnapshotSchedule", name: "SnapshotSchedule")
    SnapshotScheduleAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#SnapshotScheduleAlreadyExistsFault", name: "SnapshotScheduleAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotScheduleAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SnapshotScheduleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#SnapshotScheduleList", name: "SnapshotScheduleList")
    SnapshotScheduleNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#SnapshotScheduleNotFoundFault", name: "SnapshotScheduleNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotScheduleNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SnapshotScheduleQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#SnapshotScheduleQuotaExceededFault", name: "SnapshotScheduleQuotaExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotScheduleQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SnapshotScheduleUpdateInProgressFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#SnapshotScheduleUpdateInProgressFault", name: "SnapshotScheduleUpdateInProgressFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotScheduleUpdateInProgress", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SnapshotSortingEntity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#SnapshotSortingEntity", name: "SnapshotSortingEntity")
    SnapshotSortingEntityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#SnapshotSortingEntityList", name: "SnapshotSortingEntityList")
    SortByOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.redshift#SortByOrder", name: "SortByOrder")
    SourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshift#SourceArn", name: "SourceArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^arn:aws[a-z\\-]*:(s3|dynamodb):.*:.*:[a-zA-Z0-9._\\-\\/]+$"})
    SourceIdsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#SourceIdsList", name: "SourceIdsList")
    SourceNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#SourceNotFoundFault", name: "SourceNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SourceNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.redshift#SourceType", name: "SourceType")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshift#String", name: "String", traits: {"smithy.api#length" => {"min" => 0, "max" => 2147483647}})
    Subnet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#Subnet", name: "Subnet")
    SubnetAlreadyInUse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#SubnetAlreadyInUse", name: "SubnetAlreadyInUse", traits: {"aws.protocols#awsQueryError" => {"code" => "SubnetAlreadyInUse", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SubnetIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#SubnetIdentifierList", name: "SubnetIdentifierList")
    SubnetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#SubnetList", name: "SubnetList")
    SubscriptionAlreadyExistFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#SubscriptionAlreadyExistFault", name: "SubscriptionAlreadyExistFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SubscriptionAlreadyExist", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SubscriptionCategoryNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#SubscriptionCategoryNotFoundFault", name: "SubscriptionCategoryNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SubscriptionCategoryNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SubscriptionEventIdNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#SubscriptionEventIdNotFoundFault", name: "SubscriptionEventIdNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SubscriptionEventIdNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SubscriptionNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#SubscriptionNotFoundFault", name: "SubscriptionNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SubscriptionNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SubscriptionSeverityNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#SubscriptionSeverityNotFoundFault", name: "SubscriptionSeverityNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "SubscriptionSeverityNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SupportedOperation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#SupportedOperation", name: "SupportedOperation")
    SupportedOperationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#SupportedOperationList", name: "SupportedOperationList")
    SupportedPlatform = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#SupportedPlatform", name: "SupportedPlatform")
    SupportedPlatformsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#SupportedPlatformsList", name: "SupportedPlatformsList")
    TStamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.redshift#TStamp", name: "TStamp")
    TableLimitExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#TableLimitExceededFault", name: "TableLimitExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "TableLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TableRestoreNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#TableRestoreNotFoundFault", name: "TableRestoreNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "TableRestoreNotFoundFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TableRestoreStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#TableRestoreStatus", name: "TableRestoreStatus")
    TableRestoreStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#TableRestoreStatusList", name: "TableRestoreStatusList")
    TableRestoreStatusMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#TableRestoreStatusMessage", name: "TableRestoreStatusMessage")
    TableRestoreStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.redshift#TableRestoreStatusType", name: "TableRestoreStatusType")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#Tag", name: "Tag")
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#TagKeyList", name: "TagKeyList")
    TagLimitExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#TagLimitExceededFault", name: "TagLimitExceededFault", traits: {"aws.protocols#awsQueryError" => {"code" => "TagLimitExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#TagList", name: "TagList")
    TagValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#TagValueList", name: "TagValueList")
    TaggedResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#TaggedResource", name: "TaggedResource")
    TaggedResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#TaggedResourceList", name: "TaggedResourceList")
    TaggedResourceListMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#TaggedResourceListMessage", name: "TaggedResourceListMessage")
    TargetArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.redshift#TargetArn", name: "TargetArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[a-z\\-]*:redshift(-serverless)?:[a-z0-9\\-]+:[0-9]{12}:(namespace\\/|namespace:)[a-z0-9\\-]+$"})
    TrackList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#TrackList", name: "TrackList")
    TrackListMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#TrackListMessage", name: "TrackListMessage")
    UnauthorizedOperation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#UnauthorizedOperation", name: "UnauthorizedOperation", traits: {"aws.protocols#awsQueryError" => {"code" => "UnauthorizedOperation", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UnauthorizedPartnerIntegrationFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#UnauthorizedPartnerIntegrationFault", name: "UnauthorizedPartnerIntegrationFault", traits: {"aws.protocols#awsQueryError" => {"code" => "UnauthorizedPartnerIntegration", "httpResponseCode" => 401}, "smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UnknownSnapshotCopyRegionFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#UnknownSnapshotCopyRegionFault", name: "UnknownSnapshotCopyRegionFault", traits: {"aws.protocols#awsQueryError" => {"code" => "UnknownSnapshotCopyRegionFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    UnsupportedOperationFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#UnsupportedOperationFault", name: "UnsupportedOperationFault", traits: {"aws.protocols#awsQueryError" => {"code" => "UnsupportedOperation", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UnsupportedOptionFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#UnsupportedOptionFault", name: "UnsupportedOptionFault", traits: {"aws.protocols#awsQueryError" => {"code" => "UnsupportedOptionFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UpdatePartnerStatusInputMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#UpdatePartnerStatusInputMessage", name: "UpdatePartnerStatusInputMessage")
    UpdatePartnerStatusOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#UpdatePartnerStatusOutput", name: "UpdatePartnerStatusOutput")
    UpdateTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#UpdateTarget", name: "UpdateTarget")
    UsageLimit = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#UsageLimit", name: "UsageLimit")
    UsageLimitAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#UsageLimitAlreadyExistsFault", name: "UsageLimitAlreadyExistsFault", traits: {"aws.protocols#awsQueryError" => {"code" => "UsageLimitAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UsageLimitBreachAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.redshift#UsageLimitBreachAction", name: "UsageLimitBreachAction")
    UsageLimitFeatureType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.redshift#UsageLimitFeatureType", name: "UsageLimitFeatureType")
    UsageLimitLimitType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.redshift#UsageLimitLimitType", name: "UsageLimitLimitType")
    UsageLimitNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#UsageLimitNotFoundFault", name: "UsageLimitNotFoundFault", traits: {"aws.protocols#awsQueryError" => {"code" => "UsageLimitNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    UsageLimitPeriod = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.redshift#UsageLimitPeriod", name: "UsageLimitPeriod")
    UsageLimits = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#UsageLimits", name: "UsageLimits")
    ValueStringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#ValueStringList", name: "ValueStringList")
    VpcEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#VpcEndpoint", name: "VpcEndpoint")
    VpcEndpointsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#VpcEndpointsList", name: "VpcEndpointsList")
    VpcIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#VpcIdentifierList", name: "VpcIdentifierList")
    VpcSecurityGroupIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#VpcSecurityGroupIdList", name: "VpcSecurityGroupIdList")
    VpcSecurityGroupMembership = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.redshift#VpcSecurityGroupMembership", name: "VpcSecurityGroupMembership")
    VpcSecurityGroupMembershipList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.redshift#VpcSecurityGroupMembershipList", name: "VpcSecurityGroupMembershipList")
    ZeroETLIntegrationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.redshift#ZeroETLIntegrationStatus", name: "ZeroETLIntegrationStatus")

    AcceptReservedNodeExchangeInputMessage.add_member(:reserved_node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReservedNodeId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AcceptReservedNodeExchangeInputMessage.add_member(:target_reserved_node_offering_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetReservedNodeOfferingId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AcceptReservedNodeExchangeInputMessage.type = Types::AcceptReservedNodeExchangeInputMessage
    AcceptReservedNodeExchangeOutputMessage.add_member(:exchanged_reserved_node, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedNode, name: "ExchangedReservedNode"))
    AcceptReservedNodeExchangeOutputMessage.type = Types::AcceptReservedNodeExchangeOutputMessage
    AccessToClusterDeniedFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    AccessToClusterDeniedFault.type = Types::AccessToClusterDeniedFault
    AccessToSnapshotDeniedFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    AccessToSnapshotDeniedFault.type = Types::AccessToSnapshotDeniedFault
    AccountAttribute.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AttributeName"))
    AccountAttribute.add_member(:attribute_values, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValueList, name: "AttributeValues"))
    AccountAttribute.type = Types::AccountAttribute
    AccountWithRestoreAccess.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AccountId"))
    AccountWithRestoreAccess.add_member(:account_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AccountAlias"))
    AccountWithRestoreAccess.type = Types::AccountWithRestoreAccess
    AccountsWithRestoreAccessList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountWithRestoreAccess, name: "member", traits: {"smithy.api#xmlName" => "AccountWithRestoreAccess"}))
    ActionType.add_member(:restore_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESTORE_CLUSTER", traits: {"smithy.api#enumValue" => "restore-cluster"}))
    ActionType.add_member(:recommend_node_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECOMMEND_NODE_CONFIG", traits: {"smithy.api#enumValue" => "recommend-node-config"}))
    ActionType.add_member(:resize_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESIZE_CLUSTER", traits: {"smithy.api#enumValue" => "resize-cluster"}))
    AddPartnerInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIntegrationAccountId, name: "AccountId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddPartnerInput.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIntegrationClusterIdentifier, name: "ClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddPartnerInput.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIntegrationDatabaseName, name: "DatabaseName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddPartnerInput.add_member(:partner_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIntegrationPartnerName, name: "PartnerName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddPartnerInput.type = Types::AddPartnerInput
    AddPartnerOutput.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIntegrationDatabaseName, name: "DatabaseName"))
    AddPartnerOutput.add_member(:partner_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIntegrationPartnerName, name: "PartnerName"))
    AddPartnerOutput.type = Types::AddPartnerOutput
    AquaConfiguration.add_member(:aqua_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AquaStatus, name: "AquaStatus"))
    AquaConfiguration.add_member(:aqua_configuration_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AquaConfigurationStatus, name: "AquaConfigurationStatus"))
    AquaConfiguration.type = Types::AquaConfiguration
    AquaConfigurationStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "enabled"}))
    AquaConfigurationStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "disabled"}))
    AquaConfigurationStatus.add_member(:auto, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTO", traits: {"smithy.api#enumValue" => "auto"}))
    AquaStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "enabled"}))
    AquaStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "disabled"}))
    AquaStatus.add_member(:applying, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPLYING", traits: {"smithy.api#enumValue" => "applying"}))
    AssociateDataShareConsumerMessage.add_member(:data_share_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataShareArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AssociateDataShareConsumerMessage.add_member(:associate_entire_account, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AssociateEntireAccount"))
    AssociateDataShareConsumerMessage.add_member(:consumer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConsumerArn"))
    AssociateDataShareConsumerMessage.add_member(:consumer_region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConsumerRegion"))
    AssociateDataShareConsumerMessage.add_member(:allow_writes, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AllowWrites"))
    AssociateDataShareConsumerMessage.type = Types::AssociateDataShareConsumerMessage
    AssociateDataShareConsumerOutput.add_member(:data_share_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataShareArn"))
    AssociateDataShareConsumerOutput.add_member(:producer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ProducerArn"))
    AssociateDataShareConsumerOutput.add_member(:allow_publicly_accessible_consumers, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AllowPubliclyAccessibleConsumers"))
    AssociateDataShareConsumerOutput.add_member(:data_share_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: DataShareAssociationList, name: "DataShareAssociations"))
    AssociateDataShareConsumerOutput.add_member(:managed_by, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ManagedBy"))
    AssociateDataShareConsumerOutput.add_member(:data_share_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataShareType, name: "DataShareType"))
    AssociateDataShareConsumerOutput.type = Types::AssociateDataShareConsumerOutput
    AssociatedClusterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterAssociatedToSchedule, name: "member", traits: {"smithy.api#xmlName" => "ClusterAssociatedToSchedule"}))
    Association.add_member(:custom_domain_certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CustomDomainCertificateArn"))
    Association.add_member(:custom_domain_certificate_expiry_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CustomDomainCertificateExpiryDate"))
    Association.add_member(:certificate_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateAssociationList, name: "CertificateAssociations"))
    Association.type = Types::Association
    AssociationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Association, name: "member", traits: {"smithy.api#xmlName" => "Association"}))
    AttributeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAttribute, name: "member", traits: {"smithy.api#xmlName" => "AccountAttribute"}))
    AttributeNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "AttributeName"}))
    AttributeValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValueTarget, name: "member", traits: {"smithy.api#xmlName" => "AttributeValueTarget"}))
    AttributeValueTarget.add_member(:attribute_value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AttributeValue"))
    AttributeValueTarget.type = Types::AttributeValueTarget
    AuthenticationProfile.add_member(:authentication_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationProfileNameString, name: "AuthenticationProfileName"))
    AuthenticationProfile.add_member(:authentication_profile_content, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AuthenticationProfileContent"))
    AuthenticationProfile.type = Types::AuthenticationProfile
    AuthenticationProfileAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    AuthenticationProfileAlreadyExistsFault.type = Types::AuthenticationProfileAlreadyExistsFault
    AuthenticationProfileList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationProfile, name: "member"))
    AuthenticationProfileNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    AuthenticationProfileNotFoundFault.type = Types::AuthenticationProfileNotFoundFault
    AuthenticationProfileQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    AuthenticationProfileQuotaExceededFault.type = Types::AuthenticationProfileQuotaExceededFault
    AuthorizationAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    AuthorizationAlreadyExistsFault.type = Types::AuthorizationAlreadyExistsFault
    AuthorizationNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    AuthorizationNotFoundFault.type = Types::AuthorizationNotFoundFault
    AuthorizationQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    AuthorizationQuotaExceededFault.type = Types::AuthorizationQuotaExceededFault
    AuthorizationStatus.add_member(:authorized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTHORIZED", traits: {"smithy.api#enumValue" => "Authorized"}))
    AuthorizationStatus.add_member(:revoking, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REVOKING", traits: {"smithy.api#enumValue" => "Revoking"}))
    AuthorizeClusterSecurityGroupIngressMessage.add_member(:cluster_security_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterSecurityGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AuthorizeClusterSecurityGroupIngressMessage.add_member(:cidrip, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CIDRIP"))
    AuthorizeClusterSecurityGroupIngressMessage.add_member(:ec2_security_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EC2SecurityGroupName"))
    AuthorizeClusterSecurityGroupIngressMessage.add_member(:ec2_security_group_owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EC2SecurityGroupOwnerId"))
    AuthorizeClusterSecurityGroupIngressMessage.type = Types::AuthorizeClusterSecurityGroupIngressMessage
    AuthorizeClusterSecurityGroupIngressResult.add_member(:cluster_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterSecurityGroup, name: "ClusterSecurityGroup"))
    AuthorizeClusterSecurityGroupIngressResult.type = Types::AuthorizeClusterSecurityGroupIngressResult
    AuthorizeDataShareMessage.add_member(:data_share_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataShareArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AuthorizeDataShareMessage.add_member(:consumer_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConsumerIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AuthorizeDataShareMessage.add_member(:allow_writes, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AllowWrites"))
    AuthorizeDataShareMessage.type = Types::AuthorizeDataShareMessage
    AuthorizeDataShareOutput.add_member(:data_share_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataShareArn"))
    AuthorizeDataShareOutput.add_member(:producer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ProducerArn"))
    AuthorizeDataShareOutput.add_member(:allow_publicly_accessible_consumers, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AllowPubliclyAccessibleConsumers"))
    AuthorizeDataShareOutput.add_member(:data_share_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: DataShareAssociationList, name: "DataShareAssociations"))
    AuthorizeDataShareOutput.add_member(:managed_by, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ManagedBy"))
    AuthorizeDataShareOutput.add_member(:data_share_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataShareType, name: "DataShareType"))
    AuthorizeDataShareOutput.type = Types::AuthorizeDataShareOutput
    AuthorizeEndpointAccessMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier"))
    AuthorizeEndpointAccessMessage.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Account", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AuthorizeEndpointAccessMessage.add_member(:vpc_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcIdentifierList, name: "VpcIds"))
    AuthorizeEndpointAccessMessage.type = Types::AuthorizeEndpointAccessMessage
    AuthorizeEndpointAccessOutput.add_member(:grantor, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Grantor"))
    AuthorizeEndpointAccessOutput.add_member(:grantee, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Grantee"))
    AuthorizeEndpointAccessOutput.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier"))
    AuthorizeEndpointAccessOutput.add_member(:authorize_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "AuthorizeTime"))
    AuthorizeEndpointAccessOutput.add_member(:cluster_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterStatus"))
    AuthorizeEndpointAccessOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizationStatus, name: "Status"))
    AuthorizeEndpointAccessOutput.add_member(:allowed_all_vp_cs, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AllowedAllVPCs"))
    AuthorizeEndpointAccessOutput.add_member(:allowed_vp_cs, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcIdentifierList, name: "AllowedVPCs"))
    AuthorizeEndpointAccessOutput.add_member(:endpoint_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "EndpointCount"))
    AuthorizeEndpointAccessOutput.type = Types::AuthorizeEndpointAccessOutput
    AuthorizeSnapshotAccessMessage.add_member(:snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotIdentifier"))
    AuthorizeSnapshotAccessMessage.add_member(:snapshot_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotArn"))
    AuthorizeSnapshotAccessMessage.add_member(:snapshot_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotClusterIdentifier"))
    AuthorizeSnapshotAccessMessage.add_member(:account_with_restore_access, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AccountWithRestoreAccess", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AuthorizeSnapshotAccessMessage.type = Types::AuthorizeSnapshotAccessMessage
    AuthorizeSnapshotAccessResult.add_member(:snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: Snapshot, name: "Snapshot"))
    AuthorizeSnapshotAccessResult.type = Types::AuthorizeSnapshotAccessResult
    AuthorizedAudienceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    AuthorizedTokenIssuer.add_member(:trusted_token_issuer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TrustedTokenIssuerArn"))
    AuthorizedTokenIssuer.add_member(:authorized_audiences_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizedAudienceList, name: "AuthorizedAudiencesList"))
    AuthorizedTokenIssuer.type = Types::AuthorizedTokenIssuer
    AuthorizedTokenIssuerList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizedTokenIssuer, name: "member"))
    AvailabilityZone.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    AvailabilityZone.add_member(:supported_platforms, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedPlatformsList, name: "SupportedPlatforms"))
    AvailabilityZone.type = Types::AvailabilityZone
    AvailabilityZoneList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, name: "member", traits: {"smithy.api#xmlName" => "AvailabilityZone"}))
    BatchDeleteClusterSnapshotsRequest.add_member(:identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteClusterSnapshotMessageList, name: "Identifiers", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchDeleteClusterSnapshotsRequest.type = Types::BatchDeleteClusterSnapshotsRequest
    BatchDeleteClusterSnapshotsResult.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotIdentifierList, name: "Resources"))
    BatchDeleteClusterSnapshotsResult.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchSnapshotOperationErrorList, name: "Errors"))
    BatchDeleteClusterSnapshotsResult.type = Types::BatchDeleteClusterSnapshotsResult
    BatchDeleteRequestSizeExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    BatchDeleteRequestSizeExceededFault.type = Types::BatchDeleteRequestSizeExceededFault
    BatchModifyClusterSnapshotsLimitExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    BatchModifyClusterSnapshotsLimitExceededFault.type = Types::BatchModifyClusterSnapshotsLimitExceededFault
    BatchModifyClusterSnapshotsMessage.add_member(:snapshot_identifier_list, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotIdentifierList, name: "SnapshotIdentifierList", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchModifyClusterSnapshotsMessage.add_member(:manual_snapshot_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "ManualSnapshotRetentionPeriod"))
    BatchModifyClusterSnapshotsMessage.add_member(:force, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Force"))
    BatchModifyClusterSnapshotsMessage.type = Types::BatchModifyClusterSnapshotsMessage
    BatchModifyClusterSnapshotsOutputMessage.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotIdentifierList, name: "Resources"))
    BatchModifyClusterSnapshotsOutputMessage.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchSnapshotOperationErrors, name: "Errors"))
    BatchModifyClusterSnapshotsOutputMessage.type = Types::BatchModifyClusterSnapshotsOutputMessage
    BatchSnapshotOperationErrorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotErrorMessage, name: "member", traits: {"smithy.api#xmlName" => "SnapshotErrorMessage"}))
    BatchSnapshotOperationErrors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotErrorMessage, name: "member", traits: {"smithy.api#xmlName" => "SnapshotErrorMessage"}))
    BucketNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    BucketNotFoundFault.type = Types::BucketNotFoundFault
    CancelResizeMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CancelResizeMessage.type = Types::CancelResizeMessage
    CancelResizeOutput.add_member(:target_node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetNodeType"))
    CancelResizeOutput.add_member(:target_number_of_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "TargetNumberOfNodes"))
    CancelResizeOutput.add_member(:target_cluster_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetClusterType"))
    CancelResizeOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    CancelResizeOutput.add_member(:import_tables_completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTablesCompleted, name: "ImportTablesCompleted"))
    CancelResizeOutput.add_member(:import_tables_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTablesInProgress, name: "ImportTablesInProgress"))
    CancelResizeOutput.add_member(:import_tables_not_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTablesNotStarted, name: "ImportTablesNotStarted"))
    CancelResizeOutput.add_member(:avg_resize_rate_in_mega_bytes_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleOptional, name: "AvgResizeRateInMegaBytesPerSecond"))
    CancelResizeOutput.add_member(:total_resize_data_in_mega_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: LongOptional, name: "TotalResizeDataInMegaBytes"))
    CancelResizeOutput.add_member(:progress_in_mega_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: LongOptional, name: "ProgressInMegaBytes"))
    CancelResizeOutput.add_member(:elapsed_time_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: LongOptional, name: "ElapsedTimeInSeconds"))
    CancelResizeOutput.add_member(:estimated_time_to_completion_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: LongOptional, name: "EstimatedTimeToCompletionInSeconds"))
    CancelResizeOutput.add_member(:resize_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResizeType"))
    CancelResizeOutput.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    CancelResizeOutput.add_member(:target_encryption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetEncryptionType"))
    CancelResizeOutput.add_member(:data_transfer_progress_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleOptional, name: "DataTransferProgressPercent"))
    CancelResizeOutput.type = Types::CancelResizeOutput
    CertificateAssociation.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CustomDomainName"))
    CertificateAssociation.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier"))
    CertificateAssociation.type = Types::CertificateAssociation
    CertificateAssociationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateAssociation, name: "member", traits: {"smithy.api#xmlName" => "CertificateAssociation"}))
    Cluster.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier"))
    Cluster.add_member(:node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NodeType"))
    Cluster.add_member(:cluster_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterStatus"))
    Cluster.add_member(:cluster_availability_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterAvailabilityStatus"))
    Cluster.add_member(:modify_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ModifyStatus"))
    Cluster.add_member(:master_username, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MasterUsername"))
    Cluster.add_member(:db_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBName"))
    Cluster.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoint, name: "Endpoint"))
    Cluster.add_member(:cluster_create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "ClusterCreateTime"))
    Cluster.add_member(:automated_snapshot_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "AutomatedSnapshotRetentionPeriod"))
    Cluster.add_member(:manual_snapshot_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "ManualSnapshotRetentionPeriod"))
    Cluster.add_member(:cluster_security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterSecurityGroupMembershipList, name: "ClusterSecurityGroups"))
    Cluster.add_member(:vpc_security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupMembershipList, name: "VpcSecurityGroups"))
    Cluster.add_member(:cluster_parameter_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterParameterGroupStatusList, name: "ClusterParameterGroups"))
    Cluster.add_member(:cluster_subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterSubnetGroupName"))
    Cluster.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcId"))
    Cluster.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AvailabilityZone"))
    Cluster.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredMaintenanceWindow"))
    Cluster.add_member(:pending_modified_values, ::Smithy::Schema::Shapes::MemberShape.new(target: PendingModifiedValues, name: "PendingModifiedValues"))
    Cluster.add_member(:cluster_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterVersion"))
    Cluster.add_member(:allow_version_upgrade, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AllowVersionUpgrade"))
    Cluster.add_member(:number_of_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NumberOfNodes"))
    Cluster.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "PubliclyAccessible"))
    Cluster.add_member(:encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Encrypted"))
    Cluster.add_member(:restore_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreStatus, name: "RestoreStatus"))
    Cluster.add_member(:data_transfer_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: DataTransferProgress, name: "DataTransferProgress"))
    Cluster.add_member(:hsm_status, ::Smithy::Schema::Shapes::MemberShape.new(target: HsmStatus, name: "HsmStatus"))
    Cluster.add_member(:cluster_snapshot_copy_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterSnapshotCopyStatus, name: "ClusterSnapshotCopyStatus"))
    Cluster.add_member(:cluster_public_key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterPublicKey"))
    Cluster.add_member(:cluster_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterNodesList, name: "ClusterNodes"))
    Cluster.add_member(:elastic_ip_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ElasticIpStatus, name: "ElasticIpStatus"))
    Cluster.add_member(:cluster_revision_number, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterRevisionNumber"))
    Cluster.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    Cluster.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    Cluster.add_member(:enhanced_vpc_routing, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "EnhancedVpcRouting"))
    Cluster.add_member(:iam_roles, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterIamRoleList, name: "IamRoles"))
    Cluster.add_member(:pending_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: PendingActionsList, name: "PendingActions"))
    Cluster.add_member(:maintenance_track_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MaintenanceTrackName"))
    Cluster.add_member(:elastic_resize_number_of_node_options, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ElasticResizeNumberOfNodeOptions"))
    Cluster.add_member(:deferred_maintenance_windows, ::Smithy::Schema::Shapes::MemberShape.new(target: DeferredMaintenanceWindowsList, name: "DeferredMaintenanceWindows"))
    Cluster.add_member(:snapshot_schedule_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotScheduleIdentifier"))
    Cluster.add_member(:snapshot_schedule_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleState, name: "SnapshotScheduleState"))
    Cluster.add_member(:expected_next_snapshot_schedule_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "ExpectedNextSnapshotScheduleTime"))
    Cluster.add_member(:expected_next_snapshot_schedule_time_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ExpectedNextSnapshotScheduleTimeStatus"))
    Cluster.add_member(:next_maintenance_window_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "NextMaintenanceWindowStartTime"))
    Cluster.add_member(:resize_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ResizeInfo, name: "ResizeInfo"))
    Cluster.add_member(:availability_zone_relocation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AvailabilityZoneRelocationStatus"))
    Cluster.add_member(:cluster_namespace_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterNamespaceArn"))
    Cluster.add_member(:total_storage_capacity_in_mega_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: LongOptional, name: "TotalStorageCapacityInMegaBytes"))
    Cluster.add_member(:aqua_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AquaConfiguration, name: "AquaConfiguration"))
    Cluster.add_member(:default_iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DefaultIamRoleArn"))
    Cluster.add_member(:reserved_node_exchange_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedNodeExchangeStatus, name: "ReservedNodeExchangeStatus"))
    Cluster.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CustomDomainName"))
    Cluster.add_member(:custom_domain_certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CustomDomainCertificateArn"))
    Cluster.add_member(:custom_domain_certificate_expiry_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CustomDomainCertificateExpiryDate"))
    Cluster.add_member(:master_password_secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MasterPasswordSecretArn"))
    Cluster.add_member(:master_password_secret_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MasterPasswordSecretKmsKeyId"))
    Cluster.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IpAddressType"))
    Cluster.add_member(:multi_az, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MultiAZ"))
    Cluster.add_member(:multi_az_secondary, ::Smithy::Schema::Shapes::MemberShape.new(target: SecondaryClusterInfo, name: "MultiAZSecondary"))
    Cluster.type = Types::Cluster
    ClusterAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ClusterAlreadyExistsFault.type = Types::ClusterAlreadyExistsFault
    ClusterAssociatedToSchedule.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier"))
    ClusterAssociatedToSchedule.add_member(:schedule_association_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleState, name: "ScheduleAssociationState"))
    ClusterAssociatedToSchedule.type = Types::ClusterAssociatedToSchedule
    ClusterDbRevision.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier"))
    ClusterDbRevision.add_member(:current_database_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CurrentDatabaseRevision"))
    ClusterDbRevision.add_member(:database_revision_release_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "DatabaseRevisionReleaseDate"))
    ClusterDbRevision.add_member(:revision_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionTargetsList, name: "RevisionTargets"))
    ClusterDbRevision.type = Types::ClusterDbRevision
    ClusterDbRevisionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterDbRevision, name: "member", traits: {"smithy.api#xmlName" => "ClusterDbRevision"}))
    ClusterDbRevisionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    ClusterDbRevisionsMessage.add_member(:cluster_db_revisions, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterDbRevisionsList, name: "ClusterDbRevisions"))
    ClusterDbRevisionsMessage.type = Types::ClusterDbRevisionsMessage
    ClusterIamRole.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IamRoleArn"))
    ClusterIamRole.add_member(:apply_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ApplyStatus"))
    ClusterIamRole.type = Types::ClusterIamRole
    ClusterIamRoleList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterIamRole, name: "member", traits: {"smithy.api#xmlName" => "ClusterIamRole"}))
    ClusterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, name: "member", traits: {"smithy.api#xmlName" => "Cluster"}))
    ClusterNode.add_member(:node_role, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NodeRole"))
    ClusterNode.add_member(:private_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PrivateIPAddress"))
    ClusterNode.add_member(:public_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PublicIPAddress"))
    ClusterNode.type = Types::ClusterNode
    ClusterNodesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterNode, name: "member"))
    ClusterNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ClusterNotFoundFault.type = Types::ClusterNotFoundFault
    ClusterOnLatestRevisionFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ClusterOnLatestRevisionFault.type = Types::ClusterOnLatestRevisionFault
    ClusterParameterGroup.add_member(:parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterGroupName"))
    ClusterParameterGroup.add_member(:parameter_group_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterGroupFamily"))
    ClusterParameterGroup.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    ClusterParameterGroup.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ClusterParameterGroup.type = Types::ClusterParameterGroup
    ClusterParameterGroupAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ClusterParameterGroupAlreadyExistsFault.type = Types::ClusterParameterGroupAlreadyExistsFault
    ClusterParameterGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ClusterParameterGroupNotFoundFault.type = Types::ClusterParameterGroupNotFoundFault
    ClusterParameterGroupQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ClusterParameterGroupQuotaExceededFault.type = Types::ClusterParameterGroupQuotaExceededFault
    ClusterParameterGroupStatus.add_member(:parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterGroupName"))
    ClusterParameterGroupStatus.add_member(:parameter_apply_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterApplyStatus"))
    ClusterParameterGroupStatus.add_member(:cluster_parameter_status_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterParameterStatusList, name: "ClusterParameterStatusList"))
    ClusterParameterGroupStatus.type = Types::ClusterParameterGroupStatus
    ClusterParameterGroupStatusList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterParameterGroupStatus, name: "member", traits: {"smithy.api#xmlName" => "ClusterParameterGroup"}))
    ClusterParameterGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    ClusterParameterGroupsMessage.add_member(:parameter_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterGroupList, name: "ParameterGroups"))
    ClusterParameterGroupsMessage.type = Types::ClusterParameterGroupsMessage
    ClusterParameterStatus.add_member(:parameter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterName"))
    ClusterParameterStatus.add_member(:parameter_apply_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterApplyStatus"))
    ClusterParameterStatus.add_member(:parameter_apply_error_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterApplyErrorDescription"))
    ClusterParameterStatus.type = Types::ClusterParameterStatus
    ClusterParameterStatusList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterParameterStatus, name: "member"))
    ClusterQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ClusterQuotaExceededFault.type = Types::ClusterQuotaExceededFault
    ClusterSecurityGroup.add_member(:cluster_security_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterSecurityGroupName"))
    ClusterSecurityGroup.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    ClusterSecurityGroup.add_member(:ec2_security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2SecurityGroupList, name: "EC2SecurityGroups"))
    ClusterSecurityGroup.add_member(:ip_ranges, ::Smithy::Schema::Shapes::MemberShape.new(target: IPRangeList, name: "IPRanges"))
    ClusterSecurityGroup.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ClusterSecurityGroup.type = Types::ClusterSecurityGroup
    ClusterSecurityGroupAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ClusterSecurityGroupAlreadyExistsFault.type = Types::ClusterSecurityGroupAlreadyExistsFault
    ClusterSecurityGroupMembership.add_member(:cluster_security_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterSecurityGroupName"))
    ClusterSecurityGroupMembership.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    ClusterSecurityGroupMembership.type = Types::ClusterSecurityGroupMembership
    ClusterSecurityGroupMembershipList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterSecurityGroupMembership, name: "member", traits: {"smithy.api#xmlName" => "ClusterSecurityGroup"}))
    ClusterSecurityGroupMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    ClusterSecurityGroupMessage.add_member(:cluster_security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterSecurityGroups, name: "ClusterSecurityGroups"))
    ClusterSecurityGroupMessage.type = Types::ClusterSecurityGroupMessage
    ClusterSecurityGroupNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "ClusterSecurityGroupName"}))
    ClusterSecurityGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ClusterSecurityGroupNotFoundFault.type = Types::ClusterSecurityGroupNotFoundFault
    ClusterSecurityGroupQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ClusterSecurityGroupQuotaExceededFault.type = Types::ClusterSecurityGroupQuotaExceededFault
    ClusterSecurityGroups.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterSecurityGroup, name: "member", traits: {"smithy.api#xmlName" => "ClusterSecurityGroup"}))
    ClusterSnapshotAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ClusterSnapshotAlreadyExistsFault.type = Types::ClusterSnapshotAlreadyExistsFault
    ClusterSnapshotCopyStatus.add_member(:destination_region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DestinationRegion"))
    ClusterSnapshotCopyStatus.add_member(:retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "RetentionPeriod"))
    ClusterSnapshotCopyStatus.add_member(:manual_snapshot_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "ManualSnapshotRetentionPeriod"))
    ClusterSnapshotCopyStatus.add_member(:snapshot_copy_grant_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotCopyGrantName"))
    ClusterSnapshotCopyStatus.type = Types::ClusterSnapshotCopyStatus
    ClusterSnapshotNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ClusterSnapshotNotFoundFault.type = Types::ClusterSnapshotNotFoundFault
    ClusterSnapshotQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ClusterSnapshotQuotaExceededFault.type = Types::ClusterSnapshotQuotaExceededFault
    ClusterSubnetGroup.add_member(:cluster_subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterSubnetGroupName"))
    ClusterSubnetGroup.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    ClusterSubnetGroup.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcId"))
    ClusterSubnetGroup.add_member(:subnet_group_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubnetGroupStatus"))
    ClusterSubnetGroup.add_member(:subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetList, name: "Subnets"))
    ClusterSubnetGroup.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ClusterSubnetGroup.add_member(:supported_cluster_ip_address_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueStringList, name: "SupportedClusterIpAddressTypes"))
    ClusterSubnetGroup.type = Types::ClusterSubnetGroup
    ClusterSubnetGroupAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ClusterSubnetGroupAlreadyExistsFault.type = Types::ClusterSubnetGroupAlreadyExistsFault
    ClusterSubnetGroupMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    ClusterSubnetGroupMessage.add_member(:cluster_subnet_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterSubnetGroups, name: "ClusterSubnetGroups"))
    ClusterSubnetGroupMessage.type = Types::ClusterSubnetGroupMessage
    ClusterSubnetGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ClusterSubnetGroupNotFoundFault.type = Types::ClusterSubnetGroupNotFoundFault
    ClusterSubnetGroupQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ClusterSubnetGroupQuotaExceededFault.type = Types::ClusterSubnetGroupQuotaExceededFault
    ClusterSubnetGroups.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterSubnetGroup, name: "member", traits: {"smithy.api#xmlName" => "ClusterSubnetGroup"}))
    ClusterSubnetQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ClusterSubnetQuotaExceededFault.type = Types::ClusterSubnetQuotaExceededFault
    ClusterVersion.add_member(:cluster_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterVersion"))
    ClusterVersion.add_member(:cluster_parameter_group_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterParameterGroupFamily"))
    ClusterVersion.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    ClusterVersion.type = Types::ClusterVersion
    ClusterVersionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterVersion, name: "member", traits: {"smithy.api#xmlName" => "ClusterVersion"}))
    ClusterVersionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    ClusterVersionsMessage.add_member(:cluster_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterVersionList, name: "ClusterVersions"))
    ClusterVersionsMessage.type = Types::ClusterVersionsMessage
    ClustersMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    ClustersMessage.add_member(:clusters, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterList, name: "Clusters"))
    ClustersMessage.type = Types::ClustersMessage
    ConflictPolicyUpdateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ConflictPolicyUpdateFault.type = Types::ConflictPolicyUpdateFault
    ConsumerIdentifierList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    CopyClusterSnapshotMessage.add_member(:source_snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceSnapshotIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyClusterSnapshotMessage.add_member(:source_snapshot_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceSnapshotClusterIdentifier"))
    CopyClusterSnapshotMessage.add_member(:target_snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetSnapshotIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyClusterSnapshotMessage.add_member(:manual_snapshot_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "ManualSnapshotRetentionPeriod"))
    CopyClusterSnapshotMessage.type = Types::CopyClusterSnapshotMessage
    CopyClusterSnapshotResult.add_member(:snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: Snapshot, name: "Snapshot"))
    CopyClusterSnapshotResult.type = Types::CopyClusterSnapshotResult
    CopyToRegionDisabledFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    CopyToRegionDisabledFault.type = Types::CopyToRegionDisabledFault
    CreateAuthenticationProfileMessage.add_member(:authentication_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationProfileNameString, name: "AuthenticationProfileName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateAuthenticationProfileMessage.add_member(:authentication_profile_content, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AuthenticationProfileContent", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateAuthenticationProfileMessage.type = Types::CreateAuthenticationProfileMessage
    CreateAuthenticationProfileResult.add_member(:authentication_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationProfileNameString, name: "AuthenticationProfileName"))
    CreateAuthenticationProfileResult.add_member(:authentication_profile_content, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AuthenticationProfileContent"))
    CreateAuthenticationProfileResult.type = Types::CreateAuthenticationProfileResult
    CreateClusterMessage.add_member(:db_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBName"))
    CreateClusterMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateClusterMessage.add_member(:cluster_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterType"))
    CreateClusterMessage.add_member(:node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NodeType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateClusterMessage.add_member(:master_username, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MasterUsername", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateClusterMessage.add_member(:master_user_password, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "MasterUserPassword"))
    CreateClusterMessage.add_member(:cluster_security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterSecurityGroupNameList, name: "ClusterSecurityGroups"))
    CreateClusterMessage.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupIdList, name: "VpcSecurityGroupIds"))
    CreateClusterMessage.add_member(:cluster_subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterSubnetGroupName"))
    CreateClusterMessage.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AvailabilityZone"))
    CreateClusterMessage.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredMaintenanceWindow"))
    CreateClusterMessage.add_member(:cluster_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterParameterGroupName"))
    CreateClusterMessage.add_member(:automated_snapshot_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "AutomatedSnapshotRetentionPeriod"))
    CreateClusterMessage.add_member(:manual_snapshot_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "ManualSnapshotRetentionPeriod"))
    CreateClusterMessage.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    CreateClusterMessage.add_member(:cluster_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterVersion"))
    CreateClusterMessage.add_member(:allow_version_upgrade, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AllowVersionUpgrade"))
    CreateClusterMessage.add_member(:number_of_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "NumberOfNodes"))
    CreateClusterMessage.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "PubliclyAccessible"))
    CreateClusterMessage.add_member(:encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "Encrypted"))
    CreateClusterMessage.add_member(:hsm_client_certificate_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "HsmClientCertificateIdentifier"))
    CreateClusterMessage.add_member(:hsm_configuration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "HsmConfigurationIdentifier"))
    CreateClusterMessage.add_member(:elastic_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ElasticIp"))
    CreateClusterMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateClusterMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    CreateClusterMessage.add_member(:enhanced_vpc_routing, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EnhancedVpcRouting"))
    CreateClusterMessage.add_member(:additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AdditionalInfo"))
    CreateClusterMessage.add_member(:iam_roles, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArnList, name: "IamRoles"))
    CreateClusterMessage.add_member(:maintenance_track_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MaintenanceTrackName"))
    CreateClusterMessage.add_member(:snapshot_schedule_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotScheduleIdentifier"))
    CreateClusterMessage.add_member(:availability_zone_relocation, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AvailabilityZoneRelocation"))
    CreateClusterMessage.add_member(:aqua_configuration_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AquaConfigurationStatus, name: "AquaConfigurationStatus"))
    CreateClusterMessage.add_member(:default_iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DefaultIamRoleArn"))
    CreateClusterMessage.add_member(:load_sample_data, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LoadSampleData"))
    CreateClusterMessage.add_member(:manage_master_password, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ManageMasterPassword"))
    CreateClusterMessage.add_member(:master_password_secret_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MasterPasswordSecretKmsKeyId"))
    CreateClusterMessage.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IpAddressType"))
    CreateClusterMessage.add_member(:multi_az, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "MultiAZ"))
    CreateClusterMessage.add_member(:redshift_idc_application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RedshiftIdcApplicationArn"))
    CreateClusterMessage.type = Types::CreateClusterMessage
    CreateClusterParameterGroupMessage.add_member(:parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateClusterParameterGroupMessage.add_member(:parameter_group_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterGroupFamily", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateClusterParameterGroupMessage.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateClusterParameterGroupMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateClusterParameterGroupMessage.type = Types::CreateClusterParameterGroupMessage
    CreateClusterParameterGroupResult.add_member(:cluster_parameter_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterParameterGroup, name: "ClusterParameterGroup"))
    CreateClusterParameterGroupResult.type = Types::CreateClusterParameterGroupResult
    CreateClusterResult.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, name: "Cluster"))
    CreateClusterResult.type = Types::CreateClusterResult
    CreateClusterSecurityGroupMessage.add_member(:cluster_security_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterSecurityGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateClusterSecurityGroupMessage.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateClusterSecurityGroupMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateClusterSecurityGroupMessage.type = Types::CreateClusterSecurityGroupMessage
    CreateClusterSecurityGroupResult.add_member(:cluster_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterSecurityGroup, name: "ClusterSecurityGroup"))
    CreateClusterSecurityGroupResult.type = Types::CreateClusterSecurityGroupResult
    CreateClusterSnapshotMessage.add_member(:snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateClusterSnapshotMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateClusterSnapshotMessage.add_member(:manual_snapshot_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "ManualSnapshotRetentionPeriod"))
    CreateClusterSnapshotMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateClusterSnapshotMessage.type = Types::CreateClusterSnapshotMessage
    CreateClusterSnapshotResult.add_member(:snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: Snapshot, name: "Snapshot"))
    CreateClusterSnapshotResult.type = Types::CreateClusterSnapshotResult
    CreateClusterSubnetGroupMessage.add_member(:cluster_subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterSubnetGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateClusterSubnetGroupMessage.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateClusterSubnetGroupMessage.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdentifierList, name: "SubnetIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateClusterSubnetGroupMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateClusterSubnetGroupMessage.type = Types::CreateClusterSubnetGroupMessage
    CreateClusterSubnetGroupResult.add_member(:cluster_subnet_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterSubnetGroup, name: "ClusterSubnetGroup"))
    CreateClusterSubnetGroupResult.type = Types::CreateClusterSubnetGroupResult
    CreateCustomDomainAssociationMessage.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDomainNameString, name: "CustomDomainName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateCustomDomainAssociationMessage.add_member(:custom_domain_certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDomainCertificateArnString, name: "CustomDomainCertificateArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateCustomDomainAssociationMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateCustomDomainAssociationMessage.type = Types::CreateCustomDomainAssociationMessage
    CreateCustomDomainAssociationResult.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDomainNameString, name: "CustomDomainName"))
    CreateCustomDomainAssociationResult.add_member(:custom_domain_certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDomainCertificateArnString, name: "CustomDomainCertificateArn"))
    CreateCustomDomainAssociationResult.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier"))
    CreateCustomDomainAssociationResult.add_member(:custom_domain_cert_expiry_time, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CustomDomainCertExpiryTime"))
    CreateCustomDomainAssociationResult.type = Types::CreateCustomDomainAssociationResult
    CreateEndpointAccessMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier"))
    CreateEndpointAccessMessage.add_member(:resource_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceOwner"))
    CreateEndpointAccessMessage.add_member(:endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EndpointName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateEndpointAccessMessage.add_member(:subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubnetGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateEndpointAccessMessage.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupIdList, name: "VpcSecurityGroupIds"))
    CreateEndpointAccessMessage.type = Types::CreateEndpointAccessMessage
    CreateEndpointAccessOutput.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier"))
    CreateEndpointAccessOutput.add_member(:resource_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceOwner"))
    CreateEndpointAccessOutput.add_member(:subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubnetGroupName"))
    CreateEndpointAccessOutput.add_member(:endpoint_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EndpointStatus"))
    CreateEndpointAccessOutput.add_member(:endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EndpointName"))
    CreateEndpointAccessOutput.add_member(:endpoint_create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "EndpointCreateTime"))
    CreateEndpointAccessOutput.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Port"))
    CreateEndpointAccessOutput.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Address"))
    CreateEndpointAccessOutput.add_member(:vpc_security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupMembershipList, name: "VpcSecurityGroups"))
    CreateEndpointAccessOutput.add_member(:vpc_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpoint, name: "VpcEndpoint"))
    CreateEndpointAccessOutput.type = Types::CreateEndpointAccessOutput
    CreateEventSubscriptionMessage.add_member(:subscription_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubscriptionName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateEventSubscriptionMessage.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnsTopicArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateEventSubscriptionMessage.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceType"))
    CreateEventSubscriptionMessage.add_member(:source_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceIdsList, name: "SourceIds"))
    CreateEventSubscriptionMessage.add_member(:event_categories, ::Smithy::Schema::Shapes::MemberShape.new(target: EventCategoriesList, name: "EventCategories"))
    CreateEventSubscriptionMessage.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Severity"))
    CreateEventSubscriptionMessage.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "Enabled"))
    CreateEventSubscriptionMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateEventSubscriptionMessage.type = Types::CreateEventSubscriptionMessage
    CreateEventSubscriptionResult.add_member(:event_subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSubscription, name: "EventSubscription"))
    CreateEventSubscriptionResult.type = Types::CreateEventSubscriptionResult
    CreateHsmClientCertificateMessage.add_member(:hsm_client_certificate_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "HsmClientCertificateIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateHsmClientCertificateMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateHsmClientCertificateMessage.type = Types::CreateHsmClientCertificateMessage
    CreateHsmClientCertificateResult.add_member(:hsm_client_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: HsmClientCertificate, name: "HsmClientCertificate"))
    CreateHsmClientCertificateResult.type = Types::CreateHsmClientCertificateResult
    CreateHsmConfigurationMessage.add_member(:hsm_configuration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "HsmConfigurationIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateHsmConfigurationMessage.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateHsmConfigurationMessage.add_member(:hsm_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "HsmIpAddress", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateHsmConfigurationMessage.add_member(:hsm_partition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "HsmPartitionName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateHsmConfigurationMessage.add_member(:hsm_partition_password, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "HsmPartitionPassword", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateHsmConfigurationMessage.add_member(:hsm_server_public_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "HsmServerPublicCertificate", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateHsmConfigurationMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateHsmConfigurationMessage.type = Types::CreateHsmConfigurationMessage
    CreateHsmConfigurationResult.add_member(:hsm_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: HsmConfiguration, name: "HsmConfiguration"))
    CreateHsmConfigurationResult.type = Types::CreateHsmConfigurationResult
    CreateIntegrationMessage.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceArn, name: "SourceArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateIntegrationMessage.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetArn, name: "TargetArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateIntegrationMessage.add_member(:integration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationName, name: "IntegrationName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateIntegrationMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KMSKeyId"))
    CreateIntegrationMessage.add_member(:tag_list, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "TagList"))
    CreateIntegrationMessage.add_member(:additional_encryption_context, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionContextMap, name: "AdditionalEncryptionContext"))
    CreateIntegrationMessage.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationDescription, name: "Description"))
    CreateIntegrationMessage.type = Types::CreateIntegrationMessage
    CreateIntegrationOutput.add_member(:integration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationArn, name: "IntegrationArn"))
    CreateIntegrationOutput.add_member(:integration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationName, name: "IntegrationName"))
    CreateIntegrationOutput.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceArn, name: "SourceArn"))
    CreateIntegrationOutput.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetArn, name: "TargetArn"))
    CreateIntegrationOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ZeroETLIntegrationStatus, name: "Status"))
    CreateIntegrationOutput.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationErrorList, name: "Errors"))
    CreateIntegrationOutput.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CreateTime"))
    CreateIntegrationOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateIntegrationOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KMSKeyId"))
    CreateIntegrationOutput.add_member(:additional_encryption_context, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionContextMap, name: "AdditionalEncryptionContext"))
    CreateIntegrationOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateIntegrationOutput.type = Types::CreateIntegrationOutput
    CreateRedshiftIdcApplicationMessage.add_member(:idc_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IdcInstanceArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateRedshiftIdcApplicationMessage.add_member(:redshift_idc_application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RedshiftIdcApplicationName, name: "RedshiftIdcApplicationName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateRedshiftIdcApplicationMessage.add_member(:identity_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityNamespaceString, name: "IdentityNamespace"))
    CreateRedshiftIdcApplicationMessage.add_member(:idc_display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IdcDisplayNameString, name: "IdcDisplayName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateRedshiftIdcApplicationMessage.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IamRoleArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateRedshiftIdcApplicationMessage.add_member(:authorized_token_issuer_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizedTokenIssuerList, name: "AuthorizedTokenIssuerList"))
    CreateRedshiftIdcApplicationMessage.add_member(:service_integrations, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceIntegrationList, name: "ServiceIntegrations"))
    CreateRedshiftIdcApplicationMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateRedshiftIdcApplicationMessage.add_member(:sso_tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "SsoTagKeys"))
    CreateRedshiftIdcApplicationMessage.type = Types::CreateRedshiftIdcApplicationMessage
    CreateRedshiftIdcApplicationResult.add_member(:redshift_idc_application, ::Smithy::Schema::Shapes::MemberShape.new(target: RedshiftIdcApplication, name: "RedshiftIdcApplication"))
    CreateRedshiftIdcApplicationResult.type = Types::CreateRedshiftIdcApplicationResult
    CreateScheduledActionMessage.add_member(:scheduled_action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ScheduledActionName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateScheduledActionMessage.add_member(:target_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledActionType, name: "TargetAction", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateScheduledActionMessage.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Schedule", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateScheduledActionMessage.add_member(:iam_role, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IamRole", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateScheduledActionMessage.add_member(:scheduled_action_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ScheduledActionDescription"))
    CreateScheduledActionMessage.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "StartTime"))
    CreateScheduledActionMessage.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "EndTime"))
    CreateScheduledActionMessage.add_member(:enable, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "Enable"))
    CreateScheduledActionMessage.type = Types::CreateScheduledActionMessage
    CreateScheduledActionOutput.add_member(:scheduled_action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ScheduledActionName"))
    CreateScheduledActionOutput.add_member(:target_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledActionType, name: "TargetAction"))
    CreateScheduledActionOutput.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Schedule"))
    CreateScheduledActionOutput.add_member(:iam_role, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IamRole"))
    CreateScheduledActionOutput.add_member(:scheduled_action_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ScheduledActionDescription"))
    CreateScheduledActionOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledActionState, name: "State"))
    CreateScheduledActionOutput.add_member(:next_invocations, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledActionTimeList, name: "NextInvocations"))
    CreateScheduledActionOutput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "StartTime"))
    CreateScheduledActionOutput.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "EndTime"))
    CreateScheduledActionOutput.type = Types::CreateScheduledActionOutput
    CreateSnapshotCopyGrantMessage.add_member(:snapshot_copy_grant_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotCopyGrantName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateSnapshotCopyGrantMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    CreateSnapshotCopyGrantMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateSnapshotCopyGrantMessage.type = Types::CreateSnapshotCopyGrantMessage
    CreateSnapshotCopyGrantResult.add_member(:snapshot_copy_grant, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotCopyGrant, name: "SnapshotCopyGrant"))
    CreateSnapshotCopyGrantResult.type = Types::CreateSnapshotCopyGrantResult
    CreateSnapshotScheduleMessage.add_member(:schedule_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleDefinitionList, name: "ScheduleDefinitions"))
    CreateSnapshotScheduleMessage.add_member(:schedule_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ScheduleIdentifier"))
    CreateSnapshotScheduleMessage.add_member(:schedule_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ScheduleDescription"))
    CreateSnapshotScheduleMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateSnapshotScheduleMessage.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "DryRun"))
    CreateSnapshotScheduleMessage.add_member(:next_invocations, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "NextInvocations"))
    CreateSnapshotScheduleMessage.type = Types::CreateSnapshotScheduleMessage
    CreateSnapshotScheduleOutput.add_member(:schedule_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleDefinitionList, name: "ScheduleDefinitions"))
    CreateSnapshotScheduleOutput.add_member(:schedule_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ScheduleIdentifier"))
    CreateSnapshotScheduleOutput.add_member(:schedule_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ScheduleDescription"))
    CreateSnapshotScheduleOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateSnapshotScheduleOutput.add_member(:next_invocations, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledSnapshotTimeList, name: "NextInvocations"))
    CreateSnapshotScheduleOutput.add_member(:associated_cluster_count, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "AssociatedClusterCount"))
    CreateSnapshotScheduleOutput.add_member(:associated_clusters, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedClusterList, name: "AssociatedClusters"))
    CreateSnapshotScheduleOutput.type = Types::CreateSnapshotScheduleOutput
    CreateTagsMessage.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateTagsMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateTagsMessage.type = Types::CreateTagsMessage
    CreateUsageLimitMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateUsageLimitMessage.add_member(:feature_type, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageLimitFeatureType, name: "FeatureType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateUsageLimitMessage.add_member(:limit_type, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageLimitLimitType, name: "LimitType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateUsageLimitMessage.add_member(:amount, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "Amount", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateUsageLimitMessage.add_member(:period, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageLimitPeriod, name: "Period"))
    CreateUsageLimitMessage.add_member(:breach_action, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageLimitBreachAction, name: "BreachAction"))
    CreateUsageLimitMessage.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateUsageLimitMessage.type = Types::CreateUsageLimitMessage
    CreateUsageLimitOutput.add_member(:usage_limit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UsageLimitId"))
    CreateUsageLimitOutput.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier"))
    CreateUsageLimitOutput.add_member(:feature_type, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageLimitFeatureType, name: "FeatureType"))
    CreateUsageLimitOutput.add_member(:limit_type, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageLimitLimitType, name: "LimitType"))
    CreateUsageLimitOutput.add_member(:amount, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "Amount"))
    CreateUsageLimitOutput.add_member(:period, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageLimitPeriod, name: "Period"))
    CreateUsageLimitOutput.add_member(:breach_action, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageLimitBreachAction, name: "BreachAction"))
    CreateUsageLimitOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateUsageLimitOutput.type = Types::CreateUsageLimitOutput
    CustomCnameAssociationFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    CustomCnameAssociationFault.type = Types::CustomCnameAssociationFault
    CustomDomainAssociationNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    CustomDomainAssociationNotFoundFault.type = Types::CustomDomainAssociationNotFoundFault
    CustomDomainAssociationsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    CustomDomainAssociationsMessage.add_member(:associations, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationList, name: "Associations"))
    CustomDomainAssociationsMessage.type = Types::CustomDomainAssociationsMessage
    CustomerStorageMessage.add_member(:total_backup_size_in_mega_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "TotalBackupSizeInMegaBytes"))
    CustomerStorageMessage.add_member(:total_provisioned_storage_in_mega_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "TotalProvisionedStorageInMegaBytes"))
    CustomerStorageMessage.type = Types::CustomerStorageMessage
    DataShare.add_member(:data_share_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataShareArn"))
    DataShare.add_member(:producer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ProducerArn"))
    DataShare.add_member(:allow_publicly_accessible_consumers, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AllowPubliclyAccessibleConsumers"))
    DataShare.add_member(:data_share_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: DataShareAssociationList, name: "DataShareAssociations"))
    DataShare.add_member(:managed_by, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ManagedBy"))
    DataShare.add_member(:data_share_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataShareType, name: "DataShareType"))
    DataShare.type = Types::DataShare
    DataShareAssociation.add_member(:consumer_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConsumerIdentifier"))
    DataShareAssociation.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DataShareStatus, name: "Status"))
    DataShareAssociation.add_member(:consumer_region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConsumerRegion"))
    DataShareAssociation.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CreatedDate"))
    DataShareAssociation.add_member(:status_change_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "StatusChangeDate"))
    DataShareAssociation.add_member(:producer_allowed_writes, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ProducerAllowedWrites"))
    DataShareAssociation.add_member(:consumer_accepted_writes, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ConsumerAcceptedWrites"))
    DataShareAssociation.type = Types::DataShareAssociation
    DataShareAssociationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataShareAssociation, name: "member"))
    DataShareList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataShare, name: "member"))
    DataShareStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DataShareStatus.add_member(:pending_authorization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_AUTHORIZATION", traits: {"smithy.api#enumValue" => "PENDING_AUTHORIZATION"}))
    DataShareStatus.add_member(:authorized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTHORIZED", traits: {"smithy.api#enumValue" => "AUTHORIZED"}))
    DataShareStatus.add_member(:deauthorized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEAUTHORIZED", traits: {"smithy.api#enumValue" => "DEAUTHORIZED"}))
    DataShareStatus.add_member(:rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECTED", traits: {"smithy.api#enumValue" => "REJECTED"}))
    DataShareStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    DataShareStatusForConsumer.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DataShareStatusForConsumer.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    DataShareStatusForProducer.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DataShareStatusForProducer.add_member(:authorized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTHORIZED", traits: {"smithy.api#enumValue" => "AUTHORIZED"}))
    DataShareStatusForProducer.add_member(:pending_authorization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_AUTHORIZATION", traits: {"smithy.api#enumValue" => "PENDING_AUTHORIZATION"}))
    DataShareStatusForProducer.add_member(:deauthorized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEAUTHORIZED", traits: {"smithy.api#enumValue" => "DEAUTHORIZED"}))
    DataShareStatusForProducer.add_member(:rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECTED", traits: {"smithy.api#enumValue" => "REJECTED"}))
    DataShareType.add_member(:internal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL", traits: {"smithy.api#enumValue" => "INTERNAL"}))
    DataTransferProgress.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    DataTransferProgress.add_member(:current_rate_in_mega_bytes_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleOptional, name: "CurrentRateInMegaBytesPerSecond"))
    DataTransferProgress.add_member(:total_data_in_mega_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "TotalDataInMegaBytes"))
    DataTransferProgress.add_member(:data_transferred_in_mega_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "DataTransferredInMegaBytes"))
    DataTransferProgress.add_member(:estimated_time_to_completion_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: LongOptional, name: "EstimatedTimeToCompletionInSeconds"))
    DataTransferProgress.add_member(:elapsed_time_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: LongOptional, name: "ElapsedTimeInSeconds"))
    DataTransferProgress.type = Types::DataTransferProgress
    DbGroupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "DbGroup"}))
    DeauthorizeDataShareMessage.add_member(:data_share_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataShareArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeauthorizeDataShareMessage.add_member(:consumer_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConsumerIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeauthorizeDataShareMessage.type = Types::DeauthorizeDataShareMessage
    DeauthorizeDataShareOutput.add_member(:data_share_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataShareArn"))
    DeauthorizeDataShareOutput.add_member(:producer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ProducerArn"))
    DeauthorizeDataShareOutput.add_member(:allow_publicly_accessible_consumers, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AllowPubliclyAccessibleConsumers"))
    DeauthorizeDataShareOutput.add_member(:data_share_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: DataShareAssociationList, name: "DataShareAssociations"))
    DeauthorizeDataShareOutput.add_member(:managed_by, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ManagedBy"))
    DeauthorizeDataShareOutput.add_member(:data_share_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataShareType, name: "DataShareType"))
    DeauthorizeDataShareOutput.type = Types::DeauthorizeDataShareOutput
    DefaultClusterParameters.add_member(:parameter_group_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterGroupFamily"))
    DefaultClusterParameters.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DefaultClusterParameters.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParametersList, name: "Parameters"))
    DefaultClusterParameters.type = Types::DefaultClusterParameters
    DeferredMaintenanceWindow.add_member(:defer_maintenance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DeferMaintenanceIdentifier"))
    DeferredMaintenanceWindow.add_member(:defer_maintenance_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "DeferMaintenanceStartTime"))
    DeferredMaintenanceWindow.add_member(:defer_maintenance_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "DeferMaintenanceEndTime"))
    DeferredMaintenanceWindow.type = Types::DeferredMaintenanceWindow
    DeferredMaintenanceWindowsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DeferredMaintenanceWindow, name: "member", traits: {"smithy.api#xmlName" => "DeferredMaintenanceWindow"}))
    DeleteAuthenticationProfileMessage.add_member(:authentication_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationProfileNameString, name: "AuthenticationProfileName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteAuthenticationProfileMessage.type = Types::DeleteAuthenticationProfileMessage
    DeleteAuthenticationProfileResult.add_member(:authentication_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationProfileNameString, name: "AuthenticationProfileName"))
    DeleteAuthenticationProfileResult.type = Types::DeleteAuthenticationProfileResult
    DeleteClusterMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteClusterMessage.add_member(:skip_final_cluster_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SkipFinalClusterSnapshot"))
    DeleteClusterMessage.add_member(:final_cluster_snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FinalClusterSnapshotIdentifier"))
    DeleteClusterMessage.add_member(:final_cluster_snapshot_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "FinalClusterSnapshotRetentionPeriod"))
    DeleteClusterMessage.type = Types::DeleteClusterMessage
    DeleteClusterParameterGroupMessage.add_member(:parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteClusterParameterGroupMessage.type = Types::DeleteClusterParameterGroupMessage
    DeleteClusterResult.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, name: "Cluster"))
    DeleteClusterResult.type = Types::DeleteClusterResult
    DeleteClusterSecurityGroupMessage.add_member(:cluster_security_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterSecurityGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteClusterSecurityGroupMessage.type = Types::DeleteClusterSecurityGroupMessage
    DeleteClusterSnapshotInput.add_member(:snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteClusterSnapshotInput.add_member(:snapshot_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotClusterIdentifier"))
    DeleteClusterSnapshotInput.type = Types::DeleteClusterSnapshotInput
    DeleteClusterSnapshotMessage.add_member(:snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteClusterSnapshotMessage.add_member(:snapshot_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotClusterIdentifier"))
    DeleteClusterSnapshotMessage.type = Types::DeleteClusterSnapshotMessage
    DeleteClusterSnapshotMessageList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteClusterSnapshotMessage, name: "member", traits: {"smithy.api#xmlName" => "DeleteClusterSnapshotMessage"}))
    DeleteClusterSnapshotResult.add_member(:snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: Snapshot, name: "Snapshot"))
    DeleteClusterSnapshotResult.type = Types::DeleteClusterSnapshotResult
    DeleteClusterSubnetGroupMessage.add_member(:cluster_subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterSubnetGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteClusterSubnetGroupMessage.type = Types::DeleteClusterSubnetGroupMessage
    DeleteCustomDomainAssociationMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteCustomDomainAssociationMessage.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDomainNameString, name: "CustomDomainName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteCustomDomainAssociationMessage.type = Types::DeleteCustomDomainAssociationMessage
    DeleteEndpointAccessMessage.add_member(:endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EndpointName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteEndpointAccessMessage.type = Types::DeleteEndpointAccessMessage
    DeleteEndpointAccessOutput.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier"))
    DeleteEndpointAccessOutput.add_member(:resource_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceOwner"))
    DeleteEndpointAccessOutput.add_member(:subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubnetGroupName"))
    DeleteEndpointAccessOutput.add_member(:endpoint_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EndpointStatus"))
    DeleteEndpointAccessOutput.add_member(:endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EndpointName"))
    DeleteEndpointAccessOutput.add_member(:endpoint_create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "EndpointCreateTime"))
    DeleteEndpointAccessOutput.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Port"))
    DeleteEndpointAccessOutput.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Address"))
    DeleteEndpointAccessOutput.add_member(:vpc_security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupMembershipList, name: "VpcSecurityGroups"))
    DeleteEndpointAccessOutput.add_member(:vpc_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpoint, name: "VpcEndpoint"))
    DeleteEndpointAccessOutput.type = Types::DeleteEndpointAccessOutput
    DeleteEventSubscriptionMessage.add_member(:subscription_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubscriptionName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteEventSubscriptionMessage.type = Types::DeleteEventSubscriptionMessage
    DeleteHsmClientCertificateMessage.add_member(:hsm_client_certificate_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "HsmClientCertificateIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteHsmClientCertificateMessage.type = Types::DeleteHsmClientCertificateMessage
    DeleteHsmConfigurationMessage.add_member(:hsm_configuration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "HsmConfigurationIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteHsmConfigurationMessage.type = Types::DeleteHsmConfigurationMessage
    DeleteIntegrationMessage.add_member(:integration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationArn, name: "IntegrationArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteIntegrationMessage.type = Types::DeleteIntegrationMessage
    DeleteIntegrationOutput.add_member(:integration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationArn, name: "IntegrationArn"))
    DeleteIntegrationOutput.add_member(:integration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationName, name: "IntegrationName"))
    DeleteIntegrationOutput.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceArn, name: "SourceArn"))
    DeleteIntegrationOutput.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetArn, name: "TargetArn"))
    DeleteIntegrationOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ZeroETLIntegrationStatus, name: "Status"))
    DeleteIntegrationOutput.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationErrorList, name: "Errors"))
    DeleteIntegrationOutput.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CreateTime"))
    DeleteIntegrationOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    DeleteIntegrationOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KMSKeyId"))
    DeleteIntegrationOutput.add_member(:additional_encryption_context, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionContextMap, name: "AdditionalEncryptionContext"))
    DeleteIntegrationOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    DeleteIntegrationOutput.type = Types::DeleteIntegrationOutput
    DeletePartnerInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIntegrationAccountId, name: "AccountId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeletePartnerInput.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIntegrationClusterIdentifier, name: "ClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeletePartnerInput.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIntegrationDatabaseName, name: "DatabaseName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeletePartnerInput.add_member(:partner_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIntegrationPartnerName, name: "PartnerName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeletePartnerInput.type = Types::DeletePartnerInput
    DeletePartnerOutput.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIntegrationDatabaseName, name: "DatabaseName"))
    DeletePartnerOutput.add_member(:partner_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIntegrationPartnerName, name: "PartnerName"))
    DeletePartnerOutput.type = Types::DeletePartnerOutput
    DeleteRedshiftIdcApplicationMessage.add_member(:redshift_idc_application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RedshiftIdcApplicationArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteRedshiftIdcApplicationMessage.type = Types::DeleteRedshiftIdcApplicationMessage
    DeleteResourcePolicyMessage.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteResourcePolicyMessage.type = Types::DeleteResourcePolicyMessage
    DeleteScheduledActionMessage.add_member(:scheduled_action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ScheduledActionName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteScheduledActionMessage.type = Types::DeleteScheduledActionMessage
    DeleteSnapshotCopyGrantMessage.add_member(:snapshot_copy_grant_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotCopyGrantName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteSnapshotCopyGrantMessage.type = Types::DeleteSnapshotCopyGrantMessage
    DeleteSnapshotScheduleMessage.add_member(:schedule_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ScheduleIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteSnapshotScheduleMessage.type = Types::DeleteSnapshotScheduleMessage
    DeleteTagsMessage.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteTagsMessage.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteTagsMessage.type = Types::DeleteTagsMessage
    DeleteUsageLimitMessage.add_member(:usage_limit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UsageLimitId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteUsageLimitMessage.type = Types::DeleteUsageLimitMessage
    DependentServiceAccessDeniedFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DependentServiceAccessDeniedFault.type = Types::DependentServiceAccessDeniedFault
    DependentServiceRequestThrottlingFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DependentServiceRequestThrottlingFault.type = Types::DependentServiceRequestThrottlingFault
    DependentServiceUnavailableFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    DependentServiceUnavailableFault.type = Types::DependentServiceUnavailableFault
    DeregisterNamespaceInputMessage.add_member(:namespace_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceIdentifierUnion, name: "NamespaceIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeregisterNamespaceInputMessage.add_member(:consumer_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumerIdentifierList, name: "ConsumerIdentifiers", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeregisterNamespaceInputMessage.type = Types::DeregisterNamespaceInputMessage
    DeregisterNamespaceOutputMessage.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceRegistrationStatus, name: "Status"))
    DeregisterNamespaceOutputMessage.type = Types::DeregisterNamespaceOutputMessage
    DescribeAccountAttributesMessage.add_member(:attribute_names, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeNameList, name: "AttributeNames"))
    DescribeAccountAttributesMessage.type = Types::DescribeAccountAttributesMessage
    DescribeAccountAttributesOutput.add_member(:account_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeList, name: "AccountAttributes"))
    DescribeAccountAttributesOutput.type = Types::DescribeAccountAttributesOutput
    DescribeAuthenticationProfilesMessage.add_member(:authentication_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationProfileNameString, name: "AuthenticationProfileName"))
    DescribeAuthenticationProfilesMessage.type = Types::DescribeAuthenticationProfilesMessage
    DescribeAuthenticationProfilesResult.add_member(:authentication_profiles, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationProfileList, name: "AuthenticationProfiles"))
    DescribeAuthenticationProfilesResult.type = Types::DescribeAuthenticationProfilesResult
    DescribeClusterDbRevisionsMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier"))
    DescribeClusterDbRevisionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeClusterDbRevisionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeClusterDbRevisionsMessage.type = Types::DescribeClusterDbRevisionsMessage
    DescribeClusterParameterGroupsMessage.add_member(:parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterGroupName"))
    DescribeClusterParameterGroupsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeClusterParameterGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeClusterParameterGroupsMessage.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys"))
    DescribeClusterParameterGroupsMessage.add_member(:tag_values, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValueList, name: "TagValues"))
    DescribeClusterParameterGroupsMessage.type = Types::DescribeClusterParameterGroupsMessage
    DescribeClusterParametersMessage.add_member(:parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeClusterParametersMessage.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Source"))
    DescribeClusterParametersMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeClusterParametersMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeClusterParametersMessage.type = Types::DescribeClusterParametersMessage
    DescribeClusterParametersOutput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParametersList, name: "Parameters"))
    DescribeClusterParametersOutput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeClusterParametersOutput.type = Types::DescribeClusterParametersOutput
    DescribeClusterSecurityGroupsMessage.add_member(:cluster_security_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterSecurityGroupName"))
    DescribeClusterSecurityGroupsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeClusterSecurityGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeClusterSecurityGroupsMessage.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys"))
    DescribeClusterSecurityGroupsMessage.add_member(:tag_values, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValueList, name: "TagValues"))
    DescribeClusterSecurityGroupsMessage.type = Types::DescribeClusterSecurityGroupsMessage
    DescribeClusterSnapshotsMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier"))
    DescribeClusterSnapshotsMessage.add_member(:snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotIdentifier"))
    DescribeClusterSnapshotsMessage.add_member(:snapshot_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotArn"))
    DescribeClusterSnapshotsMessage.add_member(:snapshot_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotType"))
    DescribeClusterSnapshotsMessage.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "StartTime"))
    DescribeClusterSnapshotsMessage.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "EndTime"))
    DescribeClusterSnapshotsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeClusterSnapshotsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeClusterSnapshotsMessage.add_member(:owner_account, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OwnerAccount"))
    DescribeClusterSnapshotsMessage.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys"))
    DescribeClusterSnapshotsMessage.add_member(:tag_values, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValueList, name: "TagValues"))
    DescribeClusterSnapshotsMessage.add_member(:cluster_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ClusterExists"))
    DescribeClusterSnapshotsMessage.add_member(:sorting_entities, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotSortingEntityList, name: "SortingEntities"))
    DescribeClusterSnapshotsMessage.type = Types::DescribeClusterSnapshotsMessage
    DescribeClusterSubnetGroupsMessage.add_member(:cluster_subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterSubnetGroupName"))
    DescribeClusterSubnetGroupsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeClusterSubnetGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeClusterSubnetGroupsMessage.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys"))
    DescribeClusterSubnetGroupsMessage.add_member(:tag_values, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValueList, name: "TagValues"))
    DescribeClusterSubnetGroupsMessage.type = Types::DescribeClusterSubnetGroupsMessage
    DescribeClusterTracksMessage.add_member(:maintenance_track_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MaintenanceTrackName"))
    DescribeClusterTracksMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeClusterTracksMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeClusterTracksMessage.type = Types::DescribeClusterTracksMessage
    DescribeClusterVersionsMessage.add_member(:cluster_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterVersion"))
    DescribeClusterVersionsMessage.add_member(:cluster_parameter_group_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterParameterGroupFamily"))
    DescribeClusterVersionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeClusterVersionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeClusterVersionsMessage.type = Types::DescribeClusterVersionsMessage
    DescribeClustersMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier"))
    DescribeClustersMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeClustersMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeClustersMessage.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys"))
    DescribeClustersMessage.add_member(:tag_values, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValueList, name: "TagValues"))
    DescribeClustersMessage.type = Types::DescribeClustersMessage
    DescribeCustomDomainAssociationsMessage.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDomainNameString, name: "CustomDomainName"))
    DescribeCustomDomainAssociationsMessage.add_member(:custom_domain_certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDomainCertificateArnString, name: "CustomDomainCertificateArn"))
    DescribeCustomDomainAssociationsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeCustomDomainAssociationsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeCustomDomainAssociationsMessage.type = Types::DescribeCustomDomainAssociationsMessage
    DescribeDataSharesForConsumerMessage.add_member(:consumer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConsumerArn"))
    DescribeDataSharesForConsumerMessage.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DataShareStatusForConsumer, name: "Status"))
    DescribeDataSharesForConsumerMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeDataSharesForConsumerMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDataSharesForConsumerMessage.type = Types::DescribeDataSharesForConsumerMessage
    DescribeDataSharesForConsumerResult.add_member(:data_shares, ::Smithy::Schema::Shapes::MemberShape.new(target: DataShareList, name: "DataShares"))
    DescribeDataSharesForConsumerResult.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDataSharesForConsumerResult.type = Types::DescribeDataSharesForConsumerResult
    DescribeDataSharesForProducerMessage.add_member(:producer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ProducerArn"))
    DescribeDataSharesForProducerMessage.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DataShareStatusForProducer, name: "Status"))
    DescribeDataSharesForProducerMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeDataSharesForProducerMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDataSharesForProducerMessage.type = Types::DescribeDataSharesForProducerMessage
    DescribeDataSharesForProducerResult.add_member(:data_shares, ::Smithy::Schema::Shapes::MemberShape.new(target: DataShareList, name: "DataShares"))
    DescribeDataSharesForProducerResult.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDataSharesForProducerResult.type = Types::DescribeDataSharesForProducerResult
    DescribeDataSharesMessage.add_member(:data_share_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataShareArn"))
    DescribeDataSharesMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeDataSharesMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDataSharesMessage.type = Types::DescribeDataSharesMessage
    DescribeDataSharesResult.add_member(:data_shares, ::Smithy::Schema::Shapes::MemberShape.new(target: DataShareList, name: "DataShares"))
    DescribeDataSharesResult.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDataSharesResult.type = Types::DescribeDataSharesResult
    DescribeDefaultClusterParametersMessage.add_member(:parameter_group_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterGroupFamily", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeDefaultClusterParametersMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeDefaultClusterParametersMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeDefaultClusterParametersMessage.type = Types::DescribeDefaultClusterParametersMessage
    DescribeDefaultClusterParametersResult.add_member(:default_cluster_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultClusterParameters, name: "DefaultClusterParameters"))
    DescribeDefaultClusterParametersResult.type = Types::DescribeDefaultClusterParametersResult
    DescribeEndpointAccessMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier"))
    DescribeEndpointAccessMessage.add_member(:resource_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceOwner"))
    DescribeEndpointAccessMessage.add_member(:endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EndpointName"))
    DescribeEndpointAccessMessage.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcId"))
    DescribeEndpointAccessMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeEndpointAccessMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeEndpointAccessMessage.type = Types::DescribeEndpointAccessMessage
    DescribeEndpointAccessOutput.add_member(:endpoint_access_list, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointAccesses, name: "EndpointAccessList"))
    DescribeEndpointAccessOutput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeEndpointAccessOutput.type = Types::DescribeEndpointAccessOutput
    DescribeEndpointAuthorizationMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier"))
    DescribeEndpointAuthorizationMessage.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Account"))
    DescribeEndpointAuthorizationMessage.add_member(:grantee, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "Grantee"))
    DescribeEndpointAuthorizationMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeEndpointAuthorizationMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeEndpointAuthorizationMessage.type = Types::DescribeEndpointAuthorizationMessage
    DescribeEndpointAuthorizationOutput.add_member(:endpoint_authorization_list, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointAuthorizations, name: "EndpointAuthorizationList"))
    DescribeEndpointAuthorizationOutput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeEndpointAuthorizationOutput.type = Types::DescribeEndpointAuthorizationOutput
    DescribeEventCategoriesMessage.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceType"))
    DescribeEventCategoriesMessage.type = Types::DescribeEventCategoriesMessage
    DescribeEventSubscriptionsMessage.add_member(:subscription_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubscriptionName"))
    DescribeEventSubscriptionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeEventSubscriptionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeEventSubscriptionsMessage.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys"))
    DescribeEventSubscriptionsMessage.add_member(:tag_values, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValueList, name: "TagValues"))
    DescribeEventSubscriptionsMessage.type = Types::DescribeEventSubscriptionsMessage
    DescribeEventsMessage.add_member(:source_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceIdentifier"))
    DescribeEventsMessage.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceType, name: "SourceType"))
    DescribeEventsMessage.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "StartTime"))
    DescribeEventsMessage.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "EndTime"))
    DescribeEventsMessage.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Duration"))
    DescribeEventsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeEventsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeEventsMessage.type = Types::DescribeEventsMessage
    DescribeHsmClientCertificatesMessage.add_member(:hsm_client_certificate_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "HsmClientCertificateIdentifier"))
    DescribeHsmClientCertificatesMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeHsmClientCertificatesMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeHsmClientCertificatesMessage.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys"))
    DescribeHsmClientCertificatesMessage.add_member(:tag_values, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValueList, name: "TagValues"))
    DescribeHsmClientCertificatesMessage.type = Types::DescribeHsmClientCertificatesMessage
    DescribeHsmConfigurationsMessage.add_member(:hsm_configuration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "HsmConfigurationIdentifier"))
    DescribeHsmConfigurationsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeHsmConfigurationsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeHsmConfigurationsMessage.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys"))
    DescribeHsmConfigurationsMessage.add_member(:tag_values, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValueList, name: "TagValues"))
    DescribeHsmConfigurationsMessage.type = Types::DescribeHsmConfigurationsMessage
    DescribeInboundIntegrationsMessage.add_member(:integration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InboundIntegrationArn, name: "IntegrationArn"))
    DescribeInboundIntegrationsMessage.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetArn, name: "TargetArn"))
    DescribeInboundIntegrationsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeInboundIntegrationsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeInboundIntegrationsMessage.type = Types::DescribeInboundIntegrationsMessage
    DescribeIntegrationsFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeIntegrationsFilterName, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeIntegrationsFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeIntegrationsFilterValueList, name: "Values", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeIntegrationsFilter.type = Types::DescribeIntegrationsFilter
    DescribeIntegrationsFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeIntegrationsFilter, name: "member", traits: {"smithy.api#xmlName" => "DescribeIntegrationsFilter"}))
    DescribeIntegrationsFilterName.add_member(:integration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTEGRATION_ARN", traits: {"smithy.api#enumValue" => "integration-arn"}))
    DescribeIntegrationsFilterName.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOURCE_ARN", traits: {"smithy.api#enumValue" => "source-arn"}))
    DescribeIntegrationsFilterName.add_member(:source_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOURCE_TYPES", traits: {"smithy.api#enumValue" => "source-types"}))
    DescribeIntegrationsFilterName.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STATUS", traits: {"smithy.api#enumValue" => "status"}))
    DescribeIntegrationsFilterValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "Value"}))
    DescribeIntegrationsMessage.add_member(:integration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationArn, name: "IntegrationArn"))
    DescribeIntegrationsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeIntegrationsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeIntegrationsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeIntegrationsFilterList, name: "Filters"))
    DescribeIntegrationsMessage.type = Types::DescribeIntegrationsMessage
    DescribeLoggingStatusMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeLoggingStatusMessage.type = Types::DescribeLoggingStatusMessage
    DescribeLoggingStatusOutput.add_member(:logging_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "LoggingEnabled"))
    DescribeLoggingStatusOutput.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BucketName"))
    DescribeLoggingStatusOutput.add_member(:s3_key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3KeyPrefixValue, name: "S3KeyPrefix"))
    DescribeLoggingStatusOutput.add_member(:last_successful_delivery_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "LastSuccessfulDeliveryTime"))
    DescribeLoggingStatusOutput.add_member(:last_failure_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "LastFailureTime"))
    DescribeLoggingStatusOutput.add_member(:last_failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastFailureMessage"))
    DescribeLoggingStatusOutput.add_member(:log_destination_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDestinationType, name: "LogDestinationType"))
    DescribeLoggingStatusOutput.add_member(:log_exports, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypeList, name: "LogExports"))
    DescribeLoggingStatusOutput.type = Types::DescribeLoggingStatusOutput
    DescribeNodeConfigurationOptionsMessage.add_member(:action_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionType, name: "ActionType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeNodeConfigurationOptionsMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier"))
    DescribeNodeConfigurationOptionsMessage.add_member(:snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotIdentifier"))
    DescribeNodeConfigurationOptionsMessage.add_member(:snapshot_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotArn"))
    DescribeNodeConfigurationOptionsMessage.add_member(:owner_account, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OwnerAccount"))
    DescribeNodeConfigurationOptionsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeConfigurationOptionsFilterList, name: "Filters", traits: {"smithy.api#xmlName" => "Filter"}))
    DescribeNodeConfigurationOptionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeNodeConfigurationOptionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeNodeConfigurationOptionsMessage.type = Types::DescribeNodeConfigurationOptionsMessage
    DescribeOrderableClusterOptionsMessage.add_member(:cluster_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterVersion"))
    DescribeOrderableClusterOptionsMessage.add_member(:node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NodeType"))
    DescribeOrderableClusterOptionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeOrderableClusterOptionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeOrderableClusterOptionsMessage.type = Types::DescribeOrderableClusterOptionsMessage
    DescribePartnersInputMessage.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIntegrationAccountId, name: "AccountId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribePartnersInputMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIntegrationClusterIdentifier, name: "ClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribePartnersInputMessage.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIntegrationDatabaseName, name: "DatabaseName"))
    DescribePartnersInputMessage.add_member(:partner_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIntegrationPartnerName, name: "PartnerName"))
    DescribePartnersInputMessage.type = Types::DescribePartnersInputMessage
    DescribePartnersOutputMessage.add_member(:partner_integration_info_list, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIntegrationInfoList, name: "PartnerIntegrationInfoList"))
    DescribePartnersOutputMessage.type = Types::DescribePartnersOutputMessage
    DescribeRedshiftIdcApplicationsMessage.add_member(:redshift_idc_application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RedshiftIdcApplicationArn"))
    DescribeRedshiftIdcApplicationsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeRedshiftIdcApplicationsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeRedshiftIdcApplicationsMessage.type = Types::DescribeRedshiftIdcApplicationsMessage
    DescribeRedshiftIdcApplicationsResult.add_member(:redshift_idc_applications, ::Smithy::Schema::Shapes::MemberShape.new(target: RedshiftIdcApplicationList, name: "RedshiftIdcApplications"))
    DescribeRedshiftIdcApplicationsResult.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeRedshiftIdcApplicationsResult.type = Types::DescribeRedshiftIdcApplicationsResult
    DescribeReservedNodeExchangeStatusInputMessage.add_member(:reserved_node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReservedNodeId"))
    DescribeReservedNodeExchangeStatusInputMessage.add_member(:reserved_node_exchange_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReservedNodeExchangeRequestId"))
    DescribeReservedNodeExchangeStatusInputMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeReservedNodeExchangeStatusInputMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeReservedNodeExchangeStatusInputMessage.type = Types::DescribeReservedNodeExchangeStatusInputMessage
    DescribeReservedNodeExchangeStatusOutputMessage.add_member(:reserved_node_exchange_status_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedNodeExchangeStatusList, name: "ReservedNodeExchangeStatusDetails"))
    DescribeReservedNodeExchangeStatusOutputMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeReservedNodeExchangeStatusOutputMessage.type = Types::DescribeReservedNodeExchangeStatusOutputMessage
    DescribeReservedNodeOfferingsMessage.add_member(:reserved_node_offering_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReservedNodeOfferingId"))
    DescribeReservedNodeOfferingsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeReservedNodeOfferingsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeReservedNodeOfferingsMessage.type = Types::DescribeReservedNodeOfferingsMessage
    DescribeReservedNodesMessage.add_member(:reserved_node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReservedNodeId"))
    DescribeReservedNodesMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeReservedNodesMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeReservedNodesMessage.type = Types::DescribeReservedNodesMessage
    DescribeResizeMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeResizeMessage.type = Types::DescribeResizeMessage
    DescribeResizeOutput.add_member(:target_node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetNodeType"))
    DescribeResizeOutput.add_member(:target_number_of_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "TargetNumberOfNodes"))
    DescribeResizeOutput.add_member(:target_cluster_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetClusterType"))
    DescribeResizeOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    DescribeResizeOutput.add_member(:import_tables_completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTablesCompleted, name: "ImportTablesCompleted"))
    DescribeResizeOutput.add_member(:import_tables_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTablesInProgress, name: "ImportTablesInProgress"))
    DescribeResizeOutput.add_member(:import_tables_not_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportTablesNotStarted, name: "ImportTablesNotStarted"))
    DescribeResizeOutput.add_member(:avg_resize_rate_in_mega_bytes_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleOptional, name: "AvgResizeRateInMegaBytesPerSecond"))
    DescribeResizeOutput.add_member(:total_resize_data_in_mega_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: LongOptional, name: "TotalResizeDataInMegaBytes"))
    DescribeResizeOutput.add_member(:progress_in_mega_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: LongOptional, name: "ProgressInMegaBytes"))
    DescribeResizeOutput.add_member(:elapsed_time_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: LongOptional, name: "ElapsedTimeInSeconds"))
    DescribeResizeOutput.add_member(:estimated_time_to_completion_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: LongOptional, name: "EstimatedTimeToCompletionInSeconds"))
    DescribeResizeOutput.add_member(:resize_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResizeType"))
    DescribeResizeOutput.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    DescribeResizeOutput.add_member(:target_encryption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetEncryptionType"))
    DescribeResizeOutput.add_member(:data_transfer_progress_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleOptional, name: "DataTransferProgressPercent"))
    DescribeResizeOutput.type = Types::DescribeResizeOutput
    DescribeScheduledActionsMessage.add_member(:scheduled_action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ScheduledActionName"))
    DescribeScheduledActionsMessage.add_member(:target_action_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledActionTypeValues, name: "TargetActionType"))
    DescribeScheduledActionsMessage.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "StartTime"))
    DescribeScheduledActionsMessage.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "EndTime"))
    DescribeScheduledActionsMessage.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "Active"))
    DescribeScheduledActionsMessage.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledActionFilterList, name: "Filters"))
    DescribeScheduledActionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeScheduledActionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeScheduledActionsMessage.type = Types::DescribeScheduledActionsMessage
    DescribeSnapshotCopyGrantsMessage.add_member(:snapshot_copy_grant_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotCopyGrantName"))
    DescribeSnapshotCopyGrantsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeSnapshotCopyGrantsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeSnapshotCopyGrantsMessage.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys"))
    DescribeSnapshotCopyGrantsMessage.add_member(:tag_values, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValueList, name: "TagValues"))
    DescribeSnapshotCopyGrantsMessage.type = Types::DescribeSnapshotCopyGrantsMessage
    DescribeSnapshotSchedulesMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier"))
    DescribeSnapshotSchedulesMessage.add_member(:schedule_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ScheduleIdentifier"))
    DescribeSnapshotSchedulesMessage.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys"))
    DescribeSnapshotSchedulesMessage.add_member(:tag_values, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValueList, name: "TagValues"))
    DescribeSnapshotSchedulesMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeSnapshotSchedulesMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeSnapshotSchedulesMessage.type = Types::DescribeSnapshotSchedulesMessage
    DescribeSnapshotSchedulesOutputMessage.add_member(:snapshot_schedules, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotScheduleList, name: "SnapshotSchedules"))
    DescribeSnapshotSchedulesOutputMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeSnapshotSchedulesOutputMessage.type = Types::DescribeSnapshotSchedulesOutputMessage
    DescribeTableRestoreStatusMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier"))
    DescribeTableRestoreStatusMessage.add_member(:table_restore_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TableRestoreRequestId"))
    DescribeTableRestoreStatusMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeTableRestoreStatusMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeTableRestoreStatusMessage.type = Types::DescribeTableRestoreStatusMessage
    DescribeTagsMessage.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceName"))
    DescribeTagsMessage.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceType"))
    DescribeTagsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeTagsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeTagsMessage.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys"))
    DescribeTagsMessage.add_member(:tag_values, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValueList, name: "TagValues"))
    DescribeTagsMessage.type = Types::DescribeTagsMessage
    DescribeUsageLimitsMessage.add_member(:usage_limit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UsageLimitId"))
    DescribeUsageLimitsMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier"))
    DescribeUsageLimitsMessage.add_member(:feature_type, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageLimitFeatureType, name: "FeatureType"))
    DescribeUsageLimitsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    DescribeUsageLimitsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeUsageLimitsMessage.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys"))
    DescribeUsageLimitsMessage.add_member(:tag_values, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValueList, name: "TagValues"))
    DescribeUsageLimitsMessage.type = Types::DescribeUsageLimitsMessage
    DescribeUsageLimitsOutput.add_member(:usage_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageLimits, name: "UsageLimits"))
    DescribeUsageLimitsOutput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    DescribeUsageLimitsOutput.type = Types::DescribeUsageLimitsOutput
    DisableLoggingMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DisableLoggingMessage.type = Types::DisableLoggingMessage
    DisableLoggingOutput.add_member(:logging_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "LoggingEnabled"))
    DisableLoggingOutput.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BucketName"))
    DisableLoggingOutput.add_member(:s3_key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3KeyPrefixValue, name: "S3KeyPrefix"))
    DisableLoggingOutput.add_member(:last_successful_delivery_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "LastSuccessfulDeliveryTime"))
    DisableLoggingOutput.add_member(:last_failure_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "LastFailureTime"))
    DisableLoggingOutput.add_member(:last_failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastFailureMessage"))
    DisableLoggingOutput.add_member(:log_destination_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDestinationType, name: "LogDestinationType"))
    DisableLoggingOutput.add_member(:log_exports, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypeList, name: "LogExports"))
    DisableLoggingOutput.type = Types::DisableLoggingOutput
    DisableSnapshotCopyMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DisableSnapshotCopyMessage.type = Types::DisableSnapshotCopyMessage
    DisableSnapshotCopyResult.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, name: "Cluster"))
    DisableSnapshotCopyResult.type = Types::DisableSnapshotCopyResult
    DisassociateDataShareConsumerMessage.add_member(:data_share_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataShareArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DisassociateDataShareConsumerMessage.add_member(:disassociate_entire_account, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "DisassociateEntireAccount"))
    DisassociateDataShareConsumerMessage.add_member(:consumer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConsumerArn"))
    DisassociateDataShareConsumerMessage.add_member(:consumer_region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConsumerRegion"))
    DisassociateDataShareConsumerMessage.type = Types::DisassociateDataShareConsumerMessage
    DisassociateDataShareConsumerOutput.add_member(:data_share_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataShareArn"))
    DisassociateDataShareConsumerOutput.add_member(:producer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ProducerArn"))
    DisassociateDataShareConsumerOutput.add_member(:allow_publicly_accessible_consumers, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AllowPubliclyAccessibleConsumers"))
    DisassociateDataShareConsumerOutput.add_member(:data_share_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: DataShareAssociationList, name: "DataShareAssociations"))
    DisassociateDataShareConsumerOutput.add_member(:managed_by, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ManagedBy"))
    DisassociateDataShareConsumerOutput.add_member(:data_share_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataShareType, name: "DataShareType"))
    DisassociateDataShareConsumerOutput.type = Types::DisassociateDataShareConsumerOutput
    EC2SecurityGroup.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    EC2SecurityGroup.add_member(:ec2_security_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EC2SecurityGroupName"))
    EC2SecurityGroup.add_member(:ec2_security_group_owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EC2SecurityGroupOwnerId"))
    EC2SecurityGroup.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    EC2SecurityGroup.type = Types::EC2SecurityGroup
    EC2SecurityGroupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2SecurityGroup, name: "member", traits: {"smithy.api#xmlName" => "EC2SecurityGroup"}))
    ElasticIpStatus.add_member(:elastic_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ElasticIp"))
    ElasticIpStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    ElasticIpStatus.type = Types::ElasticIpStatus
    EligibleTracksToUpdateList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateTarget, name: "member", traits: {"smithy.api#xmlName" => "UpdateTarget"}))
    EnableLoggingMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EnableLoggingMessage.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BucketName"))
    EnableLoggingMessage.add_member(:s3_key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3KeyPrefixValue, name: "S3KeyPrefix"))
    EnableLoggingMessage.add_member(:log_destination_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDestinationType, name: "LogDestinationType"))
    EnableLoggingMessage.add_member(:log_exports, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypeList, name: "LogExports"))
    EnableLoggingMessage.type = Types::EnableLoggingMessage
    EnableLoggingOutput.add_member(:logging_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "LoggingEnabled"))
    EnableLoggingOutput.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BucketName"))
    EnableLoggingOutput.add_member(:s3_key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3KeyPrefixValue, name: "S3KeyPrefix"))
    EnableLoggingOutput.add_member(:last_successful_delivery_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "LastSuccessfulDeliveryTime"))
    EnableLoggingOutput.add_member(:last_failure_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "LastFailureTime"))
    EnableLoggingOutput.add_member(:last_failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastFailureMessage"))
    EnableLoggingOutput.add_member(:log_destination_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDestinationType, name: "LogDestinationType"))
    EnableLoggingOutput.add_member(:log_exports, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypeList, name: "LogExports"))
    EnableLoggingOutput.type = Types::EnableLoggingOutput
    EnableSnapshotCopyMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EnableSnapshotCopyMessage.add_member(:destination_region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DestinationRegion", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EnableSnapshotCopyMessage.add_member(:retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "RetentionPeriod"))
    EnableSnapshotCopyMessage.add_member(:snapshot_copy_grant_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotCopyGrantName"))
    EnableSnapshotCopyMessage.add_member(:manual_snapshot_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "ManualSnapshotRetentionPeriod"))
    EnableSnapshotCopyMessage.type = Types::EnableSnapshotCopyMessage
    EnableSnapshotCopyResult.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, name: "Cluster"))
    EnableSnapshotCopyResult.type = Types::EnableSnapshotCopyResult
    EncryptionContextMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    EncryptionContextMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    Endpoint.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Address"))
    Endpoint.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Port"))
    Endpoint.add_member(:vpc_endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointsList, name: "VpcEndpoints"))
    Endpoint.type = Types::Endpoint
    EndpointAccess.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier"))
    EndpointAccess.add_member(:resource_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceOwner"))
    EndpointAccess.add_member(:subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubnetGroupName"))
    EndpointAccess.add_member(:endpoint_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EndpointStatus"))
    EndpointAccess.add_member(:endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EndpointName"))
    EndpointAccess.add_member(:endpoint_create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "EndpointCreateTime"))
    EndpointAccess.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Port"))
    EndpointAccess.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Address"))
    EndpointAccess.add_member(:vpc_security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupMembershipList, name: "VpcSecurityGroups"))
    EndpointAccess.add_member(:vpc_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpoint, name: "VpcEndpoint"))
    EndpointAccess.type = Types::EndpointAccess
    EndpointAccesses.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointAccess, name: "member"))
    EndpointAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    EndpointAlreadyExistsFault.type = Types::EndpointAlreadyExistsFault
    EndpointAuthorization.add_member(:grantor, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Grantor"))
    EndpointAuthorization.add_member(:grantee, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Grantee"))
    EndpointAuthorization.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier"))
    EndpointAuthorization.add_member(:authorize_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "AuthorizeTime"))
    EndpointAuthorization.add_member(:cluster_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterStatus"))
    EndpointAuthorization.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizationStatus, name: "Status"))
    EndpointAuthorization.add_member(:allowed_all_vp_cs, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AllowedAllVPCs"))
    EndpointAuthorization.add_member(:allowed_vp_cs, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcIdentifierList, name: "AllowedVPCs"))
    EndpointAuthorization.add_member(:endpoint_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "EndpointCount"))
    EndpointAuthorization.type = Types::EndpointAuthorization
    EndpointAuthorizationAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    EndpointAuthorizationAlreadyExistsFault.type = Types::EndpointAuthorizationAlreadyExistsFault
    EndpointAuthorizationNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    EndpointAuthorizationNotFoundFault.type = Types::EndpointAuthorizationNotFoundFault
    EndpointAuthorizations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointAuthorization, name: "member"))
    EndpointAuthorizationsPerClusterLimitExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    EndpointAuthorizationsPerClusterLimitExceededFault.type = Types::EndpointAuthorizationsPerClusterLimitExceededFault
    EndpointNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    EndpointNotFoundFault.type = Types::EndpointNotFoundFault
    EndpointsPerAuthorizationLimitExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    EndpointsPerAuthorizationLimitExceededFault.type = Types::EndpointsPerAuthorizationLimitExceededFault
    EndpointsPerClusterLimitExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    EndpointsPerClusterLimitExceededFault.type = Types::EndpointsPerClusterLimitExceededFault
    Event.add_member(:source_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceIdentifier"))
    Event.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceType, name: "SourceType"))
    Event.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    Event.add_member(:event_categories, ::Smithy::Schema::Shapes::MemberShape.new(target: EventCategoriesList, name: "EventCategories"))
    Event.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Severity"))
    Event.add_member(:date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "Date"))
    Event.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EventId"))
    Event.type = Types::Event
    EventCategoriesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "EventCategory"}))
    EventCategoriesMap.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceType"))
    EventCategoriesMap.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: EventInfoMapList, name: "Events"))
    EventCategoriesMap.type = Types::EventCategoriesMap
    EventCategoriesMapList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventCategoriesMap, name: "member", traits: {"smithy.api#xmlName" => "EventCategoriesMap"}))
    EventCategoriesMessage.add_member(:event_categories_map_list, ::Smithy::Schema::Shapes::MemberShape.new(target: EventCategoriesMapList, name: "EventCategoriesMapList"))
    EventCategoriesMessage.type = Types::EventCategoriesMessage
    EventInfoMap.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EventId"))
    EventInfoMap.add_member(:event_categories, ::Smithy::Schema::Shapes::MemberShape.new(target: EventCategoriesList, name: "EventCategories"))
    EventInfoMap.add_member(:event_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EventDescription"))
    EventInfoMap.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Severity"))
    EventInfoMap.type = Types::EventInfoMap
    EventInfoMapList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventInfoMap, name: "member", traits: {"smithy.api#xmlName" => "EventInfoMap"}))
    EventList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Event, name: "member", traits: {"smithy.api#xmlName" => "Event"}))
    EventSubscription.add_member(:customer_aws_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CustomerAwsId"))
    EventSubscription.add_member(:cust_subscription_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CustSubscriptionId"))
    EventSubscription.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnsTopicArn"))
    EventSubscription.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    EventSubscription.add_member(:subscription_creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "SubscriptionCreationTime"))
    EventSubscription.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceType"))
    EventSubscription.add_member(:source_ids_list, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceIdsList, name: "SourceIdsList"))
    EventSubscription.add_member(:event_categories_list, ::Smithy::Schema::Shapes::MemberShape.new(target: EventCategoriesList, name: "EventCategoriesList"))
    EventSubscription.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Severity"))
    EventSubscription.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled"))
    EventSubscription.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    EventSubscription.type = Types::EventSubscription
    EventSubscriptionQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    EventSubscriptionQuotaExceededFault.type = Types::EventSubscriptionQuotaExceededFault
    EventSubscriptionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSubscription, name: "member", traits: {"smithy.api#xmlName" => "EventSubscription"}))
    EventSubscriptionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    EventSubscriptionsMessage.add_member(:event_subscriptions_list, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSubscriptionsList, name: "EventSubscriptionsList"))
    EventSubscriptionsMessage.type = Types::EventSubscriptionsMessage
    EventsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    EventsMessage.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: EventList, name: "Events"))
    EventsMessage.type = Types::EventsMessage
    FailoverPrimaryComputeInputMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    FailoverPrimaryComputeInputMessage.type = Types::FailoverPrimaryComputeInputMessage
    FailoverPrimaryComputeResult.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, name: "Cluster"))
    FailoverPrimaryComputeResult.type = Types::FailoverPrimaryComputeResult
    GetClusterCredentialsMessage.add_member(:db_user, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DbUser", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetClusterCredentialsMessage.add_member(:db_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DbName"))
    GetClusterCredentialsMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier"))
    GetClusterCredentialsMessage.add_member(:duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "DurationSeconds"))
    GetClusterCredentialsMessage.add_member(:auto_create, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AutoCreate"))
    GetClusterCredentialsMessage.add_member(:db_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: DbGroupList, name: "DbGroups"))
    GetClusterCredentialsMessage.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CustomDomainName"))
    GetClusterCredentialsMessage.type = Types::GetClusterCredentialsMessage
    GetClusterCredentialsOutput.add_member(:db_user, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DbUser"))
    GetClusterCredentialsOutput.add_member(:db_password, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "DbPassword"))
    GetClusterCredentialsOutput.add_member(:expiration, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "Expiration"))
    GetClusterCredentialsOutput.type = Types::GetClusterCredentialsOutput
    GetClusterCredentialsWithIAMMessage.add_member(:db_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DbName"))
    GetClusterCredentialsWithIAMMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier"))
    GetClusterCredentialsWithIAMMessage.add_member(:duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "DurationSeconds"))
    GetClusterCredentialsWithIAMMessage.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CustomDomainName"))
    GetClusterCredentialsWithIAMMessage.type = Types::GetClusterCredentialsWithIAMMessage
    GetClusterCredentialsWithIAMOutput.add_member(:db_user, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DbUser"))
    GetClusterCredentialsWithIAMOutput.add_member(:db_password, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "DbPassword"))
    GetClusterCredentialsWithIAMOutput.add_member(:expiration, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "Expiration"))
    GetClusterCredentialsWithIAMOutput.add_member(:next_refresh_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "NextRefreshTime"))
    GetClusterCredentialsWithIAMOutput.type = Types::GetClusterCredentialsWithIAMOutput
    GetReservedNodeExchangeConfigurationOptionsInputMessage.add_member(:action_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedNodeExchangeActionType, name: "ActionType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetReservedNodeExchangeConfigurationOptionsInputMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier"))
    GetReservedNodeExchangeConfigurationOptionsInputMessage.add_member(:snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotIdentifier"))
    GetReservedNodeExchangeConfigurationOptionsInputMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    GetReservedNodeExchangeConfigurationOptionsInputMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    GetReservedNodeExchangeConfigurationOptionsInputMessage.type = Types::GetReservedNodeExchangeConfigurationOptionsInputMessage
    GetReservedNodeExchangeConfigurationOptionsOutputMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    GetReservedNodeExchangeConfigurationOptionsOutputMessage.add_member(:reserved_node_configuration_option_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedNodeConfigurationOptionList, name: "ReservedNodeConfigurationOptionList"))
    GetReservedNodeExchangeConfigurationOptionsOutputMessage.type = Types::GetReservedNodeExchangeConfigurationOptionsOutputMessage
    GetReservedNodeExchangeOfferingsInputMessage.add_member(:reserved_node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReservedNodeId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetReservedNodeExchangeOfferingsInputMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    GetReservedNodeExchangeOfferingsInputMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    GetReservedNodeExchangeOfferingsInputMessage.type = Types::GetReservedNodeExchangeOfferingsInputMessage
    GetReservedNodeExchangeOfferingsOutputMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    GetReservedNodeExchangeOfferingsOutputMessage.add_member(:reserved_node_offerings, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedNodeOfferingList, name: "ReservedNodeOfferings"))
    GetReservedNodeExchangeOfferingsOutputMessage.type = Types::GetReservedNodeExchangeOfferingsOutputMessage
    GetResourcePolicyMessage.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetResourcePolicyMessage.type = Types::GetResourcePolicyMessage
    GetResourcePolicyResult.add_member(:resource_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicy, name: "ResourcePolicy"))
    GetResourcePolicyResult.type = Types::GetResourcePolicyResult
    HsmClientCertificate.add_member(:hsm_client_certificate_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "HsmClientCertificateIdentifier"))
    HsmClientCertificate.add_member(:hsm_client_certificate_public_key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "HsmClientCertificatePublicKey"))
    HsmClientCertificate.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    HsmClientCertificate.type = Types::HsmClientCertificate
    HsmClientCertificateAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    HsmClientCertificateAlreadyExistsFault.type = Types::HsmClientCertificateAlreadyExistsFault
    HsmClientCertificateList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: HsmClientCertificate, name: "member", traits: {"smithy.api#xmlName" => "HsmClientCertificate"}))
    HsmClientCertificateMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    HsmClientCertificateMessage.add_member(:hsm_client_certificates, ::Smithy::Schema::Shapes::MemberShape.new(target: HsmClientCertificateList, name: "HsmClientCertificates"))
    HsmClientCertificateMessage.type = Types::HsmClientCertificateMessage
    HsmClientCertificateNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    HsmClientCertificateNotFoundFault.type = Types::HsmClientCertificateNotFoundFault
    HsmClientCertificateQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    HsmClientCertificateQuotaExceededFault.type = Types::HsmClientCertificateQuotaExceededFault
    HsmConfiguration.add_member(:hsm_configuration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "HsmConfigurationIdentifier"))
    HsmConfiguration.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    HsmConfiguration.add_member(:hsm_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "HsmIpAddress"))
    HsmConfiguration.add_member(:hsm_partition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "HsmPartitionName"))
    HsmConfiguration.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    HsmConfiguration.type = Types::HsmConfiguration
    HsmConfigurationAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    HsmConfigurationAlreadyExistsFault.type = Types::HsmConfigurationAlreadyExistsFault
    HsmConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: HsmConfiguration, name: "member", traits: {"smithy.api#xmlName" => "HsmConfiguration"}))
    HsmConfigurationMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    HsmConfigurationMessage.add_member(:hsm_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: HsmConfigurationList, name: "HsmConfigurations"))
    HsmConfigurationMessage.type = Types::HsmConfigurationMessage
    HsmConfigurationNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    HsmConfigurationNotFoundFault.type = Types::HsmConfigurationNotFoundFault
    HsmConfigurationQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    HsmConfigurationQuotaExceededFault.type = Types::HsmConfigurationQuotaExceededFault
    HsmStatus.add_member(:hsm_client_certificate_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "HsmClientCertificateIdentifier"))
    HsmStatus.add_member(:hsm_configuration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "HsmConfigurationIdentifier"))
    HsmStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    HsmStatus.type = Types::HsmStatus
    IPRange.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    IPRange.add_member(:cidrip, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CIDRIP"))
    IPRange.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    IPRange.type = Types::IPRange
    IPRangeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IPRange, name: "member", traits: {"smithy.api#xmlName" => "IPRange"}))
    IamRoleArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "IamRoleArn"}))
    ImpactRankingType.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIGH", traits: {"smithy.api#enumValue" => "HIGH"}))
    ImpactRankingType.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIUM", traits: {"smithy.api#enumValue" => "MEDIUM"}))
    ImpactRankingType.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOW", traits: {"smithy.api#enumValue" => "LOW"}))
    ImportTablesCompleted.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    ImportTablesInProgress.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    ImportTablesNotStarted.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    InProgressTableRestoreQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InProgressTableRestoreQuotaExceededFault.type = Types::InProgressTableRestoreQuotaExceededFault
    InboundIntegration.add_member(:integration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InboundIntegrationArn, name: "IntegrationArn"))
    InboundIntegration.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceArn"))
    InboundIntegration.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetArn, name: "TargetArn"))
    InboundIntegration.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ZeroETLIntegrationStatus, name: "Status"))
    InboundIntegration.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationErrorList, name: "Errors"))
    InboundIntegration.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CreateTime"))
    InboundIntegration.type = Types::InboundIntegration
    InboundIntegrationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InboundIntegration, name: "member", traits: {"smithy.api#xmlName" => "InboundIntegration"}))
    InboundIntegrationsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    InboundIntegrationsMessage.add_member(:inbound_integrations, ::Smithy::Schema::Shapes::MemberShape.new(target: InboundIntegrationList, name: "InboundIntegrations"))
    InboundIntegrationsMessage.type = Types::InboundIntegrationsMessage
    IncompatibleOrderableOptions.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    IncompatibleOrderableOptions.type = Types::IncompatibleOrderableOptions
    InsufficientClusterCapacityFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InsufficientClusterCapacityFault.type = Types::InsufficientClusterCapacityFault
    InsufficientS3BucketPolicyFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InsufficientS3BucketPolicyFault.type = Types::InsufficientS3BucketPolicyFault
    Integration.add_member(:integration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationArn, name: "IntegrationArn"))
    Integration.add_member(:integration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationName, name: "IntegrationName"))
    Integration.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceArn, name: "SourceArn"))
    Integration.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetArn, name: "TargetArn"))
    Integration.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ZeroETLIntegrationStatus, name: "Status"))
    Integration.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationErrorList, name: "Errors"))
    Integration.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CreateTime"))
    Integration.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    Integration.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KMSKeyId"))
    Integration.add_member(:additional_encryption_context, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionContextMap, name: "AdditionalEncryptionContext"))
    Integration.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    Integration.type = Types::Integration
    IntegrationAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    IntegrationAlreadyExistsFault.type = Types::IntegrationAlreadyExistsFault
    IntegrationConflictOperationFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    IntegrationConflictOperationFault.type = Types::IntegrationConflictOperationFault
    IntegrationConflictStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    IntegrationConflictStateFault.type = Types::IntegrationConflictStateFault
    IntegrationError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorCode", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    IntegrationError.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorMessage"))
    IntegrationError.type = Types::IntegrationError
    IntegrationErrorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationError, name: "member", traits: {"smithy.api#xmlName" => "IntegrationError"}))
    IntegrationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Integration, name: "member", traits: {"smithy.api#xmlName" => "Integration"}))
    IntegrationNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    IntegrationNotFoundFault.type = Types::IntegrationNotFoundFault
    IntegrationQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    IntegrationQuotaExceededFault.type = Types::IntegrationQuotaExceededFault
    IntegrationSourceNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    IntegrationSourceNotFoundFault.type = Types::IntegrationSourceNotFoundFault
    IntegrationTargetNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    IntegrationTargetNotFoundFault.type = Types::IntegrationTargetNotFoundFault
    IntegrationsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    IntegrationsMessage.add_member(:integrations, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationList, name: "Integrations"))
    IntegrationsMessage.type = Types::IntegrationsMessage
    InvalidAuthenticationProfileRequestFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidAuthenticationProfileRequestFault.type = Types::InvalidAuthenticationProfileRequestFault
    InvalidAuthorizationStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidAuthorizationStateFault.type = Types::InvalidAuthorizationStateFault
    InvalidClusterParameterGroupStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidClusterParameterGroupStateFault.type = Types::InvalidClusterParameterGroupStateFault
    InvalidClusterSecurityGroupStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidClusterSecurityGroupStateFault.type = Types::InvalidClusterSecurityGroupStateFault
    InvalidClusterSnapshotScheduleStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidClusterSnapshotScheduleStateFault.type = Types::InvalidClusterSnapshotScheduleStateFault
    InvalidClusterSnapshotStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidClusterSnapshotStateFault.type = Types::InvalidClusterSnapshotStateFault
    InvalidClusterStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidClusterStateFault.type = Types::InvalidClusterStateFault
    InvalidClusterSubnetGroupStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidClusterSubnetGroupStateFault.type = Types::InvalidClusterSubnetGroupStateFault
    InvalidClusterSubnetStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidClusterSubnetStateFault.type = Types::InvalidClusterSubnetStateFault
    InvalidClusterTrackFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidClusterTrackFault.type = Types::InvalidClusterTrackFault
    InvalidDataShareFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidDataShareFault.type = Types::InvalidDataShareFault
    InvalidElasticIpFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidElasticIpFault.type = Types::InvalidElasticIpFault
    InvalidEndpointStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidEndpointStateFault.type = Types::InvalidEndpointStateFault
    InvalidHsmClientCertificateStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidHsmClientCertificateStateFault.type = Types::InvalidHsmClientCertificateStateFault
    InvalidHsmConfigurationStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidHsmConfigurationStateFault.type = Types::InvalidHsmConfigurationStateFault
    InvalidNamespaceFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidNamespaceFault.type = Types::InvalidNamespaceFault
    InvalidPolicyFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidPolicyFault.type = Types::InvalidPolicyFault
    InvalidReservedNodeStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidReservedNodeStateFault.type = Types::InvalidReservedNodeStateFault
    InvalidRestoreFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidRestoreFault.type = Types::InvalidRestoreFault
    InvalidRetentionPeriodFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidRetentionPeriodFault.type = Types::InvalidRetentionPeriodFault
    InvalidS3BucketNameFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidS3BucketNameFault.type = Types::InvalidS3BucketNameFault
    InvalidS3KeyPrefixFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidS3KeyPrefixFault.type = Types::InvalidS3KeyPrefixFault
    InvalidScheduleFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidScheduleFault.type = Types::InvalidScheduleFault
    InvalidScheduledActionFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidScheduledActionFault.type = Types::InvalidScheduledActionFault
    InvalidSnapshotCopyGrantStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidSnapshotCopyGrantStateFault.type = Types::InvalidSnapshotCopyGrantStateFault
    InvalidSubnet.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidSubnet.type = Types::InvalidSubnet
    InvalidSubscriptionStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidSubscriptionStateFault.type = Types::InvalidSubscriptionStateFault
    InvalidTableRestoreArgumentFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidTableRestoreArgumentFault.type = Types::InvalidTableRestoreArgumentFault
    InvalidTagFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidTagFault.type = Types::InvalidTagFault
    InvalidUsageLimitFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidUsageLimitFault.type = Types::InvalidUsageLimitFault
    InvalidVPCNetworkStateFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    InvalidVPCNetworkStateFault.type = Types::InvalidVPCNetworkStateFault
    Ipv6CidrBlockNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    Ipv6CidrBlockNotFoundFault.type = Types::Ipv6CidrBlockNotFoundFault
    LakeFormationQuery.add_member(:authorization, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceAuthorization, name: "Authorization", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    LakeFormationQuery.type = Types::LakeFormationQuery
    LakeFormationScopeUnion.add_member(:lake_formation_query, Types::LakeFormationScopeUnion::LakeFormationQuery, ::Smithy::Schema::Shapes::MemberShape.new(target: LakeFormationQuery, name: "LakeFormationQuery"))
    LakeFormationScopeUnion.add_member(:unknown, Types::LakeFormationScopeUnion::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    LakeFormationScopeUnion.type = Types::LakeFormationScopeUnion
    LakeFormationServiceIntegrations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LakeFormationScopeUnion, name: "member"))
    LimitExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    LimitExceededFault.type = Types::LimitExceededFault
    ListRecommendationsMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier"))
    ListRecommendationsMessage.add_member(:namespace_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NamespaceArn"))
    ListRecommendationsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "MaxRecords"))
    ListRecommendationsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    ListRecommendationsMessage.type = Types::ListRecommendationsMessage
    ListRecommendationsResult.add_member(:recommendations, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationList, name: "Recommendations"))
    ListRecommendationsResult.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    ListRecommendationsResult.type = Types::ListRecommendationsResult
    LogDestinationType.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3", traits: {"smithy.api#enumValue" => "s3"}))
    LogDestinationType.add_member(:cloudwatch, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOUDWATCH", traits: {"smithy.api#enumValue" => "cloudwatch"}))
    LogTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    MaintenanceTrack.add_member(:maintenance_track_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MaintenanceTrackName"))
    MaintenanceTrack.add_member(:database_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseVersion"))
    MaintenanceTrack.add_member(:update_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: EligibleTracksToUpdateList, name: "UpdateTargets"))
    MaintenanceTrack.type = Types::MaintenanceTrack
    Mode.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "standard"}))
    Mode.add_member(:high_performance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIGH_PERFORMANCE", traits: {"smithy.api#enumValue" => "high-performance"}))
    ModifyAquaInputMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyAquaInputMessage.add_member(:aqua_configuration_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AquaConfigurationStatus, name: "AquaConfigurationStatus"))
    ModifyAquaInputMessage.type = Types::ModifyAquaInputMessage
    ModifyAquaOutputMessage.add_member(:aqua_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AquaConfiguration, name: "AquaConfiguration"))
    ModifyAquaOutputMessage.type = Types::ModifyAquaOutputMessage
    ModifyAuthenticationProfileMessage.add_member(:authentication_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationProfileNameString, name: "AuthenticationProfileName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyAuthenticationProfileMessage.add_member(:authentication_profile_content, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AuthenticationProfileContent", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyAuthenticationProfileMessage.type = Types::ModifyAuthenticationProfileMessage
    ModifyAuthenticationProfileResult.add_member(:authentication_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationProfileNameString, name: "AuthenticationProfileName"))
    ModifyAuthenticationProfileResult.add_member(:authentication_profile_content, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AuthenticationProfileContent"))
    ModifyAuthenticationProfileResult.type = Types::ModifyAuthenticationProfileResult
    ModifyClusterDbRevisionMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyClusterDbRevisionMessage.add_member(:revision_target, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionTarget", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyClusterDbRevisionMessage.type = Types::ModifyClusterDbRevisionMessage
    ModifyClusterDbRevisionResult.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, name: "Cluster"))
    ModifyClusterDbRevisionResult.type = Types::ModifyClusterDbRevisionResult
    ModifyClusterIamRolesMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyClusterIamRolesMessage.add_member(:add_iam_roles, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArnList, name: "AddIamRoles"))
    ModifyClusterIamRolesMessage.add_member(:remove_iam_roles, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArnList, name: "RemoveIamRoles"))
    ModifyClusterIamRolesMessage.add_member(:default_iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DefaultIamRoleArn"))
    ModifyClusterIamRolesMessage.type = Types::ModifyClusterIamRolesMessage
    ModifyClusterIamRolesResult.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, name: "Cluster"))
    ModifyClusterIamRolesResult.type = Types::ModifyClusterIamRolesResult
    ModifyClusterMaintenanceMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyClusterMaintenanceMessage.add_member(:defer_maintenance, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "DeferMaintenance"))
    ModifyClusterMaintenanceMessage.add_member(:defer_maintenance_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DeferMaintenanceIdentifier"))
    ModifyClusterMaintenanceMessage.add_member(:defer_maintenance_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "DeferMaintenanceStartTime"))
    ModifyClusterMaintenanceMessage.add_member(:defer_maintenance_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "DeferMaintenanceEndTime"))
    ModifyClusterMaintenanceMessage.add_member(:defer_maintenance_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "DeferMaintenanceDuration"))
    ModifyClusterMaintenanceMessage.type = Types::ModifyClusterMaintenanceMessage
    ModifyClusterMaintenanceResult.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, name: "Cluster"))
    ModifyClusterMaintenanceResult.type = Types::ModifyClusterMaintenanceResult
    ModifyClusterMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyClusterMessage.add_member(:cluster_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterType"))
    ModifyClusterMessage.add_member(:node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NodeType"))
    ModifyClusterMessage.add_member(:number_of_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "NumberOfNodes"))
    ModifyClusterMessage.add_member(:cluster_security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterSecurityGroupNameList, name: "ClusterSecurityGroups"))
    ModifyClusterMessage.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupIdList, name: "VpcSecurityGroupIds"))
    ModifyClusterMessage.add_member(:master_user_password, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "MasterUserPassword"))
    ModifyClusterMessage.add_member(:cluster_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterParameterGroupName"))
    ModifyClusterMessage.add_member(:automated_snapshot_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "AutomatedSnapshotRetentionPeriod"))
    ModifyClusterMessage.add_member(:manual_snapshot_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "ManualSnapshotRetentionPeriod"))
    ModifyClusterMessage.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredMaintenanceWindow"))
    ModifyClusterMessage.add_member(:cluster_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterVersion"))
    ModifyClusterMessage.add_member(:allow_version_upgrade, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AllowVersionUpgrade"))
    ModifyClusterMessage.add_member(:hsm_client_certificate_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "HsmClientCertificateIdentifier"))
    ModifyClusterMessage.add_member(:hsm_configuration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "HsmConfigurationIdentifier"))
    ModifyClusterMessage.add_member(:new_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NewClusterIdentifier"))
    ModifyClusterMessage.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "PubliclyAccessible"))
    ModifyClusterMessage.add_member(:elastic_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ElasticIp"))
    ModifyClusterMessage.add_member(:enhanced_vpc_routing, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EnhancedVpcRouting"))
    ModifyClusterMessage.add_member(:maintenance_track_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MaintenanceTrackName"))
    ModifyClusterMessage.add_member(:encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "Encrypted"))
    ModifyClusterMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    ModifyClusterMessage.add_member(:availability_zone_relocation, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AvailabilityZoneRelocation"))
    ModifyClusterMessage.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AvailabilityZone"))
    ModifyClusterMessage.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    ModifyClusterMessage.add_member(:manage_master_password, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ManageMasterPassword"))
    ModifyClusterMessage.add_member(:master_password_secret_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MasterPasswordSecretKmsKeyId"))
    ModifyClusterMessage.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IpAddressType"))
    ModifyClusterMessage.add_member(:multi_az, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "MultiAZ"))
    ModifyClusterMessage.type = Types::ModifyClusterMessage
    ModifyClusterParameterGroupMessage.add_member(:parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyClusterParameterGroupMessage.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParametersList, name: "Parameters", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyClusterParameterGroupMessage.type = Types::ModifyClusterParameterGroupMessage
    ModifyClusterParameterGroupOutput.add_member(:parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterGroupName"))
    ModifyClusterParameterGroupOutput.add_member(:parameter_group_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterGroupStatus"))
    ModifyClusterParameterGroupOutput.type = Types::ModifyClusterParameterGroupOutput
    ModifyClusterResult.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, name: "Cluster"))
    ModifyClusterResult.type = Types::ModifyClusterResult
    ModifyClusterSnapshotMessage.add_member(:snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyClusterSnapshotMessage.add_member(:manual_snapshot_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "ManualSnapshotRetentionPeriod"))
    ModifyClusterSnapshotMessage.add_member(:force, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Force"))
    ModifyClusterSnapshotMessage.type = Types::ModifyClusterSnapshotMessage
    ModifyClusterSnapshotResult.add_member(:snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: Snapshot, name: "Snapshot"))
    ModifyClusterSnapshotResult.type = Types::ModifyClusterSnapshotResult
    ModifyClusterSnapshotScheduleMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyClusterSnapshotScheduleMessage.add_member(:schedule_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ScheduleIdentifier"))
    ModifyClusterSnapshotScheduleMessage.add_member(:disassociate_schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "DisassociateSchedule"))
    ModifyClusterSnapshotScheduleMessage.type = Types::ModifyClusterSnapshotScheduleMessage
    ModifyClusterSubnetGroupMessage.add_member(:cluster_subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterSubnetGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyClusterSubnetGroupMessage.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    ModifyClusterSubnetGroupMessage.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdentifierList, name: "SubnetIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyClusterSubnetGroupMessage.type = Types::ModifyClusterSubnetGroupMessage
    ModifyClusterSubnetGroupResult.add_member(:cluster_subnet_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterSubnetGroup, name: "ClusterSubnetGroup"))
    ModifyClusterSubnetGroupResult.type = Types::ModifyClusterSubnetGroupResult
    ModifyCustomDomainAssociationMessage.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDomainNameString, name: "CustomDomainName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyCustomDomainAssociationMessage.add_member(:custom_domain_certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDomainCertificateArnString, name: "CustomDomainCertificateArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyCustomDomainAssociationMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyCustomDomainAssociationMessage.type = Types::ModifyCustomDomainAssociationMessage
    ModifyCustomDomainAssociationResult.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDomainNameString, name: "CustomDomainName"))
    ModifyCustomDomainAssociationResult.add_member(:custom_domain_certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDomainCertificateArnString, name: "CustomDomainCertificateArn"))
    ModifyCustomDomainAssociationResult.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier"))
    ModifyCustomDomainAssociationResult.add_member(:custom_domain_cert_expiry_time, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CustomDomainCertExpiryTime"))
    ModifyCustomDomainAssociationResult.type = Types::ModifyCustomDomainAssociationResult
    ModifyEndpointAccessMessage.add_member(:endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EndpointName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyEndpointAccessMessage.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupIdList, name: "VpcSecurityGroupIds"))
    ModifyEndpointAccessMessage.type = Types::ModifyEndpointAccessMessage
    ModifyEndpointAccessOutput.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier"))
    ModifyEndpointAccessOutput.add_member(:resource_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceOwner"))
    ModifyEndpointAccessOutput.add_member(:subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubnetGroupName"))
    ModifyEndpointAccessOutput.add_member(:endpoint_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EndpointStatus"))
    ModifyEndpointAccessOutput.add_member(:endpoint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EndpointName"))
    ModifyEndpointAccessOutput.add_member(:endpoint_create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "EndpointCreateTime"))
    ModifyEndpointAccessOutput.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Port"))
    ModifyEndpointAccessOutput.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Address"))
    ModifyEndpointAccessOutput.add_member(:vpc_security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupMembershipList, name: "VpcSecurityGroups"))
    ModifyEndpointAccessOutput.add_member(:vpc_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpoint, name: "VpcEndpoint"))
    ModifyEndpointAccessOutput.type = Types::ModifyEndpointAccessOutput
    ModifyEventSubscriptionMessage.add_member(:subscription_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubscriptionName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyEventSubscriptionMessage.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnsTopicArn"))
    ModifyEventSubscriptionMessage.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceType"))
    ModifyEventSubscriptionMessage.add_member(:source_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceIdsList, name: "SourceIds"))
    ModifyEventSubscriptionMessage.add_member(:event_categories, ::Smithy::Schema::Shapes::MemberShape.new(target: EventCategoriesList, name: "EventCategories"))
    ModifyEventSubscriptionMessage.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Severity"))
    ModifyEventSubscriptionMessage.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "Enabled"))
    ModifyEventSubscriptionMessage.type = Types::ModifyEventSubscriptionMessage
    ModifyEventSubscriptionResult.add_member(:event_subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: EventSubscription, name: "EventSubscription"))
    ModifyEventSubscriptionResult.type = Types::ModifyEventSubscriptionResult
    ModifyIntegrationMessage.add_member(:integration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationArn, name: "IntegrationArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyIntegrationMessage.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationDescription, name: "Description"))
    ModifyIntegrationMessage.add_member(:integration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationName, name: "IntegrationName"))
    ModifyIntegrationMessage.type = Types::ModifyIntegrationMessage
    ModifyIntegrationOutput.add_member(:integration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationArn, name: "IntegrationArn"))
    ModifyIntegrationOutput.add_member(:integration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationName, name: "IntegrationName"))
    ModifyIntegrationOutput.add_member(:source_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceArn, name: "SourceArn"))
    ModifyIntegrationOutput.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetArn, name: "TargetArn"))
    ModifyIntegrationOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ZeroETLIntegrationStatus, name: "Status"))
    ModifyIntegrationOutput.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationErrorList, name: "Errors"))
    ModifyIntegrationOutput.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CreateTime"))
    ModifyIntegrationOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    ModifyIntegrationOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KMSKeyId"))
    ModifyIntegrationOutput.add_member(:additional_encryption_context, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionContextMap, name: "AdditionalEncryptionContext"))
    ModifyIntegrationOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ModifyIntegrationOutput.type = Types::ModifyIntegrationOutput
    ModifyRedshiftIdcApplicationMessage.add_member(:redshift_idc_application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RedshiftIdcApplicationArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyRedshiftIdcApplicationMessage.add_member(:identity_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityNamespaceString, name: "IdentityNamespace"))
    ModifyRedshiftIdcApplicationMessage.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IamRoleArn"))
    ModifyRedshiftIdcApplicationMessage.add_member(:idc_display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IdcDisplayNameString, name: "IdcDisplayName"))
    ModifyRedshiftIdcApplicationMessage.add_member(:authorized_token_issuer_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizedTokenIssuerList, name: "AuthorizedTokenIssuerList"))
    ModifyRedshiftIdcApplicationMessage.add_member(:service_integrations, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceIntegrationList, name: "ServiceIntegrations"))
    ModifyRedshiftIdcApplicationMessage.type = Types::ModifyRedshiftIdcApplicationMessage
    ModifyRedshiftIdcApplicationResult.add_member(:redshift_idc_application, ::Smithy::Schema::Shapes::MemberShape.new(target: RedshiftIdcApplication, name: "RedshiftIdcApplication"))
    ModifyRedshiftIdcApplicationResult.type = Types::ModifyRedshiftIdcApplicationResult
    ModifyScheduledActionMessage.add_member(:scheduled_action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ScheduledActionName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyScheduledActionMessage.add_member(:target_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledActionType, name: "TargetAction"))
    ModifyScheduledActionMessage.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Schedule"))
    ModifyScheduledActionMessage.add_member(:iam_role, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IamRole"))
    ModifyScheduledActionMessage.add_member(:scheduled_action_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ScheduledActionDescription"))
    ModifyScheduledActionMessage.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "StartTime"))
    ModifyScheduledActionMessage.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "EndTime"))
    ModifyScheduledActionMessage.add_member(:enable, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "Enable"))
    ModifyScheduledActionMessage.type = Types::ModifyScheduledActionMessage
    ModifyScheduledActionOutput.add_member(:scheduled_action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ScheduledActionName"))
    ModifyScheduledActionOutput.add_member(:target_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledActionType, name: "TargetAction"))
    ModifyScheduledActionOutput.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Schedule"))
    ModifyScheduledActionOutput.add_member(:iam_role, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IamRole"))
    ModifyScheduledActionOutput.add_member(:scheduled_action_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ScheduledActionDescription"))
    ModifyScheduledActionOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledActionState, name: "State"))
    ModifyScheduledActionOutput.add_member(:next_invocations, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledActionTimeList, name: "NextInvocations"))
    ModifyScheduledActionOutput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "StartTime"))
    ModifyScheduledActionOutput.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "EndTime"))
    ModifyScheduledActionOutput.type = Types::ModifyScheduledActionOutput
    ModifySnapshotCopyRetentionPeriodMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifySnapshotCopyRetentionPeriodMessage.add_member(:retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "RetentionPeriod", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifySnapshotCopyRetentionPeriodMessage.add_member(:manual, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Manual"))
    ModifySnapshotCopyRetentionPeriodMessage.type = Types::ModifySnapshotCopyRetentionPeriodMessage
    ModifySnapshotCopyRetentionPeriodResult.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, name: "Cluster"))
    ModifySnapshotCopyRetentionPeriodResult.type = Types::ModifySnapshotCopyRetentionPeriodResult
    ModifySnapshotScheduleMessage.add_member(:schedule_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ScheduleIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifySnapshotScheduleMessage.add_member(:schedule_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleDefinitionList, name: "ScheduleDefinitions", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifySnapshotScheduleMessage.type = Types::ModifySnapshotScheduleMessage
    ModifySnapshotScheduleOutput.add_member(:schedule_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleDefinitionList, name: "ScheduleDefinitions"))
    ModifySnapshotScheduleOutput.add_member(:schedule_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ScheduleIdentifier"))
    ModifySnapshotScheduleOutput.add_member(:schedule_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ScheduleDescription"))
    ModifySnapshotScheduleOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ModifySnapshotScheduleOutput.add_member(:next_invocations, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledSnapshotTimeList, name: "NextInvocations"))
    ModifySnapshotScheduleOutput.add_member(:associated_cluster_count, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "AssociatedClusterCount"))
    ModifySnapshotScheduleOutput.add_member(:associated_clusters, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedClusterList, name: "AssociatedClusters"))
    ModifySnapshotScheduleOutput.type = Types::ModifySnapshotScheduleOutput
    ModifyUsageLimitMessage.add_member(:usage_limit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UsageLimitId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyUsageLimitMessage.add_member(:amount, ::Smithy::Schema::Shapes::MemberShape.new(target: LongOptional, name: "Amount"))
    ModifyUsageLimitMessage.add_member(:breach_action, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageLimitBreachAction, name: "BreachAction"))
    ModifyUsageLimitMessage.type = Types::ModifyUsageLimitMessage
    ModifyUsageLimitOutput.add_member(:usage_limit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UsageLimitId"))
    ModifyUsageLimitOutput.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier"))
    ModifyUsageLimitOutput.add_member(:feature_type, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageLimitFeatureType, name: "FeatureType"))
    ModifyUsageLimitOutput.add_member(:limit_type, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageLimitLimitType, name: "LimitType"))
    ModifyUsageLimitOutput.add_member(:amount, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "Amount"))
    ModifyUsageLimitOutput.add_member(:period, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageLimitPeriod, name: "Period"))
    ModifyUsageLimitOutput.add_member(:breach_action, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageLimitBreachAction, name: "BreachAction"))
    ModifyUsageLimitOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ModifyUsageLimitOutput.type = Types::ModifyUsageLimitOutput
    NamespaceIdentifierUnion.add_member(:serverless_identifier, Types::NamespaceIdentifierUnion::ServerlessIdentifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerlessIdentifier, name: "ServerlessIdentifier"))
    NamespaceIdentifierUnion.add_member(:provisioned_identifier, Types::NamespaceIdentifierUnion::ProvisionedIdentifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedIdentifier, name: "ProvisionedIdentifier"))
    NamespaceIdentifierUnion.add_member(:unknown, Types::NamespaceIdentifierUnion::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    NamespaceIdentifierUnion.type = Types::NamespaceIdentifierUnion
    NamespaceRegistrationStatus.add_member(:registering, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGISTERING", traits: {"smithy.api#enumValue" => "Registering"}))
    NamespaceRegistrationStatus.add_member(:deregistering, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEREGISTERING", traits: {"smithy.api#enumValue" => "Deregistering"}))
    NetworkInterface.add_member(:network_interface_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NetworkInterfaceId"))
    NetworkInterface.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubnetId"))
    NetworkInterface.add_member(:private_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PrivateIpAddress"))
    NetworkInterface.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AvailabilityZone"))
    NetworkInterface.add_member(:ipv6_address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Ipv6Address"))
    NetworkInterface.type = Types::NetworkInterface
    NetworkInterfaceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterface, name: "member", traits: {"smithy.api#xmlName" => "NetworkInterface"}))
    NodeConfigurationOption.add_member(:node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NodeType"))
    NodeConfigurationOption.add_member(:number_of_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NumberOfNodes"))
    NodeConfigurationOption.add_member(:estimated_disk_utilization_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleOptional, name: "EstimatedDiskUtilizationPercent"))
    NodeConfigurationOption.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: Mode, name: "Mode"))
    NodeConfigurationOption.type = Types::NodeConfigurationOption
    NodeConfigurationOptionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeConfigurationOption, name: "member", traits: {"smithy.api#xmlName" => "NodeConfigurationOption"}))
    NodeConfigurationOptionsFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeConfigurationOptionsFilterName, name: "Name"))
    NodeConfigurationOptionsFilter.add_member(:operator, ::Smithy::Schema::Shapes::MemberShape.new(target: OperatorType, name: "Operator"))
    NodeConfigurationOptionsFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueStringList, name: "Values", traits: {"smithy.api#xmlName" => "Value"}))
    NodeConfigurationOptionsFilter.type = Types::NodeConfigurationOptionsFilter
    NodeConfigurationOptionsFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeConfigurationOptionsFilter, name: "member", traits: {"smithy.api#xmlName" => "NodeConfigurationOptionsFilter"}))
    NodeConfigurationOptionsFilterName.add_member(:node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NODE_TYPE", traits: {"smithy.api#enumValue" => "NodeType"}))
    NodeConfigurationOptionsFilterName.add_member(:num_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NUM_NODES", traits: {"smithy.api#enumValue" => "NumberOfNodes"}))
    NodeConfigurationOptionsFilterName.add_member(:estimated_disk_utilization_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ESTIMATED_DISK_UTILIZATION_PERCENT", traits: {"smithy.api#enumValue" => "EstimatedDiskUtilizationPercent"}))
    NodeConfigurationOptionsFilterName.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MODE", traits: {"smithy.api#enumValue" => "Mode"}))
    NodeConfigurationOptionsMessage.add_member(:node_configuration_option_list, ::Smithy::Schema::Shapes::MemberShape.new(target: NodeConfigurationOptionList, name: "NodeConfigurationOptionList"))
    NodeConfigurationOptionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    NodeConfigurationOptionsMessage.type = Types::NodeConfigurationOptionsMessage
    NumberOfNodesPerClusterLimitExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    NumberOfNodesPerClusterLimitExceededFault.type = Types::NumberOfNodesPerClusterLimitExceededFault
    NumberOfNodesQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    NumberOfNodesQuotaExceededFault.type = Types::NumberOfNodesQuotaExceededFault
    OperatorType.add_member(:eq, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQ", traits: {"smithy.api#enumValue" => "eq"}))
    OperatorType.add_member(:lt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LT", traits: {"smithy.api#enumValue" => "lt"}))
    OperatorType.add_member(:gt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GT", traits: {"smithy.api#enumValue" => "gt"}))
    OperatorType.add_member(:le, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LE", traits: {"smithy.api#enumValue" => "le"}))
    OperatorType.add_member(:ge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GE", traits: {"smithy.api#enumValue" => "ge"}))
    OperatorType.add_member(:in, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN", traits: {"smithy.api#enumValue" => "in"}))
    OperatorType.add_member(:between, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BETWEEN", traits: {"smithy.api#enumValue" => "between"}))
    OrderableClusterOption.add_member(:cluster_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterVersion"))
    OrderableClusterOption.add_member(:cluster_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterType"))
    OrderableClusterOption.add_member(:node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NodeType"))
    OrderableClusterOption.add_member(:availability_zones, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneList, name: "AvailabilityZones"))
    OrderableClusterOption.type = Types::OrderableClusterOption
    OrderableClusterOptionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderableClusterOption, name: "member", traits: {"smithy.api#xmlName" => "OrderableClusterOption"}))
    OrderableClusterOptionsMessage.add_member(:orderable_cluster_options, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderableClusterOptionsList, name: "OrderableClusterOptions"))
    OrderableClusterOptionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    OrderableClusterOptionsMessage.type = Types::OrderableClusterOptionsMessage
    Parameter.add_member(:parameter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterName"))
    Parameter.add_member(:parameter_value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterValue"))
    Parameter.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    Parameter.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Source"))
    Parameter.add_member(:data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataType"))
    Parameter.add_member(:allowed_values, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AllowedValues"))
    Parameter.add_member(:apply_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterApplyType, name: "ApplyType"))
    Parameter.add_member(:is_modifiable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IsModifiable"))
    Parameter.add_member(:minimum_engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MinimumEngineVersion"))
    Parameter.type = Types::Parameter
    ParameterApplyType.add_member(:static, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "static", traits: {"smithy.api#enumValue" => "static"}))
    ParameterApplyType.add_member(:dynamic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "dynamic", traits: {"smithy.api#enumValue" => "dynamic"}))
    ParameterGroupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterParameterGroup, name: "member", traits: {"smithy.api#xmlName" => "ClusterParameterGroup"}))
    ParametersList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Parameter, name: "member", traits: {"smithy.api#xmlName" => "Parameter"}))
    PartnerIntegrationInfo.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIntegrationDatabaseName, name: "DatabaseName"))
    PartnerIntegrationInfo.add_member(:partner_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIntegrationPartnerName, name: "PartnerName"))
    PartnerIntegrationInfo.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIntegrationStatus, name: "Status"))
    PartnerIntegrationInfo.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIntegrationStatusMessage, name: "StatusMessage"))
    PartnerIntegrationInfo.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CreatedAt"))
    PartnerIntegrationInfo.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "UpdatedAt"))
    PartnerIntegrationInfo.type = Types::PartnerIntegrationInfo
    PartnerIntegrationInfoList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIntegrationInfo, name: "member", traits: {"smithy.api#xmlName" => "PartnerIntegrationInfo"}))
    PartnerIntegrationStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Active", traits: {"smithy.api#enumValue" => "Active"}))
    PartnerIntegrationStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Inactive", traits: {"smithy.api#enumValue" => "Inactive"}))
    PartnerIntegrationStatus.add_member(:runtime_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RuntimeFailure", traits: {"smithy.api#enumValue" => "RuntimeFailure"}))
    PartnerIntegrationStatus.add_member(:connection_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ConnectionFailure", traits: {"smithy.api#enumValue" => "ConnectionFailure"}))
    PartnerNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    PartnerNotFoundFault.type = Types::PartnerNotFoundFault
    PauseClusterInput.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PauseClusterInput.type = Types::PauseClusterInput
    PauseClusterMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PauseClusterMessage.type = Types::PauseClusterMessage
    PauseClusterResult.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, name: "Cluster"))
    PauseClusterResult.type = Types::PauseClusterResult
    PendingActionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    PendingModifiedValues.add_member(:master_user_password, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "MasterUserPassword"))
    PendingModifiedValues.add_member(:node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NodeType"))
    PendingModifiedValues.add_member(:number_of_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "NumberOfNodes"))
    PendingModifiedValues.add_member(:cluster_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterType"))
    PendingModifiedValues.add_member(:cluster_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterVersion"))
    PendingModifiedValues.add_member(:automated_snapshot_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "AutomatedSnapshotRetentionPeriod"))
    PendingModifiedValues.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier"))
    PendingModifiedValues.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "PubliclyAccessible"))
    PendingModifiedValues.add_member(:enhanced_vpc_routing, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EnhancedVpcRouting"))
    PendingModifiedValues.add_member(:maintenance_track_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MaintenanceTrackName"))
    PendingModifiedValues.add_member(:encryption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EncryptionType"))
    PendingModifiedValues.type = Types::PendingModifiedValues
    ProvisionedIdentifier.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ProvisionedIdentifier.type = Types::ProvisionedIdentifier
    PurchaseReservedNodeOfferingMessage.add_member(:reserved_node_offering_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReservedNodeOfferingId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PurchaseReservedNodeOfferingMessage.add_member(:node_count, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "NodeCount"))
    PurchaseReservedNodeOfferingMessage.type = Types::PurchaseReservedNodeOfferingMessage
    PurchaseReservedNodeOfferingResult.add_member(:reserved_node, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedNode, name: "ReservedNode"))
    PurchaseReservedNodeOfferingResult.type = Types::PurchaseReservedNodeOfferingResult
    PutResourcePolicyMessage.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutResourcePolicyMessage.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Policy", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutResourcePolicyMessage.type = Types::PutResourcePolicyMessage
    PutResourcePolicyResult.add_member(:resource_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicy, name: "ResourcePolicy"))
    PutResourcePolicyResult.type = Types::PutResourcePolicyResult
    ReadWriteAccess.add_member(:authorization, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceAuthorization, name: "Authorization", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ReadWriteAccess.type = Types::ReadWriteAccess
    RebootClusterMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RebootClusterMessage.type = Types::RebootClusterMessage
    RebootClusterResult.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, name: "Cluster"))
    RebootClusterResult.type = Types::RebootClusterResult
    Recommendation.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    Recommendation.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier"))
    Recommendation.add_member(:namespace_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NamespaceArn"))
    Recommendation.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "CreatedAt"))
    Recommendation.add_member(:recommendation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RecommendationType"))
    Recommendation.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Title"))
    Recommendation.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    Recommendation.add_member(:observation, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Observation"))
    Recommendation.add_member(:impact_ranking, ::Smithy::Schema::Shapes::MemberShape.new(target: ImpactRankingType, name: "ImpactRanking"))
    Recommendation.add_member(:recommendation_text, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RecommendationText"))
    Recommendation.add_member(:recommended_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedActionList, name: "RecommendedActions"))
    Recommendation.add_member(:reference_links, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceLinkList, name: "ReferenceLinks"))
    Recommendation.type = Types::Recommendation
    RecommendationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Recommendation, name: "member", traits: {"smithy.api#xmlName" => "Recommendation"}))
    RecommendedAction.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Text"))
    RecommendedAction.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Database"))
    RecommendedAction.add_member(:command, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Command"))
    RecommendedAction.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedActionType, name: "Type"))
    RecommendedAction.type = Types::RecommendedAction
    RecommendedActionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedAction, name: "member", traits: {"smithy.api#xmlName" => "RecommendedAction"}))
    RecommendedActionType.add_member(:sql, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SQL", traits: {"smithy.api#enumValue" => "SQL"}))
    RecommendedActionType.add_member(:cli, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLI", traits: {"smithy.api#enumValue" => "CLI"}))
    RecurringCharge.add_member(:recurring_charge_amount, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "RecurringChargeAmount"))
    RecurringCharge.add_member(:recurring_charge_frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RecurringChargeFrequency"))
    RecurringCharge.type = Types::RecurringCharge
    RecurringChargeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecurringCharge, name: "member", traits: {"smithy.api#xmlName" => "RecurringCharge"}))
    RedshiftIdcApplication.add_member(:idc_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IdcInstanceArn"))
    RedshiftIdcApplication.add_member(:redshift_idc_application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RedshiftIdcApplicationName, name: "RedshiftIdcApplicationName"))
    RedshiftIdcApplication.add_member(:redshift_idc_application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RedshiftIdcApplicationArn"))
    RedshiftIdcApplication.add_member(:identity_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityNamespaceString, name: "IdentityNamespace"))
    RedshiftIdcApplication.add_member(:idc_display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IdcDisplayNameString, name: "IdcDisplayName"))
    RedshiftIdcApplication.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IamRoleArn"))
    RedshiftIdcApplication.add_member(:idc_managed_application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IdcManagedApplicationArn"))
    RedshiftIdcApplication.add_member(:idc_onboard_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IdcOnboardStatus"))
    RedshiftIdcApplication.add_member(:authorized_token_issuer_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizedTokenIssuerList, name: "AuthorizedTokenIssuerList"))
    RedshiftIdcApplication.add_member(:service_integrations, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceIntegrationList, name: "ServiceIntegrations"))
    RedshiftIdcApplication.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    RedshiftIdcApplication.add_member(:sso_tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "SsoTagKeys"))
    RedshiftIdcApplication.type = Types::RedshiftIdcApplication
    RedshiftIdcApplicationAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    RedshiftIdcApplicationAlreadyExistsFault.type = Types::RedshiftIdcApplicationAlreadyExistsFault
    RedshiftIdcApplicationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RedshiftIdcApplication, name: "member"))
    RedshiftIdcApplicationNotExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    RedshiftIdcApplicationNotExistsFault.type = Types::RedshiftIdcApplicationNotExistsFault
    RedshiftIdcApplicationQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    RedshiftIdcApplicationQuotaExceededFault.type = Types::RedshiftIdcApplicationQuotaExceededFault
    ReferenceLink.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Text"))
    ReferenceLink.add_member(:link, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Link"))
    ReferenceLink.type = Types::ReferenceLink
    ReferenceLinkList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceLink, name: "member", traits: {"smithy.api#xmlName" => "ReferenceLink"}))
    RegisterNamespaceInputMessage.add_member(:namespace_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceIdentifierUnion, name: "NamespaceIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RegisterNamespaceInputMessage.add_member(:consumer_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsumerIdentifierList, name: "ConsumerIdentifiers", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RegisterNamespaceInputMessage.type = Types::RegisterNamespaceInputMessage
    RegisterNamespaceOutputMessage.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceRegistrationStatus, name: "Status"))
    RegisterNamespaceOutputMessage.type = Types::RegisterNamespaceOutputMessage
    RejectDataShareMessage.add_member(:data_share_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataShareArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RejectDataShareMessage.type = Types::RejectDataShareMessage
    RejectDataShareOutput.add_member(:data_share_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataShareArn"))
    RejectDataShareOutput.add_member(:producer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ProducerArn"))
    RejectDataShareOutput.add_member(:allow_publicly_accessible_consumers, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AllowPubliclyAccessibleConsumers"))
    RejectDataShareOutput.add_member(:data_share_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: DataShareAssociationList, name: "DataShareAssociations"))
    RejectDataShareOutput.add_member(:managed_by, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ManagedBy"))
    RejectDataShareOutput.add_member(:data_share_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataShareType, name: "DataShareType"))
    RejectDataShareOutput.type = Types::RejectDataShareOutput
    ReservedNode.add_member(:reserved_node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReservedNodeId"))
    ReservedNode.add_member(:reserved_node_offering_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReservedNodeOfferingId"))
    ReservedNode.add_member(:node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NodeType"))
    ReservedNode.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "StartTime"))
    ReservedNode.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Duration"))
    ReservedNode.add_member(:fixed_price, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "FixedPrice"))
    ReservedNode.add_member(:usage_price, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "UsagePrice"))
    ReservedNode.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CurrencyCode"))
    ReservedNode.add_member(:node_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NodeCount"))
    ReservedNode.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "State"))
    ReservedNode.add_member(:offering_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OfferingType"))
    ReservedNode.add_member(:recurring_charges, ::Smithy::Schema::Shapes::MemberShape.new(target: RecurringChargeList, name: "RecurringCharges"))
    ReservedNode.add_member(:reserved_node_offering_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedNodeOfferingType, name: "ReservedNodeOfferingType"))
    ReservedNode.type = Types::ReservedNode
    ReservedNodeAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ReservedNodeAlreadyExistsFault.type = Types::ReservedNodeAlreadyExistsFault
    ReservedNodeAlreadyMigratedFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ReservedNodeAlreadyMigratedFault.type = Types::ReservedNodeAlreadyMigratedFault
    ReservedNodeConfigurationOption.add_member(:source_reserved_node, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedNode, name: "SourceReservedNode"))
    ReservedNodeConfigurationOption.add_member(:target_reserved_node_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "TargetReservedNodeCount"))
    ReservedNodeConfigurationOption.add_member(:target_reserved_node_offering, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedNodeOffering, name: "TargetReservedNodeOffering"))
    ReservedNodeConfigurationOption.type = Types::ReservedNodeConfigurationOption
    ReservedNodeConfigurationOptionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedNodeConfigurationOption, name: "member", traits: {"smithy.api#xmlName" => "ReservedNodeConfigurationOption"}))
    ReservedNodeExchangeActionType.add_member(:restore_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESTORE_CLUSTER", traits: {"smithy.api#enumValue" => "restore-cluster"}))
    ReservedNodeExchangeActionType.add_member(:resize_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESIZE_CLUSTER", traits: {"smithy.api#enumValue" => "resize-cluster"}))
    ReservedNodeExchangeNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ReservedNodeExchangeNotFoundFault.type = Types::ReservedNodeExchangeNotFoundFault
    ReservedNodeExchangeStatus.add_member(:reserved_node_exchange_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReservedNodeExchangeRequestId"))
    ReservedNodeExchangeStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedNodeExchangeStatusType, name: "Status"))
    ReservedNodeExchangeStatus.add_member(:request_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "RequestTime"))
    ReservedNodeExchangeStatus.add_member(:source_reserved_node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceReservedNodeId"))
    ReservedNodeExchangeStatus.add_member(:source_reserved_node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceReservedNodeType"))
    ReservedNodeExchangeStatus.add_member(:source_reserved_node_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "SourceReservedNodeCount"))
    ReservedNodeExchangeStatus.add_member(:target_reserved_node_offering_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetReservedNodeOfferingId"))
    ReservedNodeExchangeStatus.add_member(:target_reserved_node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetReservedNodeType"))
    ReservedNodeExchangeStatus.add_member(:target_reserved_node_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "TargetReservedNodeCount"))
    ReservedNodeExchangeStatus.type = Types::ReservedNodeExchangeStatus
    ReservedNodeExchangeStatusList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedNodeExchangeStatus, name: "member", traits: {"smithy.api#xmlName" => "ReservedNodeExchangeStatus"}))
    ReservedNodeExchangeStatusType.add_member(:requested, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUESTED", traits: {"smithy.api#enumValue" => "REQUESTED"}))
    ReservedNodeExchangeStatusType.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    ReservedNodeExchangeStatusType.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ReservedNodeExchangeStatusType.add_member(:retrying, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RETRYING", traits: {"smithy.api#enumValue" => "RETRYING"}))
    ReservedNodeExchangeStatusType.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    ReservedNodeExchangeStatusType.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ReservedNodeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedNode, name: "member", traits: {"smithy.api#xmlName" => "ReservedNode"}))
    ReservedNodeNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ReservedNodeNotFoundFault.type = Types::ReservedNodeNotFoundFault
    ReservedNodeOffering.add_member(:reserved_node_offering_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReservedNodeOfferingId"))
    ReservedNodeOffering.add_member(:node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NodeType"))
    ReservedNodeOffering.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Duration"))
    ReservedNodeOffering.add_member(:fixed_price, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "FixedPrice"))
    ReservedNodeOffering.add_member(:usage_price, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "UsagePrice"))
    ReservedNodeOffering.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CurrencyCode"))
    ReservedNodeOffering.add_member(:offering_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OfferingType"))
    ReservedNodeOffering.add_member(:recurring_charges, ::Smithy::Schema::Shapes::MemberShape.new(target: RecurringChargeList, name: "RecurringCharges"))
    ReservedNodeOffering.add_member(:reserved_node_offering_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedNodeOfferingType, name: "ReservedNodeOfferingType"))
    ReservedNodeOffering.type = Types::ReservedNodeOffering
    ReservedNodeOfferingList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedNodeOffering, name: "member", traits: {"smithy.api#xmlName" => "ReservedNodeOffering"}))
    ReservedNodeOfferingNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ReservedNodeOfferingNotFoundFault.type = Types::ReservedNodeOfferingNotFoundFault
    ReservedNodeOfferingType.add_member(:regular, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Regular", traits: {"smithy.api#enumValue" => "Regular"}))
    ReservedNodeOfferingType.add_member(:upgradable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Upgradable", traits: {"smithy.api#enumValue" => "Upgradable"}))
    ReservedNodeOfferingsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    ReservedNodeOfferingsMessage.add_member(:reserved_node_offerings, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedNodeOfferingList, name: "ReservedNodeOfferings"))
    ReservedNodeOfferingsMessage.type = Types::ReservedNodeOfferingsMessage
    ReservedNodeQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ReservedNodeQuotaExceededFault.type = Types::ReservedNodeQuotaExceededFault
    ReservedNodesMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    ReservedNodesMessage.add_member(:reserved_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: ReservedNodeList, name: "ReservedNodes"))
    ReservedNodesMessage.type = Types::ReservedNodesMessage
    ResetClusterParameterGroupMessage.add_member(:parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResetClusterParameterGroupMessage.add_member(:reset_all_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ResetAllParameters"))
    ResetClusterParameterGroupMessage.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ParametersList, name: "Parameters"))
    ResetClusterParameterGroupMessage.type = Types::ResetClusterParameterGroupMessage
    ResetClusterParameterGroupOutput.add_member(:parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterGroupName"))
    ResetClusterParameterGroupOutput.add_member(:parameter_group_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ParameterGroupStatus"))
    ResetClusterParameterGroupOutput.type = Types::ResetClusterParameterGroupOutput
    ResizeClusterInput.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResizeClusterInput.add_member(:cluster_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterType"))
    ResizeClusterInput.add_member(:node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NodeType"))
    ResizeClusterInput.add_member(:number_of_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "NumberOfNodes"))
    ResizeClusterInput.add_member(:classic, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "Classic"))
    ResizeClusterInput.add_member(:reserved_node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReservedNodeId"))
    ResizeClusterInput.add_member(:target_reserved_node_offering_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetReservedNodeOfferingId"))
    ResizeClusterInput.type = Types::ResizeClusterInput
    ResizeClusterMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResizeClusterMessage.add_member(:cluster_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterType"))
    ResizeClusterMessage.add_member(:node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NodeType"))
    ResizeClusterMessage.add_member(:number_of_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "NumberOfNodes"))
    ResizeClusterMessage.add_member(:classic, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "Classic"))
    ResizeClusterMessage.add_member(:reserved_node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReservedNodeId"))
    ResizeClusterMessage.add_member(:target_reserved_node_offering_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetReservedNodeOfferingId"))
    ResizeClusterMessage.type = Types::ResizeClusterMessage
    ResizeClusterResult.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, name: "Cluster"))
    ResizeClusterResult.type = Types::ResizeClusterResult
    ResizeInfo.add_member(:resize_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResizeType"))
    ResizeInfo.add_member(:allow_cancel_resize, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AllowCancelResize"))
    ResizeInfo.type = Types::ResizeInfo
    ResizeNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ResizeNotFoundFault.type = Types::ResizeNotFoundFault
    ResourceNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ResourceNotFoundFault.type = Types::ResourceNotFoundFault
    ResourcePolicy.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn"))
    ResourcePolicy.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Policy"))
    ResourcePolicy.type = Types::ResourcePolicy
    RestorableNodeTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "NodeType"}))
    RestoreFromClusterSnapshotMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreFromClusterSnapshotMessage.add_member(:snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotIdentifier"))
    RestoreFromClusterSnapshotMessage.add_member(:snapshot_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotArn"))
    RestoreFromClusterSnapshotMessage.add_member(:snapshot_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotClusterIdentifier"))
    RestoreFromClusterSnapshotMessage.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "Port"))
    RestoreFromClusterSnapshotMessage.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AvailabilityZone"))
    RestoreFromClusterSnapshotMessage.add_member(:allow_version_upgrade, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AllowVersionUpgrade"))
    RestoreFromClusterSnapshotMessage.add_member(:cluster_subnet_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterSubnetGroupName"))
    RestoreFromClusterSnapshotMessage.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "PubliclyAccessible"))
    RestoreFromClusterSnapshotMessage.add_member(:owner_account, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OwnerAccount"))
    RestoreFromClusterSnapshotMessage.add_member(:hsm_client_certificate_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "HsmClientCertificateIdentifier"))
    RestoreFromClusterSnapshotMessage.add_member(:hsm_configuration_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "HsmConfigurationIdentifier"))
    RestoreFromClusterSnapshotMessage.add_member(:elastic_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ElasticIp"))
    RestoreFromClusterSnapshotMessage.add_member(:cluster_parameter_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterParameterGroupName"))
    RestoreFromClusterSnapshotMessage.add_member(:cluster_security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterSecurityGroupNameList, name: "ClusterSecurityGroups"))
    RestoreFromClusterSnapshotMessage.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupIdList, name: "VpcSecurityGroupIds"))
    RestoreFromClusterSnapshotMessage.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PreferredMaintenanceWindow"))
    RestoreFromClusterSnapshotMessage.add_member(:automated_snapshot_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "AutomatedSnapshotRetentionPeriod"))
    RestoreFromClusterSnapshotMessage.add_member(:manual_snapshot_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "ManualSnapshotRetentionPeriod"))
    RestoreFromClusterSnapshotMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    RestoreFromClusterSnapshotMessage.add_member(:node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NodeType"))
    RestoreFromClusterSnapshotMessage.add_member(:enhanced_vpc_routing, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EnhancedVpcRouting"))
    RestoreFromClusterSnapshotMessage.add_member(:additional_info, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AdditionalInfo"))
    RestoreFromClusterSnapshotMessage.add_member(:iam_roles, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArnList, name: "IamRoles"))
    RestoreFromClusterSnapshotMessage.add_member(:maintenance_track_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MaintenanceTrackName"))
    RestoreFromClusterSnapshotMessage.add_member(:snapshot_schedule_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotScheduleIdentifier"))
    RestoreFromClusterSnapshotMessage.add_member(:number_of_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "NumberOfNodes"))
    RestoreFromClusterSnapshotMessage.add_member(:availability_zone_relocation, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "AvailabilityZoneRelocation"))
    RestoreFromClusterSnapshotMessage.add_member(:aqua_configuration_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AquaConfigurationStatus, name: "AquaConfigurationStatus"))
    RestoreFromClusterSnapshotMessage.add_member(:default_iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DefaultIamRoleArn"))
    RestoreFromClusterSnapshotMessage.add_member(:reserved_node_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReservedNodeId"))
    RestoreFromClusterSnapshotMessage.add_member(:target_reserved_node_offering_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetReservedNodeOfferingId"))
    RestoreFromClusterSnapshotMessage.add_member(:encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "Encrypted"))
    RestoreFromClusterSnapshotMessage.add_member(:manage_master_password, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "ManageMasterPassword"))
    RestoreFromClusterSnapshotMessage.add_member(:master_password_secret_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MasterPasswordSecretKmsKeyId"))
    RestoreFromClusterSnapshotMessage.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IpAddressType"))
    RestoreFromClusterSnapshotMessage.add_member(:multi_az, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "MultiAZ"))
    RestoreFromClusterSnapshotMessage.type = Types::RestoreFromClusterSnapshotMessage
    RestoreFromClusterSnapshotResult.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, name: "Cluster"))
    RestoreFromClusterSnapshotResult.type = Types::RestoreFromClusterSnapshotResult
    RestoreStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    RestoreStatus.add_member(:current_restore_rate_in_mega_bytes_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "CurrentRestoreRateInMegaBytesPerSecond"))
    RestoreStatus.add_member(:snapshot_size_in_mega_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "SnapshotSizeInMegaBytes"))
    RestoreStatus.add_member(:progress_in_mega_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "ProgressInMegaBytes"))
    RestoreStatus.add_member(:elapsed_time_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "ElapsedTimeInSeconds"))
    RestoreStatus.add_member(:estimated_time_to_completion_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "EstimatedTimeToCompletionInSeconds"))
    RestoreStatus.type = Types::RestoreStatus
    RestoreTableFromClusterSnapshotMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreTableFromClusterSnapshotMessage.add_member(:snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreTableFromClusterSnapshotMessage.add_member(:source_database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceDatabaseName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreTableFromClusterSnapshotMessage.add_member(:source_schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceSchemaName"))
    RestoreTableFromClusterSnapshotMessage.add_member(:source_table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceTableName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreTableFromClusterSnapshotMessage.add_member(:target_database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetDatabaseName"))
    RestoreTableFromClusterSnapshotMessage.add_member(:target_schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetSchemaName"))
    RestoreTableFromClusterSnapshotMessage.add_member(:new_table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NewTableName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreTableFromClusterSnapshotMessage.add_member(:enable_case_sensitive_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "EnableCaseSensitiveIdentifier"))
    RestoreTableFromClusterSnapshotMessage.type = Types::RestoreTableFromClusterSnapshotMessage
    RestoreTableFromClusterSnapshotResult.add_member(:table_restore_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TableRestoreStatus, name: "TableRestoreStatus"))
    RestoreTableFromClusterSnapshotResult.type = Types::RestoreTableFromClusterSnapshotResult
    ResumeClusterInput.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResumeClusterInput.type = Types::ResumeClusterInput
    ResumeClusterMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResumeClusterMessage.type = Types::ResumeClusterMessage
    ResumeClusterResult.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, name: "Cluster"))
    ResumeClusterResult.type = Types::ResumeClusterResult
    RevisionTarget.add_member(:database_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseRevision"))
    RevisionTarget.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    RevisionTarget.add_member(:database_revision_release_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "DatabaseRevisionReleaseDate"))
    RevisionTarget.type = Types::RevisionTarget
    RevisionTargetsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionTarget, name: "member", traits: {"smithy.api#xmlName" => "RevisionTarget"}))
    RevokeClusterSecurityGroupIngressMessage.add_member(:cluster_security_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterSecurityGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RevokeClusterSecurityGroupIngressMessage.add_member(:cidrip, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CIDRIP"))
    RevokeClusterSecurityGroupIngressMessage.add_member(:ec2_security_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EC2SecurityGroupName"))
    RevokeClusterSecurityGroupIngressMessage.add_member(:ec2_security_group_owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EC2SecurityGroupOwnerId"))
    RevokeClusterSecurityGroupIngressMessage.type = Types::RevokeClusterSecurityGroupIngressMessage
    RevokeClusterSecurityGroupIngressResult.add_member(:cluster_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterSecurityGroup, name: "ClusterSecurityGroup"))
    RevokeClusterSecurityGroupIngressResult.type = Types::RevokeClusterSecurityGroupIngressResult
    RevokeEndpointAccessMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier"))
    RevokeEndpointAccessMessage.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Account"))
    RevokeEndpointAccessMessage.add_member(:vpc_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcIdentifierList, name: "VpcIds"))
    RevokeEndpointAccessMessage.add_member(:force, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Force"))
    RevokeEndpointAccessMessage.type = Types::RevokeEndpointAccessMessage
    RevokeEndpointAccessOutput.add_member(:grantor, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Grantor"))
    RevokeEndpointAccessOutput.add_member(:grantee, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Grantee"))
    RevokeEndpointAccessOutput.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier"))
    RevokeEndpointAccessOutput.add_member(:authorize_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "AuthorizeTime"))
    RevokeEndpointAccessOutput.add_member(:cluster_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterStatus"))
    RevokeEndpointAccessOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizationStatus, name: "Status"))
    RevokeEndpointAccessOutput.add_member(:allowed_all_vp_cs, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AllowedAllVPCs"))
    RevokeEndpointAccessOutput.add_member(:allowed_vp_cs, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcIdentifierList, name: "AllowedVPCs"))
    RevokeEndpointAccessOutput.add_member(:endpoint_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "EndpointCount"))
    RevokeEndpointAccessOutput.type = Types::RevokeEndpointAccessOutput
    RevokeSnapshotAccessMessage.add_member(:snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotIdentifier"))
    RevokeSnapshotAccessMessage.add_member(:snapshot_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotArn"))
    RevokeSnapshotAccessMessage.add_member(:snapshot_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotClusterIdentifier"))
    RevokeSnapshotAccessMessage.add_member(:account_with_restore_access, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AccountWithRestoreAccess", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RevokeSnapshotAccessMessage.type = Types::RevokeSnapshotAccessMessage
    RevokeSnapshotAccessResult.add_member(:snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: Snapshot, name: "Snapshot"))
    RevokeSnapshotAccessResult.type = Types::RevokeSnapshotAccessResult
    RotateEncryptionKeyMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RotateEncryptionKeyMessage.type = Types::RotateEncryptionKeyMessage
    RotateEncryptionKeyResult.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, name: "Cluster"))
    RotateEncryptionKeyResult.type = Types::RotateEncryptionKeyResult
    S3AccessGrantsScopeUnion.add_member(:read_write_access, Types::S3AccessGrantsScopeUnion::ReadWriteAccess, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadWriteAccess, name: "ReadWriteAccess"))
    S3AccessGrantsScopeUnion.add_member(:unknown, Types::S3AccessGrantsScopeUnion::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    S3AccessGrantsScopeUnion.type = Types::S3AccessGrantsScopeUnion
    S3AccessGrantsServiceIntegrations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: S3AccessGrantsScopeUnion, name: "member"))
    SNSInvalidTopicFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SNSInvalidTopicFault.type = Types::SNSInvalidTopicFault
    SNSNoAuthorizationFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SNSNoAuthorizationFault.type = Types::SNSNoAuthorizationFault
    SNSTopicArnNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SNSTopicArnNotFoundFault.type = Types::SNSTopicArnNotFoundFault
    ScheduleDefinitionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "ScheduleDefinition"}))
    ScheduleDefinitionTypeUnsupportedFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ScheduleDefinitionTypeUnsupportedFault.type = Types::ScheduleDefinitionTypeUnsupportedFault
    ScheduleState.add_member(:modifying, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MODIFYING", traits: {"smithy.api#enumValue" => "MODIFYING"}))
    ScheduleState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ScheduleState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ScheduledAction.add_member(:scheduled_action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ScheduledActionName"))
    ScheduledAction.add_member(:target_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledActionType, name: "TargetAction"))
    ScheduledAction.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Schedule"))
    ScheduledAction.add_member(:iam_role, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IamRole"))
    ScheduledAction.add_member(:scheduled_action_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ScheduledActionDescription"))
    ScheduledAction.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledActionState, name: "State"))
    ScheduledAction.add_member(:next_invocations, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledActionTimeList, name: "NextInvocations"))
    ScheduledAction.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "StartTime"))
    ScheduledAction.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "EndTime"))
    ScheduledAction.type = Types::ScheduledAction
    ScheduledActionAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ScheduledActionAlreadyExistsFault.type = Types::ScheduledActionAlreadyExistsFault
    ScheduledActionFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledActionFilterName, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ScheduledActionFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueStringList, name: "Values", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ScheduledActionFilter.type = Types::ScheduledActionFilter
    ScheduledActionFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledActionFilter, name: "member", traits: {"smithy.api#xmlName" => "ScheduledActionFilter"}))
    ScheduledActionFilterName.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLUSTER_IDENTIFIER", traits: {"smithy.api#enumValue" => "cluster-identifier"}))
    ScheduledActionFilterName.add_member(:iam_role, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM_ROLE", traits: {"smithy.api#enumValue" => "iam-role"}))
    ScheduledActionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledAction, name: "member", traits: {"smithy.api#xmlName" => "ScheduledAction"}))
    ScheduledActionNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ScheduledActionNotFoundFault.type = Types::ScheduledActionNotFoundFault
    ScheduledActionQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ScheduledActionQuotaExceededFault.type = Types::ScheduledActionQuotaExceededFault
    ScheduledActionState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ScheduledActionState.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ScheduledActionTimeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "member", traits: {"smithy.api#xmlName" => "ScheduledActionTime"}))
    ScheduledActionType.add_member(:resize_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ResizeClusterMessage, name: "ResizeCluster"))
    ScheduledActionType.add_member(:pause_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: PauseClusterMessage, name: "PauseCluster"))
    ScheduledActionType.add_member(:resume_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ResumeClusterMessage, name: "ResumeCluster"))
    ScheduledActionType.type = Types::ScheduledActionType
    ScheduledActionTypeUnsupportedFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    ScheduledActionTypeUnsupportedFault.type = Types::ScheduledActionTypeUnsupportedFault
    ScheduledActionTypeValues.add_member(:resize_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESIZE_CLUSTER", traits: {"smithy.api#enumValue" => "ResizeCluster"}))
    ScheduledActionTypeValues.add_member(:pause_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAUSE_CLUSTER", traits: {"smithy.api#enumValue" => "PauseCluster"}))
    ScheduledActionTypeValues.add_member(:resume_cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESUME_CLUSTER", traits: {"smithy.api#enumValue" => "ResumeCluster"}))
    ScheduledActionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    ScheduledActionsMessage.add_member(:scheduled_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledActionList, name: "ScheduledActions"))
    ScheduledActionsMessage.type = Types::ScheduledActionsMessage
    ScheduledSnapshotTimeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "member", traits: {"smithy.api#xmlName" => "SnapshotTime"}))
    SecondaryClusterInfo.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AvailabilityZone"))
    SecondaryClusterInfo.add_member(:cluster_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterNodesList, name: "ClusterNodes"))
    SecondaryClusterInfo.type = Types::SecondaryClusterInfo
    ServerlessIdentifier.add_member(:namespace_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NamespaceIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ServerlessIdentifier.add_member(:workgroup_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "WorkgroupIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ServerlessIdentifier.type = Types::ServerlessIdentifier
    ServiceAuthorization.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "Enabled"}))
    ServiceAuthorization.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "Disabled"}))
    ServiceIntegrationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceIntegrationsUnion, name: "member"))
    ServiceIntegrationsUnion.add_member(:lake_formation, Types::ServiceIntegrationsUnion::LakeFormation, ::Smithy::Schema::Shapes::MemberShape.new(target: LakeFormationServiceIntegrations, name: "LakeFormation"))
    ServiceIntegrationsUnion.add_member(:s3_access_grants, Types::ServiceIntegrationsUnion::S3AccessGrants, ::Smithy::Schema::Shapes::MemberShape.new(target: S3AccessGrantsServiceIntegrations, name: "S3AccessGrants"))
    ServiceIntegrationsUnion.add_member(:unknown, Types::ServiceIntegrationsUnion::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ServiceIntegrationsUnion.type = Types::ServiceIntegrationsUnion
    Snapshot.add_member(:snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotIdentifier"))
    Snapshot.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier"))
    Snapshot.add_member(:snapshot_create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "SnapshotCreateTime"))
    Snapshot.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    Snapshot.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Port"))
    Snapshot.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AvailabilityZone"))
    Snapshot.add_member(:cluster_create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "ClusterCreateTime"))
    Snapshot.add_member(:master_username, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MasterUsername"))
    Snapshot.add_member(:cluster_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterVersion"))
    Snapshot.add_member(:engine_full_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EngineFullVersion"))
    Snapshot.add_member(:snapshot_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotType"))
    Snapshot.add_member(:node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NodeType"))
    Snapshot.add_member(:number_of_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "NumberOfNodes"))
    Snapshot.add_member(:db_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DBName"))
    Snapshot.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcId"))
    Snapshot.add_member(:encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Encrypted"))
    Snapshot.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    Snapshot.add_member(:encrypted_with_hsm, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "EncryptedWithHSM"))
    Snapshot.add_member(:accounts_with_restore_access, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountsWithRestoreAccessList, name: "AccountsWithRestoreAccess"))
    Snapshot.add_member(:owner_account, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OwnerAccount"))
    Snapshot.add_member(:total_backup_size_in_mega_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "TotalBackupSizeInMegaBytes"))
    Snapshot.add_member(:actual_incremental_backup_size_in_mega_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "ActualIncrementalBackupSizeInMegaBytes"))
    Snapshot.add_member(:backup_progress_in_mega_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "BackupProgressInMegaBytes"))
    Snapshot.add_member(:current_backup_rate_in_mega_bytes_per_second, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "CurrentBackupRateInMegaBytesPerSecond"))
    Snapshot.add_member(:estimated_seconds_to_completion, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "EstimatedSecondsToCompletion"))
    Snapshot.add_member(:elapsed_time_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "ElapsedTimeInSeconds"))
    Snapshot.add_member(:source_region, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceRegion"))
    Snapshot.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    Snapshot.add_member(:restorable_node_types, ::Smithy::Schema::Shapes::MemberShape.new(target: RestorableNodeTypeList, name: "RestorableNodeTypes"))
    Snapshot.add_member(:enhanced_vpc_routing, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "EnhancedVpcRouting"))
    Snapshot.add_member(:maintenance_track_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MaintenanceTrackName"))
    Snapshot.add_member(:manual_snapshot_retention_period, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "ManualSnapshotRetentionPeriod"))
    Snapshot.add_member(:manual_snapshot_remaining_days, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "ManualSnapshotRemainingDays"))
    Snapshot.add_member(:snapshot_retention_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "SnapshotRetentionStartTime"))
    Snapshot.add_member(:master_password_secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MasterPasswordSecretArn"))
    Snapshot.add_member(:master_password_secret_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MasterPasswordSecretKmsKeyId"))
    Snapshot.add_member(:snapshot_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotArn"))
    Snapshot.type = Types::Snapshot
    SnapshotAttributeToSortBy.add_member(:source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOURCE_TYPE", traits: {"smithy.api#enumValue" => "SOURCE_TYPE"}))
    SnapshotAttributeToSortBy.add_member(:total_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOTAL_SIZE", traits: {"smithy.api#enumValue" => "TOTAL_SIZE"}))
    SnapshotAttributeToSortBy.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_TIME", traits: {"smithy.api#enumValue" => "CREATE_TIME"}))
    SnapshotCopyAlreadyDisabledFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SnapshotCopyAlreadyDisabledFault.type = Types::SnapshotCopyAlreadyDisabledFault
    SnapshotCopyAlreadyEnabledFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SnapshotCopyAlreadyEnabledFault.type = Types::SnapshotCopyAlreadyEnabledFault
    SnapshotCopyDisabledFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SnapshotCopyDisabledFault.type = Types::SnapshotCopyDisabledFault
    SnapshotCopyGrant.add_member(:snapshot_copy_grant_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotCopyGrantName"))
    SnapshotCopyGrant.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyId"))
    SnapshotCopyGrant.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    SnapshotCopyGrant.type = Types::SnapshotCopyGrant
    SnapshotCopyGrantAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SnapshotCopyGrantAlreadyExistsFault.type = Types::SnapshotCopyGrantAlreadyExistsFault
    SnapshotCopyGrantList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotCopyGrant, name: "member", traits: {"smithy.api#xmlName" => "SnapshotCopyGrant"}))
    SnapshotCopyGrantMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    SnapshotCopyGrantMessage.add_member(:snapshot_copy_grants, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotCopyGrantList, name: "SnapshotCopyGrants"))
    SnapshotCopyGrantMessage.type = Types::SnapshotCopyGrantMessage
    SnapshotCopyGrantNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SnapshotCopyGrantNotFoundFault.type = Types::SnapshotCopyGrantNotFoundFault
    SnapshotCopyGrantQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SnapshotCopyGrantQuotaExceededFault.type = Types::SnapshotCopyGrantQuotaExceededFault
    SnapshotErrorMessage.add_member(:snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotIdentifier"))
    SnapshotErrorMessage.add_member(:snapshot_cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotClusterIdentifier"))
    SnapshotErrorMessage.add_member(:failure_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FailureCode"))
    SnapshotErrorMessage.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FailureReason"))
    SnapshotErrorMessage.type = Types::SnapshotErrorMessage
    SnapshotIdentifierList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "String"}))
    SnapshotList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Snapshot, name: "member", traits: {"smithy.api#xmlName" => "Snapshot"}))
    SnapshotMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    SnapshotMessage.add_member(:snapshots, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotList, name: "Snapshots"))
    SnapshotMessage.type = Types::SnapshotMessage
    SnapshotSchedule.add_member(:schedule_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduleDefinitionList, name: "ScheduleDefinitions"))
    SnapshotSchedule.add_member(:schedule_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ScheduleIdentifier"))
    SnapshotSchedule.add_member(:schedule_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ScheduleDescription"))
    SnapshotSchedule.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    SnapshotSchedule.add_member(:next_invocations, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledSnapshotTimeList, name: "NextInvocations"))
    SnapshotSchedule.add_member(:associated_cluster_count, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerOptional, name: "AssociatedClusterCount"))
    SnapshotSchedule.add_member(:associated_clusters, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedClusterList, name: "AssociatedClusters"))
    SnapshotSchedule.type = Types::SnapshotSchedule
    SnapshotScheduleAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SnapshotScheduleAlreadyExistsFault.type = Types::SnapshotScheduleAlreadyExistsFault
    SnapshotScheduleList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotSchedule, name: "member", traits: {"smithy.api#xmlName" => "SnapshotSchedule"}))
    SnapshotScheduleNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SnapshotScheduleNotFoundFault.type = Types::SnapshotScheduleNotFoundFault
    SnapshotScheduleQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SnapshotScheduleQuotaExceededFault.type = Types::SnapshotScheduleQuotaExceededFault
    SnapshotScheduleUpdateInProgressFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SnapshotScheduleUpdateInProgressFault.type = Types::SnapshotScheduleUpdateInProgressFault
    SnapshotSortingEntity.add_member(:attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotAttributeToSortBy, name: "Attribute", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SnapshotSortingEntity.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortByOrder, name: "SortOrder"))
    SnapshotSortingEntity.type = Types::SnapshotSortingEntity
    SnapshotSortingEntityList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotSortingEntity, name: "member", traits: {"smithy.api#xmlName" => "SnapshotSortingEntity"}))
    SortByOrder.add_member(:ascending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASCENDING", traits: {"smithy.api#enumValue" => "ASC"}))
    SortByOrder.add_member(:descending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESCENDING", traits: {"smithy.api#enumValue" => "DESC"}))
    SourceIdsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "SourceId"}))
    SourceNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SourceNotFoundFault.type = Types::SourceNotFoundFault
    SourceType.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "cluster", traits: {"smithy.api#enumValue" => "cluster"}))
    SourceType.add_member(:cluster_parameter_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "cluster_parameter_group", traits: {"smithy.api#enumValue" => "cluster-parameter-group"}))
    SourceType.add_member(:cluster_security_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "cluster_security_group", traits: {"smithy.api#enumValue" => "cluster-security-group"}))
    SourceType.add_member(:cluster_snapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "cluster_snapshot", traits: {"smithy.api#enumValue" => "cluster-snapshot"}))
    SourceType.add_member(:scheduled_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "scheduled_action", traits: {"smithy.api#enumValue" => "scheduled-action"}))
    Subnet.add_member(:subnet_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubnetIdentifier"))
    Subnet.add_member(:subnet_availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZone, name: "SubnetAvailabilityZone"))
    Subnet.add_member(:subnet_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SubnetStatus"))
    Subnet.type = Types::Subnet
    SubnetAlreadyInUse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SubnetAlreadyInUse.type = Types::SubnetAlreadyInUse
    SubnetIdentifierList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "SubnetIdentifier"}))
    SubnetList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Subnet, name: "member", traits: {"smithy.api#xmlName" => "Subnet"}))
    SubscriptionAlreadyExistFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SubscriptionAlreadyExistFault.type = Types::SubscriptionAlreadyExistFault
    SubscriptionCategoryNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SubscriptionCategoryNotFoundFault.type = Types::SubscriptionCategoryNotFoundFault
    SubscriptionEventIdNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SubscriptionEventIdNotFoundFault.type = Types::SubscriptionEventIdNotFoundFault
    SubscriptionNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SubscriptionNotFoundFault.type = Types::SubscriptionNotFoundFault
    SubscriptionSeverityNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    SubscriptionSeverityNotFoundFault.type = Types::SubscriptionSeverityNotFoundFault
    SupportedOperation.add_member(:operation_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "OperationName"))
    SupportedOperation.type = Types::SupportedOperation
    SupportedOperationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedOperation, name: "member", traits: {"smithy.api#xmlName" => "SupportedOperation"}))
    SupportedPlatform.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    SupportedPlatform.type = Types::SupportedPlatform
    SupportedPlatformsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedPlatform, name: "member", traits: {"smithy.api#xmlName" => "SupportedPlatform"}))
    TableLimitExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    TableLimitExceededFault.type = Types::TableLimitExceededFault
    TableRestoreNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    TableRestoreNotFoundFault.type = Types::TableRestoreNotFoundFault
    TableRestoreStatus.add_member(:table_restore_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TableRestoreRequestId"))
    TableRestoreStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TableRestoreStatusType, name: "Status"))
    TableRestoreStatus.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TableRestoreStatus.add_member(:request_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TStamp, name: "RequestTime"))
    TableRestoreStatus.add_member(:progress_in_mega_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: LongOptional, name: "ProgressInMegaBytes"))
    TableRestoreStatus.add_member(:total_data_in_mega_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: LongOptional, name: "TotalDataInMegaBytes"))
    TableRestoreStatus.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier"))
    TableRestoreStatus.add_member(:snapshot_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SnapshotIdentifier"))
    TableRestoreStatus.add_member(:source_database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceDatabaseName"))
    TableRestoreStatus.add_member(:source_schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceSchemaName"))
    TableRestoreStatus.add_member(:source_table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SourceTableName"))
    TableRestoreStatus.add_member(:target_database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetDatabaseName"))
    TableRestoreStatus.add_member(:target_schema_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TargetSchemaName"))
    TableRestoreStatus.add_member(:new_table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NewTableName"))
    TableRestoreStatus.type = Types::TableRestoreStatus
    TableRestoreStatusList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TableRestoreStatus, name: "member", traits: {"smithy.api#xmlName" => "TableRestoreStatus"}))
    TableRestoreStatusMessage.add_member(:table_restore_status_details, ::Smithy::Schema::Shapes::MemberShape.new(target: TableRestoreStatusList, name: "TableRestoreStatusDetails"))
    TableRestoreStatusMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    TableRestoreStatusMessage.type = Types::TableRestoreStatusMessage
    TableRestoreStatusType.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    TableRestoreStatusType.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    TableRestoreStatusType.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    TableRestoreStatusType.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    TableRestoreStatusType.add_member(:canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELED", traits: {"smithy.api#enumValue" => "CANCELED"}))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Key"))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Value"))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "TagKey"}))
    TagLimitExceededFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    TagLimitExceededFault.type = Types::TagLimitExceededFault
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member", traits: {"smithy.api#xmlName" => "Tag"}))
    TagValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "TagValue"}))
    TaggedResource.add_member(:tag, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "Tag"))
    TaggedResource.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceName"))
    TaggedResource.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceType"))
    TaggedResource.type = Types::TaggedResource
    TaggedResourceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggedResource, name: "member", traits: {"smithy.api#xmlName" => "TaggedResource"}))
    TaggedResourceListMessage.add_member(:tagged_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggedResourceList, name: "TaggedResources"))
    TaggedResourceListMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    TaggedResourceListMessage.type = Types::TaggedResourceListMessage
    TrackList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MaintenanceTrack, name: "member", traits: {"smithy.api#xmlName" => "MaintenanceTrack"}))
    TrackListMessage.add_member(:maintenance_tracks, ::Smithy::Schema::Shapes::MemberShape.new(target: TrackList, name: "MaintenanceTracks"))
    TrackListMessage.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    TrackListMessage.type = Types::TrackListMessage
    UnauthorizedOperation.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    UnauthorizedOperation.type = Types::UnauthorizedOperation
    UnauthorizedPartnerIntegrationFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    UnauthorizedPartnerIntegrationFault.type = Types::UnauthorizedPartnerIntegrationFault
    UnknownSnapshotCopyRegionFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    UnknownSnapshotCopyRegionFault.type = Types::UnknownSnapshotCopyRegionFault
    UnsupportedOperationFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    UnsupportedOperationFault.type = Types::UnsupportedOperationFault
    UnsupportedOptionFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    UnsupportedOptionFault.type = Types::UnsupportedOptionFault
    UpdatePartnerStatusInputMessage.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIntegrationAccountId, name: "AccountId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdatePartnerStatusInputMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIntegrationClusterIdentifier, name: "ClusterIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdatePartnerStatusInputMessage.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIntegrationDatabaseName, name: "DatabaseName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdatePartnerStatusInputMessage.add_member(:partner_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIntegrationPartnerName, name: "PartnerName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdatePartnerStatusInputMessage.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIntegrationStatus, name: "Status", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdatePartnerStatusInputMessage.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIntegrationStatusMessage, name: "StatusMessage"))
    UpdatePartnerStatusInputMessage.type = Types::UpdatePartnerStatusInputMessage
    UpdatePartnerStatusOutput.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIntegrationDatabaseName, name: "DatabaseName"))
    UpdatePartnerStatusOutput.add_member(:partner_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerIntegrationPartnerName, name: "PartnerName"))
    UpdatePartnerStatusOutput.type = Types::UpdatePartnerStatusOutput
    UpdateTarget.add_member(:maintenance_track_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MaintenanceTrackName"))
    UpdateTarget.add_member(:database_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DatabaseVersion"))
    UpdateTarget.add_member(:supported_operations, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportedOperationList, name: "SupportedOperations"))
    UpdateTarget.type = Types::UpdateTarget
    UsageLimit.add_member(:usage_limit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "UsageLimitId"))
    UsageLimit.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ClusterIdentifier"))
    UsageLimit.add_member(:feature_type, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageLimitFeatureType, name: "FeatureType"))
    UsageLimit.add_member(:limit_type, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageLimitLimitType, name: "LimitType"))
    UsageLimit.add_member(:amount, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "Amount"))
    UsageLimit.add_member(:period, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageLimitPeriod, name: "Period"))
    UsageLimit.add_member(:breach_action, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageLimitBreachAction, name: "BreachAction"))
    UsageLimit.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    UsageLimit.type = Types::UsageLimit
    UsageLimitAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    UsageLimitAlreadyExistsFault.type = Types::UsageLimitAlreadyExistsFault
    UsageLimitBreachAction.add_member(:log, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOG", traits: {"smithy.api#enumValue" => "log"}))
    UsageLimitBreachAction.add_member(:emit_metric, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMIT_METRIC", traits: {"smithy.api#enumValue" => "emit-metric"}))
    UsageLimitBreachAction.add_member(:disable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLE", traits: {"smithy.api#enumValue" => "disable"}))
    UsageLimitFeatureType.add_member(:spectrum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPECTRUM", traits: {"smithy.api#enumValue" => "spectrum"}))
    UsageLimitFeatureType.add_member(:concurrency_scaling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONCURRENCY_SCALING", traits: {"smithy.api#enumValue" => "concurrency-scaling"}))
    UsageLimitFeatureType.add_member(:cross_region_datasharing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CROSS_REGION_DATASHARING", traits: {"smithy.api#enumValue" => "cross-region-datasharing"}))
    UsageLimitLimitType.add_member(:time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIME", traits: {"smithy.api#enumValue" => "time"}))
    UsageLimitLimitType.add_member(:data_scanned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATA_SCANNED", traits: {"smithy.api#enumValue" => "data-scanned"}))
    UsageLimitNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "message"))
    UsageLimitNotFoundFault.type = Types::UsageLimitNotFoundFault
    UsageLimitPeriod.add_member(:daily, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAILY", traits: {"smithy.api#enumValue" => "daily"}))
    UsageLimitPeriod.add_member(:weekly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WEEKLY", traits: {"smithy.api#enumValue" => "weekly"}))
    UsageLimitPeriod.add_member(:monthly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MONTHLY", traits: {"smithy.api#enumValue" => "monthly"}))
    UsageLimits.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageLimit, name: "member"))
    ValueStringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "item"}))
    VpcEndpoint.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcEndpointId"))
    VpcEndpoint.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcId"))
    VpcEndpoint.add_member(:network_interfaces, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterfaceList, name: "NetworkInterfaces"))
    VpcEndpoint.type = Types::VpcEndpoint
    VpcEndpointsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpoint, name: "member", traits: {"smithy.api#xmlName" => "VpcEndpoint"}))
    VpcIdentifierList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "VpcIdentifier"}))
    VpcSecurityGroupIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member", traits: {"smithy.api#xmlName" => "VpcSecurityGroupId"}))
    VpcSecurityGroupMembership.add_member(:vpc_security_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpcSecurityGroupId"))
    VpcSecurityGroupMembership.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    VpcSecurityGroupMembership.type = Types::VpcSecurityGroupMembership
    VpcSecurityGroupMembershipList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSecurityGroupMembership, name: "member", traits: {"smithy.api#xmlName" => "VpcSecurityGroup"}))
    ZeroETLIntegrationStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "creating"}))
    ZeroETLIntegrationStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "active"}))
    ZeroETLIntegrationStatus.add_member(:modifying, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MODIFYING", traits: {"smithy.api#enumValue" => "modifying"}))
    ZeroETLIntegrationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "failed"}))
    ZeroETLIntegrationStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "deleting"}))
    ZeroETLIntegrationStatus.add_member(:syncing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYNCING", traits: {"smithy.api#enumValue" => "syncing"}))
    ZeroETLIntegrationStatus.add_member(:needs_attention, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEEDS_ATTENTION", traits: {"smithy.api#enumValue" => "needs_attention"}))

    RedshiftServiceVersion20121201 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.redshift#RedshiftServiceVersion20121201"
      service.name = "RedshiftServiceVersion20121201"
      service.version = "2012-12-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Redshift", "arnNamespace" => "redshift", "cloudFormationName" => "Redshift", "cloudTrailEventSource" => "redshift.amazonaws.com", "endpointPrefix" => "redshift"}, "aws.auth#sigv4" => {"name" => "redshift"}, "aws.protocols#awsQuery" => {}, "smithy.api#title" => "Amazon Redshift", "smithy.api#xmlNamespace" => {"uri" => "http://redshift.amazonaws.com/doc/2012-12-01/"}}
      service.add_operation(:accept_reserved_node_exchange, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#AcceptReservedNodeExchange"
        operation.name = "AcceptReservedNodeExchange"
        operation.input = AcceptReservedNodeExchangeInputMessage
        operation.output = AcceptReservedNodeExchangeOutputMessage
        operation.errors << DependentServiceUnavailableFault
        operation.errors << InvalidReservedNodeStateFault
        operation.errors << ReservedNodeAlreadyExistsFault
        operation.errors << ReservedNodeAlreadyMigratedFault
        operation.errors << ReservedNodeNotFoundFault
        operation.errors << ReservedNodeOfferingNotFoundFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
      end)
      service.add_operation(:add_partner, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#AddPartner"
        operation.name = "AddPartner"
        operation.input = AddPartnerInput
        operation.output = AddPartnerOutput
        operation.errors << ClusterNotFoundFault
        operation.errors << PartnerNotFoundFault
        operation.errors << UnauthorizedPartnerIntegrationFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
      end)
      service.add_operation(:associate_data_share_consumer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#AssociateDataShareConsumer"
        operation.name = "AssociateDataShareConsumer"
        operation.input = AssociateDataShareConsumerMessage
        operation.output = AssociateDataShareConsumerOutput
        operation.errors << InvalidDataShareFault
        operation.errors << InvalidNamespaceFault
        operation.traits = {}
      end)
      service.add_operation(:authorize_cluster_security_group_ingress, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#AuthorizeClusterSecurityGroupIngress"
        operation.name = "AuthorizeClusterSecurityGroupIngress"
        operation.input = AuthorizeClusterSecurityGroupIngressMessage
        operation.output = AuthorizeClusterSecurityGroupIngressResult
        operation.errors << AuthorizationAlreadyExistsFault
        operation.errors << AuthorizationQuotaExceededFault
        operation.errors << ClusterSecurityGroupNotFoundFault
        operation.errors << InvalidClusterSecurityGroupStateFault
        operation.traits = {}
      end)
      service.add_operation(:authorize_data_share, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#AuthorizeDataShare"
        operation.name = "AuthorizeDataShare"
        operation.input = AuthorizeDataShareMessage
        operation.output = AuthorizeDataShareOutput
        operation.errors << InvalidDataShareFault
        operation.traits = {}
      end)
      service.add_operation(:authorize_endpoint_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#AuthorizeEndpointAccess"
        operation.name = "AuthorizeEndpointAccess"
        operation.input = AuthorizeEndpointAccessMessage
        operation.output = AuthorizeEndpointAccessOutput
        operation.errors << ClusterNotFoundFault
        operation.errors << EndpointAuthorizationAlreadyExistsFault
        operation.errors << EndpointAuthorizationsPerClusterLimitExceededFault
        operation.errors << InvalidAuthorizationStateFault
        operation.errors << InvalidClusterStateFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
      end)
      service.add_operation(:authorize_snapshot_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#AuthorizeSnapshotAccess"
        operation.name = "AuthorizeSnapshotAccess"
        operation.input = AuthorizeSnapshotAccessMessage
        operation.output = AuthorizeSnapshotAccessResult
        operation.errors << AuthorizationAlreadyExistsFault
        operation.errors << AuthorizationQuotaExceededFault
        operation.errors << ClusterSnapshotNotFoundFault
        operation.errors << DependentServiceRequestThrottlingFault
        operation.errors << InvalidClusterSnapshotStateFault
        operation.errors << LimitExceededFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
      end)
      service.add_operation(:batch_delete_cluster_snapshots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#BatchDeleteClusterSnapshots"
        operation.name = "BatchDeleteClusterSnapshots"
        operation.input = BatchDeleteClusterSnapshotsRequest
        operation.output = BatchDeleteClusterSnapshotsResult
        operation.errors << BatchDeleteRequestSizeExceededFault
        operation.traits = {}
      end)
      service.add_operation(:batch_modify_cluster_snapshots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#BatchModifyClusterSnapshots"
        operation.name = "BatchModifyClusterSnapshots"
        operation.input = BatchModifyClusterSnapshotsMessage
        operation.output = BatchModifyClusterSnapshotsOutputMessage
        operation.errors << BatchModifyClusterSnapshotsLimitExceededFault
        operation.errors << InvalidRetentionPeriodFault
        operation.traits = {}
      end)
      service.add_operation(:cancel_resize, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CancelResize"
        operation.name = "CancelResize"
        operation.input = CancelResizeMessage
        operation.output = CancelResizeOutput
        operation.errors << ClusterNotFoundFault
        operation.errors << InvalidClusterStateFault
        operation.errors << ResizeNotFoundFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
      end)
      service.add_operation(:copy_cluster_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CopyClusterSnapshot"
        operation.name = "CopyClusterSnapshot"
        operation.input = CopyClusterSnapshotMessage
        operation.output = CopyClusterSnapshotResult
        operation.errors << ClusterNotFoundFault
        operation.errors << ClusterSnapshotAlreadyExistsFault
        operation.errors << ClusterSnapshotNotFoundFault
        operation.errors << ClusterSnapshotQuotaExceededFault
        operation.errors << InvalidClusterSnapshotStateFault
        operation.errors << InvalidRetentionPeriodFault
        operation.traits = {}
      end)
      service.add_operation(:create_authentication_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateAuthenticationProfile"
        operation.name = "CreateAuthenticationProfile"
        operation.input = CreateAuthenticationProfileMessage
        operation.output = CreateAuthenticationProfileResult
        operation.errors << AuthenticationProfileAlreadyExistsFault
        operation.errors << AuthenticationProfileQuotaExceededFault
        operation.errors << InvalidAuthenticationProfileRequestFault
        operation.traits = {}
      end)
      service.add_operation(:create_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateCluster"
        operation.name = "CreateCluster"
        operation.input = CreateClusterMessage
        operation.output = CreateClusterResult
        operation.errors << ClusterAlreadyExistsFault
        operation.errors << ClusterParameterGroupNotFoundFault
        operation.errors << ClusterQuotaExceededFault
        operation.errors << ClusterSecurityGroupNotFoundFault
        operation.errors << ClusterSubnetGroupNotFoundFault
        operation.errors << DependentServiceRequestThrottlingFault
        operation.errors << HsmClientCertificateNotFoundFault
        operation.errors << HsmConfigurationNotFoundFault
        operation.errors << InsufficientClusterCapacityFault
        operation.errors << InvalidClusterSubnetGroupStateFault
        operation.errors << InvalidClusterTrackFault
        operation.errors << InvalidElasticIpFault
        operation.errors << InvalidRetentionPeriodFault
        operation.errors << InvalidSubnet
        operation.errors << InvalidTagFault
        operation.errors << InvalidVPCNetworkStateFault
        operation.errors << Ipv6CidrBlockNotFoundFault
        operation.errors << LimitExceededFault
        operation.errors << NumberOfNodesPerClusterLimitExceededFault
        operation.errors << NumberOfNodesQuotaExceededFault
        operation.errors << RedshiftIdcApplicationNotExistsFault
        operation.errors << SnapshotScheduleNotFoundFault
        operation.errors << TagLimitExceededFault
        operation.errors << UnauthorizedOperation
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
      end)
      service.add_operation(:create_cluster_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateClusterParameterGroup"
        operation.name = "CreateClusterParameterGroup"
        operation.input = CreateClusterParameterGroupMessage
        operation.output = CreateClusterParameterGroupResult
        operation.errors << ClusterParameterGroupAlreadyExistsFault
        operation.errors << ClusterParameterGroupQuotaExceededFault
        operation.errors << InvalidTagFault
        operation.errors << TagLimitExceededFault
        operation.traits = {}
      end)
      service.add_operation(:create_cluster_security_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateClusterSecurityGroup"
        operation.name = "CreateClusterSecurityGroup"
        operation.input = CreateClusterSecurityGroupMessage
        operation.output = CreateClusterSecurityGroupResult
        operation.errors << ClusterSecurityGroupAlreadyExistsFault
        operation.errors << ClusterSecurityGroupQuotaExceededFault
        operation.errors << InvalidTagFault
        operation.errors << TagLimitExceededFault
        operation.traits = {}
      end)
      service.add_operation(:create_cluster_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateClusterSnapshot"
        operation.name = "CreateClusterSnapshot"
        operation.input = CreateClusterSnapshotMessage
        operation.output = CreateClusterSnapshotResult
        operation.errors << ClusterNotFoundFault
        operation.errors << ClusterSnapshotAlreadyExistsFault
        operation.errors << ClusterSnapshotQuotaExceededFault
        operation.errors << InvalidClusterStateFault
        operation.errors << InvalidRetentionPeriodFault
        operation.errors << InvalidTagFault
        operation.errors << TagLimitExceededFault
        operation.traits = {}
      end)
      service.add_operation(:create_cluster_subnet_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateClusterSubnetGroup"
        operation.name = "CreateClusterSubnetGroup"
        operation.input = CreateClusterSubnetGroupMessage
        operation.output = CreateClusterSubnetGroupResult
        operation.errors << ClusterSubnetGroupAlreadyExistsFault
        operation.errors << ClusterSubnetGroupQuotaExceededFault
        operation.errors << ClusterSubnetQuotaExceededFault
        operation.errors << DependentServiceRequestThrottlingFault
        operation.errors << InvalidSubnet
        operation.errors << InvalidTagFault
        operation.errors << TagLimitExceededFault
        operation.errors << UnauthorizedOperation
        operation.traits = {}
      end)
      service.add_operation(:create_custom_domain_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateCustomDomainAssociation"
        operation.name = "CreateCustomDomainAssociation"
        operation.input = CreateCustomDomainAssociationMessage
        operation.output = CreateCustomDomainAssociationResult
        operation.errors << ClusterNotFoundFault
        operation.errors << CustomCnameAssociationFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
      end)
      service.add_operation(:create_endpoint_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateEndpointAccess"
        operation.name = "CreateEndpointAccess"
        operation.input = CreateEndpointAccessMessage
        operation.output = CreateEndpointAccessOutput
        operation.errors << AccessToClusterDeniedFault
        operation.errors << ClusterNotFoundFault
        operation.errors << ClusterSubnetGroupNotFoundFault
        operation.errors << EndpointAlreadyExistsFault
        operation.errors << EndpointsPerAuthorizationLimitExceededFault
        operation.errors << EndpointsPerClusterLimitExceededFault
        operation.errors << InvalidClusterSecurityGroupStateFault
        operation.errors << InvalidClusterStateFault
        operation.errors << UnauthorizedOperation
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
      end)
      service.add_operation(:create_event_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateEventSubscription"
        operation.name = "CreateEventSubscription"
        operation.input = CreateEventSubscriptionMessage
        operation.output = CreateEventSubscriptionResult
        operation.errors << EventSubscriptionQuotaExceededFault
        operation.errors << InvalidTagFault
        operation.errors << SNSInvalidTopicFault
        operation.errors << SNSNoAuthorizationFault
        operation.errors << SNSTopicArnNotFoundFault
        operation.errors << SourceNotFoundFault
        operation.errors << SubscriptionAlreadyExistFault
        operation.errors << SubscriptionCategoryNotFoundFault
        operation.errors << SubscriptionEventIdNotFoundFault
        operation.errors << SubscriptionSeverityNotFoundFault
        operation.errors << TagLimitExceededFault
        operation.traits = {}
      end)
      service.add_operation(:create_hsm_client_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateHsmClientCertificate"
        operation.name = "CreateHsmClientCertificate"
        operation.input = CreateHsmClientCertificateMessage
        operation.output = CreateHsmClientCertificateResult
        operation.errors << HsmClientCertificateAlreadyExistsFault
        operation.errors << HsmClientCertificateQuotaExceededFault
        operation.errors << InvalidTagFault
        operation.errors << TagLimitExceededFault
        operation.traits = {}
      end)
      service.add_operation(:create_hsm_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateHsmConfiguration"
        operation.name = "CreateHsmConfiguration"
        operation.input = CreateHsmConfigurationMessage
        operation.output = CreateHsmConfigurationResult
        operation.errors << HsmConfigurationAlreadyExistsFault
        operation.errors << HsmConfigurationQuotaExceededFault
        operation.errors << InvalidTagFault
        operation.errors << TagLimitExceededFault
        operation.traits = {}
      end)
      service.add_operation(:create_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateIntegration"
        operation.name = "CreateIntegration"
        operation.input = CreateIntegrationMessage
        operation.output = CreateIntegrationOutput
        operation.errors << IntegrationAlreadyExistsFault
        operation.errors << IntegrationConflictOperationFault
        operation.errors << IntegrationQuotaExceededFault
        operation.errors << IntegrationSourceNotFoundFault
        operation.errors << IntegrationTargetNotFoundFault
        operation.errors << InvalidClusterStateFault
        operation.errors << InvalidTagFault
        operation.errors << TagLimitExceededFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
      end)
      service.add_operation(:create_redshift_idc_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateRedshiftIdcApplication"
        operation.name = "CreateRedshiftIdcApplication"
        operation.input = CreateRedshiftIdcApplicationMessage
        operation.output = CreateRedshiftIdcApplicationResult
        operation.errors << DependentServiceAccessDeniedFault
        operation.errors << DependentServiceUnavailableFault
        operation.errors << InvalidTagFault
        operation.errors << RedshiftIdcApplicationAlreadyExistsFault
        operation.errors << RedshiftIdcApplicationQuotaExceededFault
        operation.errors << TagLimitExceededFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
      end)
      service.add_operation(:create_scheduled_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateScheduledAction"
        operation.name = "CreateScheduledAction"
        operation.input = CreateScheduledActionMessage
        operation.output = CreateScheduledActionOutput
        operation.errors << ClusterNotFoundFault
        operation.errors << InvalidScheduledActionFault
        operation.errors << InvalidScheduleFault
        operation.errors << ScheduledActionAlreadyExistsFault
        operation.errors << ScheduledActionQuotaExceededFault
        operation.errors << ScheduledActionTypeUnsupportedFault
        operation.errors << UnauthorizedOperation
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
      end)
      service.add_operation(:create_snapshot_copy_grant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateSnapshotCopyGrant"
        operation.name = "CreateSnapshotCopyGrant"
        operation.input = CreateSnapshotCopyGrantMessage
        operation.output = CreateSnapshotCopyGrantResult
        operation.errors << DependentServiceRequestThrottlingFault
        operation.errors << InvalidTagFault
        operation.errors << LimitExceededFault
        operation.errors << SnapshotCopyGrantAlreadyExistsFault
        operation.errors << SnapshotCopyGrantQuotaExceededFault
        operation.errors << TagLimitExceededFault
        operation.traits = {}
      end)
      service.add_operation(:create_snapshot_schedule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateSnapshotSchedule"
        operation.name = "CreateSnapshotSchedule"
        operation.input = CreateSnapshotScheduleMessage
        operation.output = CreateSnapshotScheduleOutput
        operation.errors << InvalidScheduleFault
        operation.errors << InvalidTagFault
        operation.errors << ScheduleDefinitionTypeUnsupportedFault
        operation.errors << SnapshotScheduleAlreadyExistsFault
        operation.errors << SnapshotScheduleQuotaExceededFault
        operation.errors << TagLimitExceededFault
        operation.traits = {}
      end)
      service.add_operation(:create_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateTags"
        operation.name = "CreateTags"
        operation.input = CreateTagsMessage
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidClusterStateFault
        operation.errors << InvalidTagFault
        operation.errors << ResourceNotFoundFault
        operation.errors << TagLimitExceededFault
        operation.traits = {}
      end)
      service.add_operation(:create_usage_limit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateUsageLimit"
        operation.name = "CreateUsageLimit"
        operation.input = CreateUsageLimitMessage
        operation.output = CreateUsageLimitOutput
        operation.errors << ClusterNotFoundFault
        operation.errors << InvalidClusterStateFault
        operation.errors << InvalidUsageLimitFault
        operation.errors << LimitExceededFault
        operation.errors << TagLimitExceededFault
        operation.errors << UnsupportedOperationFault
        operation.errors << UsageLimitAlreadyExistsFault
        operation.traits = {}
      end)
      service.add_operation(:deauthorize_data_share, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeauthorizeDataShare"
        operation.name = "DeauthorizeDataShare"
        operation.input = DeauthorizeDataShareMessage
        operation.output = DeauthorizeDataShareOutput
        operation.errors << InvalidDataShareFault
        operation.traits = {}
      end)
      service.add_operation(:delete_authentication_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteAuthenticationProfile"
        operation.name = "DeleteAuthenticationProfile"
        operation.input = DeleteAuthenticationProfileMessage
        operation.output = DeleteAuthenticationProfileResult
        operation.errors << AuthenticationProfileNotFoundFault
        operation.errors << InvalidAuthenticationProfileRequestFault
        operation.traits = {}
      end)
      service.add_operation(:delete_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteCluster"
        operation.name = "DeleteCluster"
        operation.input = DeleteClusterMessage
        operation.output = DeleteClusterResult
        operation.errors << ClusterNotFoundFault
        operation.errors << ClusterSnapshotAlreadyExistsFault
        operation.errors << ClusterSnapshotQuotaExceededFault
        operation.errors << InvalidClusterStateFault
        operation.errors << InvalidRetentionPeriodFault
        operation.traits = {}
      end)
      service.add_operation(:delete_cluster_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteClusterParameterGroup"
        operation.name = "DeleteClusterParameterGroup"
        operation.input = DeleteClusterParameterGroupMessage
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ClusterParameterGroupNotFoundFault
        operation.errors << InvalidClusterParameterGroupStateFault
        operation.traits = {}
      end)
      service.add_operation(:delete_cluster_security_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteClusterSecurityGroup"
        operation.name = "DeleteClusterSecurityGroup"
        operation.input = DeleteClusterSecurityGroupMessage
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ClusterSecurityGroupNotFoundFault
        operation.errors << InvalidClusterSecurityGroupStateFault
        operation.traits = {}
      end)
      service.add_operation(:delete_cluster_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteClusterSnapshot"
        operation.name = "DeleteClusterSnapshot"
        operation.input = DeleteClusterSnapshotInput
        operation.output = DeleteClusterSnapshotResult
        operation.errors << ClusterSnapshotNotFoundFault
        operation.errors << InvalidClusterSnapshotStateFault
        operation.traits = {}
      end)
      service.add_operation(:delete_cluster_subnet_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteClusterSubnetGroup"
        operation.name = "DeleteClusterSubnetGroup"
        operation.input = DeleteClusterSubnetGroupMessage
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ClusterSubnetGroupNotFoundFault
        operation.errors << InvalidClusterSubnetGroupStateFault
        operation.errors << InvalidClusterSubnetStateFault
        operation.traits = {}
      end)
      service.add_operation(:delete_custom_domain_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteCustomDomainAssociation"
        operation.name = "DeleteCustomDomainAssociation"
        operation.input = DeleteCustomDomainAssociationMessage
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ClusterNotFoundFault
        operation.errors << CustomCnameAssociationFault
        operation.errors << CustomDomainAssociationNotFoundFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
      end)
      service.add_operation(:delete_endpoint_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteEndpointAccess"
        operation.name = "DeleteEndpointAccess"
        operation.input = DeleteEndpointAccessMessage
        operation.output = DeleteEndpointAccessOutput
        operation.errors << ClusterNotFoundFault
        operation.errors << EndpointNotFoundFault
        operation.errors << InvalidClusterSecurityGroupStateFault
        operation.errors << InvalidClusterStateFault
        operation.errors << InvalidEndpointStateFault
        operation.traits = {}
      end)
      service.add_operation(:delete_event_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteEventSubscription"
        operation.name = "DeleteEventSubscription"
        operation.input = DeleteEventSubscriptionMessage
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidSubscriptionStateFault
        operation.errors << SubscriptionNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:delete_hsm_client_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteHsmClientCertificate"
        operation.name = "DeleteHsmClientCertificate"
        operation.input = DeleteHsmClientCertificateMessage
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << HsmClientCertificateNotFoundFault
        operation.errors << InvalidHsmClientCertificateStateFault
        operation.traits = {}
      end)
      service.add_operation(:delete_hsm_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteHsmConfiguration"
        operation.name = "DeleteHsmConfiguration"
        operation.input = DeleteHsmConfigurationMessage
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << HsmConfigurationNotFoundFault
        operation.errors << InvalidHsmConfigurationStateFault
        operation.traits = {}
      end)
      service.add_operation(:delete_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteIntegration"
        operation.name = "DeleteIntegration"
        operation.input = DeleteIntegrationMessage
        operation.output = DeleteIntegrationOutput
        operation.errors << IntegrationConflictOperationFault
        operation.errors << IntegrationConflictStateFault
        operation.errors << IntegrationNotFoundFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
      end)
      service.add_operation(:delete_partner, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeletePartner"
        operation.name = "DeletePartner"
        operation.input = DeletePartnerInput
        operation.output = DeletePartnerOutput
        operation.errors << ClusterNotFoundFault
        operation.errors << PartnerNotFoundFault
        operation.errors << UnauthorizedPartnerIntegrationFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
      end)
      service.add_operation(:delete_redshift_idc_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteRedshiftIdcApplication"
        operation.name = "DeleteRedshiftIdcApplication"
        operation.input = DeleteRedshiftIdcApplicationMessage
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << DependentServiceAccessDeniedFault
        operation.errors << DependentServiceUnavailableFault
        operation.errors << RedshiftIdcApplicationNotExistsFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
      end)
      service.add_operation(:delete_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = DeleteResourcePolicyMessage
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ResourceNotFoundFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
      end)
      service.add_operation(:delete_scheduled_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteScheduledAction"
        operation.name = "DeleteScheduledAction"
        operation.input = DeleteScheduledActionMessage
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ScheduledActionNotFoundFault
        operation.errors << UnauthorizedOperation
        operation.traits = {}
      end)
      service.add_operation(:delete_snapshot_copy_grant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteSnapshotCopyGrant"
        operation.name = "DeleteSnapshotCopyGrant"
        operation.input = DeleteSnapshotCopyGrantMessage
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidSnapshotCopyGrantStateFault
        operation.errors << SnapshotCopyGrantNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:delete_snapshot_schedule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteSnapshotSchedule"
        operation.name = "DeleteSnapshotSchedule"
        operation.input = DeleteSnapshotScheduleMessage
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidClusterSnapshotScheduleStateFault
        operation.errors << SnapshotScheduleNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:delete_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteTags"
        operation.name = "DeleteTags"
        operation.input = DeleteTagsMessage
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidTagFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:delete_usage_limit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteUsageLimit"
        operation.name = "DeleteUsageLimit"
        operation.input = DeleteUsageLimitMessage
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << UnsupportedOperationFault
        operation.errors << UsageLimitNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:deregister_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeregisterNamespace"
        operation.name = "DeregisterNamespace"
        operation.input = DeregisterNamespaceInputMessage
        operation.output = DeregisterNamespaceOutputMessage
        operation.errors << ClusterNotFoundFault
        operation.errors << InvalidClusterStateFault
        operation.errors << InvalidNamespaceFault
        operation.traits = {}
      end)
      service.add_operation(:describe_account_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeAccountAttributes"
        operation.name = "DescribeAccountAttributes"
        operation.input = DescribeAccountAttributesMessage
        operation.output = DescribeAccountAttributesOutput
        operation.traits = {}
      end)
      service.add_operation(:describe_authentication_profiles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeAuthenticationProfiles"
        operation.name = "DescribeAuthenticationProfiles"
        operation.input = DescribeAuthenticationProfilesMessage
        operation.output = DescribeAuthenticationProfilesResult
        operation.errors << AuthenticationProfileNotFoundFault
        operation.errors << InvalidAuthenticationProfileRequestFault
        operation.traits = {}
      end)
      service.add_operation(:describe_cluster_db_revisions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeClusterDbRevisions"
        operation.name = "DescribeClusterDbRevisions"
        operation.input = DescribeClusterDbRevisionsMessage
        operation.output = ClusterDbRevisionsMessage
        operation.errors << ClusterNotFoundFault
        operation.errors << InvalidClusterStateFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeClusterDbRevisions.new
      end)
      service.add_operation(:describe_cluster_parameter_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeClusterParameterGroups"
        operation.name = "DescribeClusterParameterGroups"
        operation.input = DescribeClusterParameterGroupsMessage
        operation.output = ClusterParameterGroupsMessage
        operation.errors << ClusterParameterGroupNotFoundFault
        operation.errors << InvalidTagFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeClusterParameterGroups.new
      end)
      service.add_operation(:describe_cluster_parameters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeClusterParameters"
        operation.name = "DescribeClusterParameters"
        operation.input = DescribeClusterParametersMessage
        operation.output = DescribeClusterParametersOutput
        operation.errors << ClusterParameterGroupNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeClusterParameters.new
      end)
      service.add_operation(:describe_cluster_security_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeClusterSecurityGroups"
        operation.name = "DescribeClusterSecurityGroups"
        operation.input = DescribeClusterSecurityGroupsMessage
        operation.output = ClusterSecurityGroupMessage
        operation.errors << ClusterSecurityGroupNotFoundFault
        operation.errors << InvalidTagFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeClusterSecurityGroups.new
      end)
      service.add_operation(:describe_cluster_snapshots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeClusterSnapshots"
        operation.name = "DescribeClusterSnapshots"
        operation.input = DescribeClusterSnapshotsMessage
        operation.output = SnapshotMessage
        operation.errors << ClusterNotFoundFault
        operation.errors << ClusterSnapshotNotFoundFault
        operation.errors << InvalidTagFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeClusterSnapshots.new
      end)
      service.add_operation(:describe_cluster_subnet_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeClusterSubnetGroups"
        operation.name = "DescribeClusterSubnetGroups"
        operation.input = DescribeClusterSubnetGroupsMessage
        operation.output = ClusterSubnetGroupMessage
        operation.errors << ClusterSubnetGroupNotFoundFault
        operation.errors << InvalidTagFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeClusterSubnetGroups.new
      end)
      service.add_operation(:describe_cluster_tracks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeClusterTracks"
        operation.name = "DescribeClusterTracks"
        operation.input = DescribeClusterTracksMessage
        operation.output = TrackListMessage
        operation.errors << InvalidClusterTrackFault
        operation.errors << UnauthorizedOperation
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeClusterTracks.new
      end)
      service.add_operation(:describe_cluster_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeClusterVersions"
        operation.name = "DescribeClusterVersions"
        operation.input = DescribeClusterVersionsMessage
        operation.output = ClusterVersionsMessage
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeClusterVersions.new
      end)
      service.add_operation(:describe_clusters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeClusters"
        operation.name = "DescribeClusters"
        operation.input = DescribeClustersMessage
        operation.output = ClustersMessage
        operation.errors << ClusterNotFoundFault
        operation.errors << InvalidTagFault
        operation.traits = {"smithy.api#suppress" => ["WaitableTraitInvalidErrorType"]}
        operation[:paginator] = Paginators::DescribeClusters.new
      end)
      service.add_operation(:describe_custom_domain_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeCustomDomainAssociations"
        operation.name = "DescribeCustomDomainAssociations"
        operation.input = DescribeCustomDomainAssociationsMessage
        operation.output = CustomDomainAssociationsMessage
        operation.errors << CustomDomainAssociationNotFoundFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeCustomDomainAssociations.new
      end)
      service.add_operation(:describe_data_shares, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeDataShares"
        operation.name = "DescribeDataShares"
        operation.input = DescribeDataSharesMessage
        operation.output = DescribeDataSharesResult
        operation.errors << InvalidDataShareFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDataShares.new
      end)
      service.add_operation(:describe_data_shares_for_consumer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeDataSharesForConsumer"
        operation.name = "DescribeDataSharesForConsumer"
        operation.input = DescribeDataSharesForConsumerMessage
        operation.output = DescribeDataSharesForConsumerResult
        operation.errors << InvalidNamespaceFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDataSharesForConsumer.new
      end)
      service.add_operation(:describe_data_shares_for_producer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeDataSharesForProducer"
        operation.name = "DescribeDataSharesForProducer"
        operation.input = DescribeDataSharesForProducerMessage
        operation.output = DescribeDataSharesForProducerResult
        operation.errors << InvalidNamespaceFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDataSharesForProducer.new
      end)
      service.add_operation(:describe_default_cluster_parameters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeDefaultClusterParameters"
        operation.name = "DescribeDefaultClusterParameters"
        operation.input = DescribeDefaultClusterParametersMessage
        operation.output = DescribeDefaultClusterParametersResult
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDefaultClusterParameters.new
      end)
      service.add_operation(:describe_endpoint_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeEndpointAccess"
        operation.name = "DescribeEndpointAccess"
        operation.input = DescribeEndpointAccessMessage
        operation.output = DescribeEndpointAccessOutput
        operation.errors << ClusterNotFoundFault
        operation.errors << EndpointNotFoundFault
        operation.errors << InvalidClusterStateFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEndpointAccess.new
      end)
      service.add_operation(:describe_endpoint_authorization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeEndpointAuthorization"
        operation.name = "DescribeEndpointAuthorization"
        operation.input = DescribeEndpointAuthorizationMessage
        operation.output = DescribeEndpointAuthorizationOutput
        operation.errors << ClusterNotFoundFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEndpointAuthorization.new
      end)
      service.add_operation(:describe_event_categories, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeEventCategories"
        operation.name = "DescribeEventCategories"
        operation.input = DescribeEventCategoriesMessage
        operation.output = EventCategoriesMessage
        operation.traits = {}
      end)
      service.add_operation(:describe_event_subscriptions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeEventSubscriptions"
        operation.name = "DescribeEventSubscriptions"
        operation.input = DescribeEventSubscriptionsMessage
        operation.output = EventSubscriptionsMessage
        operation.errors << InvalidTagFault
        operation.errors << SubscriptionNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEventSubscriptions.new
      end)
      service.add_operation(:describe_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeEvents"
        operation.name = "DescribeEvents"
        operation.input = DescribeEventsMessage
        operation.output = EventsMessage
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEvents.new
      end)
      service.add_operation(:describe_hsm_client_certificates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeHsmClientCertificates"
        operation.name = "DescribeHsmClientCertificates"
        operation.input = DescribeHsmClientCertificatesMessage
        operation.output = HsmClientCertificateMessage
        operation.errors << HsmClientCertificateNotFoundFault
        operation.errors << InvalidTagFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeHsmClientCertificates.new
      end)
      service.add_operation(:describe_hsm_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeHsmConfigurations"
        operation.name = "DescribeHsmConfigurations"
        operation.input = DescribeHsmConfigurationsMessage
        operation.output = HsmConfigurationMessage
        operation.errors << HsmConfigurationNotFoundFault
        operation.errors << InvalidTagFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeHsmConfigurations.new
      end)
      service.add_operation(:describe_inbound_integrations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeInboundIntegrations"
        operation.name = "DescribeInboundIntegrations"
        operation.input = DescribeInboundIntegrationsMessage
        operation.output = InboundIntegrationsMessage
        operation.errors << IntegrationNotFoundFault
        operation.errors << InvalidNamespaceFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeInboundIntegrations.new
      end)
      service.add_operation(:describe_integrations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeIntegrations"
        operation.name = "DescribeIntegrations"
        operation.input = DescribeIntegrationsMessage
        operation.output = IntegrationsMessage
        operation.errors << IntegrationNotFoundFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeIntegrations.new
      end)
      service.add_operation(:describe_logging_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeLoggingStatus"
        operation.name = "DescribeLoggingStatus"
        operation.input = DescribeLoggingStatusMessage
        operation.output = DescribeLoggingStatusOutput
        operation.errors << ClusterNotFoundFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
      end)
      service.add_operation(:describe_node_configuration_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeNodeConfigurationOptions"
        operation.name = "DescribeNodeConfigurationOptions"
        operation.input = DescribeNodeConfigurationOptionsMessage
        operation.output = NodeConfigurationOptionsMessage
        operation.errors << AccessToSnapshotDeniedFault
        operation.errors << ClusterNotFoundFault
        operation.errors << ClusterSnapshotNotFoundFault
        operation.errors << InvalidClusterSnapshotStateFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeNodeConfigurationOptions.new
      end)
      service.add_operation(:describe_orderable_cluster_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeOrderableClusterOptions"
        operation.name = "DescribeOrderableClusterOptions"
        operation.input = DescribeOrderableClusterOptionsMessage
        operation.output = OrderableClusterOptionsMessage
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeOrderableClusterOptions.new
      end)
      service.add_operation(:describe_partners, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribePartners"
        operation.name = "DescribePartners"
        operation.input = DescribePartnersInputMessage
        operation.output = DescribePartnersOutputMessage
        operation.errors << ClusterNotFoundFault
        operation.errors << UnauthorizedPartnerIntegrationFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
      end)
      service.add_operation(:describe_redshift_idc_applications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeRedshiftIdcApplications"
        operation.name = "DescribeRedshiftIdcApplications"
        operation.input = DescribeRedshiftIdcApplicationsMessage
        operation.output = DescribeRedshiftIdcApplicationsResult
        operation.errors << DependentServiceAccessDeniedFault
        operation.errors << DependentServiceUnavailableFault
        operation.errors << RedshiftIdcApplicationNotExistsFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeRedshiftIdcApplications.new
      end)
      service.add_operation(:describe_reserved_node_exchange_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeReservedNodeExchangeStatus"
        operation.name = "DescribeReservedNodeExchangeStatus"
        operation.input = DescribeReservedNodeExchangeStatusInputMessage
        operation.output = DescribeReservedNodeExchangeStatusOutputMessage
        operation.errors << ReservedNodeExchangeNotFoundFault
        operation.errors << ReservedNodeNotFoundFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeReservedNodeExchangeStatus.new
      end)
      service.add_operation(:describe_reserved_node_offerings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeReservedNodeOfferings"
        operation.name = "DescribeReservedNodeOfferings"
        operation.input = DescribeReservedNodeOfferingsMessage
        operation.output = ReservedNodeOfferingsMessage
        operation.errors << DependentServiceUnavailableFault
        operation.errors << ReservedNodeOfferingNotFoundFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeReservedNodeOfferings.new
      end)
      service.add_operation(:describe_reserved_nodes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeReservedNodes"
        operation.name = "DescribeReservedNodes"
        operation.input = DescribeReservedNodesMessage
        operation.output = ReservedNodesMessage
        operation.errors << DependentServiceUnavailableFault
        operation.errors << ReservedNodeNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeReservedNodes.new
      end)
      service.add_operation(:describe_resize, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeResize"
        operation.name = "DescribeResize"
        operation.input = DescribeResizeMessage
        operation.output = DescribeResizeOutput
        operation.errors << ClusterNotFoundFault
        operation.errors << ResizeNotFoundFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
      end)
      service.add_operation(:describe_scheduled_actions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeScheduledActions"
        operation.name = "DescribeScheduledActions"
        operation.input = DescribeScheduledActionsMessage
        operation.output = ScheduledActionsMessage
        operation.errors << ScheduledActionNotFoundFault
        operation.errors << UnauthorizedOperation
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeScheduledActions.new
      end)
      service.add_operation(:describe_snapshot_copy_grants, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeSnapshotCopyGrants"
        operation.name = "DescribeSnapshotCopyGrants"
        operation.input = DescribeSnapshotCopyGrantsMessage
        operation.output = SnapshotCopyGrantMessage
        operation.errors << InvalidTagFault
        operation.errors << SnapshotCopyGrantNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeSnapshotCopyGrants.new
      end)
      service.add_operation(:describe_snapshot_schedules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeSnapshotSchedules"
        operation.name = "DescribeSnapshotSchedules"
        operation.input = DescribeSnapshotSchedulesMessage
        operation.output = DescribeSnapshotSchedulesOutputMessage
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeSnapshotSchedules.new
      end)
      service.add_operation(:describe_storage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeStorage"
        operation.name = "DescribeStorage"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = CustomerStorageMessage
        operation.traits = {}
      end)
      service.add_operation(:describe_table_restore_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeTableRestoreStatus"
        operation.name = "DescribeTableRestoreStatus"
        operation.input = DescribeTableRestoreStatusMessage
        operation.output = TableRestoreStatusMessage
        operation.errors << ClusterNotFoundFault
        operation.errors << TableRestoreNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeTableRestoreStatus.new
      end)
      service.add_operation(:describe_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeTags"
        operation.name = "DescribeTags"
        operation.input = DescribeTagsMessage
        operation.output = TaggedResourceListMessage
        operation.errors << InvalidTagFault
        operation.errors << ResourceNotFoundFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeTags.new
      end)
      service.add_operation(:describe_usage_limits, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeUsageLimits"
        operation.name = "DescribeUsageLimits"
        operation.input = DescribeUsageLimitsMessage
        operation.output = DescribeUsageLimitsOutput
        operation.errors << ClusterNotFoundFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeUsageLimits.new
      end)
      service.add_operation(:disable_logging, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DisableLogging"
        operation.name = "DisableLogging"
        operation.input = DisableLoggingMessage
        operation.output = DisableLoggingOutput
        operation.errors << ClusterNotFoundFault
        operation.errors << InvalidClusterStateFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
      end)
      service.add_operation(:disable_snapshot_copy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DisableSnapshotCopy"
        operation.name = "DisableSnapshotCopy"
        operation.input = DisableSnapshotCopyMessage
        operation.output = DisableSnapshotCopyResult
        operation.errors << ClusterNotFoundFault
        operation.errors << InvalidClusterStateFault
        operation.errors << SnapshotCopyAlreadyDisabledFault
        operation.errors << UnauthorizedOperation
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
      end)
      service.add_operation(:disassociate_data_share_consumer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DisassociateDataShareConsumer"
        operation.name = "DisassociateDataShareConsumer"
        operation.input = DisassociateDataShareConsumerMessage
        operation.output = DisassociateDataShareConsumerOutput
        operation.errors << InvalidDataShareFault
        operation.errors << InvalidNamespaceFault
        operation.traits = {}
      end)
      service.add_operation(:enable_logging, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#EnableLogging"
        operation.name = "EnableLogging"
        operation.input = EnableLoggingMessage
        operation.output = EnableLoggingOutput
        operation.errors << BucketNotFoundFault
        operation.errors << ClusterNotFoundFault
        operation.errors << InsufficientS3BucketPolicyFault
        operation.errors << InvalidClusterStateFault
        operation.errors << InvalidS3BucketNameFault
        operation.errors << InvalidS3KeyPrefixFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
      end)
      service.add_operation(:enable_snapshot_copy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#EnableSnapshotCopy"
        operation.name = "EnableSnapshotCopy"
        operation.input = EnableSnapshotCopyMessage
        operation.output = EnableSnapshotCopyResult
        operation.errors << ClusterNotFoundFault
        operation.errors << CopyToRegionDisabledFault
        operation.errors << DependentServiceRequestThrottlingFault
        operation.errors << IncompatibleOrderableOptions
        operation.errors << InvalidClusterStateFault
        operation.errors << InvalidRetentionPeriodFault
        operation.errors << LimitExceededFault
        operation.errors << SnapshotCopyAlreadyEnabledFault
        operation.errors << SnapshotCopyGrantNotFoundFault
        operation.errors << UnauthorizedOperation
        operation.errors << UnknownSnapshotCopyRegionFault
        operation.traits = {}
      end)
      service.add_operation(:failover_primary_compute, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#FailoverPrimaryCompute"
        operation.name = "FailoverPrimaryCompute"
        operation.input = FailoverPrimaryComputeInputMessage
        operation.output = FailoverPrimaryComputeResult
        operation.errors << ClusterNotFoundFault
        operation.errors << InvalidClusterStateFault
        operation.errors << UnauthorizedOperation
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
      end)
      service.add_operation(:get_cluster_credentials, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#GetClusterCredentials"
        operation.name = "GetClusterCredentials"
        operation.input = GetClusterCredentialsMessage
        operation.output = GetClusterCredentialsOutput
        operation.errors << ClusterNotFoundFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
      end)
      service.add_operation(:get_cluster_credentials_with_iam, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#GetClusterCredentialsWithIAM"
        operation.name = "GetClusterCredentialsWithIAM"
        operation.input = GetClusterCredentialsWithIAMMessage
        operation.output = GetClusterCredentialsWithIAMOutput
        operation.errors << ClusterNotFoundFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
      end)
      service.add_operation(:get_reserved_node_exchange_configuration_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#GetReservedNodeExchangeConfigurationOptions"
        operation.name = "GetReservedNodeExchangeConfigurationOptions"
        operation.input = GetReservedNodeExchangeConfigurationOptionsInputMessage
        operation.output = GetReservedNodeExchangeConfigurationOptionsOutputMessage
        operation.errors << ClusterNotFoundFault
        operation.errors << ClusterSnapshotNotFoundFault
        operation.errors << DependentServiceUnavailableFault
        operation.errors << InvalidReservedNodeStateFault
        operation.errors << ReservedNodeAlreadyMigratedFault
        operation.errors << ReservedNodeNotFoundFault
        operation.errors << ReservedNodeOfferingNotFoundFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
        operation[:paginator] = Paginators::GetReservedNodeExchangeConfigurationOptions.new
      end)
      service.add_operation(:get_reserved_node_exchange_offerings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#GetReservedNodeExchangeOfferings"
        operation.name = "GetReservedNodeExchangeOfferings"
        operation.input = GetReservedNodeExchangeOfferingsInputMessage
        operation.output = GetReservedNodeExchangeOfferingsOutputMessage
        operation.errors << DependentServiceUnavailableFault
        operation.errors << InvalidReservedNodeStateFault
        operation.errors << ReservedNodeAlreadyMigratedFault
        operation.errors << ReservedNodeNotFoundFault
        operation.errors << ReservedNodeOfferingNotFoundFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
        operation[:paginator] = Paginators::GetReservedNodeExchangeOfferings.new
      end)
      service.add_operation(:get_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#GetResourcePolicy"
        operation.name = "GetResourcePolicy"
        operation.input = GetResourcePolicyMessage
        operation.output = GetResourcePolicyResult
        operation.errors << InvalidPolicyFault
        operation.errors << ResourceNotFoundFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
      end)
      service.add_operation(:list_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ListRecommendations"
        operation.name = "ListRecommendations"
        operation.input = ListRecommendationsMessage
        operation.output = ListRecommendationsResult
        operation.errors << ClusterNotFoundFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
        operation[:paginator] = Paginators::ListRecommendations.new
      end)
      service.add_operation(:modify_aqua_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyAquaConfiguration"
        operation.name = "ModifyAquaConfiguration"
        operation.input = ModifyAquaInputMessage
        operation.output = ModifyAquaOutputMessage
        operation.errors << ClusterNotFoundFault
        operation.errors << InvalidClusterStateFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
      end)
      service.add_operation(:modify_authentication_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyAuthenticationProfile"
        operation.name = "ModifyAuthenticationProfile"
        operation.input = ModifyAuthenticationProfileMessage
        operation.output = ModifyAuthenticationProfileResult
        operation.errors << AuthenticationProfileNotFoundFault
        operation.errors << AuthenticationProfileQuotaExceededFault
        operation.errors << InvalidAuthenticationProfileRequestFault
        operation.traits = {}
      end)
      service.add_operation(:modify_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyCluster"
        operation.name = "ModifyCluster"
        operation.input = ModifyClusterMessage
        operation.output = ModifyClusterResult
        operation.errors << ClusterAlreadyExistsFault
        operation.errors << ClusterNotFoundFault
        operation.errors << ClusterParameterGroupNotFoundFault
        operation.errors << ClusterSecurityGroupNotFoundFault
        operation.errors << CustomCnameAssociationFault
        operation.errors << DependentServiceRequestThrottlingFault
        operation.errors << HsmClientCertificateNotFoundFault
        operation.errors << HsmConfigurationNotFoundFault
        operation.errors << InsufficientClusterCapacityFault
        operation.errors << InvalidClusterSecurityGroupStateFault
        operation.errors << InvalidClusterStateFault
        operation.errors << InvalidClusterTrackFault
        operation.errors << InvalidElasticIpFault
        operation.errors << InvalidRetentionPeriodFault
        operation.errors << Ipv6CidrBlockNotFoundFault
        operation.errors << LimitExceededFault
        operation.errors << NumberOfNodesPerClusterLimitExceededFault
        operation.errors << NumberOfNodesQuotaExceededFault
        operation.errors << TableLimitExceededFault
        operation.errors << UnauthorizedOperation
        operation.errors << UnsupportedOperationFault
        operation.errors << UnsupportedOptionFault
        operation.traits = {}
      end)
      service.add_operation(:modify_cluster_db_revision, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyClusterDbRevision"
        operation.name = "ModifyClusterDbRevision"
        operation.input = ModifyClusterDbRevisionMessage
        operation.output = ModifyClusterDbRevisionResult
        operation.errors << ClusterNotFoundFault
        operation.errors << ClusterOnLatestRevisionFault
        operation.errors << InvalidClusterStateFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
      end)
      service.add_operation(:modify_cluster_iam_roles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyClusterIamRoles"
        operation.name = "ModifyClusterIamRoles"
        operation.input = ModifyClusterIamRolesMessage
        operation.output = ModifyClusterIamRolesResult
        operation.errors << ClusterNotFoundFault
        operation.errors << InvalidClusterStateFault
        operation.traits = {}
      end)
      service.add_operation(:modify_cluster_maintenance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyClusterMaintenance"
        operation.name = "ModifyClusterMaintenance"
        operation.input = ModifyClusterMaintenanceMessage
        operation.output = ModifyClusterMaintenanceResult
        operation.errors << ClusterNotFoundFault
        operation.errors << InvalidClusterStateFault
        operation.traits = {}
      end)
      service.add_operation(:modify_cluster_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyClusterParameterGroup"
        operation.name = "ModifyClusterParameterGroup"
        operation.input = ModifyClusterParameterGroupMessage
        operation.output = ModifyClusterParameterGroupOutput
        operation.errors << ClusterParameterGroupNotFoundFault
        operation.errors << InvalidClusterParameterGroupStateFault
        operation.traits = {}
      end)
      service.add_operation(:modify_cluster_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyClusterSnapshot"
        operation.name = "ModifyClusterSnapshot"
        operation.input = ModifyClusterSnapshotMessage
        operation.output = ModifyClusterSnapshotResult
        operation.errors << ClusterSnapshotNotFoundFault
        operation.errors << InvalidClusterSnapshotStateFault
        operation.errors << InvalidRetentionPeriodFault
        operation.traits = {}
      end)
      service.add_operation(:modify_cluster_snapshot_schedule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyClusterSnapshotSchedule"
        operation.name = "ModifyClusterSnapshotSchedule"
        operation.input = ModifyClusterSnapshotScheduleMessage
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ClusterNotFoundFault
        operation.errors << InvalidClusterSnapshotScheduleStateFault
        operation.errors << SnapshotScheduleNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:modify_cluster_subnet_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyClusterSubnetGroup"
        operation.name = "ModifyClusterSubnetGroup"
        operation.input = ModifyClusterSubnetGroupMessage
        operation.output = ModifyClusterSubnetGroupResult
        operation.errors << ClusterSubnetGroupNotFoundFault
        operation.errors << ClusterSubnetQuotaExceededFault
        operation.errors << DependentServiceRequestThrottlingFault
        operation.errors << InvalidSubnet
        operation.errors << SubnetAlreadyInUse
        operation.errors << UnauthorizedOperation
        operation.traits = {}
      end)
      service.add_operation(:modify_custom_domain_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyCustomDomainAssociation"
        operation.name = "ModifyCustomDomainAssociation"
        operation.input = ModifyCustomDomainAssociationMessage
        operation.output = ModifyCustomDomainAssociationResult
        operation.errors << ClusterNotFoundFault
        operation.errors << CustomCnameAssociationFault
        operation.errors << CustomDomainAssociationNotFoundFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
      end)
      service.add_operation(:modify_endpoint_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyEndpointAccess"
        operation.name = "ModifyEndpointAccess"
        operation.input = ModifyEndpointAccessMessage
        operation.output = ModifyEndpointAccessOutput
        operation.errors << ClusterNotFoundFault
        operation.errors << EndpointNotFoundFault
        operation.errors << InvalidClusterSecurityGroupStateFault
        operation.errors << InvalidClusterStateFault
        operation.errors << InvalidEndpointStateFault
        operation.errors << UnauthorizedOperation
        operation.traits = {}
      end)
      service.add_operation(:modify_event_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyEventSubscription"
        operation.name = "ModifyEventSubscription"
        operation.input = ModifyEventSubscriptionMessage
        operation.output = ModifyEventSubscriptionResult
        operation.errors << InvalidSubscriptionStateFault
        operation.errors << SNSInvalidTopicFault
        operation.errors << SNSNoAuthorizationFault
        operation.errors << SNSTopicArnNotFoundFault
        operation.errors << SourceNotFoundFault
        operation.errors << SubscriptionCategoryNotFoundFault
        operation.errors << SubscriptionEventIdNotFoundFault
        operation.errors << SubscriptionNotFoundFault
        operation.errors << SubscriptionSeverityNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:modify_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyIntegration"
        operation.name = "ModifyIntegration"
        operation.input = ModifyIntegrationMessage
        operation.output = ModifyIntegrationOutput
        operation.errors << IntegrationAlreadyExistsFault
        operation.errors << IntegrationConflictOperationFault
        operation.errors << IntegrationConflictStateFault
        operation.errors << IntegrationNotFoundFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
      end)
      service.add_operation(:modify_redshift_idc_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyRedshiftIdcApplication"
        operation.name = "ModifyRedshiftIdcApplication"
        operation.input = ModifyRedshiftIdcApplicationMessage
        operation.output = ModifyRedshiftIdcApplicationResult
        operation.errors << DependentServiceAccessDeniedFault
        operation.errors << DependentServiceUnavailableFault
        operation.errors << RedshiftIdcApplicationNotExistsFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
      end)
      service.add_operation(:modify_scheduled_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyScheduledAction"
        operation.name = "ModifyScheduledAction"
        operation.input = ModifyScheduledActionMessage
        operation.output = ModifyScheduledActionOutput
        operation.errors << ClusterNotFoundFault
        operation.errors << InvalidScheduledActionFault
        operation.errors << InvalidScheduleFault
        operation.errors << ScheduledActionNotFoundFault
        operation.errors << ScheduledActionTypeUnsupportedFault
        operation.errors << UnauthorizedOperation
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
      end)
      service.add_operation(:modify_snapshot_copy_retention_period, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifySnapshotCopyRetentionPeriod"
        operation.name = "ModifySnapshotCopyRetentionPeriod"
        operation.input = ModifySnapshotCopyRetentionPeriodMessage
        operation.output = ModifySnapshotCopyRetentionPeriodResult
        operation.errors << ClusterNotFoundFault
        operation.errors << InvalidClusterStateFault
        operation.errors << InvalidRetentionPeriodFault
        operation.errors << SnapshotCopyDisabledFault
        operation.errors << UnauthorizedOperation
        operation.traits = {}
      end)
      service.add_operation(:modify_snapshot_schedule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifySnapshotSchedule"
        operation.name = "ModifySnapshotSchedule"
        operation.input = ModifySnapshotScheduleMessage
        operation.output = ModifySnapshotScheduleOutput
        operation.errors << InvalidScheduleFault
        operation.errors << SnapshotScheduleNotFoundFault
        operation.errors << SnapshotScheduleUpdateInProgressFault
        operation.traits = {}
      end)
      service.add_operation(:modify_usage_limit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyUsageLimit"
        operation.name = "ModifyUsageLimit"
        operation.input = ModifyUsageLimitMessage
        operation.output = ModifyUsageLimitOutput
        operation.errors << InvalidUsageLimitFault
        operation.errors << UnsupportedOperationFault
        operation.errors << UsageLimitNotFoundFault
        operation.traits = {}
      end)
      service.add_operation(:pause_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#PauseCluster"
        operation.name = "PauseCluster"
        operation.input = PauseClusterInput
        operation.output = PauseClusterResult
        operation.errors << ClusterNotFoundFault
        operation.errors << InvalidClusterStateFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
      end)
      service.add_operation(:purchase_reserved_node_offering, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#PurchaseReservedNodeOffering"
        operation.name = "PurchaseReservedNodeOffering"
        operation.input = PurchaseReservedNodeOfferingMessage
        operation.output = PurchaseReservedNodeOfferingResult
        operation.errors << ReservedNodeAlreadyExistsFault
        operation.errors << ReservedNodeOfferingNotFoundFault
        operation.errors << ReservedNodeQuotaExceededFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
      end)
      service.add_operation(:put_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = PutResourcePolicyMessage
        operation.output = PutResourcePolicyResult
        operation.errors << ConflictPolicyUpdateFault
        operation.errors << InvalidPolicyFault
        operation.errors << ResourceNotFoundFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
      end)
      service.add_operation(:reboot_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#RebootCluster"
        operation.name = "RebootCluster"
        operation.input = RebootClusterMessage
        operation.output = RebootClusterResult
        operation.errors << ClusterNotFoundFault
        operation.errors << InvalidClusterStateFault
        operation.traits = {}
      end)
      service.add_operation(:register_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#RegisterNamespace"
        operation.name = "RegisterNamespace"
        operation.input = RegisterNamespaceInputMessage
        operation.output = RegisterNamespaceOutputMessage
        operation.errors << ClusterNotFoundFault
        operation.errors << InvalidClusterStateFault
        operation.errors << InvalidNamespaceFault
        operation.traits = {}
      end)
      service.add_operation(:reject_data_share, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#RejectDataShare"
        operation.name = "RejectDataShare"
        operation.input = RejectDataShareMessage
        operation.output = RejectDataShareOutput
        operation.errors << InvalidDataShareFault
        operation.traits = {}
      end)
      service.add_operation(:reset_cluster_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ResetClusterParameterGroup"
        operation.name = "ResetClusterParameterGroup"
        operation.input = ResetClusterParameterGroupMessage
        operation.output = ResetClusterParameterGroupOutput
        operation.errors << ClusterParameterGroupNotFoundFault
        operation.errors << InvalidClusterParameterGroupStateFault
        operation.traits = {}
      end)
      service.add_operation(:resize_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ResizeCluster"
        operation.name = "ResizeCluster"
        operation.input = ResizeClusterInput
        operation.output = ResizeClusterResult
        operation.errors << ClusterNotFoundFault
        operation.errors << DependentServiceUnavailableFault
        operation.errors << InsufficientClusterCapacityFault
        operation.errors << InvalidClusterStateFault
        operation.errors << InvalidReservedNodeStateFault
        operation.errors << LimitExceededFault
        operation.errors << NumberOfNodesPerClusterLimitExceededFault
        operation.errors << NumberOfNodesQuotaExceededFault
        operation.errors << ReservedNodeAlreadyExistsFault
        operation.errors << ReservedNodeAlreadyMigratedFault
        operation.errors << ReservedNodeNotFoundFault
        operation.errors << ReservedNodeOfferingNotFoundFault
        operation.errors << UnauthorizedOperation
        operation.errors << UnsupportedOperationFault
        operation.errors << UnsupportedOptionFault
        operation.traits = {}
      end)
      service.add_operation(:restore_from_cluster_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#RestoreFromClusterSnapshot"
        operation.name = "RestoreFromClusterSnapshot"
        operation.input = RestoreFromClusterSnapshotMessage
        operation.output = RestoreFromClusterSnapshotResult
        operation.errors << AccessToSnapshotDeniedFault
        operation.errors << ClusterAlreadyExistsFault
        operation.errors << ClusterParameterGroupNotFoundFault
        operation.errors << ClusterQuotaExceededFault
        operation.errors << ClusterSecurityGroupNotFoundFault
        operation.errors << ClusterSnapshotNotFoundFault
        operation.errors << ClusterSubnetGroupNotFoundFault
        operation.errors << DependentServiceRequestThrottlingFault
        operation.errors << DependentServiceUnavailableFault
        operation.errors << HsmClientCertificateNotFoundFault
        operation.errors << HsmConfigurationNotFoundFault
        operation.errors << InsufficientClusterCapacityFault
        operation.errors << InvalidClusterSnapshotStateFault
        operation.errors << InvalidClusterSubnetGroupStateFault
        operation.errors << InvalidClusterTrackFault
        operation.errors << InvalidElasticIpFault
        operation.errors << InvalidReservedNodeStateFault
        operation.errors << InvalidRestoreFault
        operation.errors << InvalidSubnet
        operation.errors << InvalidTagFault
        operation.errors << InvalidVPCNetworkStateFault
        operation.errors << Ipv6CidrBlockNotFoundFault
        operation.errors << LimitExceededFault
        operation.errors << NumberOfNodesPerClusterLimitExceededFault
        operation.errors << NumberOfNodesQuotaExceededFault
        operation.errors << ReservedNodeAlreadyExistsFault
        operation.errors << ReservedNodeAlreadyMigratedFault
        operation.errors << ReservedNodeNotFoundFault
        operation.errors << ReservedNodeOfferingNotFoundFault
        operation.errors << SnapshotScheduleNotFoundFault
        operation.errors << TagLimitExceededFault
        operation.errors << UnauthorizedOperation
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
      end)
      service.add_operation(:restore_table_from_cluster_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#RestoreTableFromClusterSnapshot"
        operation.name = "RestoreTableFromClusterSnapshot"
        operation.input = RestoreTableFromClusterSnapshotMessage
        operation.output = RestoreTableFromClusterSnapshotResult
        operation.errors << ClusterNotFoundFault
        operation.errors << ClusterSnapshotNotFoundFault
        operation.errors << InProgressTableRestoreQuotaExceededFault
        operation.errors << InvalidClusterSnapshotStateFault
        operation.errors << InvalidClusterStateFault
        operation.errors << InvalidTableRestoreArgumentFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
      end)
      service.add_operation(:resume_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ResumeCluster"
        operation.name = "ResumeCluster"
        operation.input = ResumeClusterInput
        operation.output = ResumeClusterResult
        operation.errors << ClusterNotFoundFault
        operation.errors << InsufficientClusterCapacityFault
        operation.errors << InvalidClusterStateFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
      end)
      service.add_operation(:revoke_cluster_security_group_ingress, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#RevokeClusterSecurityGroupIngress"
        operation.name = "RevokeClusterSecurityGroupIngress"
        operation.input = RevokeClusterSecurityGroupIngressMessage
        operation.output = RevokeClusterSecurityGroupIngressResult
        operation.errors << AuthorizationNotFoundFault
        operation.errors << ClusterSecurityGroupNotFoundFault
        operation.errors << InvalidClusterSecurityGroupStateFault
        operation.traits = {}
      end)
      service.add_operation(:revoke_endpoint_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#RevokeEndpointAccess"
        operation.name = "RevokeEndpointAccess"
        operation.input = RevokeEndpointAccessMessage
        operation.output = RevokeEndpointAccessOutput
        operation.errors << ClusterNotFoundFault
        operation.errors << EndpointAuthorizationNotFoundFault
        operation.errors << EndpointNotFoundFault
        operation.errors << InvalidAuthorizationStateFault
        operation.errors << InvalidClusterSecurityGroupStateFault
        operation.errors << InvalidClusterStateFault
        operation.errors << InvalidEndpointStateFault
        operation.traits = {}
      end)
      service.add_operation(:revoke_snapshot_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#RevokeSnapshotAccess"
        operation.name = "RevokeSnapshotAccess"
        operation.input = RevokeSnapshotAccessMessage
        operation.output = RevokeSnapshotAccessResult
        operation.errors << AccessToSnapshotDeniedFault
        operation.errors << AuthorizationNotFoundFault
        operation.errors << ClusterSnapshotNotFoundFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
      end)
      service.add_operation(:rotate_encryption_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#RotateEncryptionKey"
        operation.name = "RotateEncryptionKey"
        operation.input = RotateEncryptionKeyMessage
        operation.output = RotateEncryptionKeyResult
        operation.errors << ClusterNotFoundFault
        operation.errors << DependentServiceRequestThrottlingFault
        operation.errors << InvalidClusterStateFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
      end)
      service.add_operation(:update_partner_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#UpdatePartnerStatus"
        operation.name = "UpdatePartnerStatus"
        operation.input = UpdatePartnerStatusInputMessage
        operation.output = UpdatePartnerStatusOutput
        operation.errors << ClusterNotFoundFault
        operation.errors << PartnerNotFoundFault
        operation.errors << UnauthorizedPartnerIntegrationFault
        operation.errors << UnsupportedOperationFault
        operation.traits = {}
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
