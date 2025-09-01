# frozen_string_literal: true

# This is generated code!

module Aws::Redshift
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AcceptReservedNodeExchangeInputMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AcceptReservedNodeExchangeInputMessage', name: 'AcceptReservedNodeExchangeInputMessage')
    AcceptReservedNodeExchangeOutputMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AcceptReservedNodeExchangeOutputMessage', name: 'AcceptReservedNodeExchangeOutputMessage')
    AccessToClusterDeniedFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AccessToClusterDeniedFault', name: 'AccessToClusterDeniedFault', traits: {"aws.protocols#awsQueryError" => {"code" => "AccessToClusterDenied", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AccessToSnapshotDeniedFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AccessToSnapshotDeniedFault', name: 'AccessToSnapshotDeniedFault', traits: {"aws.protocols#awsQueryError" => {"code" => "AccessToSnapshotDenied", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AccountAttribute = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AccountAttribute', name: 'AccountAttribute')
    AccountWithRestoreAccess = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AccountWithRestoreAccess', name: 'AccountWithRestoreAccess')
    AccountsWithRestoreAccessList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#AccountsWithRestoreAccessList', name: 'AccountsWithRestoreAccessList')
    ActionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#ActionType', name: 'ActionType')
    AddPartnerInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AddPartnerInput', name: 'AddPartnerInput')
    AddPartnerOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AddPartnerOutput', name: 'AddPartnerOutput')
    AquaConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AquaConfiguration', name: 'AquaConfiguration')
    AquaConfigurationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#AquaConfigurationStatus', name: 'AquaConfigurationStatus')
    AquaStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#AquaStatus', name: 'AquaStatus')
    AssociateDataShareConsumerMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AssociateDataShareConsumerMessage', name: 'AssociateDataShareConsumerMessage')
    AssociateDataShareConsumerOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AssociateDataShareConsumerOutput', name: 'AssociateDataShareConsumerOutput')
    AssociatedClusterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#AssociatedClusterList', name: 'AssociatedClusterList')
    Association = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#Association', name: 'Association')
    AssociationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#AssociationList', name: 'AssociationList')
    AttributeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#AttributeList', name: 'AttributeList')
    AttributeNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#AttributeNameList', name: 'AttributeNameList')
    AttributeValueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#AttributeValueList', name: 'AttributeValueList')
    AttributeValueTarget = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AttributeValueTarget', name: 'AttributeValueTarget')
    AuthenticationProfile = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AuthenticationProfile', name: 'AuthenticationProfile')
    AuthenticationProfileAlreadyExistsFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AuthenticationProfileAlreadyExistsFault', name: 'AuthenticationProfileAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "AuthenticationProfileAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AuthenticationProfileList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#AuthenticationProfileList', name: 'AuthenticationProfileList')
    AuthenticationProfileNameString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshift#AuthenticationProfileNameString', name: 'AuthenticationProfileNameString', traits: {"smithy.api#length" => {"min" => 0, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-]+$"})
    AuthenticationProfileNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AuthenticationProfileNotFoundFault', name: 'AuthenticationProfileNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "AuthenticationProfileNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    AuthenticationProfileQuotaExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AuthenticationProfileQuotaExceededFault', name: 'AuthenticationProfileQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "AuthenticationProfileQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AuthorizationAlreadyExistsFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AuthorizationAlreadyExistsFault', name: 'AuthorizationAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "AuthorizationAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AuthorizationNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AuthorizationNotFoundFault', name: 'AuthorizationNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "AuthorizationNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    AuthorizationQuotaExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AuthorizationQuotaExceededFault', name: 'AuthorizationQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "AuthorizationQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AuthorizationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#AuthorizationStatus', name: 'AuthorizationStatus')
    AuthorizeClusterSecurityGroupIngressMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AuthorizeClusterSecurityGroupIngressMessage', name: 'AuthorizeClusterSecurityGroupIngressMessage')
    AuthorizeClusterSecurityGroupIngressResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AuthorizeClusterSecurityGroupIngressResult', name: 'AuthorizeClusterSecurityGroupIngressResult')
    AuthorizeDataShareMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AuthorizeDataShareMessage', name: 'AuthorizeDataShareMessage')
    AuthorizeDataShareOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AuthorizeDataShareOutput', name: 'AuthorizeDataShareOutput')
    AuthorizeEndpointAccessMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AuthorizeEndpointAccessMessage', name: 'AuthorizeEndpointAccessMessage')
    AuthorizeEndpointAccessOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AuthorizeEndpointAccessOutput', name: 'AuthorizeEndpointAccessOutput')
    AuthorizeSnapshotAccessMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AuthorizeSnapshotAccessMessage', name: 'AuthorizeSnapshotAccessMessage')
    AuthorizeSnapshotAccessResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AuthorizeSnapshotAccessResult', name: 'AuthorizeSnapshotAccessResult')
    AuthorizedAudienceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#AuthorizedAudienceList', name: 'AuthorizedAudienceList')
    AuthorizedTokenIssuer = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AuthorizedTokenIssuer', name: 'AuthorizedTokenIssuer')
    AuthorizedTokenIssuerList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#AuthorizedTokenIssuerList', name: 'AuthorizedTokenIssuerList')
    AvailabilityZone = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AvailabilityZone', name: 'AvailabilityZone')
    AvailabilityZoneList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#AvailabilityZoneList', name: 'AvailabilityZoneList')
    BatchDeleteClusterSnapshotsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#BatchDeleteClusterSnapshotsRequest', name: 'BatchDeleteClusterSnapshotsRequest')
    BatchDeleteClusterSnapshotsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#BatchDeleteClusterSnapshotsResult', name: 'BatchDeleteClusterSnapshotsResult')
    BatchDeleteRequestSizeExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#BatchDeleteRequestSizeExceededFault', name: 'BatchDeleteRequestSizeExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "BatchDeleteRequestSizeExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BatchModifyClusterSnapshotsLimitExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#BatchModifyClusterSnapshotsLimitExceededFault', name: 'BatchModifyClusterSnapshotsLimitExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "BatchModifyClusterSnapshotsLimitExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BatchModifyClusterSnapshotsMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#BatchModifyClusterSnapshotsMessage', name: 'BatchModifyClusterSnapshotsMessage')
    BatchModifyClusterSnapshotsOutputMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#BatchModifyClusterSnapshotsOutputMessage', name: 'BatchModifyClusterSnapshotsOutputMessage')
    BatchSnapshotOperationErrorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#BatchSnapshotOperationErrorList', name: 'BatchSnapshotOperationErrorList')
    BatchSnapshotOperationErrors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#BatchSnapshotOperationErrors', name: 'BatchSnapshotOperationErrors')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.redshift#Boolean', name: 'Boolean')
    BooleanOptional = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.redshift#BooleanOptional', name: 'BooleanOptional')
    BucketNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#BucketNotFoundFault', name: 'BucketNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "BucketNotFoundFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CancelResizeMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CancelResizeMessage', name: 'CancelResizeMessage')
    CancelResizeOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CancelResizeOutput', name: 'CancelResizeOutput')
    CertificateAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CertificateAssociation', name: 'CertificateAssociation')
    CertificateAssociationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#CertificateAssociationList', name: 'CertificateAssociationList')
    Cluster = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#Cluster', name: 'Cluster')
    ClusterAlreadyExistsFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterAlreadyExistsFault', name: 'ClusterAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClusterAssociatedToSchedule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterAssociatedToSchedule', name: 'ClusterAssociatedToSchedule')
    ClusterDbRevision = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterDbRevision', name: 'ClusterDbRevision')
    ClusterDbRevisionsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ClusterDbRevisionsList', name: 'ClusterDbRevisionsList')
    ClusterDbRevisionsMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterDbRevisionsMessage', name: 'ClusterDbRevisionsMessage')
    ClusterIamRole = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterIamRole', name: 'ClusterIamRole')
    ClusterIamRoleList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ClusterIamRoleList', name: 'ClusterIamRoleList')
    ClusterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ClusterList', name: 'ClusterList')
    ClusterNode = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterNode', name: 'ClusterNode')
    ClusterNodesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ClusterNodesList', name: 'ClusterNodesList')
    ClusterNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterNotFoundFault', name: 'ClusterNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ClusterOnLatestRevisionFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterOnLatestRevisionFault', name: 'ClusterOnLatestRevisionFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterOnLatestRevision", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClusterParameterGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterParameterGroup', name: 'ClusterParameterGroup')
    ClusterParameterGroupAlreadyExistsFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterParameterGroupAlreadyExistsFault', name: 'ClusterParameterGroupAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterParameterGroupAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClusterParameterGroupNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterParameterGroupNotFoundFault', name: 'ClusterParameterGroupNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterParameterGroupNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ClusterParameterGroupQuotaExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterParameterGroupQuotaExceededFault', name: 'ClusterParameterGroupQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterParameterGroupQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClusterParameterGroupStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterParameterGroupStatus', name: 'ClusterParameterGroupStatus')
    ClusterParameterGroupStatusList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ClusterParameterGroupStatusList', name: 'ClusterParameterGroupStatusList')
    ClusterParameterGroupsMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterParameterGroupsMessage', name: 'ClusterParameterGroupsMessage')
    ClusterParameterStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterParameterStatus', name: 'ClusterParameterStatus')
    ClusterParameterStatusList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ClusterParameterStatusList', name: 'ClusterParameterStatusList')
    ClusterQuotaExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterQuotaExceededFault', name: 'ClusterQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClusterSecurityGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterSecurityGroup', name: 'ClusterSecurityGroup')
    ClusterSecurityGroupAlreadyExistsFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterSecurityGroupAlreadyExistsFault', name: 'ClusterSecurityGroupAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterSecurityGroupAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClusterSecurityGroupMembership = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterSecurityGroupMembership', name: 'ClusterSecurityGroupMembership')
    ClusterSecurityGroupMembershipList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ClusterSecurityGroupMembershipList', name: 'ClusterSecurityGroupMembershipList')
    ClusterSecurityGroupMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterSecurityGroupMessage', name: 'ClusterSecurityGroupMessage')
    ClusterSecurityGroupNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ClusterSecurityGroupNameList', name: 'ClusterSecurityGroupNameList')
    ClusterSecurityGroupNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterSecurityGroupNotFoundFault', name: 'ClusterSecurityGroupNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterSecurityGroupNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ClusterSecurityGroupQuotaExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterSecurityGroupQuotaExceededFault', name: 'ClusterSecurityGroupQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "QuotaExceeded.ClusterSecurityGroup", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClusterSecurityGroups = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ClusterSecurityGroups', name: 'ClusterSecurityGroups')
    ClusterSnapshotAlreadyExistsFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterSnapshotAlreadyExistsFault', name: 'ClusterSnapshotAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterSnapshotAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClusterSnapshotCopyStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterSnapshotCopyStatus', name: 'ClusterSnapshotCopyStatus')
    ClusterSnapshotNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterSnapshotNotFoundFault', name: 'ClusterSnapshotNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterSnapshotNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ClusterSnapshotQuotaExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterSnapshotQuotaExceededFault', name: 'ClusterSnapshotQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterSnapshotQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClusterSubnetGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterSubnetGroup', name: 'ClusterSubnetGroup')
    ClusterSubnetGroupAlreadyExistsFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterSubnetGroupAlreadyExistsFault', name: 'ClusterSubnetGroupAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterSubnetGroupAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClusterSubnetGroupMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterSubnetGroupMessage', name: 'ClusterSubnetGroupMessage')
    ClusterSubnetGroupNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterSubnetGroupNotFoundFault', name: 'ClusterSubnetGroupNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterSubnetGroupNotFoundFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClusterSubnetGroupQuotaExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterSubnetGroupQuotaExceededFault', name: 'ClusterSubnetGroupQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterSubnetGroupQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClusterSubnetGroups = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ClusterSubnetGroups', name: 'ClusterSubnetGroups')
    ClusterSubnetQuotaExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterSubnetQuotaExceededFault', name: 'ClusterSubnetQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterSubnetQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClusterVersion = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterVersion', name: 'ClusterVersion')
    ClusterVersionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ClusterVersionList', name: 'ClusterVersionList')
    ClusterVersionsMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterVersionsMessage', name: 'ClusterVersionsMessage')
    ClustersMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClustersMessage', name: 'ClustersMessage')
    ConflictPolicyUpdateFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ConflictPolicyUpdateFault', name: 'ConflictPolicyUpdateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ConflictPolicyUpdateFault", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConsumerIdentifierList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ConsumerIdentifierList', name: 'ConsumerIdentifierList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    CopyClusterSnapshotMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CopyClusterSnapshotMessage', name: 'CopyClusterSnapshotMessage')
    CopyClusterSnapshotResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CopyClusterSnapshotResult', name: 'CopyClusterSnapshotResult')
    CopyToRegionDisabledFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CopyToRegionDisabledFault', name: 'CopyToRegionDisabledFault', traits: {"aws.protocols#awsQueryError" => {"code" => "CopyToRegionDisabledFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CreateAuthenticationProfileMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateAuthenticationProfileMessage', name: 'CreateAuthenticationProfileMessage')
    CreateAuthenticationProfileResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateAuthenticationProfileResult', name: 'CreateAuthenticationProfileResult')
    CreateClusterMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateClusterMessage', name: 'CreateClusterMessage')
    CreateClusterParameterGroupMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateClusterParameterGroupMessage', name: 'CreateClusterParameterGroupMessage')
    CreateClusterParameterGroupResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateClusterParameterGroupResult', name: 'CreateClusterParameterGroupResult')
    CreateClusterResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateClusterResult', name: 'CreateClusterResult')
    CreateClusterSecurityGroupMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateClusterSecurityGroupMessage', name: 'CreateClusterSecurityGroupMessage')
    CreateClusterSecurityGroupResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateClusterSecurityGroupResult', name: 'CreateClusterSecurityGroupResult')
    CreateClusterSnapshotMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateClusterSnapshotMessage', name: 'CreateClusterSnapshotMessage')
    CreateClusterSnapshotResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateClusterSnapshotResult', name: 'CreateClusterSnapshotResult')
    CreateClusterSubnetGroupMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateClusterSubnetGroupMessage', name: 'CreateClusterSubnetGroupMessage')
    CreateClusterSubnetGroupResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateClusterSubnetGroupResult', name: 'CreateClusterSubnetGroupResult')
    CreateCustomDomainAssociationMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateCustomDomainAssociationMessage', name: 'CreateCustomDomainAssociationMessage')
    CreateCustomDomainAssociationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateCustomDomainAssociationResult', name: 'CreateCustomDomainAssociationResult')
    CreateEndpointAccessMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateEndpointAccessMessage', name: 'CreateEndpointAccessMessage')
    CreateEndpointAccessOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateEndpointAccessOutput', name: 'CreateEndpointAccessOutput')
    CreateEventSubscriptionMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateEventSubscriptionMessage', name: 'CreateEventSubscriptionMessage')
    CreateEventSubscriptionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateEventSubscriptionResult', name: 'CreateEventSubscriptionResult')
    CreateHsmClientCertificateMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateHsmClientCertificateMessage', name: 'CreateHsmClientCertificateMessage')
    CreateHsmClientCertificateResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateHsmClientCertificateResult', name: 'CreateHsmClientCertificateResult')
    CreateHsmConfigurationMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateHsmConfigurationMessage', name: 'CreateHsmConfigurationMessage')
    CreateHsmConfigurationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateHsmConfigurationResult', name: 'CreateHsmConfigurationResult')
    CreateIntegrationMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateIntegrationMessage', name: 'CreateIntegrationMessage')
    CreateIntegrationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateIntegrationOutput', name: 'CreateIntegrationOutput')
    CreateRedshiftIdcApplicationMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateRedshiftIdcApplicationMessage', name: 'CreateRedshiftIdcApplicationMessage')
    CreateRedshiftIdcApplicationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateRedshiftIdcApplicationResult', name: 'CreateRedshiftIdcApplicationResult')
    CreateScheduledActionMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateScheduledActionMessage', name: 'CreateScheduledActionMessage')
    CreateScheduledActionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateScheduledActionOutput', name: 'CreateScheduledActionOutput')
    CreateSnapshotCopyGrantMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateSnapshotCopyGrantMessage', name: 'CreateSnapshotCopyGrantMessage')
    CreateSnapshotCopyGrantResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateSnapshotCopyGrantResult', name: 'CreateSnapshotCopyGrantResult')
    CreateSnapshotScheduleMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateSnapshotScheduleMessage', name: 'CreateSnapshotScheduleMessage')
    CreateSnapshotScheduleOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateSnapshotScheduleOutput', name: 'CreateSnapshotScheduleOutput')
    CreateTagsMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateTagsMessage', name: 'CreateTagsMessage')
    CreateUsageLimitMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateUsageLimitMessage', name: 'CreateUsageLimitMessage')
    CreateUsageLimitOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateUsageLimitOutput', name: 'CreateUsageLimitOutput')
    CustomCnameAssociationFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CustomCnameAssociationFault', name: 'CustomCnameAssociationFault', traits: {"aws.protocols#awsQueryError" => {"code" => "CustomCnameAssociationFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CustomDomainAssociationNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CustomDomainAssociationNotFoundFault', name: 'CustomDomainAssociationNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "CustomDomainAssociationNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    CustomDomainAssociationsMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CustomDomainAssociationsMessage', name: 'CustomDomainAssociationsMessage')
    CustomDomainCertificateArnString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshift#CustomDomainCertificateArnString', name: 'CustomDomainCertificateArnString', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[\\w+=/,.@-]+:acm:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=,.@-]+)*$"})
    CustomDomainNameString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshift#CustomDomainNameString', name: 'CustomDomainNameString', traits: {"smithy.api#length" => {"min" => 1, "max" => 253}, "smithy.api#pattern" => "^(((?!-)[A-Za-z0-9-]{0,62}[A-Za-z0-9])\\.)+((?!-)[A-Za-z0-9-]{1,62}[A-Za-z0-9])$"})
    CustomerStorageMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CustomerStorageMessage', name: 'CustomerStorageMessage')
    DataShare = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DataShare', name: 'DataShare')
    DataShareAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DataShareAssociation', name: 'DataShareAssociation')
    DataShareAssociationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#DataShareAssociationList', name: 'DataShareAssociationList')
    DataShareList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#DataShareList', name: 'DataShareList')
    DataShareStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#DataShareStatus', name: 'DataShareStatus')
    DataShareStatusForConsumer = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#DataShareStatusForConsumer', name: 'DataShareStatusForConsumer')
    DataShareStatusForProducer = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#DataShareStatusForProducer', name: 'DataShareStatusForProducer')
    DataShareType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#DataShareType', name: 'DataShareType')
    DataTransferProgress = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DataTransferProgress', name: 'DataTransferProgress')
    DbGroupList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#DbGroupList', name: 'DbGroupList')
    DeauthorizeDataShareMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeauthorizeDataShareMessage', name: 'DeauthorizeDataShareMessage')
    DeauthorizeDataShareOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeauthorizeDataShareOutput', name: 'DeauthorizeDataShareOutput')
    DefaultClusterParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DefaultClusterParameters', name: 'DefaultClusterParameters')
    DeferredMaintenanceWindow = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeferredMaintenanceWindow', name: 'DeferredMaintenanceWindow')
    DeferredMaintenanceWindowsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#DeferredMaintenanceWindowsList', name: 'DeferredMaintenanceWindowsList')
    DeleteAuthenticationProfileMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteAuthenticationProfileMessage', name: 'DeleteAuthenticationProfileMessage')
    DeleteAuthenticationProfileResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteAuthenticationProfileResult', name: 'DeleteAuthenticationProfileResult')
    DeleteClusterMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteClusterMessage', name: 'DeleteClusterMessage')
    DeleteClusterParameterGroupMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteClusterParameterGroupMessage', name: 'DeleteClusterParameterGroupMessage')
    DeleteClusterResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteClusterResult', name: 'DeleteClusterResult')
    DeleteClusterSecurityGroupMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteClusterSecurityGroupMessage', name: 'DeleteClusterSecurityGroupMessage')
    DeleteClusterSnapshotInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteClusterSnapshotInput', name: 'DeleteClusterSnapshotInput')
    DeleteClusterSnapshotMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteClusterSnapshotMessage', name: 'DeleteClusterSnapshotMessage')
    DeleteClusterSnapshotMessageList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#DeleteClusterSnapshotMessageList', name: 'DeleteClusterSnapshotMessageList')
    DeleteClusterSnapshotResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteClusterSnapshotResult', name: 'DeleteClusterSnapshotResult')
    DeleteClusterSubnetGroupMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteClusterSubnetGroupMessage', name: 'DeleteClusterSubnetGroupMessage')
    DeleteCustomDomainAssociationMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteCustomDomainAssociationMessage', name: 'DeleteCustomDomainAssociationMessage')
    DeleteEndpointAccessMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteEndpointAccessMessage', name: 'DeleteEndpointAccessMessage')
    DeleteEndpointAccessOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteEndpointAccessOutput', name: 'DeleteEndpointAccessOutput')
    DeleteEventSubscriptionMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteEventSubscriptionMessage', name: 'DeleteEventSubscriptionMessage')
    DeleteHsmClientCertificateMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteHsmClientCertificateMessage', name: 'DeleteHsmClientCertificateMessage')
    DeleteHsmConfigurationMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteHsmConfigurationMessage', name: 'DeleteHsmConfigurationMessage')
    DeleteIntegrationMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteIntegrationMessage', name: 'DeleteIntegrationMessage')
    DeleteIntegrationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteIntegrationOutput', name: 'DeleteIntegrationOutput')
    DeletePartnerInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeletePartnerInput', name: 'DeletePartnerInput')
    DeletePartnerOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeletePartnerOutput', name: 'DeletePartnerOutput')
    DeleteRedshiftIdcApplicationMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteRedshiftIdcApplicationMessage', name: 'DeleteRedshiftIdcApplicationMessage')
    DeleteResourcePolicyMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteResourcePolicyMessage', name: 'DeleteResourcePolicyMessage')
    DeleteScheduledActionMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteScheduledActionMessage', name: 'DeleteScheduledActionMessage')
    DeleteSnapshotCopyGrantMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteSnapshotCopyGrantMessage', name: 'DeleteSnapshotCopyGrantMessage')
    DeleteSnapshotScheduleMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteSnapshotScheduleMessage', name: 'DeleteSnapshotScheduleMessage')
    DeleteTagsMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteTagsMessage', name: 'DeleteTagsMessage')
    DeleteUsageLimitMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteUsageLimitMessage', name: 'DeleteUsageLimitMessage')
    DependentServiceAccessDeniedFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DependentServiceAccessDeniedFault', name: 'DependentServiceAccessDeniedFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DependentServiceAccessDenied", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    DependentServiceRequestThrottlingFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DependentServiceRequestThrottlingFault', name: 'DependentServiceRequestThrottlingFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DependentServiceRequestThrottlingFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DependentServiceUnavailableFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DependentServiceUnavailableFault', name: 'DependentServiceUnavailableFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DependentServiceUnavailableFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DeregisterNamespaceInputMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeregisterNamespaceInputMessage', name: 'DeregisterNamespaceInputMessage')
    DeregisterNamespaceOutputMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeregisterNamespaceOutputMessage', name: 'DeregisterNamespaceOutputMessage')
    DescribeAccountAttributesMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeAccountAttributesMessage', name: 'DescribeAccountAttributesMessage')
    DescribeAccountAttributesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeAccountAttributesOutput', name: 'DescribeAccountAttributesOutput')
    DescribeAuthenticationProfilesMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeAuthenticationProfilesMessage', name: 'DescribeAuthenticationProfilesMessage')
    DescribeAuthenticationProfilesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeAuthenticationProfilesResult', name: 'DescribeAuthenticationProfilesResult')
    DescribeClusterDbRevisionsMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeClusterDbRevisionsMessage', name: 'DescribeClusterDbRevisionsMessage')
    DescribeClusterParameterGroupsMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeClusterParameterGroupsMessage', name: 'DescribeClusterParameterGroupsMessage')
    DescribeClusterParametersMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeClusterParametersMessage', name: 'DescribeClusterParametersMessage')
    DescribeClusterParametersOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeClusterParametersOutput', name: 'DescribeClusterParametersOutput')
    DescribeClusterSecurityGroupsMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeClusterSecurityGroupsMessage', name: 'DescribeClusterSecurityGroupsMessage')
    DescribeClusterSnapshotsMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeClusterSnapshotsMessage', name: 'DescribeClusterSnapshotsMessage')
    DescribeClusterSubnetGroupsMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeClusterSubnetGroupsMessage', name: 'DescribeClusterSubnetGroupsMessage')
    DescribeClusterTracksMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeClusterTracksMessage', name: 'DescribeClusterTracksMessage')
    DescribeClusterVersionsMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeClusterVersionsMessage', name: 'DescribeClusterVersionsMessage')
    DescribeClustersMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeClustersMessage', name: 'DescribeClustersMessage')
    DescribeCustomDomainAssociationsMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeCustomDomainAssociationsMessage', name: 'DescribeCustomDomainAssociationsMessage')
    DescribeDataSharesForConsumerMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeDataSharesForConsumerMessage', name: 'DescribeDataSharesForConsumerMessage')
    DescribeDataSharesForConsumerResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeDataSharesForConsumerResult', name: 'DescribeDataSharesForConsumerResult')
    DescribeDataSharesForProducerMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeDataSharesForProducerMessage', name: 'DescribeDataSharesForProducerMessage')
    DescribeDataSharesForProducerResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeDataSharesForProducerResult', name: 'DescribeDataSharesForProducerResult')
    DescribeDataSharesMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeDataSharesMessage', name: 'DescribeDataSharesMessage')
    DescribeDataSharesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeDataSharesResult', name: 'DescribeDataSharesResult')
    DescribeDefaultClusterParametersMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeDefaultClusterParametersMessage', name: 'DescribeDefaultClusterParametersMessage')
    DescribeDefaultClusterParametersResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeDefaultClusterParametersResult', name: 'DescribeDefaultClusterParametersResult')
    DescribeEndpointAccessMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeEndpointAccessMessage', name: 'DescribeEndpointAccessMessage')
    DescribeEndpointAccessOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeEndpointAccessOutput', name: 'DescribeEndpointAccessOutput')
    DescribeEndpointAuthorizationMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeEndpointAuthorizationMessage', name: 'DescribeEndpointAuthorizationMessage')
    DescribeEndpointAuthorizationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeEndpointAuthorizationOutput', name: 'DescribeEndpointAuthorizationOutput')
    DescribeEventCategoriesMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeEventCategoriesMessage', name: 'DescribeEventCategoriesMessage')
    DescribeEventSubscriptionsMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeEventSubscriptionsMessage', name: 'DescribeEventSubscriptionsMessage')
    DescribeEventsMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeEventsMessage', name: 'DescribeEventsMessage')
    DescribeHsmClientCertificatesMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeHsmClientCertificatesMessage', name: 'DescribeHsmClientCertificatesMessage')
    DescribeHsmConfigurationsMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeHsmConfigurationsMessage', name: 'DescribeHsmConfigurationsMessage')
    DescribeInboundIntegrationsMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeInboundIntegrationsMessage', name: 'DescribeInboundIntegrationsMessage')
    DescribeIntegrationsFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeIntegrationsFilter', name: 'DescribeIntegrationsFilter')
    DescribeIntegrationsFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#DescribeIntegrationsFilterList', name: 'DescribeIntegrationsFilterList')
    DescribeIntegrationsFilterName = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#DescribeIntegrationsFilterName', name: 'DescribeIntegrationsFilterName')
    DescribeIntegrationsFilterValueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#DescribeIntegrationsFilterValueList', name: 'DescribeIntegrationsFilterValueList')
    DescribeIntegrationsMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeIntegrationsMessage', name: 'DescribeIntegrationsMessage')
    DescribeLoggingStatusMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeLoggingStatusMessage', name: 'DescribeLoggingStatusMessage')
    DescribeLoggingStatusOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeLoggingStatusOutput', name: 'DescribeLoggingStatusOutput')
    DescribeNodeConfigurationOptionsMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeNodeConfigurationOptionsMessage', name: 'DescribeNodeConfigurationOptionsMessage')
    DescribeOrderableClusterOptionsMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeOrderableClusterOptionsMessage', name: 'DescribeOrderableClusterOptionsMessage')
    DescribePartnersInputMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribePartnersInputMessage', name: 'DescribePartnersInputMessage')
    DescribePartnersOutputMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribePartnersOutputMessage', name: 'DescribePartnersOutputMessage')
    DescribeRedshiftIdcApplicationsMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeRedshiftIdcApplicationsMessage', name: 'DescribeRedshiftIdcApplicationsMessage')
    DescribeRedshiftIdcApplicationsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeRedshiftIdcApplicationsResult', name: 'DescribeRedshiftIdcApplicationsResult')
    DescribeReservedNodeExchangeStatusInputMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeReservedNodeExchangeStatusInputMessage', name: 'DescribeReservedNodeExchangeStatusInputMessage')
    DescribeReservedNodeExchangeStatusOutputMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeReservedNodeExchangeStatusOutputMessage', name: 'DescribeReservedNodeExchangeStatusOutputMessage')
    DescribeReservedNodeOfferingsMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeReservedNodeOfferingsMessage', name: 'DescribeReservedNodeOfferingsMessage')
    DescribeReservedNodesMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeReservedNodesMessage', name: 'DescribeReservedNodesMessage')
    DescribeResizeMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeResizeMessage', name: 'DescribeResizeMessage')
    DescribeResizeOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeResizeOutput', name: 'DescribeResizeOutput')
    DescribeScheduledActionsMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeScheduledActionsMessage', name: 'DescribeScheduledActionsMessage')
    DescribeSnapshotCopyGrantsMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeSnapshotCopyGrantsMessage', name: 'DescribeSnapshotCopyGrantsMessage')
    DescribeSnapshotSchedulesMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeSnapshotSchedulesMessage', name: 'DescribeSnapshotSchedulesMessage')
    DescribeSnapshotSchedulesOutputMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeSnapshotSchedulesOutputMessage', name: 'DescribeSnapshotSchedulesOutputMessage')
    DescribeTableRestoreStatusMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeTableRestoreStatusMessage', name: 'DescribeTableRestoreStatusMessage')
    DescribeTagsMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeTagsMessage', name: 'DescribeTagsMessage')
    DescribeUsageLimitsMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeUsageLimitsMessage', name: 'DescribeUsageLimitsMessage')
    DescribeUsageLimitsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeUsageLimitsOutput', name: 'DescribeUsageLimitsOutput')
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshift#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^.*$"})
    DisableLoggingMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DisableLoggingMessage', name: 'DisableLoggingMessage')
    DisableLoggingOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DisableLoggingOutput', name: 'DisableLoggingOutput')
    DisableSnapshotCopyMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DisableSnapshotCopyMessage', name: 'DisableSnapshotCopyMessage')
    DisableSnapshotCopyResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DisableSnapshotCopyResult', name: 'DisableSnapshotCopyResult')
    DisassociateDataShareConsumerMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DisassociateDataShareConsumerMessage', name: 'DisassociateDataShareConsumerMessage')
    DisassociateDataShareConsumerOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DisassociateDataShareConsumerOutput', name: 'DisassociateDataShareConsumerOutput')
    Double = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.redshift#Double', name: 'Double')
    DoubleOptional = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.redshift#DoubleOptional', name: 'DoubleOptional')
    EC2SecurityGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#EC2SecurityGroup', name: 'EC2SecurityGroup')
    EC2SecurityGroupList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#EC2SecurityGroupList', name: 'EC2SecurityGroupList')
    ElasticIpStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ElasticIpStatus', name: 'ElasticIpStatus')
    EligibleTracksToUpdateList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#EligibleTracksToUpdateList', name: 'EligibleTracksToUpdateList')
    EnableLoggingMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#EnableLoggingMessage', name: 'EnableLoggingMessage')
    EnableLoggingOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#EnableLoggingOutput', name: 'EnableLoggingOutput')
    EnableSnapshotCopyMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#EnableSnapshotCopyMessage', name: 'EnableSnapshotCopyMessage')
    EnableSnapshotCopyResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#EnableSnapshotCopyResult', name: 'EnableSnapshotCopyResult')
    EncryptionContextMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.redshift#EncryptionContextMap', name: 'EncryptionContextMap')
    Endpoint = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#Endpoint', name: 'Endpoint')
    EndpointAccess = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#EndpointAccess', name: 'EndpointAccess')
    EndpointAccesses = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#EndpointAccesses', name: 'EndpointAccesses')
    EndpointAlreadyExistsFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#EndpointAlreadyExistsFault', name: 'EndpointAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "EndpointAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EndpointAuthorization = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#EndpointAuthorization', name: 'EndpointAuthorization')
    EndpointAuthorizationAlreadyExistsFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#EndpointAuthorizationAlreadyExistsFault', name: 'EndpointAuthorizationAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "EndpointAuthorizationAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EndpointAuthorizationNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#EndpointAuthorizationNotFoundFault', name: 'EndpointAuthorizationNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "EndpointAuthorizationNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    EndpointAuthorizations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#EndpointAuthorizations', name: 'EndpointAuthorizations')
    EndpointAuthorizationsPerClusterLimitExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#EndpointAuthorizationsPerClusterLimitExceededFault', name: 'EndpointAuthorizationsPerClusterLimitExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "EndpointAuthorizationsPerClusterLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EndpointNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#EndpointNotFoundFault', name: 'EndpointNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "EndpointNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    EndpointsPerAuthorizationLimitExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#EndpointsPerAuthorizationLimitExceededFault', name: 'EndpointsPerAuthorizationLimitExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "EndpointsPerAuthorizationLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EndpointsPerClusterLimitExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#EndpointsPerClusterLimitExceededFault', name: 'EndpointsPerClusterLimitExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "EndpointsPerClusterLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Event = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#Event', name: 'Event')
    EventCategoriesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#EventCategoriesList', name: 'EventCategoriesList')
    EventCategoriesMap = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#EventCategoriesMap', name: 'EventCategoriesMap')
    EventCategoriesMapList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#EventCategoriesMapList', name: 'EventCategoriesMapList')
    EventCategoriesMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#EventCategoriesMessage', name: 'EventCategoriesMessage')
    EventInfoMap = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#EventInfoMap', name: 'EventInfoMap')
    EventInfoMapList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#EventInfoMapList', name: 'EventInfoMapList')
    EventList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#EventList', name: 'EventList')
    EventSubscription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#EventSubscription', name: 'EventSubscription')
    EventSubscriptionQuotaExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#EventSubscriptionQuotaExceededFault', name: 'EventSubscriptionQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "EventSubscriptionQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EventSubscriptionsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#EventSubscriptionsList', name: 'EventSubscriptionsList')
    EventSubscriptionsMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#EventSubscriptionsMessage', name: 'EventSubscriptionsMessage')
    EventsMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#EventsMessage', name: 'EventsMessage')
    ExceptionMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshift#ExceptionMessage', name: 'ExceptionMessage')
    FailoverPrimaryComputeInputMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#FailoverPrimaryComputeInputMessage', name: 'FailoverPrimaryComputeInputMessage')
    FailoverPrimaryComputeResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#FailoverPrimaryComputeResult', name: 'FailoverPrimaryComputeResult')
    GetClusterCredentialsMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#GetClusterCredentialsMessage', name: 'GetClusterCredentialsMessage')
    GetClusterCredentialsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#GetClusterCredentialsOutput', name: 'GetClusterCredentialsOutput')
    GetClusterCredentialsWithIAMMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#GetClusterCredentialsWithIAMMessage', name: 'GetClusterCredentialsWithIAMMessage')
    GetClusterCredentialsWithIAMOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#GetClusterCredentialsWithIAMOutput', name: 'GetClusterCredentialsWithIAMOutput')
    GetReservedNodeExchangeConfigurationOptionsInputMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#GetReservedNodeExchangeConfigurationOptionsInputMessage', name: 'GetReservedNodeExchangeConfigurationOptionsInputMessage')
    GetReservedNodeExchangeConfigurationOptionsOutputMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#GetReservedNodeExchangeConfigurationOptionsOutputMessage', name: 'GetReservedNodeExchangeConfigurationOptionsOutputMessage')
    GetReservedNodeExchangeOfferingsInputMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#GetReservedNodeExchangeOfferingsInputMessage', name: 'GetReservedNodeExchangeOfferingsInputMessage')
    GetReservedNodeExchangeOfferingsOutputMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#GetReservedNodeExchangeOfferingsOutputMessage', name: 'GetReservedNodeExchangeOfferingsOutputMessage')
    GetResourcePolicyMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#GetResourcePolicyMessage', name: 'GetResourcePolicyMessage')
    GetResourcePolicyResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#GetResourcePolicyResult', name: 'GetResourcePolicyResult')
    HsmClientCertificate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#HsmClientCertificate', name: 'HsmClientCertificate')
    HsmClientCertificateAlreadyExistsFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#HsmClientCertificateAlreadyExistsFault', name: 'HsmClientCertificateAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "HsmClientCertificateAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    HsmClientCertificateList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#HsmClientCertificateList', name: 'HsmClientCertificateList')
    HsmClientCertificateMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#HsmClientCertificateMessage', name: 'HsmClientCertificateMessage')
    HsmClientCertificateNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#HsmClientCertificateNotFoundFault', name: 'HsmClientCertificateNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "HsmClientCertificateNotFoundFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    HsmClientCertificateQuotaExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#HsmClientCertificateQuotaExceededFault', name: 'HsmClientCertificateQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "HsmClientCertificateQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    HsmConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#HsmConfiguration', name: 'HsmConfiguration')
    HsmConfigurationAlreadyExistsFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#HsmConfigurationAlreadyExistsFault', name: 'HsmConfigurationAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "HsmConfigurationAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    HsmConfigurationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#HsmConfigurationList', name: 'HsmConfigurationList')
    HsmConfigurationMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#HsmConfigurationMessage', name: 'HsmConfigurationMessage')
    HsmConfigurationNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#HsmConfigurationNotFoundFault', name: 'HsmConfigurationNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "HsmConfigurationNotFoundFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    HsmConfigurationQuotaExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#HsmConfigurationQuotaExceededFault', name: 'HsmConfigurationQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "HsmConfigurationQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    HsmStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#HsmStatus', name: 'HsmStatus')
    IPRange = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#IPRange', name: 'IPRange')
    IPRangeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#IPRangeList', name: 'IPRangeList')
    IamRoleArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#IamRoleArnList', name: 'IamRoleArnList')
    IdcDisplayNameString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshift#IdcDisplayNameString', name: 'IdcDisplayNameString', traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[\\w+=,.@-]+$"})
    IdentityNamespaceString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshift#IdentityNamespaceString', name: 'IdentityNamespaceString', traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[a-zA-Z0-9_+.\#@$-]+$"})
    ImpactRankingType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#ImpactRankingType', name: 'ImpactRankingType')
    ImportTablesCompleted = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ImportTablesCompleted', name: 'ImportTablesCompleted')
    ImportTablesInProgress = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ImportTablesInProgress', name: 'ImportTablesInProgress')
    ImportTablesNotStarted = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ImportTablesNotStarted', name: 'ImportTablesNotStarted')
    InProgressTableRestoreQuotaExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InProgressTableRestoreQuotaExceededFault', name: 'InProgressTableRestoreQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InProgressTableRestoreQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InboundIntegration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InboundIntegration', name: 'InboundIntegration')
    InboundIntegrationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshift#InboundIntegrationArn', name: 'InboundIntegrationArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^arn:aws[a-z\\-]*:.+:[a-z0-9\\-]*:[0-9]*:integration:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    InboundIntegrationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#InboundIntegrationList', name: 'InboundIntegrationList')
    InboundIntegrationsMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InboundIntegrationsMessage', name: 'InboundIntegrationsMessage')
    IncompatibleOrderableOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#IncompatibleOrderableOptions', name: 'IncompatibleOrderableOptions', traits: {"aws.protocols#awsQueryError" => {"code" => "IncompatibleOrderableOptions", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InsufficientClusterCapacityFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InsufficientClusterCapacityFault', name: 'InsufficientClusterCapacityFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InsufficientClusterCapacity", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InsufficientS3BucketPolicyFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InsufficientS3BucketPolicyFault', name: 'InsufficientS3BucketPolicyFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InsufficientS3BucketPolicyFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.redshift#Integer', name: 'Integer')
    IntegerOptional = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.redshift#IntegerOptional', name: 'IntegerOptional')
    Integration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#Integration', name: 'Integration')
    IntegrationAlreadyExistsFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#IntegrationAlreadyExistsFault', name: 'IntegrationAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "IntegrationAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IntegrationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshift#IntegrationArn', name: 'IntegrationArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^arn:aws[a-z\\-]*:redshift:[a-z0-9\\-]*:[0-9]*:integration:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    IntegrationConflictOperationFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#IntegrationConflictOperationFault', name: 'IntegrationConflictOperationFault', traits: {"aws.protocols#awsQueryError" => {"code" => "IntegrationConflictOperationFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IntegrationConflictStateFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#IntegrationConflictStateFault', name: 'IntegrationConflictStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "IntegrationConflictStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IntegrationDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshift#IntegrationDescription', name: 'IntegrationDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^.*$"})
    IntegrationError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#IntegrationError', name: 'IntegrationError')
    IntegrationErrorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#IntegrationErrorList', name: 'IntegrationErrorList')
    IntegrationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#IntegrationList', name: 'IntegrationList')
    IntegrationName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshift#IntegrationName', name: 'IntegrationName', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9]*(-[a-zA-Z0-9]+)*$"})
    IntegrationNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#IntegrationNotFoundFault', name: 'IntegrationNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "IntegrationNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    IntegrationQuotaExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#IntegrationQuotaExceededFault', name: 'IntegrationQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "IntegrationQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IntegrationSourceNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#IntegrationSourceNotFoundFault', name: 'IntegrationSourceNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "IntegrationSourceNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    IntegrationTargetNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#IntegrationTargetNotFoundFault', name: 'IntegrationTargetNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "IntegrationTargetNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    IntegrationsMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#IntegrationsMessage', name: 'IntegrationsMessage')
    InvalidAuthenticationProfileRequestFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidAuthenticationProfileRequestFault', name: 'InvalidAuthenticationProfileRequestFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidAuthenticationProfileRequestFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidAuthorizationStateFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidAuthorizationStateFault', name: 'InvalidAuthorizationStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidAuthorizationState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidClusterParameterGroupStateFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidClusterParameterGroupStateFault', name: 'InvalidClusterParameterGroupStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidClusterParameterGroupState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidClusterSecurityGroupStateFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidClusterSecurityGroupStateFault', name: 'InvalidClusterSecurityGroupStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidClusterSecurityGroupState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidClusterSnapshotScheduleStateFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidClusterSnapshotScheduleStateFault', name: 'InvalidClusterSnapshotScheduleStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidClusterSnapshotScheduleState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidClusterSnapshotStateFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidClusterSnapshotStateFault', name: 'InvalidClusterSnapshotStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidClusterSnapshotState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidClusterStateFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidClusterStateFault', name: 'InvalidClusterStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidClusterState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidClusterSubnetGroupStateFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidClusterSubnetGroupStateFault', name: 'InvalidClusterSubnetGroupStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidClusterSubnetGroupStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidClusterSubnetStateFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidClusterSubnetStateFault', name: 'InvalidClusterSubnetStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidClusterSubnetStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidClusterTrackFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidClusterTrackFault', name: 'InvalidClusterTrackFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidClusterTrack", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDataShareFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidDataShareFault', name: 'InvalidDataShareFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDataShareFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidElasticIpFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidElasticIpFault', name: 'InvalidElasticIpFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidElasticIpFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidEndpointStateFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidEndpointStateFault', name: 'InvalidEndpointStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidEndpointState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidHsmClientCertificateStateFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidHsmClientCertificateStateFault', name: 'InvalidHsmClientCertificateStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidHsmClientCertificateStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidHsmConfigurationStateFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidHsmConfigurationStateFault', name: 'InvalidHsmConfigurationStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidHsmConfigurationStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidNamespaceFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidNamespaceFault', name: 'InvalidNamespaceFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidNamespaceFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidPolicyFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidPolicyFault', name: 'InvalidPolicyFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidPolicyFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidReservedNodeStateFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidReservedNodeStateFault', name: 'InvalidReservedNodeStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidReservedNodeState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRestoreFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidRestoreFault', name: 'InvalidRestoreFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidRestore", "httpResponseCode" => 406}, "smithy.api#error" => "client", "smithy.api#httpError" => 406})
    InvalidRetentionPeriodFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidRetentionPeriodFault', name: 'InvalidRetentionPeriodFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidRetentionPeriodFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidS3BucketNameFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidS3BucketNameFault', name: 'InvalidS3BucketNameFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidS3BucketNameFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidS3KeyPrefixFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidS3KeyPrefixFault', name: 'InvalidS3KeyPrefixFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidS3KeyPrefixFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidScheduleFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidScheduleFault', name: 'InvalidScheduleFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidSchedule", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidScheduledActionFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidScheduledActionFault', name: 'InvalidScheduledActionFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidScheduledAction", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSnapshotCopyGrantStateFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidSnapshotCopyGrantStateFault', name: 'InvalidSnapshotCopyGrantStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidSnapshotCopyGrantStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSubnet = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidSubnet', name: 'InvalidSubnet', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidSubnet", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSubscriptionStateFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidSubscriptionStateFault', name: 'InvalidSubscriptionStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidSubscriptionStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidTableRestoreArgumentFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidTableRestoreArgumentFault', name: 'InvalidTableRestoreArgumentFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidTableRestoreArgument", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidTagFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidTagFault', name: 'InvalidTagFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidTagFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidUsageLimitFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidUsageLimitFault', name: 'InvalidUsageLimitFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidUsageLimit", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidVPCNetworkStateFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidVPCNetworkStateFault', name: 'InvalidVPCNetworkStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidVPCNetworkStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Ipv6CidrBlockNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#Ipv6CidrBlockNotFoundFault', name: 'Ipv6CidrBlockNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "Ipv6CidrBlockNotFoundFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LakeFormationQuery = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#LakeFormationQuery', name: 'LakeFormationQuery')
    LakeFormationScopeUnion = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.redshift#LakeFormationScopeUnion', name: 'LakeFormationScopeUnion')
    LakeFormationServiceIntegrations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#LakeFormationServiceIntegrations', name: 'LakeFormationServiceIntegrations')
    LimitExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#LimitExceededFault', name: 'LimitExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "LimitExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListRecommendationsMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ListRecommendationsMessage', name: 'ListRecommendationsMessage')
    ListRecommendationsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ListRecommendationsResult', name: 'ListRecommendationsResult')
    LogDestinationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#LogDestinationType', name: 'LogDestinationType')
    LogTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#LogTypeList', name: 'LogTypeList')
    Long = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.redshift#Long', name: 'Long')
    LongOptional = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.redshift#LongOptional', name: 'LongOptional')
    MaintenanceTrack = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#MaintenanceTrack', name: 'MaintenanceTrack')
    Mode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#Mode', name: 'Mode')
    ModifyAquaInputMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyAquaInputMessage', name: 'ModifyAquaInputMessage')
    ModifyAquaOutputMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyAquaOutputMessage', name: 'ModifyAquaOutputMessage')
    ModifyAuthenticationProfileMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyAuthenticationProfileMessage', name: 'ModifyAuthenticationProfileMessage')
    ModifyAuthenticationProfileResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyAuthenticationProfileResult', name: 'ModifyAuthenticationProfileResult')
    ModifyClusterDbRevisionMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyClusterDbRevisionMessage', name: 'ModifyClusterDbRevisionMessage')
    ModifyClusterDbRevisionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyClusterDbRevisionResult', name: 'ModifyClusterDbRevisionResult')
    ModifyClusterIamRolesMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyClusterIamRolesMessage', name: 'ModifyClusterIamRolesMessage')
    ModifyClusterIamRolesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyClusterIamRolesResult', name: 'ModifyClusterIamRolesResult')
    ModifyClusterMaintenanceMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyClusterMaintenanceMessage', name: 'ModifyClusterMaintenanceMessage')
    ModifyClusterMaintenanceResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyClusterMaintenanceResult', name: 'ModifyClusterMaintenanceResult')
    ModifyClusterMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyClusterMessage', name: 'ModifyClusterMessage')
    ModifyClusterParameterGroupMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyClusterParameterGroupMessage', name: 'ModifyClusterParameterGroupMessage')
    ModifyClusterParameterGroupOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyClusterParameterGroupOutput', name: 'ModifyClusterParameterGroupOutput')
    ModifyClusterResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyClusterResult', name: 'ModifyClusterResult')
    ModifyClusterSnapshotMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyClusterSnapshotMessage', name: 'ModifyClusterSnapshotMessage')
    ModifyClusterSnapshotResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyClusterSnapshotResult', name: 'ModifyClusterSnapshotResult')
    ModifyClusterSnapshotScheduleMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyClusterSnapshotScheduleMessage', name: 'ModifyClusterSnapshotScheduleMessage')
    ModifyClusterSubnetGroupMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyClusterSubnetGroupMessage', name: 'ModifyClusterSubnetGroupMessage')
    ModifyClusterSubnetGroupResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyClusterSubnetGroupResult', name: 'ModifyClusterSubnetGroupResult')
    ModifyCustomDomainAssociationMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyCustomDomainAssociationMessage', name: 'ModifyCustomDomainAssociationMessage')
    ModifyCustomDomainAssociationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyCustomDomainAssociationResult', name: 'ModifyCustomDomainAssociationResult')
    ModifyEndpointAccessMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyEndpointAccessMessage', name: 'ModifyEndpointAccessMessage')
    ModifyEndpointAccessOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyEndpointAccessOutput', name: 'ModifyEndpointAccessOutput')
    ModifyEventSubscriptionMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyEventSubscriptionMessage', name: 'ModifyEventSubscriptionMessage')
    ModifyEventSubscriptionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyEventSubscriptionResult', name: 'ModifyEventSubscriptionResult')
    ModifyIntegrationMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyIntegrationMessage', name: 'ModifyIntegrationMessage')
    ModifyIntegrationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyIntegrationOutput', name: 'ModifyIntegrationOutput')
    ModifyRedshiftIdcApplicationMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyRedshiftIdcApplicationMessage', name: 'ModifyRedshiftIdcApplicationMessage')
    ModifyRedshiftIdcApplicationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyRedshiftIdcApplicationResult', name: 'ModifyRedshiftIdcApplicationResult')
    ModifyScheduledActionMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyScheduledActionMessage', name: 'ModifyScheduledActionMessage')
    ModifyScheduledActionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyScheduledActionOutput', name: 'ModifyScheduledActionOutput')
    ModifySnapshotCopyRetentionPeriodMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifySnapshotCopyRetentionPeriodMessage', name: 'ModifySnapshotCopyRetentionPeriodMessage')
    ModifySnapshotCopyRetentionPeriodResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifySnapshotCopyRetentionPeriodResult', name: 'ModifySnapshotCopyRetentionPeriodResult')
    ModifySnapshotScheduleMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifySnapshotScheduleMessage', name: 'ModifySnapshotScheduleMessage')
    ModifySnapshotScheduleOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifySnapshotScheduleOutput', name: 'ModifySnapshotScheduleOutput')
    ModifyUsageLimitMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyUsageLimitMessage', name: 'ModifyUsageLimitMessage')
    ModifyUsageLimitOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyUsageLimitOutput', name: 'ModifyUsageLimitOutput')
    NamespaceIdentifierUnion = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.redshift#NamespaceIdentifierUnion', name: 'NamespaceIdentifierUnion')
    NamespaceRegistrationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#NamespaceRegistrationStatus', name: 'NamespaceRegistrationStatus')
    NetworkInterface = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#NetworkInterface', name: 'NetworkInterface')
    NetworkInterfaceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#NetworkInterfaceList', name: 'NetworkInterfaceList')
    NodeConfigurationOption = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#NodeConfigurationOption', name: 'NodeConfigurationOption')
    NodeConfigurationOptionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#NodeConfigurationOptionList', name: 'NodeConfigurationOptionList')
    NodeConfigurationOptionsFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#NodeConfigurationOptionsFilter', name: 'NodeConfigurationOptionsFilter')
    NodeConfigurationOptionsFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#NodeConfigurationOptionsFilterList', name: 'NodeConfigurationOptionsFilterList')
    NodeConfigurationOptionsFilterName = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#NodeConfigurationOptionsFilterName', name: 'NodeConfigurationOptionsFilterName')
    NodeConfigurationOptionsMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#NodeConfigurationOptionsMessage', name: 'NodeConfigurationOptionsMessage')
    NumberOfNodesPerClusterLimitExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#NumberOfNodesPerClusterLimitExceededFault', name: 'NumberOfNodesPerClusterLimitExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "NumberOfNodesPerClusterLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NumberOfNodesQuotaExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#NumberOfNodesQuotaExceededFault', name: 'NumberOfNodesQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "NumberOfNodesQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    OperatorType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#OperatorType', name: 'OperatorType')
    OrderableClusterOption = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#OrderableClusterOption', name: 'OrderableClusterOption')
    OrderableClusterOptionsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#OrderableClusterOptionsList', name: 'OrderableClusterOptionsList')
    OrderableClusterOptionsMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#OrderableClusterOptionsMessage', name: 'OrderableClusterOptionsMessage')
    Parameter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#Parameter', name: 'Parameter')
    ParameterApplyType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#ParameterApplyType', name: 'ParameterApplyType')
    ParameterGroupList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ParameterGroupList', name: 'ParameterGroupList')
    ParametersList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ParametersList', name: 'ParametersList')
    PartnerIntegrationAccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshift#PartnerIntegrationAccountId', name: 'PartnerIntegrationAccountId', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]+$"})
    PartnerIntegrationClusterIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshift#PartnerIntegrationClusterIdentifier', name: 'PartnerIntegrationClusterIdentifier', traits: {"smithy.api#length" => {"min" => 0, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-]+$"})
    PartnerIntegrationDatabaseName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshift#PartnerIntegrationDatabaseName', name: 'PartnerIntegrationDatabaseName', traits: {"smithy.api#length" => {"min" => 0, "max" => 127}, "smithy.api#pattern" => "^[\\p{L}_][\\p{L}\\p{N}@$#_]+$"})
    PartnerIntegrationInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#PartnerIntegrationInfo', name: 'PartnerIntegrationInfo')
    PartnerIntegrationInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#PartnerIntegrationInfoList', name: 'PartnerIntegrationInfoList')
    PartnerIntegrationPartnerName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshift#PartnerIntegrationPartnerName', name: 'PartnerIntegrationPartnerName', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-_]+$"})
    PartnerIntegrationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#PartnerIntegrationStatus', name: 'PartnerIntegrationStatus')
    PartnerIntegrationStatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshift#PartnerIntegrationStatusMessage', name: 'PartnerIntegrationStatusMessage', traits: {"smithy.api#length" => {"min" => 0, "max" => 262144}, "smithy.api#pattern" => "^[\\x20-\\x7E]+$"})
    PartnerNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#PartnerNotFoundFault', name: 'PartnerNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "PartnerNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    PauseClusterInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#PauseClusterInput', name: 'PauseClusterInput')
    PauseClusterMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#PauseClusterMessage', name: 'PauseClusterMessage')
    PauseClusterResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#PauseClusterResult', name: 'PauseClusterResult')
    PendingActionsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#PendingActionsList', name: 'PendingActionsList')
    PendingModifiedValues = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#PendingModifiedValues', name: 'PendingModifiedValues')
    ProvisionedIdentifier = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ProvisionedIdentifier', name: 'ProvisionedIdentifier')
    PurchaseReservedNodeOfferingMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#PurchaseReservedNodeOfferingMessage', name: 'PurchaseReservedNodeOfferingMessage')
    PurchaseReservedNodeOfferingResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#PurchaseReservedNodeOfferingResult', name: 'PurchaseReservedNodeOfferingResult')
    PutResourcePolicyMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#PutResourcePolicyMessage', name: 'PutResourcePolicyMessage')
    PutResourcePolicyResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#PutResourcePolicyResult', name: 'PutResourcePolicyResult')
    ReadWriteAccess = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ReadWriteAccess', name: 'ReadWriteAccess')
    RebootClusterMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RebootClusterMessage', name: 'RebootClusterMessage')
    RebootClusterResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RebootClusterResult', name: 'RebootClusterResult')
    Recommendation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#Recommendation', name: 'Recommendation')
    RecommendationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#RecommendationList', name: 'RecommendationList')
    RecommendedAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RecommendedAction', name: 'RecommendedAction')
    RecommendedActionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#RecommendedActionList', name: 'RecommendedActionList')
    RecommendedActionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#RecommendedActionType', name: 'RecommendedActionType')
    RecurringCharge = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RecurringCharge', name: 'RecurringCharge')
    RecurringChargeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#RecurringChargeList', name: 'RecurringChargeList')
    RedshiftIdcApplication = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RedshiftIdcApplication', name: 'RedshiftIdcApplication')
    RedshiftIdcApplicationAlreadyExistsFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RedshiftIdcApplicationAlreadyExistsFault', name: 'RedshiftIdcApplicationAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "RedshiftIdcApplicationAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    RedshiftIdcApplicationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#RedshiftIdcApplicationList', name: 'RedshiftIdcApplicationList')
    RedshiftIdcApplicationName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshift#RedshiftIdcApplicationName', name: 'RedshiftIdcApplicationName', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-z][a-z0-9]*(-[a-z0-9]+)*$"})
    RedshiftIdcApplicationNotExistsFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RedshiftIdcApplicationNotExistsFault', name: 'RedshiftIdcApplicationNotExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "RedshiftIdcApplicationNotExists", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RedshiftIdcApplicationQuotaExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RedshiftIdcApplicationQuotaExceededFault', name: 'RedshiftIdcApplicationQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "RedshiftIdcApplicationQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ReferenceLink = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ReferenceLink', name: 'ReferenceLink')
    ReferenceLinkList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ReferenceLinkList', name: 'ReferenceLinkList')
    RegisterNamespaceInputMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RegisterNamespaceInputMessage', name: 'RegisterNamespaceInputMessage')
    RegisterNamespaceOutputMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RegisterNamespaceOutputMessage', name: 'RegisterNamespaceOutputMessage')
    RejectDataShareMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RejectDataShareMessage', name: 'RejectDataShareMessage')
    RejectDataShareOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RejectDataShareOutput', name: 'RejectDataShareOutput')
    ReservedNode = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ReservedNode', name: 'ReservedNode')
    ReservedNodeAlreadyExistsFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ReservedNodeAlreadyExistsFault', name: 'ReservedNodeAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ReservedNodeAlreadyExists", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ReservedNodeAlreadyMigratedFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ReservedNodeAlreadyMigratedFault', name: 'ReservedNodeAlreadyMigratedFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ReservedNodeAlreadyMigrated", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ReservedNodeConfigurationOption = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ReservedNodeConfigurationOption', name: 'ReservedNodeConfigurationOption')
    ReservedNodeConfigurationOptionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ReservedNodeConfigurationOptionList', name: 'ReservedNodeConfigurationOptionList')
    ReservedNodeExchangeActionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#ReservedNodeExchangeActionType', name: 'ReservedNodeExchangeActionType')
    ReservedNodeExchangeNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ReservedNodeExchangeNotFoundFault', name: 'ReservedNodeExchangeNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ReservedNodeExchangeNotFond", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ReservedNodeExchangeStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ReservedNodeExchangeStatus', name: 'ReservedNodeExchangeStatus')
    ReservedNodeExchangeStatusList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ReservedNodeExchangeStatusList', name: 'ReservedNodeExchangeStatusList')
    ReservedNodeExchangeStatusType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#ReservedNodeExchangeStatusType', name: 'ReservedNodeExchangeStatusType')
    ReservedNodeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ReservedNodeList', name: 'ReservedNodeList')
    ReservedNodeNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ReservedNodeNotFoundFault', name: 'ReservedNodeNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ReservedNodeNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ReservedNodeOffering = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ReservedNodeOffering', name: 'ReservedNodeOffering')
    ReservedNodeOfferingList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ReservedNodeOfferingList', name: 'ReservedNodeOfferingList')
    ReservedNodeOfferingNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ReservedNodeOfferingNotFoundFault', name: 'ReservedNodeOfferingNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ReservedNodeOfferingNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ReservedNodeOfferingType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#ReservedNodeOfferingType', name: 'ReservedNodeOfferingType')
    ReservedNodeOfferingsMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ReservedNodeOfferingsMessage', name: 'ReservedNodeOfferingsMessage')
    ReservedNodeQuotaExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ReservedNodeQuotaExceededFault', name: 'ReservedNodeQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ReservedNodeQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ReservedNodesMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ReservedNodesMessage', name: 'ReservedNodesMessage')
    ResetClusterParameterGroupMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ResetClusterParameterGroupMessage', name: 'ResetClusterParameterGroupMessage')
    ResetClusterParameterGroupOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ResetClusterParameterGroupOutput', name: 'ResetClusterParameterGroupOutput')
    ResizeClusterInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ResizeClusterInput', name: 'ResizeClusterInput')
    ResizeClusterMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ResizeClusterMessage', name: 'ResizeClusterMessage')
    ResizeClusterResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ResizeClusterResult', name: 'ResizeClusterResult')
    ResizeInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ResizeInfo', name: 'ResizeInfo')
    ResizeNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ResizeNotFoundFault', name: 'ResizeNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ResizeNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ResourceNotFoundFault', name: 'ResourceNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourcePolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ResourcePolicy', name: 'ResourcePolicy')
    RestorableNodeTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#RestorableNodeTypeList', name: 'RestorableNodeTypeList')
    RestoreFromClusterSnapshotMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RestoreFromClusterSnapshotMessage', name: 'RestoreFromClusterSnapshotMessage')
    RestoreFromClusterSnapshotResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RestoreFromClusterSnapshotResult', name: 'RestoreFromClusterSnapshotResult')
    RestoreStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RestoreStatus', name: 'RestoreStatus')
    RestoreTableFromClusterSnapshotMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RestoreTableFromClusterSnapshotMessage', name: 'RestoreTableFromClusterSnapshotMessage')
    RestoreTableFromClusterSnapshotResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RestoreTableFromClusterSnapshotResult', name: 'RestoreTableFromClusterSnapshotResult')
    ResumeClusterInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ResumeClusterInput', name: 'ResumeClusterInput')
    ResumeClusterMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ResumeClusterMessage', name: 'ResumeClusterMessage')
    ResumeClusterResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ResumeClusterResult', name: 'ResumeClusterResult')
    RevisionTarget = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RevisionTarget', name: 'RevisionTarget')
    RevisionTargetsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#RevisionTargetsList', name: 'RevisionTargetsList')
    RevokeClusterSecurityGroupIngressMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RevokeClusterSecurityGroupIngressMessage', name: 'RevokeClusterSecurityGroupIngressMessage')
    RevokeClusterSecurityGroupIngressResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RevokeClusterSecurityGroupIngressResult', name: 'RevokeClusterSecurityGroupIngressResult')
    RevokeEndpointAccessMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RevokeEndpointAccessMessage', name: 'RevokeEndpointAccessMessage')
    RevokeEndpointAccessOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RevokeEndpointAccessOutput', name: 'RevokeEndpointAccessOutput')
    RevokeSnapshotAccessMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RevokeSnapshotAccessMessage', name: 'RevokeSnapshotAccessMessage')
    RevokeSnapshotAccessResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RevokeSnapshotAccessResult', name: 'RevokeSnapshotAccessResult')
    RotateEncryptionKeyMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RotateEncryptionKeyMessage', name: 'RotateEncryptionKeyMessage')
    RotateEncryptionKeyResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RotateEncryptionKeyResult', name: 'RotateEncryptionKeyResult')
    S3AccessGrantsScopeUnion = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.redshift#S3AccessGrantsScopeUnion', name: 'S3AccessGrantsScopeUnion')
    S3AccessGrantsServiceIntegrations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#S3AccessGrantsServiceIntegrations', name: 'S3AccessGrantsServiceIntegrations')
    S3KeyPrefixValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshift#S3KeyPrefixValue', name: 'S3KeyPrefixValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*$"})
    SNSInvalidTopicFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SNSInvalidTopicFault', name: 'SNSInvalidTopicFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SNSInvalidTopic", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SNSNoAuthorizationFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SNSNoAuthorizationFault', name: 'SNSNoAuthorizationFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SNSNoAuthorization", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SNSTopicArnNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SNSTopicArnNotFoundFault', name: 'SNSTopicArnNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SNSTopicArnNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ScheduleDefinitionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ScheduleDefinitionList', name: 'ScheduleDefinitionList')
    ScheduleDefinitionTypeUnsupportedFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ScheduleDefinitionTypeUnsupportedFault', name: 'ScheduleDefinitionTypeUnsupportedFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ScheduleDefinitionTypeUnsupported", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ScheduleState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#ScheduleState', name: 'ScheduleState')
    ScheduledAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ScheduledAction', name: 'ScheduledAction')
    ScheduledActionAlreadyExistsFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ScheduledActionAlreadyExistsFault', name: 'ScheduledActionAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ScheduledActionAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ScheduledActionFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ScheduledActionFilter', name: 'ScheduledActionFilter')
    ScheduledActionFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ScheduledActionFilterList', name: 'ScheduledActionFilterList')
    ScheduledActionFilterName = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#ScheduledActionFilterName', name: 'ScheduledActionFilterName')
    ScheduledActionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ScheduledActionList', name: 'ScheduledActionList')
    ScheduledActionNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ScheduledActionNotFoundFault', name: 'ScheduledActionNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ScheduledActionNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ScheduledActionQuotaExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ScheduledActionQuotaExceededFault', name: 'ScheduledActionQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ScheduledActionQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ScheduledActionState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#ScheduledActionState', name: 'ScheduledActionState')
    ScheduledActionTimeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ScheduledActionTimeList', name: 'ScheduledActionTimeList')
    ScheduledActionType = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ScheduledActionType', name: 'ScheduledActionType')
    ScheduledActionTypeUnsupportedFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ScheduledActionTypeUnsupportedFault', name: 'ScheduledActionTypeUnsupportedFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ScheduledActionTypeUnsupported", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ScheduledActionTypeValues = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#ScheduledActionTypeValues', name: 'ScheduledActionTypeValues')
    ScheduledActionsMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ScheduledActionsMessage', name: 'ScheduledActionsMessage')
    ScheduledSnapshotTimeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ScheduledSnapshotTimeList', name: 'ScheduledSnapshotTimeList')
    SecondaryClusterInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SecondaryClusterInfo', name: 'SecondaryClusterInfo')
    SensitiveString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshift#SensitiveString', name: 'SensitiveString', traits: {"smithy.api#sensitive" => {}})
    ServerlessIdentifier = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ServerlessIdentifier', name: 'ServerlessIdentifier')
    ServiceAuthorization = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#ServiceAuthorization', name: 'ServiceAuthorization')
    ServiceIntegrationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ServiceIntegrationList', name: 'ServiceIntegrationList')
    ServiceIntegrationsUnion = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.redshift#ServiceIntegrationsUnion', name: 'ServiceIntegrationsUnion')
    Snapshot = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#Snapshot', name: 'Snapshot')
    SnapshotAttributeToSortBy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#SnapshotAttributeToSortBy', name: 'SnapshotAttributeToSortBy')
    SnapshotCopyAlreadyDisabledFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SnapshotCopyAlreadyDisabledFault', name: 'SnapshotCopyAlreadyDisabledFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotCopyAlreadyDisabledFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SnapshotCopyAlreadyEnabledFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SnapshotCopyAlreadyEnabledFault', name: 'SnapshotCopyAlreadyEnabledFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotCopyAlreadyEnabledFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SnapshotCopyDisabledFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SnapshotCopyDisabledFault', name: 'SnapshotCopyDisabledFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotCopyDisabledFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SnapshotCopyGrant = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SnapshotCopyGrant', name: 'SnapshotCopyGrant')
    SnapshotCopyGrantAlreadyExistsFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SnapshotCopyGrantAlreadyExistsFault', name: 'SnapshotCopyGrantAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotCopyGrantAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SnapshotCopyGrantList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#SnapshotCopyGrantList', name: 'SnapshotCopyGrantList')
    SnapshotCopyGrantMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SnapshotCopyGrantMessage', name: 'SnapshotCopyGrantMessage')
    SnapshotCopyGrantNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SnapshotCopyGrantNotFoundFault', name: 'SnapshotCopyGrantNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotCopyGrantNotFoundFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SnapshotCopyGrantQuotaExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SnapshotCopyGrantQuotaExceededFault', name: 'SnapshotCopyGrantQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotCopyGrantQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SnapshotErrorMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SnapshotErrorMessage', name: 'SnapshotErrorMessage')
    SnapshotIdentifierList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#SnapshotIdentifierList', name: 'SnapshotIdentifierList')
    SnapshotList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#SnapshotList', name: 'SnapshotList')
    SnapshotMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SnapshotMessage', name: 'SnapshotMessage')
    SnapshotSchedule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SnapshotSchedule', name: 'SnapshotSchedule')
    SnapshotScheduleAlreadyExistsFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SnapshotScheduleAlreadyExistsFault', name: 'SnapshotScheduleAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotScheduleAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SnapshotScheduleList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#SnapshotScheduleList', name: 'SnapshotScheduleList')
    SnapshotScheduleNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SnapshotScheduleNotFoundFault', name: 'SnapshotScheduleNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotScheduleNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SnapshotScheduleQuotaExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SnapshotScheduleQuotaExceededFault', name: 'SnapshotScheduleQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotScheduleQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SnapshotScheduleUpdateInProgressFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SnapshotScheduleUpdateInProgressFault', name: 'SnapshotScheduleUpdateInProgressFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotScheduleUpdateInProgress", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SnapshotSortingEntity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SnapshotSortingEntity', name: 'SnapshotSortingEntity')
    SnapshotSortingEntityList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#SnapshotSortingEntityList', name: 'SnapshotSortingEntityList')
    SortByOrder = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#SortByOrder', name: 'SortByOrder')
    SourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshift#SourceArn', name: 'SourceArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^arn:aws[a-z\\-]*:(s3|dynamodb):.*:.*:[a-zA-Z0-9._\\-\\/]+$"})
    SourceIdsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#SourceIdsList', name: 'SourceIdsList')
    SourceNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SourceNotFoundFault', name: 'SourceNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SourceNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#SourceType', name: 'SourceType')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshift#String', name: 'String', traits: {"smithy.api#length" => {"min" => 0, "max" => 2147483647}})
    Subnet = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#Subnet', name: 'Subnet')
    SubnetAlreadyInUse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SubnetAlreadyInUse', name: 'SubnetAlreadyInUse', traits: {"aws.protocols#awsQueryError" => {"code" => "SubnetAlreadyInUse", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SubnetIdentifierList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#SubnetIdentifierList', name: 'SubnetIdentifierList')
    SubnetList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#SubnetList', name: 'SubnetList')
    SubscriptionAlreadyExistFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SubscriptionAlreadyExistFault', name: 'SubscriptionAlreadyExistFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SubscriptionAlreadyExist", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SubscriptionCategoryNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SubscriptionCategoryNotFoundFault', name: 'SubscriptionCategoryNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SubscriptionCategoryNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SubscriptionEventIdNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SubscriptionEventIdNotFoundFault', name: 'SubscriptionEventIdNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SubscriptionEventIdNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SubscriptionNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SubscriptionNotFoundFault', name: 'SubscriptionNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SubscriptionNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SubscriptionSeverityNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SubscriptionSeverityNotFoundFault', name: 'SubscriptionSeverityNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SubscriptionSeverityNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SupportedOperation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SupportedOperation', name: 'SupportedOperation')
    SupportedOperationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#SupportedOperationList', name: 'SupportedOperationList')
    SupportedPlatform = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SupportedPlatform', name: 'SupportedPlatform')
    SupportedPlatformsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#SupportedPlatformsList', name: 'SupportedPlatformsList')
    TStamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.redshift#TStamp', name: 'TStamp')
    TableLimitExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#TableLimitExceededFault', name: 'TableLimitExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "TableLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TableRestoreNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#TableRestoreNotFoundFault', name: 'TableRestoreNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "TableRestoreNotFoundFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TableRestoreStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#TableRestoreStatus', name: 'TableRestoreStatus')
    TableRestoreStatusList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#TableRestoreStatusList', name: 'TableRestoreStatusList')
    TableRestoreStatusMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#TableRestoreStatusMessage', name: 'TableRestoreStatusMessage')
    TableRestoreStatusType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#TableRestoreStatusType', name: 'TableRestoreStatusType')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#Tag', name: 'Tag')
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#TagKeyList', name: 'TagKeyList')
    TagLimitExceededFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#TagLimitExceededFault', name: 'TagLimitExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "TagLimitExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#TagList', name: 'TagList')
    TagValueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#TagValueList', name: 'TagValueList')
    TaggedResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#TaggedResource', name: 'TaggedResource')
    TaggedResourceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#TaggedResourceList', name: 'TaggedResourceList')
    TaggedResourceListMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#TaggedResourceListMessage', name: 'TaggedResourceListMessage')
    TargetArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshift#TargetArn', name: 'TargetArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[a-z\\-]*:redshift(-serverless)?:[a-z0-9\\-]+:[0-9]{12}:(namespace\\/|namespace:)[a-z0-9\\-]+$"})
    TrackList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#TrackList', name: 'TrackList')
    TrackListMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#TrackListMessage', name: 'TrackListMessage')
    UnauthorizedOperation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#UnauthorizedOperation', name: 'UnauthorizedOperation', traits: {"aws.protocols#awsQueryError" => {"code" => "UnauthorizedOperation", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UnauthorizedPartnerIntegrationFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#UnauthorizedPartnerIntegrationFault', name: 'UnauthorizedPartnerIntegrationFault', traits: {"aws.protocols#awsQueryError" => {"code" => "UnauthorizedPartnerIntegration", "httpResponseCode" => 401}, "smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UnknownSnapshotCopyRegionFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#UnknownSnapshotCopyRegionFault', name: 'UnknownSnapshotCopyRegionFault', traits: {"aws.protocols#awsQueryError" => {"code" => "UnknownSnapshotCopyRegionFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    UnsupportedOperationFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#UnsupportedOperationFault', name: 'UnsupportedOperationFault', traits: {"aws.protocols#awsQueryError" => {"code" => "UnsupportedOperation", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UnsupportedOptionFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#UnsupportedOptionFault', name: 'UnsupportedOptionFault', traits: {"aws.protocols#awsQueryError" => {"code" => "UnsupportedOptionFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UpdatePartnerStatusInputMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#UpdatePartnerStatusInputMessage', name: 'UpdatePartnerStatusInputMessage')
    UpdatePartnerStatusOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#UpdatePartnerStatusOutput', name: 'UpdatePartnerStatusOutput')
    UpdateTarget = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#UpdateTarget', name: 'UpdateTarget')
    UsageLimit = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#UsageLimit', name: 'UsageLimit')
    UsageLimitAlreadyExistsFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#UsageLimitAlreadyExistsFault', name: 'UsageLimitAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "UsageLimitAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UsageLimitBreachAction = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#UsageLimitBreachAction', name: 'UsageLimitBreachAction')
    UsageLimitFeatureType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#UsageLimitFeatureType', name: 'UsageLimitFeatureType')
    UsageLimitLimitType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#UsageLimitLimitType', name: 'UsageLimitLimitType')
    UsageLimitNotFoundFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#UsageLimitNotFoundFault', name: 'UsageLimitNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "UsageLimitNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    UsageLimitPeriod = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#UsageLimitPeriod', name: 'UsageLimitPeriod')
    UsageLimits = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#UsageLimits', name: 'UsageLimits')
    ValueStringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ValueStringList', name: 'ValueStringList')
    VpcEndpoint = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#VpcEndpoint', name: 'VpcEndpoint')
    VpcEndpointsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#VpcEndpointsList', name: 'VpcEndpointsList')
    VpcIdentifierList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#VpcIdentifierList', name: 'VpcIdentifierList')
    VpcSecurityGroupIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#VpcSecurityGroupIdList', name: 'VpcSecurityGroupIdList')
    VpcSecurityGroupMembership = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#VpcSecurityGroupMembership', name: 'VpcSecurityGroupMembership')
    VpcSecurityGroupMembershipList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#VpcSecurityGroupMembershipList', name: 'VpcSecurityGroupMembershipList')
    ZeroETLIntegrationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#ZeroETLIntegrationStatus', name: 'ZeroETLIntegrationStatus')

    AcceptReservedNodeExchangeInputMessage.add_member(:reserved_node_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedNodeId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>A string representing the node identifier of the DC1 Reserved Node to be\n            exchanged.</p>", "smithy.api#required" => {}}))
    AcceptReservedNodeExchangeInputMessage.add_member(:target_reserved_node_offering_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetReservedNodeOfferingId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier of the DC2 Reserved Node offering to be used for the exchange.\n            You can obtain the value for the parameter by calling <a>GetReservedNodeExchangeOfferings</a>\n         </p>", "smithy.api#required" => {}}))
    AcceptReservedNodeExchangeInputMessage.type = Types::AcceptReservedNodeExchangeInputMessage
    AcceptReservedNodeExchangeOutputMessage.add_member(:exchanged_reserved_node, Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNode, location_name: 'ExchangedReservedNode', traits: {"smithy.api#documentation" => "<p></p>"}))
    AcceptReservedNodeExchangeOutputMessage.type = Types::AcceptReservedNodeExchangeOutputMessage
    AccessToClusterDeniedFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    AccessToClusterDeniedFault.type = Types::AccessToClusterDeniedFault
    AccessToSnapshotDeniedFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    AccessToSnapshotDeniedFault.type = Types::AccessToSnapshotDeniedFault
    AccountAttribute.add_member(:attribute_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AttributeName', traits: {"smithy.api#documentation" => "<p>The name of the attribute.</p>"}))
    AccountAttribute.add_member(:attribute_values, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValueList, location_name: 'AttributeValues', traits: {"smithy.api#documentation" => "<p>A list of attribute values.</p>"}))
    AccountAttribute.type = Types::AccountAttribute
    AccountWithRestoreAccess.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AccountId', traits: {"smithy.api#documentation" => "<p>The identifier of an Amazon Web Services account authorized to restore a\n            snapshot.</p>"}))
    AccountWithRestoreAccess.add_member(:account_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AccountAlias', traits: {"smithy.api#documentation" => "<p>The identifier of an Amazon Web Services support account authorized to restore a \n            snapshot. For Amazon Web Services Support, the identifier is <code>amazon-redshift-support</code>. </p>"}))
    AccountWithRestoreAccess.type = Types::AccountWithRestoreAccess
    AccountsWithRestoreAccessList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccountWithRestoreAccess, traits: {"smithy.api#xmlName" => "AccountWithRestoreAccess"})
    ActionType.add_member(:restore_cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESTORE_CLUSTER', traits: {"smithy.api#enumValue" => "restore-cluster"}))
    ActionType.add_member(:recommend_node_config, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RECOMMEND_NODE_CONFIG', traits: {"smithy.api#enumValue" => "recommend-node-config"}))
    ActionType.add_member(:resize_cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESIZE_CLUSTER', traits: {"smithy.api#enumValue" => "resize-cluster"}))
    AddPartnerInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationAccountId, location_name: 'AccountId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Web Services account ID that owns the cluster.</p>", "smithy.api#required" => {}}))
    AddPartnerInput.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationClusterIdentifier, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The cluster identifier of the cluster that receives data from the partner.</p>", "smithy.api#required" => {}}))
    AddPartnerInput.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationDatabaseName, location_name: 'DatabaseName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the database that receives data from the partner.</p>", "smithy.api#required" => {}}))
    AddPartnerInput.add_member(:partner_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationPartnerName, location_name: 'PartnerName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the partner that is authorized to send data.</p>", "smithy.api#required" => {}}))
    AddPartnerInput.type = Types::AddPartnerInput
    AddPartnerOutput.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationDatabaseName, location_name: 'DatabaseName', traits: {"smithy.api#documentation" => "<p>The name of the database that receives data from the partner.</p>"}))
    AddPartnerOutput.add_member(:partner_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationPartnerName, location_name: 'PartnerName', traits: {"smithy.api#documentation" => "<p>The name of the partner that is authorized to send data.</p>"}))
    AddPartnerOutput.type = Types::AddPartnerOutput
    AquaConfiguration.add_member(:aqua_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AquaStatus, location_name: 'AquaStatus', traits: {"smithy.api#documentation" => "<p>This field is retired. Amazon Redshift automatically determines whether to use AQUA (Advanced Query Accelerator).</p>"}))
    AquaConfiguration.add_member(:aqua_configuration_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AquaConfigurationStatus, location_name: 'AquaConfigurationStatus', traits: {"smithy.api#documentation" => "<p>This field is retired. Amazon Redshift automatically determines whether to use AQUA (Advanced Query Accelerator).</p>"}))
    AquaConfiguration.type = Types::AquaConfiguration
    AquaConfigurationStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "enabled"}))
    AquaConfigurationStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "disabled"}))
    AquaConfigurationStatus.add_member(:auto, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTO', traits: {"smithy.api#enumValue" => "auto"}))
    AquaStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "enabled"}))
    AquaStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "disabled"}))
    AquaStatus.add_member(:applying, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPLYING', traits: {"smithy.api#enumValue" => "applying"}))
    AssociateDataShareConsumerMessage.add_member(:data_share_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataShareArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the datashare that the consumer is to use.</p>", "smithy.api#required" => {}}))
    AssociateDataShareConsumerMessage.add_member(:associate_entire_account, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AssociateEntireAccount', traits: {"smithy.api#documentation" => "<p>A value that specifies whether the datashare is associated with the entire account.</p>"}))
    AssociateDataShareConsumerMessage.add_member(:consumer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConsumerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the consumer namespace associated with the\n            datashare.</p>"}))
    AssociateDataShareConsumerMessage.add_member(:consumer_region, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConsumerRegion', traits: {"smithy.api#documentation" => "<p>From a datashare consumer account, associates a datashare with all existing and future namespaces in the specified Amazon Web Services Region.</p>"}))
    AssociateDataShareConsumerMessage.add_member(:allow_writes, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AllowWrites', traits: {"smithy.api#documentation" => "<p>If set to true, allows write operations for a datashare.</p>"}))
    AssociateDataShareConsumerMessage.type = Types::AssociateDataShareConsumerMessage
    AssociateDataShareConsumerOutput.add_member(:data_share_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataShareArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the datashare that the consumer is to use.</p>"}))
    AssociateDataShareConsumerOutput.add_member(:producer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProducerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the producer namespace.</p>"}))
    AssociateDataShareConsumerOutput.add_member(:allow_publicly_accessible_consumers, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllowPubliclyAccessibleConsumers', traits: {"smithy.api#documentation" => "<p>A value that specifies whether the datashare can be shared to a publicly accessible  cluster.</p>"}))
    AssociateDataShareConsumerOutput.add_member(:data_share_associations, Smithy::Schema::Shapes::ShapeRef.new(shape: DataShareAssociationList, location_name: 'DataShareAssociations', traits: {"smithy.api#documentation" => "<p>A value that specifies when the datashare has an association between producer and data\n            consumers.</p>"}))
    AssociateDataShareConsumerOutput.add_member(:managed_by, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ManagedBy', traits: {"smithy.api#documentation" => "<p>The identifier of a datashare to show its managing entity.</p>"}))
    AssociateDataShareConsumerOutput.add_member(:data_share_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DataShareType, location_name: 'DataShareType', traits: {"smithy.api#documentation" => "<p> The type of the datashare created by RegisterNamespace.</p>"}))
    AssociateDataShareConsumerOutput.type = Types::AssociateDataShareConsumerOutput
    AssociatedClusterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterAssociatedToSchedule, traits: {"smithy.api#xmlName" => "ClusterAssociatedToSchedule"})
    Association.add_member(:custom_domain_certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomDomainCertificateArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the certificate associated with the custom domain.</p>"}))
    Association.add_member(:custom_domain_certificate_expiry_date, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CustomDomainCertificateExpiryDate', traits: {"smithy.api#documentation" => "<p>The expiration date for the certificate.</p>"}))
    Association.add_member(:certificate_associations, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateAssociationList, location_name: 'CertificateAssociations', traits: {"smithy.api#documentation" => "<p>A list of all associated clusters and domain names tied to a specific certificate.</p>"}))
    Association.type = Types::Association
    AssociationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Association, traits: {"smithy.api#xmlName" => "Association"})
    AttributeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccountAttribute, traits: {"smithy.api#xmlName" => "AccountAttribute"})
    AttributeNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "AttributeName"})
    AttributeValueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValueTarget, traits: {"smithy.api#xmlName" => "AttributeValueTarget"})
    AttributeValueTarget.add_member(:attribute_value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AttributeValue', traits: {"smithy.api#documentation" => "<p>The value of the attribute.</p>"}))
    AttributeValueTarget.type = Types::AttributeValueTarget
    AuthenticationProfile.add_member(:authentication_profile_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationProfileNameString, location_name: 'AuthenticationProfileName', traits: {"smithy.api#documentation" => "<p>The name of the authentication profile.</p>"}))
    AuthenticationProfile.add_member(:authentication_profile_content, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AuthenticationProfileContent', traits: {"smithy.api#documentation" => "<p>The content of the authentication profile in JSON format.\n            The maximum length of the JSON string is determined by a quota for your account.</p>"}))
    AuthenticationProfile.type = Types::AuthenticationProfile
    AuthenticationProfileAlreadyExistsFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    AuthenticationProfileAlreadyExistsFault.type = Types::AuthenticationProfileAlreadyExistsFault
    AuthenticationProfileList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationProfile)
    AuthenticationProfileNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    AuthenticationProfileNotFoundFault.type = Types::AuthenticationProfileNotFoundFault
    AuthenticationProfileQuotaExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    AuthenticationProfileQuotaExceededFault.type = Types::AuthenticationProfileQuotaExceededFault
    AuthorizationAlreadyExistsFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    AuthorizationAlreadyExistsFault.type = Types::AuthorizationAlreadyExistsFault
    AuthorizationNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    AuthorizationNotFoundFault.type = Types::AuthorizationNotFoundFault
    AuthorizationQuotaExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    AuthorizationQuotaExceededFault.type = Types::AuthorizationQuotaExceededFault
    AuthorizationStatus.add_member(:authorized, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTHORIZED', traits: {"smithy.api#enumValue" => "Authorized"}))
    AuthorizationStatus.add_member(:revoking, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REVOKING', traits: {"smithy.api#enumValue" => "Revoking"}))
    AuthorizeClusterSecurityGroupIngressMessage.add_member(:cluster_security_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterSecurityGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the security group to which the ingress rule is added.</p>", "smithy.api#required" => {}}))
    AuthorizeClusterSecurityGroupIngressMessage.add_member(:cidrip, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CIDRIP', traits: {"smithy.api#documentation" => "<p>The IP range to be added the Amazon Redshift security group.</p>"}))
    AuthorizeClusterSecurityGroupIngressMessage.add_member(:ec2_security_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EC2SecurityGroupName', traits: {"smithy.api#documentation" => "<p>The EC2 security group to be added the Amazon Redshift security group.</p>"}))
    AuthorizeClusterSecurityGroupIngressMessage.add_member(:ec2_security_group_owner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EC2SecurityGroupOwnerId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account number of the owner of the security group specified by the\n            <i>EC2SecurityGroupName</i> parameter. The Amazon Web Services Access Key ID is not an\n            acceptable value. </p>\n         <p>Example: <code>111122223333</code>\n         </p>"}))
    AuthorizeClusterSecurityGroupIngressMessage.type = Types::AuthorizeClusterSecurityGroupIngressMessage
    AuthorizeClusterSecurityGroupIngressResult.add_member(:cluster_security_group, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSecurityGroup, location_name: 'ClusterSecurityGroup'))
    AuthorizeClusterSecurityGroupIngressResult.type = Types::AuthorizeClusterSecurityGroupIngressResult
    AuthorizeDataShareMessage.add_member(:data_share_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataShareArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the datashare namespace that producers are to authorize\n            sharing for.</p>", "smithy.api#required" => {}}))
    AuthorizeDataShareMessage.add_member(:consumer_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConsumerIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The identifier of the data consumer that is authorized to access the datashare. This identifier is an Amazon Web Services account ID or a keyword, such as ADX.</p>", "smithy.api#required" => {}}))
    AuthorizeDataShareMessage.add_member(:allow_writes, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AllowWrites', traits: {"smithy.api#documentation" => "<p>If set to true, allows write operations for a datashare.</p>"}))
    AuthorizeDataShareMessage.type = Types::AuthorizeDataShareMessage
    AuthorizeDataShareOutput.add_member(:data_share_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataShareArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the datashare that the consumer is to use.</p>"}))
    AuthorizeDataShareOutput.add_member(:producer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProducerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the producer namespace.</p>"}))
    AuthorizeDataShareOutput.add_member(:allow_publicly_accessible_consumers, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllowPubliclyAccessibleConsumers', traits: {"smithy.api#documentation" => "<p>A value that specifies whether the datashare can be shared to a publicly accessible  cluster.</p>"}))
    AuthorizeDataShareOutput.add_member(:data_share_associations, Smithy::Schema::Shapes::ShapeRef.new(shape: DataShareAssociationList, location_name: 'DataShareAssociations', traits: {"smithy.api#documentation" => "<p>A value that specifies when the datashare has an association between producer and data\n            consumers.</p>"}))
    AuthorizeDataShareOutput.add_member(:managed_by, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ManagedBy', traits: {"smithy.api#documentation" => "<p>The identifier of a datashare to show its managing entity.</p>"}))
    AuthorizeDataShareOutput.add_member(:data_share_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DataShareType, location_name: 'DataShareType', traits: {"smithy.api#documentation" => "<p> The type of the datashare created by RegisterNamespace.</p>"}))
    AuthorizeDataShareOutput.type = Types::AuthorizeDataShareOutput
    AuthorizeEndpointAccessMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The cluster identifier of the cluster to grant access to.</p>"}))
    AuthorizeEndpointAccessMessage.add_member(:account, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Account', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Web Services account ID to grant access to.</p>", "smithy.api#required" => {}}))
    AuthorizeEndpointAccessMessage.add_member(:vpc_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcIdentifierList, location_name: 'VpcIds', traits: {"smithy.api#documentation" => "<p>The virtual private cloud (VPC) identifiers to grant access to.</p>"}))
    AuthorizeEndpointAccessMessage.type = Types::AuthorizeEndpointAccessMessage
    AuthorizeEndpointAccessOutput.add_member(:grantor, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Grantor', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the cluster owner.</p>"}))
    AuthorizeEndpointAccessOutput.add_member(:grantee, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Grantee', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the grantee of the cluster.</p>"}))
    AuthorizeEndpointAccessOutput.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The cluster identifier.</p>"}))
    AuthorizeEndpointAccessOutput.add_member(:authorize_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'AuthorizeTime', traits: {"smithy.api#documentation" => "<p>The time (UTC) when the authorization was created.</p>"}))
    AuthorizeEndpointAccessOutput.add_member(:cluster_status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterStatus', traits: {"smithy.api#documentation" => "<p>The status of the cluster.</p>"}))
    AuthorizeEndpointAccessOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the authorization action.</p>"}))
    AuthorizeEndpointAccessOutput.add_member(:allowed_all_vp_cs, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllowedAllVPCs', traits: {"smithy.api#documentation" => "<p>Indicates whether all VPCs in the grantee account are allowed access to the cluster.</p>"}))
    AuthorizeEndpointAccessOutput.add_member(:allowed_vp_cs, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcIdentifierList, location_name: 'AllowedVPCs', traits: {"smithy.api#documentation" => "<p>The VPCs allowed access to the cluster.</p>"}))
    AuthorizeEndpointAccessOutput.add_member(:endpoint_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'EndpointCount', traits: {"smithy.api#documentation" => "<p>The number of Redshift-managed VPC endpoints created for the authorization.</p>"}))
    AuthorizeEndpointAccessOutput.type = Types::AuthorizeEndpointAccessOutput
    AuthorizeSnapshotAccessMessage.add_member(:snapshot_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the snapshot the account is authorized to restore.</p>"}))
    AuthorizeSnapshotAccessMessage.add_member(:snapshot_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the snapshot to authorize access to.</p>"}))
    AuthorizeSnapshotAccessMessage.add_member(:snapshot_cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the cluster the snapshot was created from.</p>\n         <ul>\n            <li>\n               <p>\n                  <i>If the snapshot to access doesn't exist and the associated IAM policy doesn't allow access to all (*) snapshots</i> -  This parameter is required. Otherwise, permissions \n                aren't available to check if the snapshot exists.</p>\n            </li>\n            <li>\n               <p>\n                  <i>If the snapshot to access exists</i> - This parameter isn't required. Redshift can retrieve the cluster identifier and use it to \n                validate snapshot authorization.</p>\n            </li>\n         </ul>"}))
    AuthorizeSnapshotAccessMessage.add_member(:account_with_restore_access, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AccountWithRestoreAccess', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The identifier of the Amazon Web Services account authorized to restore the specified\n            snapshot.</p>\n         <p>To share a snapshot with Amazon Web Services Support, specify amazon-redshift-support.</p>", "smithy.api#required" => {}}))
    AuthorizeSnapshotAccessMessage.type = Types::AuthorizeSnapshotAccessMessage
    AuthorizeSnapshotAccessResult.add_member(:snapshot, Smithy::Schema::Shapes::ShapeRef.new(shape: Snapshot, location_name: 'Snapshot'))
    AuthorizeSnapshotAccessResult.type = Types::AuthorizeSnapshotAccessResult
    AuthorizedAudienceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    AuthorizedTokenIssuer.add_member(:trusted_token_issuer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TrustedTokenIssuerArn', traits: {"smithy.api#documentation" => "<p>The ARN for the authorized token issuer for integrating Amazon Redshift with IDC Identity Center.</p>"}))
    AuthorizedTokenIssuer.add_member(:authorized_audiences_list, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizedAudienceList, location_name: 'AuthorizedAudiencesList', traits: {"smithy.api#documentation" => "<p>The list of audiences for the authorized token issuer for integrating Amazon Redshift \n            with IDC Identity Center.</p>"}))
    AuthorizedTokenIssuer.type = Types::AuthorizedTokenIssuer
    AuthorizedTokenIssuerList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizedTokenIssuer)
    AvailabilityZone.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the availability zone.</p>"}))
    AvailabilityZone.add_member(:supported_platforms, Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedPlatformsList, location_name: 'SupportedPlatforms', traits: {"smithy.api#documentation" => "<p></p>"}))
    AvailabilityZone.type = Types::AvailabilityZone
    AvailabilityZoneList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZone, traits: {"smithy.api#xmlName" => "AvailabilityZone"})
    BatchDeleteClusterSnapshotsRequest.add_member(:identifiers, Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterSnapshotMessageList, location_name: 'Identifiers', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>A list of identifiers for the snapshots that you want to delete.</p>", "smithy.api#required" => {}}))
    BatchDeleteClusterSnapshotsRequest.type = Types::BatchDeleteClusterSnapshotsRequest
    BatchDeleteClusterSnapshotsResult.add_member(:resources, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotIdentifierList, location_name: 'Resources', traits: {"smithy.api#documentation" => "<p>A list of the snapshot identifiers that were deleted. </p>"}))
    BatchDeleteClusterSnapshotsResult.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchSnapshotOperationErrorList, location_name: 'Errors', traits: {"smithy.api#documentation" => "<p>A list of any errors returned.</p>"}))
    BatchDeleteClusterSnapshotsResult.type = Types::BatchDeleteClusterSnapshotsResult
    BatchDeleteRequestSizeExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    BatchDeleteRequestSizeExceededFault.type = Types::BatchDeleteRequestSizeExceededFault
    BatchModifyClusterSnapshotsLimitExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    BatchModifyClusterSnapshotsLimitExceededFault.type = Types::BatchModifyClusterSnapshotsLimitExceededFault
    BatchModifyClusterSnapshotsMessage.add_member(:snapshot_identifier_list, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotIdentifierList, location_name: 'SnapshotIdentifierList', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>A list of snapshot identifiers you want to modify.</p>", "smithy.api#required" => {}}))
    BatchModifyClusterSnapshotsMessage.add_member(:manual_snapshot_retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'ManualSnapshotRetentionPeriod', traits: {"smithy.api#documentation" => "<p>The number of days that a manual snapshot is retained. If you specify the value -1,\n            the manual snapshot is retained indefinitely.</p>\n         <p>The number must be either -1 or an integer between 1 and 3,653.</p>\n         <p>If you decrease the manual snapshot retention period from its current value, existing\n            manual snapshots that fall outside of the new retention period will return an error. If\n            you want to suppress the errors and delete the snapshots, use the force option. </p>"}))
    BatchModifyClusterSnapshotsMessage.add_member(:force, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Force', traits: {"smithy.api#documentation" => "<p>A boolean value indicating whether to override an exception if the retention period\n            has passed. </p>"}))
    BatchModifyClusterSnapshotsMessage.type = Types::BatchModifyClusterSnapshotsMessage
    BatchModifyClusterSnapshotsOutputMessage.add_member(:resources, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotIdentifierList, location_name: 'Resources', traits: {"smithy.api#documentation" => "<p>A list of the snapshots that were modified.</p>"}))
    BatchModifyClusterSnapshotsOutputMessage.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchSnapshotOperationErrors, location_name: 'Errors', traits: {"smithy.api#documentation" => "<p>A list of any errors returned.</p>"}))
    BatchModifyClusterSnapshotsOutputMessage.type = Types::BatchModifyClusterSnapshotsOutputMessage
    BatchSnapshotOperationErrorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotErrorMessage, traits: {"smithy.api#xmlName" => "SnapshotErrorMessage"})
    BatchSnapshotOperationErrors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotErrorMessage, traits: {"smithy.api#xmlName" => "SnapshotErrorMessage"})
    BucketNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    BucketNotFoundFault.type = Types::BucketNotFoundFault
    CancelResizeMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the cluster that you want to cancel a resize operation\n            for.</p>", "smithy.api#required" => {}}))
    CancelResizeMessage.type = Types::CancelResizeMessage
    CancelResizeOutput.add_member(:target_node_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetNodeType', traits: {"smithy.api#documentation" => "<p>The node type that the cluster will have after the resize operation is\n            complete.</p>"}))
    CancelResizeOutput.add_member(:target_number_of_nodes, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'TargetNumberOfNodes', traits: {"smithy.api#documentation" => "<p>The number of nodes that the cluster will have after the resize operation is\n            complete.</p>"}))
    CancelResizeOutput.add_member(:target_cluster_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetClusterType', traits: {"smithy.api#documentation" => "<p>The cluster type after the resize operation is complete.</p>\n         <p>Valid Values: <code>multi-node</code> | <code>single-node</code>\n         </p>"}))
    CancelResizeOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the resize operation.</p>\n         <p>Valid Values: <code>NONE</code> | <code>IN_PROGRESS</code> | <code>FAILED</code> |\n                <code>SUCCEEDED</code> | <code>CANCELLING</code>\n         </p>"}))
    CancelResizeOutput.add_member(:import_tables_completed, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTablesCompleted, location_name: 'ImportTablesCompleted', traits: {"smithy.api#documentation" => "<p>The names of tables that have been completely imported .</p>\n         <p>Valid Values: List of table names.</p>"}))
    CancelResizeOutput.add_member(:import_tables_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTablesInProgress, location_name: 'ImportTablesInProgress', traits: {"smithy.api#documentation" => "<p>The names of tables that are being currently imported.</p>\n         <p>Valid Values: List of table names.</p>"}))
    CancelResizeOutput.add_member(:import_tables_not_started, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTablesNotStarted, location_name: 'ImportTablesNotStarted', traits: {"smithy.api#documentation" => "<p>The names of tables that have not been yet imported.</p>\n         <p>Valid Values: List of table names</p>"}))
    CancelResizeOutput.add_member(:avg_resize_rate_in_mega_bytes_per_second, Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'AvgResizeRateInMegaBytesPerSecond', traits: {"smithy.api#documentation" => "<p>The average rate of the resize operation over the last few minutes, measured in\n            megabytes per second. After the resize operation completes, this value shows the average\n            rate of the entire resize operation.</p>"}))
    CancelResizeOutput.add_member(:total_resize_data_in_mega_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: 'TotalResizeDataInMegaBytes', traits: {"smithy.api#documentation" => "<p>The estimated total amount of data, in megabytes, on the cluster before the resize\n            operation began.</p>"}))
    CancelResizeOutput.add_member(:progress_in_mega_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: 'ProgressInMegaBytes', traits: {"smithy.api#documentation" => "<p>While the resize operation is in progress, this value shows the current amount of\n            data, in megabytes, that has been processed so far. When the resize operation is\n            complete, this value shows the total amount of data, in megabytes, on the cluster, which\n            may be more or less than TotalResizeDataInMegaBytes (the estimated total amount of data\n            before resize).</p>"}))
    CancelResizeOutput.add_member(:elapsed_time_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: 'ElapsedTimeInSeconds', traits: {"smithy.api#documentation" => "<p>The amount of seconds that have elapsed since the resize operation began. After the\n            resize operation completes, this value shows the total actual time, in seconds, for the\n            resize operation.</p>"}))
    CancelResizeOutput.add_member(:estimated_time_to_completion_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: 'EstimatedTimeToCompletionInSeconds', traits: {"smithy.api#documentation" => "<p>The estimated time remaining, in seconds, until the resize operation is complete.\n            This value is calculated based on the average resize rate and the estimated amount of\n            data remaining to be processed. Once the resize operation is complete, this value will\n            be 0.</p>"}))
    CancelResizeOutput.add_member(:resize_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResizeType', traits: {"smithy.api#documentation" => "<p>An enum with possible values of <code>ClassicResize</code> and\n                <code>ElasticResize</code>. These values describe the type of resize operation being\n            performed. </p>"}))
    CancelResizeOutput.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>An optional string to provide additional details about the resize action.</p>"}))
    CancelResizeOutput.add_member(:target_encryption_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetEncryptionType', traits: {"smithy.api#documentation" => "<p>The type of encryption for the cluster after the resize is complete.</p>\n         <p>Possible values are <code>KMS</code> and <code>None</code>. </p>"}))
    CancelResizeOutput.add_member(:data_transfer_progress_percent, Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'DataTransferProgressPercent', traits: {"smithy.api#documentation" => "<p>The percent of data transferred from source cluster to target cluster.</p>"}))
    CancelResizeOutput.type = Types::CancelResizeOutput
    CertificateAssociation.add_member(:custom_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomDomainName', traits: {"smithy.api#documentation" => "<p>The custom domain name for the certificate association.</p>"}))
    CertificateAssociation.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The cluster identifier for the certificate association.</p>"}))
    CertificateAssociation.type = Types::CertificateAssociation
    CertificateAssociationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateAssociation, traits: {"smithy.api#xmlName" => "CertificateAssociation"})
    Cluster.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the cluster.</p>"}))
    Cluster.add_member(:node_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeType', traits: {"smithy.api#documentation" => "<p>The node type for the nodes in the cluster.</p>"}))
    Cluster.add_member(:cluster_status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterStatus', traits: {"smithy.api#documentation" => "<p> The current state of the cluster. Possible values are the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>available</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>available, prep-for-resize</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>available, resize-cleanup</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>cancelling-resize</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>creating</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>deleting</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>final-snapshot</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>hardware-failure</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>incompatible-hsm</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>incompatible-network</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>incompatible-parameters</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>incompatible-restore</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>modifying</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>paused</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>rebooting</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>renaming</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>resizing</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>rotating-keys</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>storage-full</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>updating-hsm</code>\n               </p>\n            </li>\n         </ul>"}))
    Cluster.add_member(:cluster_availability_status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterAvailabilityStatus', traits: {"smithy.api#documentation" => "<p>The availability status of the cluster for queries. Possible values are the following:</p>\n         <ul>\n            <li>\n               <p>Available - The cluster is available for queries. </p>\n            </li>\n            <li>\n               <p>Unavailable - The cluster is not available for queries.</p>\n            </li>\n            <li>\n               <p>Maintenance - The cluster is intermittently available for queries due to maintenance activities.</p>\n            </li>\n            <li>\n               <p>Modifying - The cluster is intermittently available for queries due to changes that modify the cluster.</p>\n            </li>\n            <li>\n               <p>Failed - The cluster failed and is not available for queries.</p>\n            </li>\n         </ul>"}))
    Cluster.add_member(:modify_status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ModifyStatus', traits: {"smithy.api#documentation" => "<p>The status of a modify operation, if any, initiated for the cluster.</p>"}))
    Cluster.add_member(:master_username, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterUsername', traits: {"smithy.api#documentation" => "<p>The admin user name for the cluster. This name is used to connect to the database\n            that is specified in the <b>DBName</b> parameter. </p>"}))
    Cluster.add_member(:db_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBName', traits: {"smithy.api#documentation" => "<p>The name of the initial database that was created when the cluster was created.\n            This same name is returned for the life of the cluster. If an initial database was not\n            specified, a database named <code>dev</code>dev was created by default. </p>"}))
    Cluster.add_member(:endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoint, location_name: 'Endpoint', traits: {"smithy.api#documentation" => "<p>The connection endpoint.</p>"}))
    Cluster.add_member(:cluster_create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'ClusterCreateTime', traits: {"smithy.api#documentation" => "<p>The date and time that the cluster was created.</p>"}))
    Cluster.add_member(:automated_snapshot_retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'AutomatedSnapshotRetentionPeriod', traits: {"smithy.api#documentation" => "<p>The number of days that automatic cluster snapshots are retained.</p>"}))
    Cluster.add_member(:manual_snapshot_retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ManualSnapshotRetentionPeriod', traits: {"smithy.api#documentation" => "<p>The default number of days to retain a manual snapshot. If the value is -1, the\n            snapshot is retained indefinitely. This setting doesn't change the retention period\n            of existing snapshots.</p>\n         <p>The value must be either -1 or an integer between 1 and 3,653.</p>"}))
    Cluster.add_member(:cluster_security_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSecurityGroupMembershipList, location_name: 'ClusterSecurityGroups', traits: {"smithy.api#documentation" => "<p>A list of cluster security group that are associated with the cluster. Each\n            security group is represented by an element that contains\n                <code>ClusterSecurityGroup.Name</code> and <code>ClusterSecurityGroup.Status</code>\n            subelements. </p>\n         <p>Cluster security groups are used when the cluster is not created in an Amazon\n            Virtual Private Cloud (VPC). Clusters that are created in a VPC use VPC security groups,\n            which are listed by the <b>VpcSecurityGroups</b> parameter.\n        </p>"}))
    Cluster.add_member(:vpc_security_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupMembershipList, location_name: 'VpcSecurityGroups', traits: {"smithy.api#documentation" => "<p>A list of Amazon Virtual Private Cloud (Amazon VPC) security groups that are\n            associated with the cluster. This parameter is returned only if the cluster is in a\n            VPC.</p>"}))
    Cluster.add_member(:cluster_parameter_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterParameterGroupStatusList, location_name: 'ClusterParameterGroups', traits: {"smithy.api#documentation" => "<p>The list of cluster parameter groups that are associated with this cluster. Each\n            parameter group in the list is returned with its status.</p>"}))
    Cluster.add_member(:cluster_subnet_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterSubnetGroupName', traits: {"smithy.api#documentation" => "<p>The name of the subnet group that is associated with the cluster. This parameter is\n            valid only when the cluster is in a VPC.</p>"}))
    Cluster.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>The identifier of the VPC the cluster is in, if the cluster is in a VPC.</p>"}))
    Cluster.add_member(:availability_zone, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AvailabilityZone', traits: {"smithy.api#documentation" => "<p>The name of the Availability Zone in which the cluster is located.</p>"}))
    Cluster.add_member(:preferred_maintenance_window, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredMaintenanceWindow', traits: {"smithy.api#documentation" => "<p>The weekly time range, in Universal Coordinated Time (UTC), during which system\n            maintenance can occur.</p>"}))
    Cluster.add_member(:pending_modified_values, Smithy::Schema::Shapes::ShapeRef.new(shape: PendingModifiedValues, location_name: 'PendingModifiedValues', traits: {"smithy.api#documentation" => "<p>A value that, if present, indicates that changes to the cluster are pending.\n            Specific pending changes are identified by subelements.</p>"}))
    Cluster.add_member(:cluster_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterVersion', traits: {"smithy.api#documentation" => "<p>The version ID of the Amazon Redshift engine that is running on the cluster.</p>"}))
    Cluster.add_member(:allow_version_upgrade, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllowVersionUpgrade', traits: {"smithy.api#documentation" => "<p>A boolean value that, if <code>true</code>, indicates that major version upgrades\n            will be applied automatically to the cluster during the maintenance window. </p>"}))
    Cluster.add_member(:number_of_nodes, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumberOfNodes', traits: {"smithy.api#documentation" => "<p>The number of compute nodes in the cluster.</p>"}))
    Cluster.add_member(:publicly_accessible, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'PubliclyAccessible', traits: {"smithy.api#documentation" => "<p>A boolean value that, if <code>true</code>, indicates that the cluster can be\n            accessed from a public network.</p>\n         <p>Default: false</p>"}))
    Cluster.add_member(:encrypted, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Encrypted', traits: {"smithy.api#documentation" => "<p>A boolean value that, if <code>true</code>, indicates that data in the cluster is\n            encrypted at rest.</p>"}))
    Cluster.add_member(:restore_status, Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreStatus, location_name: 'RestoreStatus', traits: {"smithy.api#documentation" => "<p>A value that describes the status of a cluster restore action. This parameter\n            returns null if the cluster was not created by restoring a snapshot.</p>"}))
    Cluster.add_member(:data_transfer_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: DataTransferProgress, location_name: 'DataTransferProgress', traits: {"smithy.api#documentation" => "<p></p>"}))
    Cluster.add_member(:hsm_status, Smithy::Schema::Shapes::ShapeRef.new(shape: HsmStatus, location_name: 'HsmStatus', traits: {"smithy.api#documentation" => "<p>A value that reports whether the Amazon Redshift cluster has finished applying any\n            hardware security module (HSM) settings changes specified in a modify cluster\n            command.</p>\n         <p>Values: active, applying</p>"}))
    Cluster.add_member(:cluster_snapshot_copy_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshotCopyStatus, location_name: 'ClusterSnapshotCopyStatus', traits: {"smithy.api#documentation" => "<p>A value that returns the destination region and retention period that are\n            configured for cross-region snapshot copy.</p>"}))
    Cluster.add_member(:cluster_public_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterPublicKey', traits: {"smithy.api#documentation" => "<p>The public key for the cluster.</p>"}))
    Cluster.add_member(:cluster_nodes, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNodesList, location_name: 'ClusterNodes', traits: {"smithy.api#documentation" => "<p>The nodes in the cluster.</p>"}))
    Cluster.add_member(:elastic_ip_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticIpStatus, location_name: 'ElasticIpStatus', traits: {"smithy.api#documentation" => "<p>The status of the elastic IP (EIP) address.</p>"}))
    Cluster.add_member(:cluster_revision_number, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterRevisionNumber', traits: {"smithy.api#documentation" => "<p>The specific revision number of the database in the cluster.</p>"}))
    Cluster.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of tags for the cluster.</p>"}))
    Cluster.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>The Key Management Service (KMS) key ID of the encryption key used to\n            encrypt data in the cluster.</p>"}))
    Cluster.add_member(:enhanced_vpc_routing, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnhancedVpcRouting', traits: {"smithy.api#documentation" => "<p>An option that specifies whether to create the cluster with enhanced VPC routing\n            enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a\n            VPC. For more information, see <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html\">Enhanced VPC Routing</a> in\n            the Amazon Redshift Cluster Management Guide.</p>\n         <p>If this option is <code>true</code>, enhanced VPC routing is enabled. </p>\n         <p>Default: false</p>"}))
    Cluster.add_member(:iam_roles, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIamRoleList, location_name: 'IamRoles', traits: {"smithy.api#documentation" => "<p>A list of Identity and Access Management (IAM) roles that can be used by the\n            cluster to access other Amazon Web Services services.</p>"}))
    Cluster.add_member(:pending_actions, Smithy::Schema::Shapes::ShapeRef.new(shape: PendingActionsList, location_name: 'PendingActions', traits: {"smithy.api#documentation" => "<p>Cluster operations that are waiting to be started.</p>"}))
    Cluster.add_member(:maintenance_track_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MaintenanceTrackName', traits: {"smithy.api#documentation" => "<p>The name of the maintenance track for the cluster.</p>"}))
    Cluster.add_member(:elastic_resize_number_of_node_options, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ElasticResizeNumberOfNodeOptions', traits: {"smithy.api#documentation" => "<p>The number of nodes that you can resize the cluster to with the elastic resize method.\n        </p>"}))
    Cluster.add_member(:deferred_maintenance_windows, Smithy::Schema::Shapes::ShapeRef.new(shape: DeferredMaintenanceWindowsList, location_name: 'DeferredMaintenanceWindows', traits: {"smithy.api#documentation" => "<p>Describes a group of <code>DeferredMaintenanceWindow</code> objects.</p>"}))
    Cluster.add_member(:snapshot_schedule_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotScheduleIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for the cluster snapshot schedule.</p>"}))
    Cluster.add_member(:snapshot_schedule_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleState, location_name: 'SnapshotScheduleState', traits: {"smithy.api#documentation" => "<p>The current state of the cluster snapshot schedule.</p>"}))
    Cluster.add_member(:expected_next_snapshot_schedule_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'ExpectedNextSnapshotScheduleTime', traits: {"smithy.api#documentation" => "<p>The date and time when the next snapshot is expected to be taken for clusters with a valid snapshot schedule and backups enabled. </p>"}))
    Cluster.add_member(:expected_next_snapshot_schedule_time_status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ExpectedNextSnapshotScheduleTimeStatus', traits: {"smithy.api#documentation" => "<p> The status of next expected snapshot for clusters having a valid snapshot schedule and backups enabled.  Possible values are the following:</p>\n         <ul>\n            <li>\n               <p>OnTrack - The next snapshot is expected to be taken on time. </p>\n            </li>\n            <li>\n               <p>Pending - The next snapshot is pending to be taken. </p>\n            </li>\n         </ul>"}))
    Cluster.add_member(:next_maintenance_window_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'NextMaintenanceWindowStartTime', traits: {"smithy.api#documentation" => "<p>The date and time in UTC when system maintenance can begin.</p>"}))
    Cluster.add_member(:resize_info, Smithy::Schema::Shapes::ShapeRef.new(shape: ResizeInfo, location_name: 'ResizeInfo', traits: {"smithy.api#documentation" => "<p>Returns the following:</p>\n         <ul>\n            <li>\n               <p>AllowCancelResize: a boolean value indicating if the resize operation can be\n                    cancelled.</p>\n            </li>\n            <li>\n               <p>ResizeType: Returns ClassicResize</p>\n            </li>\n         </ul>"}))
    Cluster.add_member(:availability_zone_relocation_status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AvailabilityZoneRelocationStatus', traits: {"smithy.api#documentation" => "<p>Describes the status of the Availability Zone relocation operation.</p>"}))
    Cluster.add_member(:cluster_namespace_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterNamespaceArn', traits: {"smithy.api#documentation" => "<p>The namespace Amazon Resource Name (ARN) of the cluster.</p>"}))
    Cluster.add_member(:total_storage_capacity_in_mega_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: 'TotalStorageCapacityInMegaBytes', traits: {"smithy.api#documentation" => "<p>The total storage capacity of the cluster in megabytes. </p>"}))
    Cluster.add_member(:aqua_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AquaConfiguration, location_name: 'AquaConfiguration', traits: {"smithy.api#documentation" => "<p>This field is retired. Amazon Redshift automatically determines whether to use AQUA (Advanced Query Accelerator).</p>"}))
    Cluster.add_member(:default_iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultIamRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the IAM role set as default for the cluster.</p>"}))
    Cluster.add_member(:reserved_node_exchange_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeExchangeStatus, location_name: 'ReservedNodeExchangeStatus', traits: {"smithy.api#documentation" => "<p>The status of the reserved-node exchange request. Statuses include in-progress and requested.</p>"}))
    Cluster.add_member(:custom_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomDomainName', traits: {"smithy.api#documentation" => "<p>The custom domain name associated with the cluster.</p>"}))
    Cluster.add_member(:custom_domain_certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomDomainCertificateArn', traits: {"smithy.api#documentation" => "<p>The certificate Amazon Resource Name (ARN) for the custom domain name.</p>"}))
    Cluster.add_member(:custom_domain_certificate_expiry_date, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CustomDomainCertificateExpiryDate', traits: {"smithy.api#documentation" => "<p>The expiration date for the certificate associated with the custom domain name.</p>"}))
    Cluster.add_member(:master_password_secret_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterPasswordSecretArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the cluster's admin user credentials secret.</p>"}))
    Cluster.add_member(:master_password_secret_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterPasswordSecretKmsKeyId', traits: {"smithy.api#documentation" => "<p>The ID of the Key Management Service (KMS) key used to encrypt and store the cluster's admin credentials secret.</p>"}))
    Cluster.add_member(:ip_address_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IpAddressType', traits: {"smithy.api#documentation" => "<p>The IP address type for the cluster. Possible values are <code>ipv4</code> and <code>dualstack</code>.</p>"}))
    Cluster.add_member(:multi_az, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MultiAZ', traits: {"smithy.api#documentation" => "<p>A boolean value that, if true, indicates that the cluster is deployed in two Availability Zones.</p>"}))
    Cluster.add_member(:multi_az_secondary, Smithy::Schema::Shapes::ShapeRef.new(shape: SecondaryClusterInfo, location_name: 'MultiAZSecondary', traits: {"smithy.api#documentation" => "<p>The secondary compute unit of a cluster, if Multi-AZ deployment is turned on.</p>"}))
    Cluster.type = Types::Cluster
    ClusterAlreadyExistsFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ClusterAlreadyExistsFault.type = Types::ClusterAlreadyExistsFault
    ClusterAssociatedToSchedule.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p></p>"}))
    ClusterAssociatedToSchedule.add_member(:schedule_association_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleState, location_name: 'ScheduleAssociationState', traits: {"smithy.api#documentation" => "<p></p>"}))
    ClusterAssociatedToSchedule.type = Types::ClusterAssociatedToSchedule
    ClusterDbRevision.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the cluster.</p>"}))
    ClusterDbRevision.add_member(:current_database_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CurrentDatabaseRevision', traits: {"smithy.api#documentation" => "<p>A string representing the current cluster version.</p>"}))
    ClusterDbRevision.add_member(:database_revision_release_date, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'DatabaseRevisionReleaseDate', traits: {"smithy.api#documentation" => "<p>The date on which the database revision was released.</p>"}))
    ClusterDbRevision.add_member(:revision_targets, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionTargetsList, location_name: 'RevisionTargets', traits: {"smithy.api#documentation" => "<p>A list of <code>RevisionTarget</code> objects, where each object describes the\n            database revision that a cluster can be updated to.</p>"}))
    ClusterDbRevision.type = Types::ClusterDbRevision
    ClusterDbRevisionsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterDbRevision, traits: {"smithy.api#xmlName" => "ClusterDbRevision"})
    ClusterDbRevisionsMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>A string representing the starting point for the next set of revisions. If a value is\n            returned in a response, you can retrieve the next set of revisions by providing the\n            value in the <code>marker</code> parameter and retrying the command. If the\n                <code>marker</code> field is empty, all revisions have already been returned.</p>"}))
    ClusterDbRevisionsMessage.add_member(:cluster_db_revisions, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterDbRevisionsList, location_name: 'ClusterDbRevisions', traits: {"smithy.api#documentation" => "<p>A list of revisions.</p>"}))
    ClusterDbRevisionsMessage.type = Types::ClusterDbRevisionsMessage
    ClusterIamRole.add_member(:iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IamRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role, for example,\n                <code>arn:aws:iam::123456789012:role/RedshiftCopyUnload</code>. </p>"}))
    ClusterIamRole.add_member(:apply_status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplyStatus', traits: {"smithy.api#documentation" => "<p>A value that describes the status of the IAM role's association with an Amazon\n            Redshift cluster.</p>\n         <p>The following are possible statuses and descriptions.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>in-sync</code>: The role is available for use by the cluster.</p>\n            </li>\n            <li>\n               <p>\n                  <code>adding</code>: The role is in the process of being associated with the\n                    cluster.</p>\n            </li>\n            <li>\n               <p>\n                  <code>removing</code>: The role is in the process of being disassociated with\n                    the cluster.</p>\n            </li>\n         </ul>"}))
    ClusterIamRole.type = Types::ClusterIamRole
    ClusterIamRoleList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIamRole, traits: {"smithy.api#xmlName" => "ClusterIamRole"})
    ClusterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, traits: {"smithy.api#xmlName" => "Cluster"})
    ClusterNode.add_member(:node_role, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeRole', traits: {"smithy.api#documentation" => "<p>Whether the node is a leader node or a compute node.</p>"}))
    ClusterNode.add_member(:private_ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PrivateIPAddress', traits: {"smithy.api#documentation" => "<p>The private IP address of a node within a cluster.</p>"}))
    ClusterNode.add_member(:public_ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PublicIPAddress', traits: {"smithy.api#documentation" => "<p>The public IP address of a node within a cluster.</p>"}))
    ClusterNode.type = Types::ClusterNode
    ClusterNodesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNode)
    ClusterNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ClusterNotFoundFault.type = Types::ClusterNotFoundFault
    ClusterOnLatestRevisionFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ClusterOnLatestRevisionFault.type = Types::ClusterOnLatestRevisionFault
    ClusterParameterGroup.add_member(:parameter_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupName', traits: {"smithy.api#documentation" => "<p>The name of the cluster parameter group.</p>"}))
    ClusterParameterGroup.add_member(:parameter_group_family, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupFamily', traits: {"smithy.api#documentation" => "<p>The name of the cluster parameter group family that this cluster parameter group is\n            compatible with.</p>"}))
    ClusterParameterGroup.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the parameter group.</p>"}))
    ClusterParameterGroup.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of tags for the cluster parameter group.</p>"}))
    ClusterParameterGroup.type = Types::ClusterParameterGroup
    ClusterParameterGroupAlreadyExistsFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ClusterParameterGroupAlreadyExistsFault.type = Types::ClusterParameterGroupAlreadyExistsFault
    ClusterParameterGroupNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ClusterParameterGroupNotFoundFault.type = Types::ClusterParameterGroupNotFoundFault
    ClusterParameterGroupQuotaExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ClusterParameterGroupQuotaExceededFault.type = Types::ClusterParameterGroupQuotaExceededFault
    ClusterParameterGroupStatus.add_member(:parameter_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupName', traits: {"smithy.api#documentation" => "<p>The name of the cluster parameter group.</p>"}))
    ClusterParameterGroupStatus.add_member(:parameter_apply_status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterApplyStatus', traits: {"smithy.api#documentation" => "<p>The status of parameter updates.</p>"}))
    ClusterParameterGroupStatus.add_member(:cluster_parameter_status_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterParameterStatusList, location_name: 'ClusterParameterStatusList', traits: {"smithy.api#documentation" => "<p>The list of parameter statuses.</p>\n         <p>\nFor more information about parameters and parameter groups, go to \n<a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html\">Amazon Redshift Parameter Groups</a> \nin the <i>Amazon Redshift Cluster Management Guide</i>.</p>"}))
    ClusterParameterGroupStatus.type = Types::ClusterParameterGroupStatus
    ClusterParameterGroupStatusList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterParameterGroupStatus, traits: {"smithy.api#xmlName" => "ClusterParameterGroup"})
    ClusterParameterGroupsMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>A value that indicates the starting point for the next set of response records in a\n            subsequent request. If a value is returned in a response, you can retrieve the next set\n            of records by providing this returned marker value in the <code>Marker</code> parameter\n            and retrying the command. If the <code>Marker</code> field is empty, all response\n            records have been retrieved for the request. </p>"}))
    ClusterParameterGroupsMessage.add_member(:parameter_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterGroupList, location_name: 'ParameterGroups', traits: {"smithy.api#documentation" => "<p>A list of <a>ClusterParameterGroup</a> instances. Each instance\n            describes one cluster parameter group. </p>"}))
    ClusterParameterGroupsMessage.type = Types::ClusterParameterGroupsMessage
    ClusterParameterStatus.add_member(:parameter_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterName', traits: {"smithy.api#documentation" => "<p>The name of the parameter.</p>"}))
    ClusterParameterStatus.add_member(:parameter_apply_status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterApplyStatus', traits: {"smithy.api#documentation" => "<p>The status of the parameter that indicates whether the parameter is in sync with\n            the database, waiting for a cluster reboot, or encountered an error when being\n            applied.</p>\n         <p>The following are possible statuses and descriptions.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>in-sync</code>: The parameter value is in sync with the\n                    database.</p>\n            </li>\n            <li>\n               <p>\n                  <code>pending-reboot</code>: The parameter value will be applied after the\n                    cluster reboots.</p>\n            </li>\n            <li>\n               <p>\n                  <code>applying</code>: The parameter value is being applied to the\n                    database.</p>\n            </li>\n            <li>\n               <p>\n                  <code>invalid-parameter</code>: Cannot apply the parameter value because it has\n                    an invalid value or syntax.</p>\n            </li>\n            <li>\n               <p>\n                  <code>apply-deferred</code>: The parameter contains static property changes. The\n                    changes are deferred until the cluster reboots.</p>\n            </li>\n            <li>\n               <p>\n                  <code>apply-error</code>: Cannot connect to the cluster. The parameter change\n                    will be applied after the cluster reboots.</p>\n            </li>\n            <li>\n               <p>\n                  <code>unknown-error</code>: Cannot apply the parameter change right now. The\n                    change will be applied after the cluster reboots.</p>\n            </li>\n         </ul>"}))
    ClusterParameterStatus.add_member(:parameter_apply_error_description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterApplyErrorDescription', traits: {"smithy.api#documentation" => "<p>The error that prevented the parameter from being applied to the\n            database.</p>"}))
    ClusterParameterStatus.type = Types::ClusterParameterStatus
    ClusterParameterStatusList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterParameterStatus)
    ClusterQuotaExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ClusterQuotaExceededFault.type = Types::ClusterQuotaExceededFault
    ClusterSecurityGroup.add_member(:cluster_security_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterSecurityGroupName', traits: {"smithy.api#documentation" => "<p>The name of the cluster security group to which the operation was\n            applied.</p>"}))
    ClusterSecurityGroup.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the security group.</p>"}))
    ClusterSecurityGroup.add_member(:ec2_security_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: EC2SecurityGroupList, location_name: 'EC2SecurityGroups', traits: {"smithy.api#documentation" => "<p>A list of EC2 security groups that are permitted to access clusters associated with\n            this cluster security group.</p>"}))
    ClusterSecurityGroup.add_member(:ip_ranges, Smithy::Schema::Shapes::ShapeRef.new(shape: IPRangeList, location_name: 'IPRanges', traits: {"smithy.api#documentation" => "<p>A list of IP ranges (CIDR blocks) that are permitted to access clusters associated\n            with this cluster security group.</p>"}))
    ClusterSecurityGroup.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of tags for the cluster security group.</p>"}))
    ClusterSecurityGroup.type = Types::ClusterSecurityGroup
    ClusterSecurityGroupAlreadyExistsFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ClusterSecurityGroupAlreadyExistsFault.type = Types::ClusterSecurityGroupAlreadyExistsFault
    ClusterSecurityGroupMembership.add_member(:cluster_security_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterSecurityGroupName', traits: {"smithy.api#documentation" => "<p>The name of the cluster security group.</p>"}))
    ClusterSecurityGroupMembership.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the cluster security group.</p>"}))
    ClusterSecurityGroupMembership.type = Types::ClusterSecurityGroupMembership
    ClusterSecurityGroupMembershipList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSecurityGroupMembership, traits: {"smithy.api#xmlName" => "ClusterSecurityGroup"})
    ClusterSecurityGroupMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>A value that indicates the starting point for the next set of response records in a\n            subsequent request. If a value is returned in a response, you can retrieve the next set\n            of records by providing this returned marker value in the <code>Marker</code> parameter\n            and retrying the command. If the <code>Marker</code> field is empty, all response\n            records have been retrieved for the request. </p>"}))
    ClusterSecurityGroupMessage.add_member(:cluster_security_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSecurityGroups, location_name: 'ClusterSecurityGroups', traits: {"smithy.api#documentation" => "<p>A list of <a>ClusterSecurityGroup</a> instances. </p>"}))
    ClusterSecurityGroupMessage.type = Types::ClusterSecurityGroupMessage
    ClusterSecurityGroupNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "ClusterSecurityGroupName"})
    ClusterSecurityGroupNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ClusterSecurityGroupNotFoundFault.type = Types::ClusterSecurityGroupNotFoundFault
    ClusterSecurityGroupQuotaExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ClusterSecurityGroupQuotaExceededFault.type = Types::ClusterSecurityGroupQuotaExceededFault
    ClusterSecurityGroups.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSecurityGroup, traits: {"smithy.api#xmlName" => "ClusterSecurityGroup"})
    ClusterSnapshotAlreadyExistsFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ClusterSnapshotAlreadyExistsFault.type = Types::ClusterSnapshotAlreadyExistsFault
    ClusterSnapshotCopyStatus.add_member(:destination_region, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DestinationRegion', traits: {"smithy.api#documentation" => "<p>The destination region that snapshots are automatically copied to when cross-region\n            snapshot copy is enabled.</p>"}))
    ClusterSnapshotCopyStatus.add_member(:retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'RetentionPeriod', traits: {"smithy.api#documentation" => "<p>The number of days that automated snapshots are retained in the destination region\n            after they are copied from a source region.</p>"}))
    ClusterSnapshotCopyStatus.add_member(:manual_snapshot_retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ManualSnapshotRetentionPeriod', traits: {"smithy.api#documentation" => "<p>The number of days that automated snapshots are retained in the destination region\n            after they are copied from a source region. If the value is -1, the manual snapshot is\n            retained indefinitely. </p>\n         <p>The value must be either -1 or an integer between 1 and 3,653.</p>"}))
    ClusterSnapshotCopyStatus.add_member(:snapshot_copy_grant_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotCopyGrantName', traits: {"smithy.api#documentation" => "<p>The name of the snapshot copy grant.</p>"}))
    ClusterSnapshotCopyStatus.type = Types::ClusterSnapshotCopyStatus
    ClusterSnapshotNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ClusterSnapshotNotFoundFault.type = Types::ClusterSnapshotNotFoundFault
    ClusterSnapshotQuotaExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ClusterSnapshotQuotaExceededFault.type = Types::ClusterSnapshotQuotaExceededFault
    ClusterSubnetGroup.add_member(:cluster_subnet_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterSubnetGroupName', traits: {"smithy.api#documentation" => "<p>The name of the cluster subnet group.</p>"}))
    ClusterSubnetGroup.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the cluster subnet group.</p>"}))
    ClusterSubnetGroup.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>The VPC ID of the cluster subnet group.</p>"}))
    ClusterSubnetGroup.add_member(:subnet_group_status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubnetGroupStatus', traits: {"smithy.api#documentation" => "<p>The status of the cluster subnet group. Possible values are <code>Complete</code>,\n                <code>Incomplete</code> and <code>Invalid</code>. </p>"}))
    ClusterSubnetGroup.add_member(:subnets, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetList, location_name: 'Subnets', traits: {"smithy.api#documentation" => "<p>A list of the VPC <a>Subnet</a> elements. </p>"}))
    ClusterSubnetGroup.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of tags for the cluster subnet group.</p>"}))
    ClusterSubnetGroup.add_member(:supported_cluster_ip_address_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ValueStringList, location_name: 'SupportedClusterIpAddressTypes', traits: {"smithy.api#documentation" => "<p>The IP address types supported by this cluster subnet group. Possible values are <code>ipv4</code> and <code>dualstack</code>.</p>"}))
    ClusterSubnetGroup.type = Types::ClusterSubnetGroup
    ClusterSubnetGroupAlreadyExistsFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ClusterSubnetGroupAlreadyExistsFault.type = Types::ClusterSubnetGroupAlreadyExistsFault
    ClusterSubnetGroupMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>A value that indicates the starting point for the next set of response records in a\n            subsequent request. If a value is returned in a response, you can retrieve the next set\n            of records by providing this returned marker value in the <code>Marker</code> parameter\n            and retrying the command. If the <code>Marker</code> field is empty, all response\n            records have been retrieved for the request. </p>"}))
    ClusterSubnetGroupMessage.add_member(:cluster_subnet_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSubnetGroups, location_name: 'ClusterSubnetGroups', traits: {"smithy.api#documentation" => "<p>A list of <a>ClusterSubnetGroup</a> instances. </p>"}))
    ClusterSubnetGroupMessage.type = Types::ClusterSubnetGroupMessage
    ClusterSubnetGroupNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ClusterSubnetGroupNotFoundFault.type = Types::ClusterSubnetGroupNotFoundFault
    ClusterSubnetGroupQuotaExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ClusterSubnetGroupQuotaExceededFault.type = Types::ClusterSubnetGroupQuotaExceededFault
    ClusterSubnetGroups.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSubnetGroup, traits: {"smithy.api#xmlName" => "ClusterSubnetGroup"})
    ClusterSubnetQuotaExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ClusterSubnetQuotaExceededFault.type = Types::ClusterSubnetQuotaExceededFault
    ClusterVersion.add_member(:cluster_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterVersion', traits: {"smithy.api#documentation" => "<p>The version number used by the cluster.</p>"}))
    ClusterVersion.add_member(:cluster_parameter_group_family, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterParameterGroupFamily', traits: {"smithy.api#documentation" => "<p>The name of the cluster parameter group family for the cluster.</p>"}))
    ClusterVersion.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the cluster version.</p>"}))
    ClusterVersion.type = Types::ClusterVersion
    ClusterVersionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterVersion, traits: {"smithy.api#xmlName" => "ClusterVersion"})
    ClusterVersionsMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>A value that indicates the starting point for the next set of response records in a\n            subsequent request. If a value is returned in a response, you can retrieve the next set\n            of records by providing this returned marker value in the <code>Marker</code> parameter\n            and retrying the command. If the <code>Marker</code> field is empty, all response\n            records have been retrieved for the request. </p>"}))
    ClusterVersionsMessage.add_member(:cluster_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterVersionList, location_name: 'ClusterVersions', traits: {"smithy.api#documentation" => "<p>A list of <code>Version</code> elements. </p>"}))
    ClusterVersionsMessage.type = Types::ClusterVersionsMessage
    ClustersMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>A value that indicates the starting point for the next set of response records in a\n            subsequent request. If a value is returned in a response, you can retrieve the next set\n            of records by providing this returned marker value in the <code>Marker</code> parameter\n            and retrying the command. If the <code>Marker</code> field is empty, all response\n            records have been retrieved for the request. </p>"}))
    ClustersMessage.add_member(:clusters, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterList, location_name: 'Clusters', traits: {"smithy.api#documentation" => "<p>A list of <code>Cluster</code> objects, where each object describes one cluster.\n        </p>"}))
    ClustersMessage.type = Types::ClustersMessage
    ConflictPolicyUpdateFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ConflictPolicyUpdateFault.type = Types::ConflictPolicyUpdateFault
    ConsumerIdentifierList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    CopyClusterSnapshotMessage.add_member(:source_snapshot_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceSnapshotIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The identifier for the source snapshot.</p>\n         <p>Constraints:</p>\n         <ul>\n            <li>\n               <p>Must be the identifier for a valid automated snapshot whose state is\n                        <code>available</code>.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CopyClusterSnapshotMessage.add_member(:source_snapshot_cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceSnapshotClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the cluster the source snapshot was created from. This parameter\n            is required if your IAM user has a policy containing a snapshot resource element that\n            specifies anything other than * for the cluster name.</p>\n         <p>Constraints:</p>\n         <ul>\n            <li>\n               <p>Must be the identifier for a valid cluster.</p>\n            </li>\n         </ul>"}))
    CopyClusterSnapshotMessage.add_member(:target_snapshot_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetSnapshotIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The identifier given to the new manual snapshot.</p>\n         <p>Constraints:</p>\n         <ul>\n            <li>\n               <p>Cannot be null, empty, or blank.</p>\n            </li>\n            <li>\n               <p>Must contain from 1 to 255 alphanumeric characters or hyphens.</p>\n            </li>\n            <li>\n               <p>First character must be a letter.</p>\n            </li>\n            <li>\n               <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>\n            </li>\n            <li>\n               <p>Must be unique for the Amazon Web Services account that is making the request.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CopyClusterSnapshotMessage.add_member(:manual_snapshot_retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'ManualSnapshotRetentionPeriod', traits: {"smithy.api#documentation" => "<p>The number of days that a manual snapshot is retained. If the value is -1, the manual\n            snapshot is retained indefinitely. </p>\n         <p>The value must be either -1 or an integer between 1 and 3,653.</p>\n         <p>The default value is -1.</p>"}))
    CopyClusterSnapshotMessage.type = Types::CopyClusterSnapshotMessage
    CopyClusterSnapshotResult.add_member(:snapshot, Smithy::Schema::Shapes::ShapeRef.new(shape: Snapshot, location_name: 'Snapshot'))
    CopyClusterSnapshotResult.type = Types::CopyClusterSnapshotResult
    CopyToRegionDisabledFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    CopyToRegionDisabledFault.type = Types::CopyToRegionDisabledFault
    CreateAuthenticationProfileMessage.add_member(:authentication_profile_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationProfileNameString, location_name: 'AuthenticationProfileName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the authentication profile to be created.</p>", "smithy.api#required" => {}}))
    CreateAuthenticationProfileMessage.add_member(:authentication_profile_content, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AuthenticationProfileContent', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The content of the authentication profile in JSON format. \n            The maximum length of the JSON string is determined by a quota for your account.</p>", "smithy.api#required" => {}}))
    CreateAuthenticationProfileMessage.type = Types::CreateAuthenticationProfileMessage
    CreateAuthenticationProfileResult.add_member(:authentication_profile_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationProfileNameString, location_name: 'AuthenticationProfileName', traits: {"smithy.api#documentation" => "<p>The name of the authentication profile that was created.</p>"}))
    CreateAuthenticationProfileResult.add_member(:authentication_profile_content, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AuthenticationProfileContent', traits: {"smithy.api#documentation" => "<p>The content of the authentication profile in JSON format.</p>"}))
    CreateAuthenticationProfileResult.type = Types::CreateAuthenticationProfileResult
    CreateClusterMessage.add_member(:db_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBName', traits: {"smithy.api#documentation" => "<p>The name of the first database to be created when the cluster is created.</p>\n         <p>To create additional databases after the cluster is created, connect to the cluster\n            with a SQL client and use SQL commands to create a database. For more information, go to\n                <a href=\"https://docs.aws.amazon.com/redshift/latest/dg/t_creating_database.html\">Create\n                a Database</a> in the Amazon Redshift Database Developer Guide. </p>\n         <p>Default: <code>dev</code>\n         </p>\n         <p>Constraints:</p>\n         <ul>\n            <li>\n               <p>Must contain 1 to 64 alphanumeric characters.</p>\n            </li>\n            <li>\n               <p>Must contain only lowercase letters.</p>\n            </li>\n            <li>\n               <p>Cannot be a word that is reserved by the service. A list of reserved words\n                    can be found in <a href=\"https://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html\">Reserved Words</a> in the\n                    Amazon Redshift Database Developer Guide. </p>\n            </li>\n         </ul>"}))
    CreateClusterMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>A unique identifier for the cluster. You use this identifier to refer to the\n            cluster for any subsequent cluster operations such as deleting or modifying. The\n            identifier also appears in the Amazon Redshift console.</p>\n         <p>Constraints:</p>\n         <ul>\n            <li>\n               <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p>\n            </li>\n            <li>\n               <p>Alphabetic characters must be lowercase.</p>\n            </li>\n            <li>\n               <p>First character must be a letter.</p>\n            </li>\n            <li>\n               <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>\n            </li>\n            <li>\n               <p>Must be unique for all clusters within an Amazon Web Services account.</p>\n            </li>\n         </ul>\n         <p>Example: <code>myexamplecluster</code>\n         </p>", "smithy.api#required" => {}}))
    CreateClusterMessage.add_member(:cluster_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterType', traits: {"smithy.api#documentation" => "<p>The type of the cluster. When cluster type is specified as</p>\n         <ul>\n            <li>\n               <p>\n                  <code>single-node</code>, the <b>NumberOfNodes</b>\n                    parameter is not required.</p>\n            </li>\n            <li>\n               <p>\n                  <code>multi-node</code>, the <b>NumberOfNodes</b>\n                    parameter is required.</p>\n            </li>\n         </ul>\n         <p>Valid Values: <code>multi-node</code> | <code>single-node</code>\n         </p>\n         <p>Default: <code>multi-node</code>\n         </p>"}))
    CreateClusterMessage.add_member(:node_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The node type to be provisioned for the cluster. For information about node types,\n            go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#how-many-nodes\"> Working with\n                Clusters</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>\n         <p>Valid Values: \n            <code>dc2.large</code> | <code>dc2.8xlarge</code> | \n            <code>ra3.large</code> |  <code>ra3.xlplus</code> |  <code>ra3.4xlarge</code> | <code>ra3.16xlarge</code>\n         </p>", "smithy.api#required" => {}}))
    CreateClusterMessage.add_member(:master_username, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterUsername', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The user name associated with the admin user account for the cluster that is being\n            created.</p>\n         <p>Constraints:</p>\n         <ul>\n            <li>\n               <p>Must be 1 - 128 alphanumeric characters or hyphens. The user name can't be\n                        <code>PUBLIC</code>.</p>\n            </li>\n            <li>\n               <p>Must contain only lowercase letters, numbers, underscore, plus sign, period (dot), at symbol (@), or hyphen.</p>\n            </li>\n            <li>\n               <p>The first character must be a letter.</p>\n            </li>\n            <li>\n               <p>Must not contain a colon (:) or a slash (/).</p>\n            </li>\n            <li>\n               <p>Cannot be a reserved word. A list of reserved words can be found in <a href=\"https://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html\">Reserved\n                        Words</a> in the Amazon Redshift Database Developer Guide. </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CreateClusterMessage.add_member(:master_user_password, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'MasterUserPassword', traits: {"smithy.api#documentation" => "<p>The password associated with the admin user account for the cluster that is being\n            created.</p>\n         <p>You can't use <code>MasterUserPassword</code> if <code>ManageMasterPassword</code> is <code>true</code>.</p>\n         <p>Constraints:</p>\n         <ul>\n            <li>\n               <p>Must be between 8 and 64 characters in length.</p>\n            </li>\n            <li>\n               <p>Must contain at least one uppercase letter.</p>\n            </li>\n            <li>\n               <p>Must contain at least one lowercase letter.</p>\n            </li>\n            <li>\n               <p>Must contain one number.</p>\n            </li>\n            <li>\n               <p>Can be any printable ASCII character (ASCII code 33-126) except <code>'</code>\n                    (single quote), <code>\"</code> (double quote), <code>\\</code>, <code>/</code>, or <code>@</code>.</p>\n            </li>\n         </ul>"}))
    CreateClusterMessage.add_member(:cluster_security_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSecurityGroupNameList, location_name: 'ClusterSecurityGroups', traits: {"smithy.api#documentation" => "<p>A list of security groups to be associated with this cluster.</p>\n         <p>Default: The default cluster security group for Amazon Redshift.</p>"}))
    CreateClusterMessage.add_member(:vpc_security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: 'VpcSecurityGroupIds', traits: {"smithy.api#documentation" => "<p>A list of Virtual Private Cloud (VPC) security groups to be associated with the\n            cluster.</p>\n         <p>Default: The default VPC security group is associated with the cluster.</p>"}))
    CreateClusterMessage.add_member(:cluster_subnet_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterSubnetGroupName', traits: {"smithy.api#documentation" => "<p>The name of a cluster subnet group to be associated with this cluster.</p>\n         <p>If this parameter is not provided the resulting cluster will be deployed outside\n            virtual private cloud (VPC).</p>"}))
    CreateClusterMessage.add_member(:availability_zone, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AvailabilityZone', traits: {"smithy.api#documentation" => "<p>The EC2 Availability Zone (AZ) in which you want Amazon Redshift to provision the\n            cluster. For example, if you have several EC2 instances running in a specific\n            Availability Zone, then you might want the cluster to be provisioned in the same zone in\n            order to decrease network latency.</p>\n         <p>Default: A random, system-chosen Availability Zone in the region that is specified\n            by the endpoint.</p>\n         <p>Example: <code>us-east-2d</code>\n         </p>\n         <p>Constraint: The specified Availability Zone must be in the same region as the\n            current endpoint.</p>"}))
    CreateClusterMessage.add_member(:preferred_maintenance_window, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredMaintenanceWindow', traits: {"smithy.api#documentation" => "<p>The weekly time range (in UTC) during which automated cluster maintenance can\n            occur.</p>\n         <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>\n         </p>\n         <p> Default: A 30-minute window selected at random from an 8-hour block of time per\n            region, occurring on a random day of the week. For more information about the time\n            blocks for each region, see <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-maintenance-windows\">Maintenance Windows</a> in Amazon Redshift Cluster Management Guide.</p>\n         <p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p>\n         <p>Constraints: Minimum 30-minute window.</p>"}))
    CreateClusterMessage.add_member(:cluster_parameter_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterParameterGroupName', traits: {"smithy.api#documentation" => "<p>The name of the parameter group to be associated with this cluster.</p>\n         <p>Default: The default Amazon Redshift cluster parameter group. For information about the\n            default parameter group, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html\">Working with Amazon\n                Redshift Parameter Groups</a>\n         </p>\n         <p>Constraints:</p>\n         <ul>\n            <li>\n               <p>Must be 1 to 255 alphanumeric characters or hyphens.</p>\n            </li>\n            <li>\n               <p>First character must be a letter.</p>\n            </li>\n            <li>\n               <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>\n            </li>\n         </ul>"}))
    CreateClusterMessage.add_member(:automated_snapshot_retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'AutomatedSnapshotRetentionPeriod', traits: {"smithy.api#documentation" => "<p>The number of days that automated snapshots are retained. If the value is 0,\n            automated snapshots are disabled. Even if automated snapshots are disabled, you can\n            still create manual snapshots when you want with <a>CreateClusterSnapshot</a>. </p>\n         <p>You can't disable automated snapshots for RA3 node types. Set the automated retention period from 1-35 days.</p>\n         <p>Default: <code>1</code>\n         </p>\n         <p>Constraints: Must be a value from 0 to 35.</p>"}))
    CreateClusterMessage.add_member(:manual_snapshot_retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'ManualSnapshotRetentionPeriod', traits: {"smithy.api#documentation" => "<p>The default number of days to retain a manual snapshot. If the value is -1, the\n            snapshot is retained indefinitely. This setting doesn't change the retention period\n            of existing snapshots.</p>\n         <p>The value must be either -1 or an integer between 1 and 3,653.</p>"}))
    CreateClusterMessage.add_member(:port, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Port', traits: {"smithy.api#documentation" => "<p>The port number on which the cluster accepts incoming connections.</p>\n         <p>The cluster is accessible only via the JDBC and ODBC connection strings. Part of\n            the connection string requires the port on which the cluster will listen for incoming\n            connections.</p>\n         <p>Default: <code>5439</code>\n         </p>\n         <p>Valid Values:\n        </p>\n         <ul>\n            <li>\n               <p>For clusters with ra3 nodes - Select a port within the ranges <code>5431-5455</code> or <code>8191-8215</code>. (If you have an existing cluster \n                with ra3 nodes, it isn't required that you change the port to these ranges.)</p>\n            </li>\n            <li>\n               <p>For clusters with dc2 nodes - Select a port within the range <code>1150-65535</code>.</p>\n            </li>\n         </ul>"}))
    CreateClusterMessage.add_member(:cluster_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterVersion', traits: {"smithy.api#documentation" => "<p>The version of the Amazon Redshift engine software that you want to deploy on the\n            cluster.</p>\n         <p>The version selected runs on all the nodes in the cluster.</p>\n         <p>Constraints: Only version 1.0 is currently available.</p>\n         <p>Example: <code>1.0</code>\n         </p>"}))
    CreateClusterMessage.add_member(:allow_version_upgrade, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AllowVersionUpgrade', traits: {"smithy.api#documentation" => "<p>If <code>true</code>, major version upgrades can be applied during the maintenance\n            window to the Amazon Redshift engine that is running on the cluster.</p>\n         <p>When a new major version of the Amazon Redshift engine is released, you can request that\n            the service automatically apply upgrades during the maintenance window to the Amazon Redshift\n            engine that is running on your cluster.</p>\n         <p>Default: <code>true</code>\n         </p>"}))
    CreateClusterMessage.add_member(:number_of_nodes, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'NumberOfNodes', traits: {"smithy.api#documentation" => "<p>The number of compute nodes in the cluster. This parameter is required when the\n                <b>ClusterType</b> parameter is specified as\n                <code>multi-node</code>. </p>\n         <p>For information about determining how many nodes you need, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#how-many-nodes\"> Working with\n                Clusters</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>\n         <p>If you don't specify this parameter, you get a single-node cluster. When requesting\n            a multi-node cluster, you must specify the number of nodes that you want in the\n            cluster.</p>\n         <p>Default: <code>1</code>\n         </p>\n         <p>Constraints: Value must be at least 1 and no more than 100.</p>"}))
    CreateClusterMessage.add_member(:publicly_accessible, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'PubliclyAccessible', traits: {"smithy.api#documentation" => "<p>If <code>true</code>, the cluster can be accessed from a public network. </p>\n         <p>Default: false</p>"}))
    CreateClusterMessage.add_member(:encrypted, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'Encrypted', traits: {"smithy.api#documentation" => "<p>If <code>true</code>, the data in the cluster is encrypted at rest. \n            If you set the value on this parameter to <code>false</code>, the request will fail.</p>\n         <p>Default: true</p>"}))
    CreateClusterMessage.add_member(:hsm_client_certificate_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmClientCertificateIdentifier', traits: {"smithy.api#documentation" => "<p>Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to\n            retrieve the data encryption keys stored in an HSM.</p>"}))
    CreateClusterMessage.add_member(:hsm_configuration_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmConfigurationIdentifier', traits: {"smithy.api#documentation" => "<p>Specifies the name of the HSM configuration that contains the information the\n            Amazon Redshift cluster can use to retrieve and store keys in an HSM.</p>"}))
    CreateClusterMessage.add_member(:elastic_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ElasticIp', traits: {"smithy.api#documentation" => "<p>The Elastic IP (EIP) address for the cluster.</p>\n         <p>Constraints: The cluster must be provisioned in EC2-VPC and publicly-accessible\n            through an Internet gateway. Don't specify the Elastic IP address for a publicly accessible \n            cluster with availability zone relocation turned on. For more information about provisioning clusters in\n            EC2-VPC, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#cluster-platforms\">Supported\n                Platforms to Launch Your Cluster</a> in the Amazon Redshift Cluster Management Guide.</p>"}))
    CreateClusterMessage.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tag instances.</p>"}))
    CreateClusterMessage.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>The Key Management Service (KMS) key ID of the encryption key that you want to\n            use to encrypt data in the cluster.</p>"}))
    CreateClusterMessage.add_member(:enhanced_vpc_routing, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnhancedVpcRouting', traits: {"smithy.api#documentation" => "<p>An option that specifies whether to create the cluster with enhanced VPC routing\n            enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a\n            VPC. For more information, see <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html\">Enhanced VPC Routing</a> in\n            the Amazon Redshift Cluster Management Guide.</p>\n         <p>If this option is <code>true</code>, enhanced VPC routing is enabled. </p>\n         <p>Default: false</p>"}))
    CreateClusterMessage.add_member(:additional_info, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AdditionalInfo', traits: {"smithy.api#documentation" => "<p>Reserved.</p>"}))
    CreateClusterMessage.add_member(:iam_roles, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArnList, location_name: 'IamRoles', traits: {"smithy.api#documentation" => "<p>A list of Identity and Access Management (IAM) roles that can be used by the\n            cluster to access other Amazon Web Services services. You must supply the IAM roles in their Amazon\n            Resource Name (ARN) format. </p>\n         <p>The maximum number of IAM roles that you can associate is subject to a quota.\n            For more information, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html\">Quotas and limits</a>\n            in the <i>Amazon Redshift Cluster Management Guide</i>.</p>"}))
    CreateClusterMessage.add_member(:maintenance_track_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MaintenanceTrackName', traits: {"smithy.api#documentation" => "<p>An optional parameter for the name of the maintenance track for the cluster. If you\n            don't provide a maintenance track name, the cluster is assigned to the\n                <code>current</code> track.</p>"}))
    CreateClusterMessage.add_member(:snapshot_schedule_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotScheduleIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for the snapshot schedule.</p>"}))
    CreateClusterMessage.add_member(:availability_zone_relocation, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AvailabilityZoneRelocation', traits: {"smithy.api#documentation" => "<p>The option to enable relocation for an Amazon Redshift cluster between Availability Zones after the cluster is created.</p>"}))
    CreateClusterMessage.add_member(:aqua_configuration_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AquaConfigurationStatus, location_name: 'AquaConfigurationStatus', traits: {"smithy.api#documentation" => "<p>This parameter is retired. It does not set the AQUA configuration status. Amazon Redshift automatically determines whether to use AQUA (Advanced Query Accelerator).</p>"}))
    CreateClusterMessage.add_member(:default_iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultIamRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the IAM role that was set as default for the cluster when the cluster was created. </p>"}))
    CreateClusterMessage.add_member(:load_sample_data, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LoadSampleData', traits: {"smithy.api#documentation" => "<p>A flag that specifies whether to load sample data once the cluster is created.</p>"}))
    CreateClusterMessage.add_member(:manage_master_password, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'ManageMasterPassword', traits: {"smithy.api#documentation" => "<p>If <code>true</code>, Amazon Redshift uses Secrets Manager to manage this cluster's admin credentials. \n            You can't use <code>MasterUserPassword</code> if <code>ManageMasterPassword</code> is true. \n            If <code>ManageMasterPassword</code> is false or not set, Amazon Redshift uses \n            <code>MasterUserPassword</code> for the admin user account's password.\n        </p>"}))
    CreateClusterMessage.add_member(:master_password_secret_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterPasswordSecretKmsKeyId', traits: {"smithy.api#documentation" => "<p>The ID of the Key Management Service (KMS) key used to encrypt and store the cluster's admin credentials secret. \n            You can only use this parameter if <code>ManageMasterPassword</code> is true.</p>"}))
    CreateClusterMessage.add_member(:ip_address_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IpAddressType', traits: {"smithy.api#documentation" => "<p>The IP address types that the cluster supports. Possible values are <code>ipv4</code> and <code>dualstack</code>.</p>"}))
    CreateClusterMessage.add_member(:multi_az, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'MultiAZ', traits: {"smithy.api#documentation" => "<p>If true, Amazon Redshift will deploy the cluster in two Availability Zones (AZ).</p>"}))
    CreateClusterMessage.add_member(:redshift_idc_application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RedshiftIdcApplicationArn', traits: {"smithy.api#documentation" => "<p>The Amazon resource name (ARN) of the Amazon Redshift IAM Identity Center application.</p>"}))
    CreateClusterMessage.type = Types::CreateClusterMessage
    CreateClusterParameterGroupMessage.add_member(:parameter_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the cluster parameter group.</p>\n         <p>Constraints:</p>\n         <ul>\n            <li>\n               <p>Must be 1 to 255 alphanumeric characters or hyphens</p>\n            </li>\n            <li>\n               <p>First character must be a letter.</p>\n            </li>\n            <li>\n               <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>\n            </li>\n            <li>\n               <p>Must be unique withing your Amazon Web Services account.</p>\n            </li>\n         </ul>\n         <note>\n            <p>This value is stored as a lower-case string.</p>\n         </note>", "smithy.api#required" => {}}))
    CreateClusterParameterGroupMessage.add_member(:parameter_group_family, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupFamily', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Redshift engine version to which the cluster parameter group applies. The\n            cluster engine version determines the set of parameters.</p>\n         <p>To get a list of valid parameter group family names, you can call <a>DescribeClusterParameterGroups</a>. By default, Amazon Redshift returns a list of\n            all the parameter groups that are owned by your Amazon Web Services account, including the default\n            parameter groups for each Amazon Redshift engine version. The parameter group family names\n            associated with the default parameter groups provide you the valid values. For example,\n            a valid family name is \"redshift-1.0\". </p>", "smithy.api#required" => {}}))
    CreateClusterParameterGroupMessage.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>A description of the parameter group.</p>", "smithy.api#required" => {}}))
    CreateClusterParameterGroupMessage.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tag instances.</p>"}))
    CreateClusterParameterGroupMessage.type = Types::CreateClusterParameterGroupMessage
    CreateClusterParameterGroupResult.add_member(:cluster_parameter_group, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterParameterGroup, location_name: 'ClusterParameterGroup'))
    CreateClusterParameterGroupResult.type = Types::CreateClusterParameterGroupResult
    CreateClusterResult.add_member(:cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster'))
    CreateClusterResult.type = Types::CreateClusterResult
    CreateClusterSecurityGroupMessage.add_member(:cluster_security_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterSecurityGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name for the security group. Amazon Redshift stores the value as a lowercase\n            string.</p>\n         <p>Constraints:</p>\n         <ul>\n            <li>\n               <p>Must contain no more than 255 alphanumeric characters or hyphens.</p>\n            </li>\n            <li>\n               <p>Must not be \"Default\".</p>\n            </li>\n            <li>\n               <p>Must be unique for all security groups that are created by your Amazon Web Services account.</p>\n            </li>\n         </ul>\n         <p>Example: <code>examplesecuritygroup</code>\n         </p>", "smithy.api#required" => {}}))
    CreateClusterSecurityGroupMessage.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>A description for the security group.</p>", "smithy.api#required" => {}}))
    CreateClusterSecurityGroupMessage.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tag instances.</p>"}))
    CreateClusterSecurityGroupMessage.type = Types::CreateClusterSecurityGroupMessage
    CreateClusterSecurityGroupResult.add_member(:cluster_security_group, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSecurityGroup, location_name: 'ClusterSecurityGroup'))
    CreateClusterSecurityGroupResult.type = Types::CreateClusterSecurityGroupResult
    CreateClusterSnapshotMessage.add_member(:snapshot_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>A unique identifier for the snapshot that you are requesting. This identifier must\n            be unique for all snapshots within the Amazon Web Services account.</p>\n         <p>Constraints:</p>\n         <ul>\n            <li>\n               <p>Cannot be null, empty, or blank</p>\n            </li>\n            <li>\n               <p>Must contain from 1 to 255 alphanumeric characters or hyphens</p>\n            </li>\n            <li>\n               <p>First character must be a letter</p>\n            </li>\n            <li>\n               <p>Cannot end with a hyphen or contain two consecutive hyphens</p>\n            </li>\n         </ul>\n         <p>Example: <code>my-snapshot-id</code>\n         </p>", "smithy.api#required" => {}}))
    CreateClusterSnapshotMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The cluster identifier for which you want a snapshot.</p>", "smithy.api#required" => {}}))
    CreateClusterSnapshotMessage.add_member(:manual_snapshot_retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'ManualSnapshotRetentionPeriod', traits: {"smithy.api#documentation" => "<p>The number of days that a manual snapshot is retained. If the value is -1, the manual\n            snapshot is retained indefinitely. </p>\n         <p>The value must be either -1 or an integer between 1 and 3,653.</p>\n         <p>The default value is -1.</p>"}))
    CreateClusterSnapshotMessage.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tag instances.</p>"}))
    CreateClusterSnapshotMessage.type = Types::CreateClusterSnapshotMessage
    CreateClusterSnapshotResult.add_member(:snapshot, Smithy::Schema::Shapes::ShapeRef.new(shape: Snapshot, location_name: 'Snapshot'))
    CreateClusterSnapshotResult.type = Types::CreateClusterSnapshotResult
    CreateClusterSubnetGroupMessage.add_member(:cluster_subnet_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterSubnetGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name for the subnet group. Amazon Redshift stores the value as a lowercase\n            string.</p>\n         <p>Constraints:</p>\n         <ul>\n            <li>\n               <p>Must contain no more than 255 alphanumeric characters or hyphens.</p>\n            </li>\n            <li>\n               <p>Must not be \"Default\".</p>\n            </li>\n            <li>\n               <p>Must be unique for all subnet groups that are created by your Amazon Web Services account.</p>\n            </li>\n         </ul>\n         <p>Example: <code>examplesubnetgroup</code>\n         </p>", "smithy.api#required" => {}}))
    CreateClusterSubnetGroupMessage.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>A description for the subnet group.</p>", "smithy.api#required" => {}}))
    CreateClusterSubnetGroupMessage.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIdentifierList, location_name: 'SubnetIds', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>An array of VPC subnet IDs. A maximum of 20 subnets can be modified in a single\n            request.</p>", "smithy.api#required" => {}}))
    CreateClusterSubnetGroupMessage.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tag instances.</p>"}))
    CreateClusterSubnetGroupMessage.type = Types::CreateClusterSubnetGroupMessage
    CreateClusterSubnetGroupResult.add_member(:cluster_subnet_group, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSubnetGroup, location_name: 'ClusterSubnetGroup'))
    CreateClusterSubnetGroupResult.type = Types::CreateClusterSubnetGroupResult
    CreateCustomDomainAssociationMessage.add_member(:custom_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainNameString, location_name: 'CustomDomainName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The custom domain name for a custom domain association.</p>", "smithy.api#required" => {}}))
    CreateCustomDomainAssociationMessage.add_member(:custom_domain_certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainCertificateArnString, location_name: 'CustomDomainCertificateArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The certificate Amazon Resource Name (ARN) for the custom domain name association.</p>", "smithy.api#required" => {}}))
    CreateCustomDomainAssociationMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The cluster identifier that the custom domain is associated with.</p>", "smithy.api#required" => {}}))
    CreateCustomDomainAssociationMessage.type = Types::CreateCustomDomainAssociationMessage
    CreateCustomDomainAssociationResult.add_member(:custom_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainNameString, location_name: 'CustomDomainName', traits: {"smithy.api#documentation" => "<p>The custom domain name for the association result.</p>"}))
    CreateCustomDomainAssociationResult.add_member(:custom_domain_certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainCertificateArnString, location_name: 'CustomDomainCertificateArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the certificate associated with the custom domain name.</p>"}))
    CreateCustomDomainAssociationResult.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the cluster that the custom domain is associated with.</p>"}))
    CreateCustomDomainAssociationResult.add_member(:custom_domain_cert_expiry_time, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomDomainCertExpiryTime', traits: {"smithy.api#documentation" => "<p>The expiration time for the certificate for the custom domain.</p>"}))
    CreateCustomDomainAssociationResult.type = Types::CreateCustomDomainAssociationResult
    CreateEndpointAccessMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The cluster identifier of the cluster to access.</p>"}))
    CreateEndpointAccessMessage.add_member(:resource_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceOwner', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the owner of the cluster. This is only required if the cluster is in another Amazon Web Services account.</p>"}))
    CreateEndpointAccessMessage.add_member(:endpoint_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Redshift-managed VPC endpoint name.</p>\n         <p>An endpoint name must contain 1-30 characters.\n          Valid characters are A-Z, a-z, 0-9, and hyphen(-).\n          The first character must be a letter.\n          The name can't contain two consecutive hyphens or end with a hyphen.</p>", "smithy.api#required" => {}}))
    CreateEndpointAccessMessage.add_member(:subnet_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubnetGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The subnet group from which Amazon Redshift chooses the subnet to deploy the endpoint.</p>", "smithy.api#required" => {}}))
    CreateEndpointAccessMessage.add_member(:vpc_security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: 'VpcSecurityGroupIds', traits: {"smithy.api#documentation" => "<p>The security group that defines the ports, protocols, and sources for inbound traffic that you are authorizing into your endpoint.</p>"}))
    CreateEndpointAccessMessage.type = Types::CreateEndpointAccessMessage
    CreateEndpointAccessOutput.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The cluster identifier of the cluster associated with the endpoint.</p>"}))
    CreateEndpointAccessOutput.add_member(:resource_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceOwner', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the owner of the cluster.</p>"}))
    CreateEndpointAccessOutput.add_member(:subnet_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubnetGroupName', traits: {"smithy.api#documentation" => "<p>The subnet group name where Amazon Redshift chooses to deploy the endpoint.</p>"}))
    CreateEndpointAccessOutput.add_member(:endpoint_status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointStatus', traits: {"smithy.api#documentation" => "<p>The status of the endpoint.</p>"}))
    CreateEndpointAccessOutput.add_member(:endpoint_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointName', traits: {"smithy.api#documentation" => "<p>The name of the endpoint.</p>"}))
    CreateEndpointAccessOutput.add_member(:endpoint_create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'EndpointCreateTime', traits: {"smithy.api#documentation" => "<p>The time (UTC) that the endpoint was created.</p>"}))
    CreateEndpointAccessOutput.add_member(:port, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Port', traits: {"smithy.api#documentation" => "<p>The port number on which the cluster accepts incoming connections.</p>"}))
    CreateEndpointAccessOutput.add_member(:address, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Address', traits: {"smithy.api#documentation" => "<p>The DNS address of the endpoint.</p>"}))
    CreateEndpointAccessOutput.add_member(:vpc_security_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupMembershipList, location_name: 'VpcSecurityGroups', traits: {"smithy.api#documentation" => "<p>The security groups associated with the endpoint.</p>"}))
    CreateEndpointAccessOutput.add_member(:vpc_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpoint, location_name: 'VpcEndpoint'))
    CreateEndpointAccessOutput.type = Types::CreateEndpointAccessOutput
    CreateEventSubscriptionMessage.add_member(:subscription_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubscriptionName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the event subscription to be created.</p>\n         <p>Constraints:</p>\n         <ul>\n            <li>\n               <p>Cannot be null, empty, or blank.</p>\n            </li>\n            <li>\n               <p>Must contain from 1 to 255 alphanumeric characters or hyphens.</p>\n            </li>\n            <li>\n               <p>First character must be a letter.</p>\n            </li>\n            <li>\n               <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CreateEventSubscriptionMessage.add_member(:sns_topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnsTopicArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon SNS topic used to transmit the event\n            notifications. The ARN is created by Amazon SNS when you create a topic and subscribe to\n            it.</p>", "smithy.api#required" => {}}))
    CreateEventSubscriptionMessage.add_member(:source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceType', traits: {"smithy.api#documentation" => "<p>The type of source that will be generating the events. For example, if you want to\n            be notified of events generated by a cluster, you would set this parameter to cluster.\n            If this value is not specified, events are returned for all Amazon Redshift objects in your\n            Amazon Web Services account. You must specify a source type in order to specify source IDs.</p>\n         <p>Valid values: cluster, cluster-parameter-group, cluster-security-group, cluster-snapshot, and scheduled-action.</p>"}))
    CreateEventSubscriptionMessage.add_member(:source_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceIdsList, location_name: 'SourceIds', traits: {"smithy.api#documentation" => "<p>A list of one or more identifiers of Amazon Redshift source objects. All of the objects\n            must be of the same type as was specified in the source type parameter. The event\n            subscription will return only events generated by the specified objects. If not\n            specified, then events are returned for all objects within the source type\n            specified.</p>\n         <p>Example: my-cluster-1, my-cluster-2</p>\n         <p>Example: my-snapshot-20131010</p>"}))
    CreateEventSubscriptionMessage.add_member(:event_categories, Smithy::Schema::Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: 'EventCategories', traits: {"smithy.api#documentation" => "<p>Specifies the Amazon Redshift event categories to be published by the event notification\n            subscription.</p>\n         <p>Values: configuration, management, monitoring, security, pending</p>"}))
    CreateEventSubscriptionMessage.add_member(:severity, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Severity', traits: {"smithy.api#documentation" => "<p>Specifies the Amazon Redshift event severity to be published by the event notification\n            subscription.</p>\n         <p>Values: ERROR, INFO</p>"}))
    CreateEventSubscriptionMessage.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>A boolean value; set to <code>true</code> to activate the subscription, and set to\n                <code>false</code> to create the subscription but not activate it. </p>"}))
    CreateEventSubscriptionMessage.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tag instances.</p>"}))
    CreateEventSubscriptionMessage.type = Types::CreateEventSubscriptionMessage
    CreateEventSubscriptionResult.add_member(:event_subscription, Smithy::Schema::Shapes::ShapeRef.new(shape: EventSubscription, location_name: 'EventSubscription'))
    CreateEventSubscriptionResult.type = Types::CreateEventSubscriptionResult
    CreateHsmClientCertificateMessage.add_member(:hsm_client_certificate_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmClientCertificateIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The identifier to be assigned to the new HSM client certificate that the cluster\n            will use to connect to the HSM to use the database encryption keys.</p>", "smithy.api#required" => {}}))
    CreateHsmClientCertificateMessage.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tag instances.</p>"}))
    CreateHsmClientCertificateMessage.type = Types::CreateHsmClientCertificateMessage
    CreateHsmClientCertificateResult.add_member(:hsm_client_certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: HsmClientCertificate, location_name: 'HsmClientCertificate'))
    CreateHsmClientCertificateResult.type = Types::CreateHsmClientCertificateResult
    CreateHsmConfigurationMessage.add_member(:hsm_configuration_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmConfigurationIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The identifier to be assigned to the new Amazon Redshift HSM configuration.</p>", "smithy.api#required" => {}}))
    CreateHsmConfigurationMessage.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>A text description of the HSM configuration to be created.</p>", "smithy.api#required" => {}}))
    CreateHsmConfigurationMessage.add_member(:hsm_ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmIpAddress', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The IP address that the Amazon Redshift cluster must use to access the HSM.</p>", "smithy.api#required" => {}}))
    CreateHsmConfigurationMessage.add_member(:hsm_partition_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmPartitionName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the partition in the HSM where the Amazon Redshift clusters will store their\n            database encryption keys.</p>", "smithy.api#required" => {}}))
    CreateHsmConfigurationMessage.add_member(:hsm_partition_password, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmPartitionPassword', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The password required to access the HSM partition.</p>", "smithy.api#required" => {}}))
    CreateHsmConfigurationMessage.add_member(:hsm_server_public_certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmServerPublicCertificate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The HSMs public certificate file. When using Cloud HSM, the file name is\n            server.pem.</p>", "smithy.api#required" => {}}))
    CreateHsmConfigurationMessage.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tag instances.</p>"}))
    CreateHsmConfigurationMessage.type = Types::CreateHsmConfigurationMessage
    CreateHsmConfigurationResult.add_member(:hsm_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: HsmConfiguration, location_name: 'HsmConfiguration'))
    CreateHsmConfigurationResult.type = Types::CreateHsmConfigurationResult
    CreateIntegrationMessage.add_member(:source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceArn, location_name: 'SourceArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the database to use as the source for replication.</p>", "smithy.api#required" => {}}))
    CreateIntegrationMessage.add_member(:target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetArn, location_name: 'TargetArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Redshift data warehouse to use as the target for replication.</p>", "smithy.api#required" => {}}))
    CreateIntegrationMessage.add_member(:integration_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationName, location_name: 'IntegrationName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the integration.</p>", "smithy.api#required" => {}}))
    CreateIntegrationMessage.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KMSKeyId', traits: {"smithy.api#documentation" => "<p>An Key Management Service (KMS) key identifier for the key to use to\n            encrypt the integration. If you don't specify an encryption key, the default\n            Amazon Web Services owned key is used.</p>"}))
    CreateIntegrationMessage.add_member(:tag_list, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList', traits: {"smithy.api#documentation" => "<p>A list of tags.</p>"}))
    CreateIntegrationMessage.add_member(:additional_encryption_context, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionContextMap, location_name: 'AdditionalEncryptionContext', traits: {"smithy.api#documentation" => "<p>An optional set of non-secret key–value pairs that contains additional contextual\n            information about the data. For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context\">Encryption\n                context</a> in the <i>Amazon Web Services Key Management Service Developer\n                    Guide</i>.</p>\n         <p>You can only include this parameter if you specify the <code>KMSKeyId</code> parameter.</p>"}))
    CreateIntegrationMessage.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the integration.</p>"}))
    CreateIntegrationMessage.type = Types::CreateIntegrationMessage
    CreateIntegrationOutput.add_member(:integration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationArn, location_name: 'IntegrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the integration.</p>"}))
    CreateIntegrationOutput.add_member(:integration_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationName, location_name: 'IntegrationName', traits: {"smithy.api#documentation" => "<p>The name of the integration.</p>"}))
    CreateIntegrationOutput.add_member(:source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceArn, location_name: 'SourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the database used as the source for\n            replication.</p>"}))
    CreateIntegrationOutput.add_member(:target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetArn, location_name: 'TargetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Redshift data warehouse to use as the target for replication.</p>"}))
    CreateIntegrationOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ZeroETLIntegrationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the integration.</p>"}))
    CreateIntegrationOutput.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationErrorList, location_name: 'Errors', traits: {"smithy.api#documentation" => "<p>Any errors associated with the integration.</p>"}))
    CreateIntegrationOutput.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CreateTime', traits: {"smithy.api#documentation" => "<p>The time (UTC) when the integration was created.</p>"}))
    CreateIntegrationOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the integration.</p>"}))
    CreateIntegrationOutput.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KMSKeyId', traits: {"smithy.api#documentation" => "<p>The Key Management Service (KMS) key identifier for the key used to\n            encrypt the integration.</p>"}))
    CreateIntegrationOutput.add_member(:additional_encryption_context, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionContextMap, location_name: 'AdditionalEncryptionContext', traits: {"smithy.api#documentation" => "<p>The encryption context for the integration. For more information, \n            see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context\">Encryption context</a> in the <i>Amazon Web Services Key Management Service Developer\n                Guide</i>.</p>"}))
    CreateIntegrationOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of tags associated with the integration.</p>"}))
    CreateIntegrationOutput.type = Types::CreateIntegrationOutput
    CreateRedshiftIdcApplicationMessage.add_member(:idc_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IdcInstanceArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon resource name (ARN) of the IAM Identity Center instance where Amazon Redshift creates a new managed application.</p>", "smithy.api#required" => {}}))
    CreateRedshiftIdcApplicationMessage.add_member(:redshift_idc_application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftIdcApplicationName, location_name: 'RedshiftIdcApplicationName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the Redshift application in IAM Identity Center.</p>", "smithy.api#required" => {}}))
    CreateRedshiftIdcApplicationMessage.add_member(:identity_namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityNamespaceString, location_name: 'IdentityNamespace', traits: {"smithy.api#documentation" => "<p>The namespace for the Amazon Redshift IAM Identity Center application instance. It determines which managed application \n            verifies the connection token.</p>"}))
    CreateRedshiftIdcApplicationMessage.add_member(:idc_display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IdcDisplayNameString, location_name: 'IdcDisplayName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The display name for the Amazon Redshift IAM Identity Center application instance. It appears in the console.</p>", "smithy.api#required" => {}}))
    CreateRedshiftIdcApplicationMessage.add_member(:iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IamRoleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The IAM role ARN for the Amazon Redshift IAM Identity Center application instance. It has the required permissions \n            to be assumed and invoke the IDC Identity Center API.</p>", "smithy.api#required" => {}}))
    CreateRedshiftIdcApplicationMessage.add_member(:authorized_token_issuer_list, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizedTokenIssuerList, location_name: 'AuthorizedTokenIssuerList', traits: {"smithy.api#documentation" => "<p>The token issuer list for the Amazon Redshift IAM Identity Center application instance.</p>"}))
    CreateRedshiftIdcApplicationMessage.add_member(:service_integrations, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceIntegrationList, location_name: 'ServiceIntegrations', traits: {"smithy.api#documentation" => "<p>A collection of service integrations for the Redshift IAM Identity Center application.</p>"}))
    CreateRedshiftIdcApplicationMessage.type = Types::CreateRedshiftIdcApplicationMessage
    CreateRedshiftIdcApplicationResult.add_member(:redshift_idc_application, Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftIdcApplication, location_name: 'RedshiftIdcApplication'))
    CreateRedshiftIdcApplicationResult.type = Types::CreateRedshiftIdcApplicationResult
    CreateScheduledActionMessage.add_member(:scheduled_action_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduledActionName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the scheduled action. The name must be unique within an account. \n            For more information about this parameter, see <a>ScheduledAction</a>. </p>", "smithy.api#required" => {}}))
    CreateScheduledActionMessage.add_member(:target_action, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionType, location_name: 'TargetAction', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>A JSON format string of the Amazon Redshift API operation with input parameters. \n            For more information about this parameter, see <a>ScheduledAction</a>. </p>", "smithy.api#required" => {}}))
    CreateScheduledActionMessage.add_member(:schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Schedule', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The schedule in <code>at( )</code> or <code>cron( )</code> format. \n            For more information about this parameter, see <a>ScheduledAction</a>.</p>", "smithy.api#required" => {}}))
    CreateScheduledActionMessage.add_member(:iam_role, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IamRole', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The IAM role to assume to run the target action. \n            For more information about this parameter, see <a>ScheduledAction</a>. </p>", "smithy.api#required" => {}}))
    CreateScheduledActionMessage.add_member(:scheduled_action_description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduledActionDescription', traits: {"smithy.api#documentation" => "<p>The description of the scheduled action. \n            </p>"}))
    CreateScheduledActionMessage.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The start time in UTC of the scheduled action. \n            Before this time, the scheduled action does not trigger.\n            For more information about this parameter, see <a>ScheduledAction</a>.</p>"}))
    CreateScheduledActionMessage.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The end time in UTC of the scheduled action. After this time, the scheduled action does not trigger. \n            For more information about this parameter, see <a>ScheduledAction</a>. </p>"}))
    CreateScheduledActionMessage.add_member(:enable, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'Enable', traits: {"smithy.api#documentation" => "<p>If true, the schedule is enabled. If false, the scheduled action does not trigger. \n            For more information about <code>state</code> of the scheduled action, see <a>ScheduledAction</a>. </p>"}))
    CreateScheduledActionMessage.type = Types::CreateScheduledActionMessage
    CreateScheduledActionOutput.add_member(:scheduled_action_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduledActionName', traits: {"smithy.api#documentation" => "<p>The name of the scheduled action. </p>"}))
    CreateScheduledActionOutput.add_member(:target_action, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionType, location_name: 'TargetAction', traits: {"smithy.api#documentation" => "<p>A JSON format string of the Amazon Redshift API operation with input parameters. </p>\n         <p>\"<code>{\\\"ResizeCluster\\\":{\\\"NodeType\\\":\\\"ra3.4xlarge\\\",\\\"ClusterIdentifier\\\":\\\"my-test-cluster\\\",\\\"NumberOfNodes\\\":3}}</code>\". </p>"}))
    CreateScheduledActionOutput.add_member(:schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Schedule', traits: {"smithy.api#documentation" => "<p>The schedule for a one-time (at format) or recurring (cron format) scheduled action. \n            Schedule invocations must be separated by at least one hour.</p>\n         <p>Format of at expressions is \"<code>at(yyyy-mm-ddThh:mm:ss)</code>\". For example, \"<code>at(2016-03-04T17:27:00)</code>\".</p>\n         <p>Format of cron expressions is \"<code>cron(Minutes Hours Day-of-month Month Day-of-week Year)</code>\". \n            For example, \"<code>cron(0 10 ? * MON *)</code>\". For more information, see \n            <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html#CronExpressions\">Cron Expressions</a> \n            in the <i>Amazon CloudWatch Events User Guide</i>.</p>"}))
    CreateScheduledActionOutput.add_member(:iam_role, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IamRole', traits: {"smithy.api#documentation" => "<p>The IAM role to assume to run the scheduled action. \n            This IAM role must have permission to run the Amazon Redshift API operation in the scheduled action.\n            This IAM role must allow the Amazon Redshift scheduler (Principal scheduler.redshift.amazonaws.com) to assume permissions on your behalf.\n               \nFor more information about the IAM role to use with the Amazon Redshift scheduler, see \n<a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-identity-based.html\">Using Identity-Based Policies for Amazon Redshift</a> \nin the <i>Amazon Redshift Cluster Management Guide</i>.\n</p>"}))
    CreateScheduledActionOutput.add_member(:scheduled_action_description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduledActionDescription', traits: {"smithy.api#documentation" => "<p>The description of the scheduled action. </p>"}))
    CreateScheduledActionOutput.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the scheduled action. For example, <code>DISABLED</code>. </p>"}))
    CreateScheduledActionOutput.add_member(:next_invocations, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionTimeList, location_name: 'NextInvocations', traits: {"smithy.api#documentation" => "<p>List of times when the scheduled action will run. </p>"}))
    CreateScheduledActionOutput.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The start time in UTC when the schedule is active. Before this time, the scheduled action does not trigger. </p>"}))
    CreateScheduledActionOutput.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The end time in UTC when the schedule is no longer active. After this time, the scheduled action does not trigger. </p>"}))
    CreateScheduledActionOutput.type = Types::CreateScheduledActionOutput
    CreateSnapshotCopyGrantMessage.add_member(:snapshot_copy_grant_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotCopyGrantName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the snapshot copy grant. This name must be unique in the region for the\n            Amazon Web Services account.</p>\n         <p>Constraints:</p>\n         <ul>\n            <li>\n               <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p>\n            </li>\n            <li>\n               <p>Alphabetic characters must be lowercase.</p>\n            </li>\n            <li>\n               <p>First character must be a letter.</p>\n            </li>\n            <li>\n               <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>\n            </li>\n            <li>\n               <p>Must be unique for all clusters within an Amazon Web Services account.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CreateSnapshotCopyGrantMessage.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the encrypted symmetric key to which to grant Amazon Redshift\n            permission. If no key is specified, the default key is used.</p>"}))
    CreateSnapshotCopyGrantMessage.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tag instances.</p>"}))
    CreateSnapshotCopyGrantMessage.type = Types::CreateSnapshotCopyGrantMessage
    CreateSnapshotCopyGrantResult.add_member(:snapshot_copy_grant, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotCopyGrant, location_name: 'SnapshotCopyGrant'))
    CreateSnapshotCopyGrantResult.type = Types::CreateSnapshotCopyGrantResult
    CreateSnapshotScheduleMessage.add_member(:schedule_definitions, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleDefinitionList, location_name: 'ScheduleDefinitions', traits: {"smithy.api#documentation" => "<p>The definition of the snapshot schedule. The definition is made up of schedule\n            expressions, for example \"cron(30 12 *)\" or \"rate(12 hours)\". </p>"}))
    CreateSnapshotScheduleMessage.add_member(:schedule_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduleIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for a snapshot schedule. Only alphanumeric characters are allowed\n            for the identifier.</p>"}))
    CreateSnapshotScheduleMessage.add_member(:schedule_description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduleDescription', traits: {"smithy.api#documentation" => "<p>The description of the snapshot schedule.</p>"}))
    CreateSnapshotScheduleMessage.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An optional set of tags you can use to search for the schedule.</p>"}))
    CreateSnapshotScheduleMessage.add_member(:dry_run, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DryRun', traits: {"smithy.api#documentation" => "<p></p>"}))
    CreateSnapshotScheduleMessage.add_member(:next_invocations, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'NextInvocations', traits: {"smithy.api#documentation" => "<p></p>"}))
    CreateSnapshotScheduleMessage.type = Types::CreateSnapshotScheduleMessage
    CreateSnapshotScheduleOutput.add_member(:schedule_definitions, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleDefinitionList, location_name: 'ScheduleDefinitions', traits: {"smithy.api#documentation" => "<p>A list of ScheduleDefinitions.</p>"}))
    CreateSnapshotScheduleOutput.add_member(:schedule_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduleIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for the schedule.</p>"}))
    CreateSnapshotScheduleOutput.add_member(:schedule_description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduleDescription', traits: {"smithy.api#documentation" => "<p>The description of the schedule.</p>"}))
    CreateSnapshotScheduleOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An optional set of tags describing the schedule.</p>"}))
    CreateSnapshotScheduleOutput.add_member(:next_invocations, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledSnapshotTimeList, location_name: 'NextInvocations', traits: {"smithy.api#documentation" => "<p></p>"}))
    CreateSnapshotScheduleOutput.add_member(:associated_cluster_count, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'AssociatedClusterCount', traits: {"smithy.api#documentation" => "<p>The number of clusters associated with the schedule.</p>"}))
    CreateSnapshotScheduleOutput.add_member(:associated_clusters, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedClusterList, location_name: 'AssociatedClusters', traits: {"smithy.api#documentation" => "<p>A list of clusters associated with the schedule. A maximum of 100 clusters is returned.</p>"}))
    CreateSnapshotScheduleOutput.type = Types::CreateSnapshotScheduleOutput
    CreateTagsMessage.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) to which you want to add the tag or tags. For\n            example, <code>arn:aws:redshift:us-east-2:123456789:cluster:t1</code>. </p>", "smithy.api#required" => {}}))
    CreateTagsMessage.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>One or more name/value pairs to add as tags to the specified resource. Each tag\n            name is passed in with the parameter <code>Key</code> and the corresponding value is\n            passed in with the parameter <code>Value</code>. The <code>Key</code> and\n                <code>Value</code> parameters are separated by a comma (,). Separate multiple tags\n            with a space. For example, <code>--tags \"Key\"=\"owner\",\"Value\"=\"admin\"\n                \"Key\"=\"environment\",\"Value\"=\"test\" \"Key\"=\"version\",\"Value\"=\"1.0\"</code>. </p>", "smithy.api#required" => {}}))
    CreateTagsMessage.type = Types::CreateTagsMessage
    CreateUsageLimitMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The identifier of the cluster that you want to limit usage.</p>", "smithy.api#required" => {}}))
    CreateUsageLimitMessage.add_member(:feature_type, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitFeatureType, location_name: 'FeatureType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Redshift feature that you want to limit.</p>", "smithy.api#required" => {}}))
    CreateUsageLimitMessage.add_member(:limit_type, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitLimitType, location_name: 'LimitType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The type of limit. Depending on the feature type, this can be based on a time duration or data size.\n            If <code>FeatureType</code> is <code>spectrum</code>, then <code>LimitType</code> must be <code>data-scanned</code>.\n            If <code>FeatureType</code> is <code>concurrency-scaling</code>, then <code>LimitType</code> must be <code>time</code>.\n            If <code>FeatureType</code> is <code>cross-region-datasharing</code>, then <code>LimitType</code> must be <code>data-scanned</code>.\n           </p>", "smithy.api#required" => {}}))
    CreateUsageLimitMessage.add_member(:amount, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'Amount', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The limit amount. If time-based, this amount is in minutes. If data-based, this amount is in terabytes (TB).\n            The value must be a positive number.\n            </p>", "smithy.api#required" => {}}))
    CreateUsageLimitMessage.add_member(:period, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitPeriod, location_name: 'Period', traits: {"smithy.api#documentation" => "<p>The time period that the amount applies to. A <code>weekly</code> period begins on Sunday. The default is <code>monthly</code>. \n            </p>"}))
    CreateUsageLimitMessage.add_member(:breach_action, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitBreachAction, location_name: 'BreachAction', traits: {"smithy.api#documentation" => "<p>The action that Amazon Redshift takes when the limit is reached. The default is log. \n            For more information about this parameter, see <a>UsageLimit</a>.</p>"}))
    CreateUsageLimitMessage.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tag instances.</p>"}))
    CreateUsageLimitMessage.type = Types::CreateUsageLimitMessage
    CreateUsageLimitOutput.add_member(:usage_limit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UsageLimitId', traits: {"smithy.api#documentation" => "<p>The identifier of the usage limit.</p>"}))
    CreateUsageLimitOutput.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the cluster with a usage limit.</p>"}))
    CreateUsageLimitOutput.add_member(:feature_type, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitFeatureType, location_name: 'FeatureType', traits: {"smithy.api#documentation" => "<p>The Amazon Redshift feature to which the limit applies.</p>"}))
    CreateUsageLimitOutput.add_member(:limit_type, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitLimitType, location_name: 'LimitType', traits: {"smithy.api#documentation" => "<p>The type of limit. Depending on the feature type, this can be based on a time duration or data size.</p>"}))
    CreateUsageLimitOutput.add_member(:amount, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'Amount', traits: {"smithy.api#documentation" => "<p>The limit amount. If time-based, this amount is in minutes. If data-based, this amount is in terabytes (TB).</p>"}))
    CreateUsageLimitOutput.add_member(:period, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitPeriod, location_name: 'Period', traits: {"smithy.api#documentation" => "<p>The time period that the amount applies to. A <code>weekly</code> period begins on Sunday. The default is <code>monthly</code>. </p>"}))
    CreateUsageLimitOutput.add_member(:breach_action, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitBreachAction, location_name: 'BreachAction', traits: {"smithy.api#documentation" => "<p>The action that Amazon Redshift takes when the limit is reached. Possible values are: </p>\n         <ul>\n            <li>\n               <p>\n                  <b>log</b> - To log an event in a system table. The default is log.</p>\n            </li>\n            <li>\n               <p>\n                  <b>emit-metric</b> - To emit CloudWatch metrics.</p>\n            </li>\n            <li>\n               <p>\n                  <b>disable</b> - To disable the feature until the next usage period begins.</p>\n            </li>\n         </ul>"}))
    CreateUsageLimitOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tag instances.</p>"}))
    CreateUsageLimitOutput.type = Types::CreateUsageLimitOutput
    CustomCnameAssociationFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    CustomCnameAssociationFault.type = Types::CustomCnameAssociationFault
    CustomDomainAssociationNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    CustomDomainAssociationNotFoundFault.type = Types::CustomDomainAssociationNotFoundFault
    CustomDomainAssociationsMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>The marker for the custom domain association.</p>"}))
    CustomDomainAssociationsMessage.add_member(:associations, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociationList, location_name: 'Associations', traits: {"smithy.api#documentation" => "<p>The associations for the custom domain.</p>"}))
    CustomDomainAssociationsMessage.type = Types::CustomDomainAssociationsMessage
    CustomerStorageMessage.add_member(:total_backup_size_in_mega_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'TotalBackupSizeInMegaBytes', traits: {"smithy.api#documentation" => "<p>The total amount of storage currently used for snapshots.</p>"}))
    CustomerStorageMessage.add_member(:total_provisioned_storage_in_mega_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'TotalProvisionedStorageInMegaBytes', traits: {"smithy.api#documentation" => "<p>The total amount of storage currently provisioned.</p>"}))
    CustomerStorageMessage.type = Types::CustomerStorageMessage
    DataShare.add_member(:data_share_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataShareArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the datashare that the consumer is to use.</p>"}))
    DataShare.add_member(:producer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProducerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the producer namespace.</p>"}))
    DataShare.add_member(:allow_publicly_accessible_consumers, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllowPubliclyAccessibleConsumers', traits: {"smithy.api#documentation" => "<p>A value that specifies whether the datashare can be shared to a publicly accessible  cluster.</p>"}))
    DataShare.add_member(:data_share_associations, Smithy::Schema::Shapes::ShapeRef.new(shape: DataShareAssociationList, location_name: 'DataShareAssociations', traits: {"smithy.api#documentation" => "<p>A value that specifies when the datashare has an association between producer and data\n            consumers.</p>"}))
    DataShare.add_member(:managed_by, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ManagedBy', traits: {"smithy.api#documentation" => "<p>The identifier of a datashare to show its managing entity.</p>"}))
    DataShare.add_member(:data_share_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DataShareType, location_name: 'DataShareType', traits: {"smithy.api#documentation" => "<p> The type of the datashare created by RegisterNamespace.</p>"}))
    DataShare.type = Types::DataShare
    DataShareAssociation.add_member(:consumer_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConsumerIdentifier', traits: {"smithy.api#documentation" => "<p>The name of the consumer accounts that have an association with a producer\n            datashare.</p>"}))
    DataShareAssociation.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DataShareStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the datashare that is associated.</p>"}))
    DataShareAssociation.add_member(:consumer_region, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConsumerRegion', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region of the consumer accounts that have an association with a producer datashare.</p>"}))
    DataShareAssociation.add_member(:created_date, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CreatedDate', traits: {"smithy.api#documentation" => "<p>The creation date of the datashare that is associated.</p>"}))
    DataShareAssociation.add_member(:status_change_date, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'StatusChangeDate', traits: {"smithy.api#documentation" => "<p>The status change data of the datashare that is associated.</p>"}))
    DataShareAssociation.add_member(:producer_allowed_writes, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'ProducerAllowedWrites', traits: {"smithy.api#documentation" => "<p>Specifies whether write operations were allowed during data share authorization.</p>"}))
    DataShareAssociation.add_member(:consumer_accepted_writes, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'ConsumerAcceptedWrites', traits: {"smithy.api#documentation" => "<p>Specifies whether write operations were allowed during data share association.</p>"}))
    DataShareAssociation.type = Types::DataShareAssociation
    DataShareAssociationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataShareAssociation)
    DataShareList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataShare)
    DataShareStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DataShareStatus.add_member(:pending_authorization, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_AUTHORIZATION', traits: {"smithy.api#enumValue" => "PENDING_AUTHORIZATION"}))
    DataShareStatus.add_member(:authorized, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTHORIZED', traits: {"smithy.api#enumValue" => "AUTHORIZED"}))
    DataShareStatus.add_member(:deauthorized, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEAUTHORIZED', traits: {"smithy.api#enumValue" => "DEAUTHORIZED"}))
    DataShareStatus.add_member(:rejected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECTED', traits: {"smithy.api#enumValue" => "REJECTED"}))
    DataShareStatus.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    DataShareStatusForConsumer.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DataShareStatusForConsumer.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    DataShareStatusForProducer.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DataShareStatusForProducer.add_member(:authorized, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTHORIZED', traits: {"smithy.api#enumValue" => "AUTHORIZED"}))
    DataShareStatusForProducer.add_member(:pending_authorization, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_AUTHORIZATION', traits: {"smithy.api#enumValue" => "PENDING_AUTHORIZATION"}))
    DataShareStatusForProducer.add_member(:deauthorized, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEAUTHORIZED', traits: {"smithy.api#enumValue" => "DEAUTHORIZED"}))
    DataShareStatusForProducer.add_member(:rejected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECTED', traits: {"smithy.api#enumValue" => "REJECTED"}))
    DataShareType.add_member(:internal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL', traits: {"smithy.api#enumValue" => "INTERNAL"}))
    DataTransferProgress.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Describes the status of the cluster. While the transfer is in progress the status is\n                <code>transferringdata</code>.</p>"}))
    DataTransferProgress.add_member(:current_rate_in_mega_bytes_per_second, Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'CurrentRateInMegaBytesPerSecond', traits: {"smithy.api#documentation" => "<p>Describes the data transfer rate in MB's per second.</p>"}))
    DataTransferProgress.add_member(:total_data_in_mega_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'TotalDataInMegaBytes', traits: {"smithy.api#documentation" => "<p>Describes the total amount of data to be transfered in megabytes.</p>"}))
    DataTransferProgress.add_member(:data_transferred_in_mega_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'DataTransferredInMegaBytes', traits: {"smithy.api#documentation" => "<p>Describes the total amount of data that has been transfered in MB's.</p>"}))
    DataTransferProgress.add_member(:estimated_time_to_completion_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: 'EstimatedTimeToCompletionInSeconds', traits: {"smithy.api#documentation" => "<p>Describes the estimated number of seconds remaining to complete the transfer.</p>"}))
    DataTransferProgress.add_member(:elapsed_time_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: 'ElapsedTimeInSeconds', traits: {"smithy.api#documentation" => "<p>Describes the number of seconds that have elapsed during the data transfer.</p>"}))
    DataTransferProgress.type = Types::DataTransferProgress
    DbGroupList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "DbGroup"})
    DeauthorizeDataShareMessage.add_member(:data_share_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataShareArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The namespace Amazon Resource Name (ARN) of the datashare to remove authorization from.</p>", "smithy.api#required" => {}}))
    DeauthorizeDataShareMessage.add_member(:consumer_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConsumerIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The identifier of the data consumer that is to have authorization removed from the datashare. \n            This identifier is an Amazon Web Services account ID or a keyword, such as ADX.</p>", "smithy.api#required" => {}}))
    DeauthorizeDataShareMessage.type = Types::DeauthorizeDataShareMessage
    DeauthorizeDataShareOutput.add_member(:data_share_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataShareArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the datashare that the consumer is to use.</p>"}))
    DeauthorizeDataShareOutput.add_member(:producer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProducerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the producer namespace.</p>"}))
    DeauthorizeDataShareOutput.add_member(:allow_publicly_accessible_consumers, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllowPubliclyAccessibleConsumers', traits: {"smithy.api#documentation" => "<p>A value that specifies whether the datashare can be shared to a publicly accessible  cluster.</p>"}))
    DeauthorizeDataShareOutput.add_member(:data_share_associations, Smithy::Schema::Shapes::ShapeRef.new(shape: DataShareAssociationList, location_name: 'DataShareAssociations', traits: {"smithy.api#documentation" => "<p>A value that specifies when the datashare has an association between producer and data\n            consumers.</p>"}))
    DeauthorizeDataShareOutput.add_member(:managed_by, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ManagedBy', traits: {"smithy.api#documentation" => "<p>The identifier of a datashare to show its managing entity.</p>"}))
    DeauthorizeDataShareOutput.add_member(:data_share_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DataShareType, location_name: 'DataShareType', traits: {"smithy.api#documentation" => "<p> The type of the datashare created by RegisterNamespace.</p>"}))
    DeauthorizeDataShareOutput.type = Types::DeauthorizeDataShareOutput
    DefaultClusterParameters.add_member(:parameter_group_family, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupFamily', traits: {"smithy.api#documentation" => "<p>The name of the cluster parameter group family to which the engine default\n            parameters apply.</p>"}))
    DefaultClusterParameters.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>A value that indicates the starting point for the next set of response records in a\n            subsequent request. If a value is returned in a response, you can retrieve the next set\n            of records by providing this returned marker value in the <code>Marker</code> parameter\n            and retrying the command. If the <code>Marker</code> field is empty, all response\n            records have been retrieved for the request. </p>"}))
    DefaultClusterParameters.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersList, location_name: 'Parameters', traits: {"smithy.api#documentation" => "<p>The list of cluster default parameters.</p>"}))
    DefaultClusterParameters.type = Types::DefaultClusterParameters
    DeferredMaintenanceWindow.add_member(:defer_maintenance_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeferMaintenanceIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for the maintenance window.</p>"}))
    DeferredMaintenanceWindow.add_member(:defer_maintenance_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'DeferMaintenanceStartTime', traits: {"smithy.api#documentation" => "<p> A timestamp for the beginning of the time period when we defer maintenance.</p>"}))
    DeferredMaintenanceWindow.add_member(:defer_maintenance_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'DeferMaintenanceEndTime', traits: {"smithy.api#documentation" => "<p> A timestamp for the end of the time period when we defer maintenance.</p>"}))
    DeferredMaintenanceWindow.type = Types::DeferredMaintenanceWindow
    DeferredMaintenanceWindowsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DeferredMaintenanceWindow, traits: {"smithy.api#xmlName" => "DeferredMaintenanceWindow"})
    DeleteAuthenticationProfileMessage.add_member(:authentication_profile_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationProfileNameString, location_name: 'AuthenticationProfileName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the authentication profile to delete.</p>", "smithy.api#required" => {}}))
    DeleteAuthenticationProfileMessage.type = Types::DeleteAuthenticationProfileMessage
    DeleteAuthenticationProfileResult.add_member(:authentication_profile_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationProfileNameString, location_name: 'AuthenticationProfileName', traits: {"smithy.api#documentation" => "<p>The name of the authentication profile that was deleted.</p>"}))
    DeleteAuthenticationProfileResult.type = Types::DeleteAuthenticationProfileResult
    DeleteClusterMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The identifier of the cluster to be deleted.</p>\n         <p>Constraints:</p>\n         <ul>\n            <li>\n               <p>Must contain lowercase characters.</p>\n            </li>\n            <li>\n               <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p>\n            </li>\n            <li>\n               <p>First character must be a letter.</p>\n            </li>\n            <li>\n               <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    DeleteClusterMessage.add_member(:skip_final_cluster_snapshot, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SkipFinalClusterSnapshot', traits: {"smithy.api#documentation" => "<p>Determines whether a final snapshot of the cluster is created before Amazon Redshift\n            deletes the cluster. If <code>true</code>, a final cluster snapshot is not created. If\n                <code>false</code>, a final cluster snapshot is created before the cluster is\n            deleted. </p>\n         <note>\n            <p>The <i>FinalClusterSnapshotIdentifier</i> parameter must be\n                specified if <i>SkipFinalClusterSnapshot</i> is\n                <code>false</code>.</p>\n         </note>\n         <p>Default: <code>false</code>\n         </p>"}))
    DeleteClusterMessage.add_member(:final_cluster_snapshot_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FinalClusterSnapshotIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the final snapshot that is to be created immediately before\n            deleting the cluster. If this parameter is provided,\n                <i>SkipFinalClusterSnapshot</i> must be <code>false</code>. </p>\n         <p>Constraints:</p>\n         <ul>\n            <li>\n               <p>Must be 1 to 255 alphanumeric characters.</p>\n            </li>\n            <li>\n               <p>First character must be a letter.</p>\n            </li>\n            <li>\n               <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>\n            </li>\n         </ul>"}))
    DeleteClusterMessage.add_member(:final_cluster_snapshot_retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'FinalClusterSnapshotRetentionPeriod', traits: {"smithy.api#documentation" => "<p>The number of days that a manual snapshot is retained. If the value is -1, the manual\n            snapshot is retained indefinitely.</p>\n         <p>The value must be either -1 or an integer between 1 and 3,653.</p>\n         <p>The default value is -1.</p>"}))
    DeleteClusterMessage.type = Types::DeleteClusterMessage
    DeleteClusterParameterGroupMessage.add_member(:parameter_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the parameter group to be deleted.</p>\n         <p>Constraints:</p>\n         <ul>\n            <li>\n               <p>Must be the name of an existing cluster parameter group.</p>\n            </li>\n            <li>\n               <p>Cannot delete a default cluster parameter group.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    DeleteClusterParameterGroupMessage.type = Types::DeleteClusterParameterGroupMessage
    DeleteClusterResult.add_member(:cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster'))
    DeleteClusterResult.type = Types::DeleteClusterResult
    DeleteClusterSecurityGroupMessage.add_member(:cluster_security_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterSecurityGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the cluster security group to be deleted.</p>", "smithy.api#required" => {}}))
    DeleteClusterSecurityGroupMessage.type = Types::DeleteClusterSecurityGroupMessage
    DeleteClusterSnapshotInput.add_member(:snapshot_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier of the manual snapshot to be deleted.</p>\n         <p>Constraints: Must be the name of an existing snapshot that is in the\n                <code>available</code>, <code>failed</code>, or <code>cancelled</code>\n            state.</p>", "smithy.api#required" => {}}))
    DeleteClusterSnapshotInput.add_member(:snapshot_cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the cluster the snapshot was created from. This parameter\n            is required if your IAM user has a policy containing a snapshot resource element that\n            specifies anything other than * for the cluster name.</p>\n         <p>Constraints: Must be the name of valid cluster.</p>"}))
    DeleteClusterSnapshotInput.type = Types::DeleteClusterSnapshotInput
    DeleteClusterSnapshotMessage.add_member(:snapshot_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier of the manual snapshot to be deleted.</p>\n         <p>Constraints: Must be the name of an existing snapshot that is in the\n                <code>available</code>, <code>failed</code>, or <code>cancelled</code>\n            state.</p>", "smithy.api#required" => {}}))
    DeleteClusterSnapshotMessage.add_member(:snapshot_cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the cluster the snapshot was created from. This parameter\n            is required if your IAM user has a policy containing a snapshot resource element that\n            specifies anything other than * for the cluster name.</p>\n         <p>Constraints: Must be the name of valid cluster.</p>"}))
    DeleteClusterSnapshotMessage.type = Types::DeleteClusterSnapshotMessage
    DeleteClusterSnapshotMessageList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterSnapshotMessage, traits: {"smithy.api#xmlName" => "DeleteClusterSnapshotMessage"})
    DeleteClusterSnapshotResult.add_member(:snapshot, Smithy::Schema::Shapes::ShapeRef.new(shape: Snapshot, location_name: 'Snapshot'))
    DeleteClusterSnapshotResult.type = Types::DeleteClusterSnapshotResult
    DeleteClusterSubnetGroupMessage.add_member(:cluster_subnet_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterSubnetGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the cluster subnet group name to be deleted.</p>", "smithy.api#required" => {}}))
    DeleteClusterSubnetGroupMessage.type = Types::DeleteClusterSubnetGroupMessage
    DeleteCustomDomainAssociationMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The identifier of the cluster to delete a custom domain association for.</p>", "smithy.api#required" => {}}))
    DeleteCustomDomainAssociationMessage.add_member(:custom_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainNameString, location_name: 'CustomDomainName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The custom domain name for the custom domain association.</p>", "smithy.api#required" => {}}))
    DeleteCustomDomainAssociationMessage.type = Types::DeleteCustomDomainAssociationMessage
    DeleteEndpointAccessMessage.add_member(:endpoint_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Redshift-managed VPC endpoint to delete.</p>", "smithy.api#required" => {}}))
    DeleteEndpointAccessMessage.type = Types::DeleteEndpointAccessMessage
    DeleteEndpointAccessOutput.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The cluster identifier of the cluster associated with the endpoint.</p>"}))
    DeleteEndpointAccessOutput.add_member(:resource_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceOwner', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the owner of the cluster.</p>"}))
    DeleteEndpointAccessOutput.add_member(:subnet_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubnetGroupName', traits: {"smithy.api#documentation" => "<p>The subnet group name where Amazon Redshift chooses to deploy the endpoint.</p>"}))
    DeleteEndpointAccessOutput.add_member(:endpoint_status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointStatus', traits: {"smithy.api#documentation" => "<p>The status of the endpoint.</p>"}))
    DeleteEndpointAccessOutput.add_member(:endpoint_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointName', traits: {"smithy.api#documentation" => "<p>The name of the endpoint.</p>"}))
    DeleteEndpointAccessOutput.add_member(:endpoint_create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'EndpointCreateTime', traits: {"smithy.api#documentation" => "<p>The time (UTC) that the endpoint was created.</p>"}))
    DeleteEndpointAccessOutput.add_member(:port, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Port', traits: {"smithy.api#documentation" => "<p>The port number on which the cluster accepts incoming connections.</p>"}))
    DeleteEndpointAccessOutput.add_member(:address, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Address', traits: {"smithy.api#documentation" => "<p>The DNS address of the endpoint.</p>"}))
    DeleteEndpointAccessOutput.add_member(:vpc_security_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupMembershipList, location_name: 'VpcSecurityGroups', traits: {"smithy.api#documentation" => "<p>The security groups associated with the endpoint.</p>"}))
    DeleteEndpointAccessOutput.add_member(:vpc_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpoint, location_name: 'VpcEndpoint'))
    DeleteEndpointAccessOutput.type = Types::DeleteEndpointAccessOutput
    DeleteEventSubscriptionMessage.add_member(:subscription_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubscriptionName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the Amazon Redshift event notification subscription to be deleted.</p>", "smithy.api#required" => {}}))
    DeleteEventSubscriptionMessage.type = Types::DeleteEventSubscriptionMessage
    DeleteHsmClientCertificateMessage.add_member(:hsm_client_certificate_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmClientCertificateIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The identifier of the HSM client certificate to be deleted.</p>", "smithy.api#required" => {}}))
    DeleteHsmClientCertificateMessage.type = Types::DeleteHsmClientCertificateMessage
    DeleteHsmConfigurationMessage.add_member(:hsm_configuration_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmConfigurationIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The identifier of the Amazon Redshift HSM configuration to be deleted.</p>", "smithy.api#required" => {}}))
    DeleteHsmConfigurationMessage.type = Types::DeleteHsmConfigurationMessage
    DeleteIntegrationMessage.add_member(:integration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationArn, location_name: 'IntegrationArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier of the integration to delete.</p>", "smithy.api#required" => {}}))
    DeleteIntegrationMessage.type = Types::DeleteIntegrationMessage
    DeleteIntegrationOutput.add_member(:integration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationArn, location_name: 'IntegrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the integration.</p>"}))
    DeleteIntegrationOutput.add_member(:integration_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationName, location_name: 'IntegrationName', traits: {"smithy.api#documentation" => "<p>The name of the integration.</p>"}))
    DeleteIntegrationOutput.add_member(:source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceArn, location_name: 'SourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the database used as the source for\n            replication.</p>"}))
    DeleteIntegrationOutput.add_member(:target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetArn, location_name: 'TargetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Redshift data warehouse to use as the target for replication.</p>"}))
    DeleteIntegrationOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ZeroETLIntegrationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the integration.</p>"}))
    DeleteIntegrationOutput.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationErrorList, location_name: 'Errors', traits: {"smithy.api#documentation" => "<p>Any errors associated with the integration.</p>"}))
    DeleteIntegrationOutput.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CreateTime', traits: {"smithy.api#documentation" => "<p>The time (UTC) when the integration was created.</p>"}))
    DeleteIntegrationOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the integration.</p>"}))
    DeleteIntegrationOutput.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KMSKeyId', traits: {"smithy.api#documentation" => "<p>The Key Management Service (KMS) key identifier for the key used to\n            encrypt the integration.</p>"}))
    DeleteIntegrationOutput.add_member(:additional_encryption_context, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionContextMap, location_name: 'AdditionalEncryptionContext', traits: {"smithy.api#documentation" => "<p>The encryption context for the integration. For more information, \n            see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context\">Encryption context</a> in the <i>Amazon Web Services Key Management Service Developer\n                Guide</i>.</p>"}))
    DeleteIntegrationOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of tags associated with the integration.</p>"}))
    DeleteIntegrationOutput.type = Types::DeleteIntegrationOutput
    DeletePartnerInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationAccountId, location_name: 'AccountId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Web Services account ID that owns the cluster.</p>", "smithy.api#required" => {}}))
    DeletePartnerInput.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationClusterIdentifier, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The cluster identifier of the cluster that receives data from the partner.</p>", "smithy.api#required" => {}}))
    DeletePartnerInput.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationDatabaseName, location_name: 'DatabaseName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the database that receives data from the partner.</p>", "smithy.api#required" => {}}))
    DeletePartnerInput.add_member(:partner_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationPartnerName, location_name: 'PartnerName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the partner that is authorized to send data.</p>", "smithy.api#required" => {}}))
    DeletePartnerInput.type = Types::DeletePartnerInput
    DeletePartnerOutput.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationDatabaseName, location_name: 'DatabaseName', traits: {"smithy.api#documentation" => "<p>The name of the database that receives data from the partner.</p>"}))
    DeletePartnerOutput.add_member(:partner_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationPartnerName, location_name: 'PartnerName', traits: {"smithy.api#documentation" => "<p>The name of the partner that is authorized to send data.</p>"}))
    DeletePartnerOutput.type = Types::DeletePartnerOutput
    DeleteRedshiftIdcApplicationMessage.add_member(:redshift_idc_application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RedshiftIdcApplicationArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The ARN for a deleted Amazon Redshift IAM Identity Center application.</p>", "smithy.api#required" => {}}))
    DeleteRedshiftIdcApplicationMessage.type = Types::DeleteRedshiftIdcApplicationMessage
    DeleteResourcePolicyMessage.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource of which its resource policy is deleted.</p>", "smithy.api#required" => {}}))
    DeleteResourcePolicyMessage.type = Types::DeleteResourcePolicyMessage
    DeleteScheduledActionMessage.add_member(:scheduled_action_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduledActionName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the scheduled action to delete. </p>", "smithy.api#required" => {}}))
    DeleteScheduledActionMessage.type = Types::DeleteScheduledActionMessage
    DeleteSnapshotCopyGrantMessage.add_member(:snapshot_copy_grant_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotCopyGrantName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the snapshot copy grant to delete.</p>", "smithy.api#required" => {}}))
    DeleteSnapshotCopyGrantMessage.type = Types::DeleteSnapshotCopyGrantMessage
    DeleteSnapshotScheduleMessage.add_member(:schedule_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduleIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>A unique identifier of the snapshot schedule to delete.</p>", "smithy.api#required" => {}}))
    DeleteSnapshotScheduleMessage.type = Types::DeleteSnapshotScheduleMessage
    DeleteTagsMessage.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) from which you want to remove the tag or tags. For\n            example, <code>arn:aws:redshift:us-east-2:123456789:cluster:t1</code>. </p>", "smithy.api#required" => {}}))
    DeleteTagsMessage.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The tag key that you want to delete.</p>", "smithy.api#required" => {}}))
    DeleteTagsMessage.type = Types::DeleteTagsMessage
    DeleteUsageLimitMessage.add_member(:usage_limit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UsageLimitId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The identifier of the usage limit to delete.</p>", "smithy.api#required" => {}}))
    DeleteUsageLimitMessage.type = Types::DeleteUsageLimitMessage
    DependentServiceAccessDeniedFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DependentServiceAccessDeniedFault.type = Types::DependentServiceAccessDeniedFault
    DependentServiceRequestThrottlingFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DependentServiceRequestThrottlingFault.type = Types::DependentServiceRequestThrottlingFault
    DependentServiceUnavailableFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DependentServiceUnavailableFault.type = Types::DependentServiceUnavailableFault
    DeregisterNamespaceInputMessage.add_member(:namespace_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceIdentifierUnion, location_name: 'NamespaceIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier of the cluster or \n            serverless namespace that you want to deregister.</p>", "smithy.api#required" => {}}))
    DeregisterNamespaceInputMessage.add_member(:consumer_identifiers, Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumerIdentifierList, location_name: 'ConsumerIdentifiers', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>An array containing the ID of the consumer account \n            that you want to deregister the cluster or serverless namespace from.</p>", "smithy.api#required" => {}}))
    DeregisterNamespaceInputMessage.type = Types::DeregisterNamespaceInputMessage
    DeregisterNamespaceOutputMessage.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceRegistrationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The registration status of the cluster or \n            serverless namespace.</p>"}))
    DeregisterNamespaceOutputMessage.type = Types::DeregisterNamespaceOutputMessage
    DescribeAccountAttributesMessage.add_member(:attribute_names, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeNameList, location_name: 'AttributeNames', traits: {"smithy.api#documentation" => "<p>A list of attribute names.</p>"}))
    DescribeAccountAttributesMessage.type = Types::DescribeAccountAttributesMessage
    DescribeAccountAttributesOutput.add_member(:account_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeList, location_name: 'AccountAttributes', traits: {"smithy.api#documentation" => "<p>A list of attributes assigned to an account.</p>"}))
    DescribeAccountAttributesOutput.type = Types::DescribeAccountAttributesOutput
    DescribeAuthenticationProfilesMessage.add_member(:authentication_profile_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationProfileNameString, location_name: 'AuthenticationProfileName', traits: {"smithy.api#documentation" => "<p>The name of the authentication profile to describe. If not specified then all authentication profiles owned by the account are listed.</p>"}))
    DescribeAuthenticationProfilesMessage.type = Types::DescribeAuthenticationProfilesMessage
    DescribeAuthenticationProfilesResult.add_member(:authentication_profiles, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationProfileList, location_name: 'AuthenticationProfiles', traits: {"smithy.api#documentation" => "<p>The list of authentication profiles.</p>"}))
    DescribeAuthenticationProfilesResult.type = Types::DescribeAuthenticationProfilesResult
    DescribeClusterDbRevisionsMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for a cluster whose <code>ClusterDbRevisions</code> you are\n            requesting. This parameter is case sensitive. All clusters defined for an account are\n            returned by default.</p>"}))
    DescribeClusterDbRevisionsMessage.add_member(:max_records, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords', traits: {"smithy.api#documentation" => "<p>The maximum number of response records to return in each call. If the number of\n            remaining response records exceeds the specified MaxRecords value, a value is returned\n            in the <code>marker</code> field of the response. You can retrieve the next set of\n            response records by providing the returned <code>marker</code> value in the\n                <code>marker</code> parameter and retrying the request. </p>\n         <p>Default: 100</p>\n         <p>Constraints: minimum 20, maximum 100.</p>"}))
    DescribeClusterDbRevisionsMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An optional parameter that specifies the starting point for returning a set of\n            response records. When the results of a <code>DescribeClusterDbRevisions</code> request\n            exceed the value specified in <code>MaxRecords</code>, Amazon Redshift returns a value\n            in the <code>marker</code> field of the response. You can retrieve the next set of\n            response records by providing the returned <code>marker</code> value in the\n                <code>marker</code> parameter and retrying the request. </p>\n         <p>Constraints: You can specify either the <code>ClusterIdentifier</code> parameter, or\n            the <code>marker</code> parameter, but not both.</p>"}))
    DescribeClusterDbRevisionsMessage.type = Types::DescribeClusterDbRevisionsMessage
    DescribeClusterParameterGroupsMessage.add_member(:parameter_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupName', traits: {"smithy.api#documentation" => "<p>The name of a specific parameter group for which to return details. By default,\n            details about all parameter groups and the default parameter group are\n            returned.</p>"}))
    DescribeClusterParameterGroupsMessage.add_member(:max_records, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords', traits: {"smithy.api#documentation" => "<p>The maximum number of response records to return in each call. If the number of\n            remaining response records exceeds the specified <code>MaxRecords</code> value, a value\n            is returned in a <code>marker</code> field of the response. You can retrieve the next\n            set of records by retrying the command with the returned marker value. </p>\n         <p>Default: <code>100</code>\n         </p>\n         <p>Constraints: minimum 20, maximum 100.</p>"}))
    DescribeClusterParameterGroupsMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An optional parameter that specifies the starting point to return a set of response\n            records. When the results of a <a>DescribeClusterParameterGroups</a> request\n            exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the\n                <code>Marker</code> field of the response. You can retrieve the next set of response\n            records by providing the returned marker value in the <code>Marker</code> parameter and\n            retrying the request. </p>"}))
    DescribeClusterParameterGroupsMessage.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>A tag key or keys for which you want to return all matching cluster parameter\n            groups that are associated with the specified key or keys. For example, suppose that you\n            have parameter groups that are tagged with keys called <code>owner</code> and\n                <code>environment</code>. If you specify both of these tag keys in the request,\n            Amazon Redshift returns a response with the parameter groups that have either or both of these\n            tag keys associated with them.</p>"}))
    DescribeClusterParameterGroupsMessage.add_member(:tag_values, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValueList, location_name: 'TagValues', traits: {"smithy.api#documentation" => "<p>A tag value or values for which you want to return all matching cluster parameter\n            groups that are associated with the specified tag value or values. For example, suppose\n            that you have parameter groups that are tagged with values called <code>admin</code> and\n                <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift\n            returns a response with the parameter groups that have either or both of these tag\n            values associated with them.</p>"}))
    DescribeClusterParameterGroupsMessage.type = Types::DescribeClusterParameterGroupsMessage
    DescribeClusterParametersMessage.add_member(:parameter_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of a cluster parameter group for which to return details.</p>", "smithy.api#required" => {}}))
    DescribeClusterParametersMessage.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Source', traits: {"smithy.api#documentation" => "<p>The parameter types to return. Specify <code>user</code> to show parameters that\n            are different form the default. Similarly, specify <code>engine-default</code> to show\n            parameters that are the same as the default parameter group. </p>\n         <p>Default: All parameter types returned.</p>\n         <p>Valid Values: <code>user</code> | <code>engine-default</code>\n         </p>"}))
    DescribeClusterParametersMessage.add_member(:max_records, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords', traits: {"smithy.api#documentation" => "<p>The maximum number of response records to return in each call. If the number of\n            remaining response records exceeds the specified <code>MaxRecords</code> value, a value\n            is returned in a <code>marker</code> field of the response. You can retrieve the next\n            set of records by retrying the command with the returned marker value. </p>\n         <p>Default: <code>100</code>\n         </p>\n         <p>Constraints: minimum 20, maximum 100.</p>"}))
    DescribeClusterParametersMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An optional parameter that specifies the starting point to return a set of response\n            records. When the results of a <a>DescribeClusterParameters</a> request\n            exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the\n                <code>Marker</code> field of the response. You can retrieve the next set of response\n            records by providing the returned marker value in the <code>Marker</code> parameter and\n            retrying the request. </p>"}))
    DescribeClusterParametersMessage.type = Types::DescribeClusterParametersMessage
    DescribeClusterParametersOutput.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersList, location_name: 'Parameters', traits: {"smithy.api#documentation" => "<p>A list of <a>Parameter</a> instances. Each instance lists the parameters\n            of one cluster parameter group. </p>"}))
    DescribeClusterParametersOutput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>A value that indicates the starting point for the next set of response records in a\n            subsequent request. If a value is returned in a response, you can retrieve the next set\n            of records by providing this returned marker value in the <code>Marker</code> parameter\n            and retrying the command. If the <code>Marker</code> field is empty, all response\n            records have been retrieved for the request. </p>"}))
    DescribeClusterParametersOutput.type = Types::DescribeClusterParametersOutput
    DescribeClusterSecurityGroupsMessage.add_member(:cluster_security_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterSecurityGroupName', traits: {"smithy.api#documentation" => "<p>The name of a cluster security group for which you are requesting details. You must\n            specify either the <b>Marker</b> parameter or a <b>ClusterSecurityGroupName</b> parameter, but not both. </p>\n         <p> Example: <code>securitygroup1</code>\n         </p>"}))
    DescribeClusterSecurityGroupsMessage.add_member(:max_records, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords', traits: {"smithy.api#documentation" => "<p>The maximum number of response records to return in each call. If the number of\n            remaining response records exceeds the specified <code>MaxRecords</code> value, a value\n            is returned in a <code>marker</code> field of the response. You can retrieve the next\n            set of records by retrying the command with the returned marker value. </p>\n         <p>Default: <code>100</code>\n         </p>\n         <p>Constraints: minimum 20, maximum 100.</p>"}))
    DescribeClusterSecurityGroupsMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An optional parameter that specifies the starting point to return a set of response\n            records. When the results of a <a>DescribeClusterSecurityGroups</a> request\n            exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the\n                <code>Marker</code> field of the response. You can retrieve the next set of response\n            records by providing the returned marker value in the <code>Marker</code> parameter and\n            retrying the request. </p>\n         <p>Constraints: You must specify either the <b>ClusterSecurityGroupName</b> parameter or the <b>Marker</b> parameter, but not both. </p>"}))
    DescribeClusterSecurityGroupsMessage.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>A tag key or keys for which you want to return all matching cluster security groups\n            that are associated with the specified key or keys. For example, suppose that you have\n            security groups that are tagged with keys called <code>owner</code> and\n                <code>environment</code>. If you specify both of these tag keys in the request,\n            Amazon Redshift returns a response with the security groups that have either or both of these\n            tag keys associated with them.</p>"}))
    DescribeClusterSecurityGroupsMessage.add_member(:tag_values, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValueList, location_name: 'TagValues', traits: {"smithy.api#documentation" => "<p>A tag value or values for which you want to return all matching cluster security\n            groups that are associated with the specified tag value or values. For example, suppose\n            that you have security groups that are tagged with values called <code>admin</code> and\n                <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift\n            returns a response with the security groups that have either or both of these tag values\n            associated with them.</p>"}))
    DescribeClusterSecurityGroupsMessage.type = Types::DescribeClusterSecurityGroupsMessage
    DescribeClusterSnapshotsMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the cluster which generated the requested snapshots.</p>"}))
    DescribeClusterSnapshotsMessage.add_member(:snapshot_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotIdentifier', traits: {"smithy.api#documentation" => "<p>The snapshot identifier of the snapshot about which to return\n            information.</p>"}))
    DescribeClusterSnapshotsMessage.add_member(:snapshot_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the snapshot associated with the message to describe cluster snapshots.</p>"}))
    DescribeClusterSnapshotsMessage.add_member(:snapshot_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotType', traits: {"smithy.api#documentation" => "<p>The type of snapshots for which you are requesting information. By default,\n            snapshots of all types are returned.</p>\n         <p>Valid Values: <code>automated</code> | <code>manual</code>\n         </p>"}))
    DescribeClusterSnapshotsMessage.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>A value that requests only snapshots created at or after the specified time. The\n            time value is specified in ISO 8601 format. For more information about ISO 8601, go to\n            the <a href=\"http://en.wikipedia.org/wiki/ISO_8601\">ISO8601 Wikipedia page.</a>\n         </p>\n         <p>Example: <code>2012-07-16T18:00:00Z</code>\n         </p>"}))
    DescribeClusterSnapshotsMessage.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>A time value that requests only snapshots created at or before the specified time.\n            The time value is specified in ISO 8601 format. For more information about ISO 8601, go\n            to the <a href=\"http://en.wikipedia.org/wiki/ISO_8601\">ISO8601 Wikipedia\n                page.</a>\n         </p>\n         <p>Example: <code>2012-07-16T18:00:00Z</code>\n         </p>"}))
    DescribeClusterSnapshotsMessage.add_member(:max_records, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords', traits: {"smithy.api#documentation" => "<p>The maximum number of response records to return in each call. If the number of\n            remaining response records exceeds the specified <code>MaxRecords</code> value, a value\n            is returned in a <code>marker</code> field of the response. You can retrieve the next\n            set of records by retrying the command with the returned marker value. </p>\n         <p>Default: <code>100</code>\n         </p>\n         <p>Constraints: minimum 20, maximum 100.</p>"}))
    DescribeClusterSnapshotsMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An optional parameter that specifies the starting point to return a set of response\n            records. When the results of a <a>DescribeClusterSnapshots</a> request exceed\n            the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the\n                <code>Marker</code> field of the response. You can retrieve the next set of response\n            records by providing the returned marker value in the <code>Marker</code> parameter and\n            retrying the request. </p>"}))
    DescribeClusterSnapshotsMessage.add_member(:owner_account, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OwnerAccount', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account used to create or copy the snapshot. Use this field to\n            filter the results to snapshots owned by a particular account. To describe snapshots you\n            own, either specify your Amazon Web Services account, or do not specify the\n            parameter.</p>"}))
    DescribeClusterSnapshotsMessage.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>A tag key or keys for which you want to return all matching cluster snapshots that\n            are associated with the specified key or keys. For example, suppose that you have\n            snapshots that are tagged with keys called <code>owner</code> and\n                <code>environment</code>. If you specify both of these tag keys in the request,\n            Amazon Redshift returns a response with the snapshots that have either or both of these tag\n            keys associated with them.</p>"}))
    DescribeClusterSnapshotsMessage.add_member(:tag_values, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValueList, location_name: 'TagValues', traits: {"smithy.api#documentation" => "<p>A tag value or values for which you want to return all matching cluster snapshots\n            that are associated with the specified tag value or values. For example, suppose that\n            you have snapshots that are tagged with values called <code>admin</code> and\n                <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift\n            returns a response with the snapshots that have either or both of these tag values\n            associated with them.</p>"}))
    DescribeClusterSnapshotsMessage.add_member(:cluster_exists, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'ClusterExists', traits: {"smithy.api#documentation" => "<p>A value that indicates whether to return snapshots only for an existing cluster.\n            You can perform table-level restore only by using a snapshot of an existing cluster,\n            that is, a cluster that has not been deleted. Values for this parameter work as follows: </p>\n         <ul>\n            <li>\n               <p>If <code>ClusterExists</code> is set to <code>true</code>,\n                        <code>ClusterIdentifier</code> is required.</p>\n            </li>\n            <li>\n               <p>If <code>ClusterExists</code> is set to <code>false</code> and\n                        <code>ClusterIdentifier</code> isn't specified, all snapshots\n                    associated with deleted clusters (orphaned snapshots) are returned. </p>\n            </li>\n            <li>\n               <p>If <code>ClusterExists</code> is set to <code>false</code> and\n                        <code>ClusterIdentifier</code> is specified for a deleted cluster, snapshots\n                    associated with that cluster are returned.</p>\n            </li>\n            <li>\n               <p>If <code>ClusterExists</code> is set to <code>false</code> and\n                        <code>ClusterIdentifier</code> is specified for an existing cluster, no\n                    snapshots are returned. </p>\n            </li>\n         </ul>"}))
    DescribeClusterSnapshotsMessage.add_member(:sorting_entities, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotSortingEntityList, location_name: 'SortingEntities', traits: {"smithy.api#documentation" => "<p></p>"}))
    DescribeClusterSnapshotsMessage.type = Types::DescribeClusterSnapshotsMessage
    DescribeClusterSubnetGroupsMessage.add_member(:cluster_subnet_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterSubnetGroupName', traits: {"smithy.api#documentation" => "<p>The name of the cluster subnet group for which information is requested.</p>"}))
    DescribeClusterSubnetGroupsMessage.add_member(:max_records, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords', traits: {"smithy.api#documentation" => "<p>The maximum number of response records to return in each call. If the number of\n            remaining response records exceeds the specified <code>MaxRecords</code> value, a value\n            is returned in a <code>marker</code> field of the response. You can retrieve the next\n            set of records by retrying the command with the returned marker value. </p>\n         <p>Default: <code>100</code>\n         </p>\n         <p>Constraints: minimum 20, maximum 100.</p>"}))
    DescribeClusterSubnetGroupsMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An optional parameter that specifies the starting point to return a set of response\n            records. When the results of a <a>DescribeClusterSubnetGroups</a> request\n            exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the\n                <code>Marker</code> field of the response. You can retrieve the next set of response\n            records by providing the returned marker value in the <code>Marker</code> parameter and\n            retrying the request. </p>"}))
    DescribeClusterSubnetGroupsMessage.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>A tag key or keys for which you want to return all matching cluster subnet groups\n            that are associated with the specified key or keys. For example, suppose that you have\n            subnet groups that are tagged with keys called <code>owner</code> and\n                <code>environment</code>. If you specify both of these tag keys in the request,\n            Amazon Redshift returns a response with the subnet groups that have either or both of these\n            tag keys associated with them.</p>"}))
    DescribeClusterSubnetGroupsMessage.add_member(:tag_values, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValueList, location_name: 'TagValues', traits: {"smithy.api#documentation" => "<p>A tag value or values for which you want to return all matching cluster subnet\n            groups that are associated with the specified tag value or values. For example, suppose\n            that you have subnet groups that are tagged with values called <code>admin</code> and\n                <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift\n            returns a response with the subnet groups that have either or both of these tag values\n            associated with them.</p>"}))
    DescribeClusterSubnetGroupsMessage.type = Types::DescribeClusterSubnetGroupsMessage
    DescribeClusterTracksMessage.add_member(:maintenance_track_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MaintenanceTrackName', traits: {"smithy.api#documentation" => "<p>The name of the maintenance track. </p>"}))
    DescribeClusterTracksMessage.add_member(:max_records, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords', traits: {"smithy.api#documentation" => "<p>An integer value for the maximum number of maintenance tracks to return.</p>"}))
    DescribeClusterTracksMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An optional parameter that specifies the starting point to return a set of response\n            records. When the results of a <code>DescribeClusterTracks</code> request exceed the\n            value specified in <code>MaxRecords</code>, Amazon Redshift returns a value in the\n                <code>Marker</code> field of the response. You can retrieve the next set of response\n            records by providing the returned marker value in the <code>Marker</code> parameter and\n            retrying the request. </p>"}))
    DescribeClusterTracksMessage.type = Types::DescribeClusterTracksMessage
    DescribeClusterVersionsMessage.add_member(:cluster_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterVersion', traits: {"smithy.api#documentation" => "<p>The specific cluster version to return.</p>\n         <p>Example: <code>1.0</code>\n         </p>"}))
    DescribeClusterVersionsMessage.add_member(:cluster_parameter_group_family, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterParameterGroupFamily', traits: {"smithy.api#documentation" => "<p>The name of a specific cluster parameter group family to return details\n            for.</p>\n         <p>Constraints:</p>\n         <ul>\n            <li>\n               <p>Must be 1 to 255 alphanumeric characters</p>\n            </li>\n            <li>\n               <p>First character must be a letter</p>\n            </li>\n            <li>\n               <p>Cannot end with a hyphen or contain two consecutive hyphens</p>\n            </li>\n         </ul>"}))
    DescribeClusterVersionsMessage.add_member(:max_records, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords', traits: {"smithy.api#documentation" => "<p>The maximum number of response records to return in each call. If the number of\n            remaining response records exceeds the specified <code>MaxRecords</code> value, a value\n            is returned in a <code>marker</code> field of the response. You can retrieve the next\n            set of records by retrying the command with the returned marker value. </p>\n         <p>Default: <code>100</code>\n         </p>\n         <p>Constraints: minimum 20, maximum 100.</p>"}))
    DescribeClusterVersionsMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An optional parameter that specifies the starting point to return a set of response\n            records. When the results of a <a>DescribeClusterVersions</a> request exceed\n            the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the\n                <code>Marker</code> field of the response. You can retrieve the next set of response\n            records by providing the returned marker value in the <code>Marker</code> parameter and\n            retrying the request. </p>"}))
    DescribeClusterVersionsMessage.type = Types::DescribeClusterVersionsMessage
    DescribeClustersMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of a cluster whose properties you are requesting. This\n            parameter is case sensitive.</p>\n         <p>The default is that all clusters defined for an account are returned.</p>"}))
    DescribeClustersMessage.add_member(:max_records, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords', traits: {"smithy.api#documentation" => "<p>The maximum number of response records to return in each call. If the number of\n            remaining response records exceeds the specified <code>MaxRecords</code> value, a value\n            is returned in a <code>marker</code> field of the response. You can retrieve the next\n            set of records by retrying the command with the returned marker value. </p>\n         <p>Default: <code>100</code>\n         </p>\n         <p>Constraints: minimum 20, maximum 100.</p>"}))
    DescribeClustersMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An optional parameter that specifies the starting point to return a set of response\n            records. When the results of a <a>DescribeClusters</a> request exceed the\n            value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the\n                <code>Marker</code> field of the response. You can retrieve the next set of response\n            records by providing the returned marker value in the <code>Marker</code> parameter and\n            retrying the request. </p>\n         <p>Constraints: You can specify either the <b>ClusterIdentifier</b> parameter or the <b>Marker</b> parameter, but not both. </p>"}))
    DescribeClustersMessage.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>A tag key or keys for which you want to return all matching clusters that are\n            associated with the specified key or keys. For example, suppose that you have clusters\n            that are tagged with keys called <code>owner</code> and <code>environment</code>. If you\n            specify both of these tag keys in the request, Amazon Redshift returns a response with the\n            clusters that have either or both of these tag keys associated with them.</p>"}))
    DescribeClustersMessage.add_member(:tag_values, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValueList, location_name: 'TagValues', traits: {"smithy.api#documentation" => "<p>A tag value or values for which you want to return all matching clusters that are\n            associated with the specified tag value or values. For example, suppose that you have\n            clusters that are tagged with values called <code>admin</code> and <code>test</code>. If\n            you specify both of these tag values in the request, Amazon Redshift returns a response with\n            the clusters that have either or both of these tag values associated with\n            them.</p>"}))
    DescribeClustersMessage.type = Types::DescribeClustersMessage
    DescribeCustomDomainAssociationsMessage.add_member(:custom_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainNameString, location_name: 'CustomDomainName', traits: {"smithy.api#documentation" => "<p>The custom domain name for the custom domain association.</p>"}))
    DescribeCustomDomainAssociationsMessage.add_member(:custom_domain_certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainCertificateArnString, location_name: 'CustomDomainCertificateArn', traits: {"smithy.api#documentation" => "<p>The certificate Amazon Resource Name (ARN) for the custom domain association.</p>"}))
    DescribeCustomDomainAssociationsMessage.add_member(:max_records, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords', traits: {"smithy.api#documentation" => "<p>The maximum records setting for the associated custom domain.</p>"}))
    DescribeCustomDomainAssociationsMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>The marker for the custom domain association.</p>"}))
    DescribeCustomDomainAssociationsMessage.type = Types::DescribeCustomDomainAssociationsMessage
    DescribeDataSharesForConsumerMessage.add_member(:consumer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConsumerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the consumer namespace that returns in the list of datashares.</p>"}))
    DescribeDataSharesForConsumerMessage.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DataShareStatusForConsumer, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>An identifier giving the status of a datashare in the consumer cluster. If this field is specified, Amazon\n            Redshift returns the list of datashares that have the specified status.</p>"}))
    DescribeDataSharesForConsumerMessage.add_member(:max_records, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords', traits: {"smithy.api#documentation" => "<p>The maximum number of response records to return in each call. If the number of\n            remaining response records exceeds the specified <code>MaxRecords</code> value, a value\n            is returned in a <code>marker</code> field of the response. You can retrieve the next\n            set of records by retrying the command with the returned marker value. </p>"}))
    DescribeDataSharesForConsumerMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An optional parameter that specifies the starting point to return a set of response\n            records. When the results of a <a>DescribeDataSharesForConsumer</a> request\n            exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the\n            <code>Marker</code> field of the response. You can retrieve the next set of response\n            records by providing the returned marker value in the <code>Marker</code> parameter and\n            retrying the request. </p>"}))
    DescribeDataSharesForConsumerMessage.type = Types::DescribeDataSharesForConsumerMessage
    DescribeDataSharesForConsumerResult.add_member(:data_shares, Smithy::Schema::Shapes::ShapeRef.new(shape: DataShareList, location_name: 'DataShares', traits: {"smithy.api#documentation" => "<p>Shows the results of datashares available for consumers.</p>"}))
    DescribeDataSharesForConsumerResult.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An optional parameter that specifies the starting point to return a set of response\n            records. When the results of a <a>DescribeDataSharesForConsumer</a> request\n            exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the\n            <code>Marker</code> field of the response. You can retrieve the next set of response\n            records by providing the returned marker value in the <code>Marker</code> parameter and\n            retrying the request. </p>"}))
    DescribeDataSharesForConsumerResult.type = Types::DescribeDataSharesForConsumerResult
    DescribeDataSharesForProducerMessage.add_member(:producer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProducerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the producer namespace that returns in the list of datashares.</p>"}))
    DescribeDataSharesForProducerMessage.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DataShareStatusForProducer, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>An identifier giving the status of a datashare in the producer. If this field is specified, Amazon\n            Redshift returns the list of datashares that have the specified status.</p>"}))
    DescribeDataSharesForProducerMessage.add_member(:max_records, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords', traits: {"smithy.api#documentation" => "<p>The maximum number of response records to return in each call. If the number of\n            remaining response records exceeds the specified <code>MaxRecords</code> value, a value\n            is returned in a <code>marker</code> field of the response. You can retrieve the next\n            set of records by retrying the command with the returned marker value. </p>"}))
    DescribeDataSharesForProducerMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An optional parameter that specifies the starting point to return a set of response\n            records. When the results of a <a>DescribeDataSharesForProducer</a> request\n            exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the\n            <code>Marker</code> field of the response. You can retrieve the next set of response\n            records by providing the returned marker value in the <code>Marker</code> parameter and\n            retrying the request. </p>"}))
    DescribeDataSharesForProducerMessage.type = Types::DescribeDataSharesForProducerMessage
    DescribeDataSharesForProducerResult.add_member(:data_shares, Smithy::Schema::Shapes::ShapeRef.new(shape: DataShareList, location_name: 'DataShares', traits: {"smithy.api#documentation" => "<p>Shows the results of datashares available for producers.</p>"}))
    DescribeDataSharesForProducerResult.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An optional parameter that specifies the starting point to return a set of response\n            records. When the results of a <a>DescribeDataSharesForProducer</a> request\n            exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the\n            <code>Marker</code> field of the response. You can retrieve the next set of response\n            records by providing the returned marker value in the <code>Marker</code> parameter and\n            retrying the request. </p>"}))
    DescribeDataSharesForProducerResult.type = Types::DescribeDataSharesForProducerResult
    DescribeDataSharesMessage.add_member(:data_share_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataShareArn', traits: {"smithy.api#documentation" => "<p>The Amazon resource name (ARN) of the datashare to describe details of.</p>"}))
    DescribeDataSharesMessage.add_member(:max_records, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords', traits: {"smithy.api#documentation" => "<p>The maximum number of response records to return in each call. If the number of\n            remaining response records exceeds the specified <code>MaxRecords</code> value, a value\n            is returned in a <code>marker</code> field of the response. You can retrieve the next\n            set of records by retrying the command with the returned marker value. </p>"}))
    DescribeDataSharesMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeDataShares</a> request exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>"}))
    DescribeDataSharesMessage.type = Types::DescribeDataSharesMessage
    DescribeDataSharesResult.add_member(:data_shares, Smithy::Schema::Shapes::ShapeRef.new(shape: DataShareList, location_name: 'DataShares', traits: {"smithy.api#documentation" => "<p>The results returned from describing datashares.</p>"}))
    DescribeDataSharesResult.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeDataShares</a> request exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>"}))
    DescribeDataSharesResult.type = Types::DescribeDataSharesResult
    DescribeDefaultClusterParametersMessage.add_member(:parameter_group_family, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupFamily', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the cluster parameter group family.</p>", "smithy.api#required" => {}}))
    DescribeDefaultClusterParametersMessage.add_member(:max_records, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords', traits: {"smithy.api#documentation" => "<p>The maximum number of response records to return in each call. If the number of\n            remaining response records exceeds the specified <code>MaxRecords</code> value, a value\n            is returned in a <code>marker</code> field of the response. You can retrieve the next\n            set of records by retrying the command with the returned marker value. </p>\n         <p>Default: <code>100</code>\n         </p>\n         <p>Constraints: minimum 20, maximum 100.</p>"}))
    DescribeDefaultClusterParametersMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An optional parameter that specifies the starting point to return a set of response\n            records. When the results of a <a>DescribeDefaultClusterParameters</a>\n            request exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in\n            the <code>Marker</code> field of the response. You can retrieve the next set of response\n            records by providing the returned marker value in the <code>Marker</code> parameter and\n            retrying the request. </p>"}))
    DescribeDefaultClusterParametersMessage.type = Types::DescribeDefaultClusterParametersMessage
    DescribeDefaultClusterParametersResult.add_member(:default_cluster_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultClusterParameters, location_name: 'DefaultClusterParameters'))
    DescribeDefaultClusterParametersResult.type = Types::DescribeDefaultClusterParametersResult
    DescribeEndpointAccessMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The cluster identifier associated with the described endpoint.</p>"}))
    DescribeEndpointAccessMessage.add_member(:resource_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceOwner', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the owner of the cluster.</p>"}))
    DescribeEndpointAccessMessage.add_member(:endpoint_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointName', traits: {"smithy.api#documentation" => "<p>The name of the endpoint to be described.</p>"}))
    DescribeEndpointAccessMessage.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>The virtual private cloud (VPC) identifier with access to the cluster.</p>"}))
    DescribeEndpointAccessMessage.add_member(:max_records, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords', traits: {"smithy.api#documentation" => "<p>The maximum number of records to include in the response. If more records exist\n            than the specified <code>MaxRecords</code> value, a pagination token called a <code>Marker</code> is\n            included in the response so that the remaining results can be retrieved.</p>"}))
    DescribeEndpointAccessMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An optional pagination token provided by a previous\n            <code>DescribeEndpointAccess</code> request. If this parameter is specified, the\n            response includes only records beyond the marker, up to the value specified by the\n            <code>MaxRecords</code> parameter.</p>"}))
    DescribeEndpointAccessMessage.type = Types::DescribeEndpointAccessMessage
    DescribeEndpointAccessOutput.add_member(:endpoint_access_list, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointAccesses, location_name: 'EndpointAccessList', traits: {"smithy.api#documentation" => "<p>The list of endpoints with access to the cluster.</p>"}))
    DescribeEndpointAccessOutput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An optional pagination token provided by a previous\n            <code>DescribeEndpointAccess</code> request. If this parameter is specified, the\n            response includes only records beyond the marker, up to the value specified by the\n            <code>MaxRecords</code> parameter.</p>"}))
    DescribeEndpointAccessOutput.type = Types::DescribeEndpointAccessOutput
    DescribeEndpointAuthorizationMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The cluster identifier of the cluster to access.</p>"}))
    DescribeEndpointAuthorizationMessage.add_member(:account, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Account', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of either the cluster owner (grantor) or grantee. \n       If <code>Grantee</code> parameter is true, then the <code>Account</code> value is of the grantor.</p>"}))
    DescribeEndpointAuthorizationMessage.add_member(:grantee, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'Grantee', traits: {"smithy.api#documentation" => "<p>Indicates whether to check authorization from a grantor or grantee point of view. \n           If true, Amazon Redshift returns endpoint authorizations that you've been granted.\n           If false (default), checks authorization from a grantor point of view.</p>"}))
    DescribeEndpointAuthorizationMessage.add_member(:max_records, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords', traits: {"smithy.api#documentation" => "<p>The maximum number of records to include in the response. If more records exist\n            than the specified <code>MaxRecords</code> value, a pagination token called a <code>Marker</code> is\n            included in the response so that the remaining results can be retrieved.</p>"}))
    DescribeEndpointAuthorizationMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An optional pagination token provided by a previous\n            <code>DescribeEndpointAuthorization</code> request. If this parameter is specified, the\n            response includes only records beyond the marker, up to the value specified by the\n            <code>MaxRecords</code> parameter.</p>"}))
    DescribeEndpointAuthorizationMessage.type = Types::DescribeEndpointAuthorizationMessage
    DescribeEndpointAuthorizationOutput.add_member(:endpoint_authorization_list, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointAuthorizations, location_name: 'EndpointAuthorizationList', traits: {"smithy.api#documentation" => "<p>The authorizations to an endpoint.</p>"}))
    DescribeEndpointAuthorizationOutput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An optional pagination token provided by a previous\n            <code>DescribeEndpointAuthorization</code> request. If this parameter is specified, the\n            response includes only records beyond the marker, up to the value specified by the\n            <code>MaxRecords</code> parameter.</p>"}))
    DescribeEndpointAuthorizationOutput.type = Types::DescribeEndpointAuthorizationOutput
    DescribeEventCategoriesMessage.add_member(:source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceType', traits: {"smithy.api#documentation" => "<p>The source type, such as cluster or parameter group, to which the described event\n            categories apply.</p>\n         <p>Valid values: cluster, cluster-snapshot, cluster-parameter-group, cluster-security-group, and scheduled-action.</p>"}))
    DescribeEventCategoriesMessage.type = Types::DescribeEventCategoriesMessage
    DescribeEventSubscriptionsMessage.add_member(:subscription_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubscriptionName', traits: {"smithy.api#documentation" => "<p>The name of the Amazon Redshift event notification subscription to be\n            described.</p>"}))
    DescribeEventSubscriptionsMessage.add_member(:max_records, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords', traits: {"smithy.api#documentation" => "<p>The maximum number of response records to return in each call. If the number of\n            remaining response records exceeds the specified <code>MaxRecords</code> value, a value\n            is returned in a <code>marker</code> field of the response. You can retrieve the next\n            set of records by retrying the command with the returned marker value. </p>\n         <p>Default: <code>100</code>\n         </p>\n         <p>Constraints: minimum 20, maximum 100.</p>"}))
    DescribeEventSubscriptionsMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An optional parameter that specifies the starting point to return a set of response\n            records. When the results of a DescribeEventSubscriptions request exceed the value\n            specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the <code>Marker</code>\n            field of the response. You can retrieve the next set of response records by providing\n            the returned marker value in the <code>Marker</code> parameter and retrying the request.\n        </p>"}))
    DescribeEventSubscriptionsMessage.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>A tag key or keys for which you want to return all matching event notification\n            subscriptions that are associated with the specified key or keys. For example, suppose\n            that you have subscriptions that are tagged with keys called <code>owner</code> and\n                <code>environment</code>. If you specify both of these tag keys in the request,\n            Amazon Redshift returns a response with the subscriptions that have either or both of these\n            tag keys associated with them.</p>"}))
    DescribeEventSubscriptionsMessage.add_member(:tag_values, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValueList, location_name: 'TagValues', traits: {"smithy.api#documentation" => "<p>A tag value or values for which you want to return all matching event notification\n            subscriptions that are associated with the specified tag value or values. For example,\n            suppose that you have subscriptions that are tagged with values called\n                <code>admin</code> and <code>test</code>. If you specify both of these tag values in\n            the request, Amazon Redshift returns a response with the subscriptions that have either or\n            both of these tag values associated with them.</p>"}))
    DescribeEventSubscriptionsMessage.type = Types::DescribeEventSubscriptionsMessage
    DescribeEventsMessage.add_member(:source_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the event source for which events will be returned. If this\n            parameter is not specified, then all sources are included in the response.</p>\n         <p>Constraints:</p>\n         <p>If <i>SourceIdentifier</i> is supplied,\n                <i>SourceType</i> must also be provided.</p>\n         <ul>\n            <li>\n               <p>Specify a cluster identifier when <i>SourceType</i> is\n                        <code>cluster</code>.</p>\n            </li>\n            <li>\n               <p>Specify a cluster security group name when <i>SourceType</i>\n                    is <code>cluster-security-group</code>.</p>\n            </li>\n            <li>\n               <p>Specify a cluster parameter group name when <i>SourceType</i>\n                    is <code>cluster-parameter-group</code>.</p>\n            </li>\n            <li>\n               <p>Specify a cluster snapshot identifier when <i>SourceType</i>\n                    is <code>cluster-snapshot</code>.</p>\n            </li>\n         </ul>"}))
    DescribeEventsMessage.add_member(:source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceType, location_name: 'SourceType', traits: {"smithy.api#documentation" => "<p>The event source to retrieve events for. If no value is specified, all events are\n            returned.</p>\n         <p>Constraints:</p>\n         <p>If <i>SourceType</i> is supplied,\n                <i>SourceIdentifier</i> must also be provided.</p>\n         <ul>\n            <li>\n               <p>Specify <code>cluster</code> when <i>SourceIdentifier</i> is\n                    a cluster identifier.</p>\n            </li>\n            <li>\n               <p>Specify <code>cluster-security-group</code> when\n                        <i>SourceIdentifier</i> is a cluster security group\n                    name.</p>\n            </li>\n            <li>\n               <p>Specify <code>cluster-parameter-group</code> when\n                        <i>SourceIdentifier</i> is a cluster parameter group\n                    name.</p>\n            </li>\n            <li>\n               <p>Specify <code>cluster-snapshot</code> when\n                        <i>SourceIdentifier</i> is a cluster snapshot\n                    identifier.</p>\n            </li>\n         </ul>"}))
    DescribeEventsMessage.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The beginning of the time interval to retrieve events for, specified in ISO 8601\n            format. For more information about ISO 8601, go to the <a href=\"http://en.wikipedia.org/wiki/ISO_8601\">ISO8601 Wikipedia page.</a>\n         </p>\n         <p>Example: <code>2009-07-08T18:00Z</code>\n         </p>"}))
    DescribeEventsMessage.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The end of the time interval for which to retrieve events, specified in ISO 8601\n            format. For more information about ISO 8601, go to the <a href=\"http://en.wikipedia.org/wiki/ISO_8601\">ISO8601 Wikipedia page.</a>\n         </p>\n         <p>Example: <code>2009-07-08T18:00Z</code>\n         </p>"}))
    DescribeEventsMessage.add_member(:duration, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Duration', traits: {"smithy.api#documentation" => "<p>The number of minutes prior to the time of the request for which to retrieve\n            events. For example, if the request is sent at 18:00 and you specify a duration of 60,\n            then only events which have occurred after 17:00 will be returned.</p>\n         <p>Default: <code>60</code>\n         </p>"}))
    DescribeEventsMessage.add_member(:max_records, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords', traits: {"smithy.api#documentation" => "<p>The maximum number of response records to return in each call. If the number of\n            remaining response records exceeds the specified <code>MaxRecords</code> value, a value\n            is returned in a <code>marker</code> field of the response. You can retrieve the next\n            set of records by retrying the command with the returned marker value. </p>\n         <p>Default: <code>100</code>\n         </p>\n         <p>Constraints: minimum 20, maximum 100.</p>"}))
    DescribeEventsMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An optional parameter that specifies the starting point to return a set of response\n            records. When the results of a <a>DescribeEvents</a> request exceed the value\n            specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the <code>Marker</code>\n            field of the response. You can retrieve the next set of response records by providing\n            the returned marker value in the <code>Marker</code> parameter and retrying the request.\n        </p>"}))
    DescribeEventsMessage.type = Types::DescribeEventsMessage
    DescribeHsmClientCertificatesMessage.add_member(:hsm_client_certificate_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmClientCertificateIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of a specific HSM client certificate for which you want information.\n            If no identifier is specified, information is returned for all HSM client certificates\n            owned by your Amazon Web Services account.</p>"}))
    DescribeHsmClientCertificatesMessage.add_member(:max_records, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords', traits: {"smithy.api#documentation" => "<p>The maximum number of response records to return in each call. If the number of\n            remaining response records exceeds the specified <code>MaxRecords</code> value, a value\n            is returned in a <code>marker</code> field of the response. You can retrieve the next\n            set of records by retrying the command with the returned marker value. </p>\n         <p>Default: <code>100</code>\n         </p>\n         <p>Constraints: minimum 20, maximum 100.</p>"}))
    DescribeHsmClientCertificatesMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An optional parameter that specifies the starting point to return a set of response\n            records. When the results of a <a>DescribeHsmClientCertificates</a> request\n            exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the\n                <code>Marker</code> field of the response. You can retrieve the next set of response\n            records by providing the returned marker value in the <code>Marker</code> parameter and\n            retrying the request. </p>"}))
    DescribeHsmClientCertificatesMessage.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>A tag key or keys for which you want to return all matching HSM client certificates\n            that are associated with the specified key or keys. For example, suppose that you have\n            HSM client certificates that are tagged with keys called <code>owner</code> and\n                <code>environment</code>. If you specify both of these tag keys in the request,\n            Amazon Redshift returns a response with the HSM client certificates that have either or both\n            of these tag keys associated with them.</p>"}))
    DescribeHsmClientCertificatesMessage.add_member(:tag_values, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValueList, location_name: 'TagValues', traits: {"smithy.api#documentation" => "<p>A tag value or values for which you want to return all matching HSM client\n            certificates that are associated with the specified tag value or values. For example,\n            suppose that you have HSM client certificates that are tagged with values called\n                <code>admin</code> and <code>test</code>. If you specify both of these tag values in\n            the request, Amazon Redshift returns a response with the HSM client certificates that have\n            either or both of these tag values associated with them.</p>"}))
    DescribeHsmClientCertificatesMessage.type = Types::DescribeHsmClientCertificatesMessage
    DescribeHsmConfigurationsMessage.add_member(:hsm_configuration_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmConfigurationIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of a specific Amazon Redshift HSM configuration to be described. If no\n            identifier is specified, information is returned for all HSM configurations owned by\n            your Amazon Web Services account.</p>"}))
    DescribeHsmConfigurationsMessage.add_member(:max_records, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords', traits: {"smithy.api#documentation" => "<p>The maximum number of response records to return in each call. If the number of\n            remaining response records exceeds the specified <code>MaxRecords</code> value, a value\n            is returned in a <code>marker</code> field of the response. You can retrieve the next\n            set of records by retrying the command with the returned marker value. </p>\n         <p>Default: <code>100</code>\n         </p>\n         <p>Constraints: minimum 20, maximum 100.</p>"}))
    DescribeHsmConfigurationsMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An optional parameter that specifies the starting point to return a set of response\n            records. When the results of a <a>DescribeHsmConfigurations</a> request\n            exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the\n                <code>Marker</code> field of the response. You can retrieve the next set of response\n            records by providing the returned marker value in the <code>Marker</code> parameter and\n            retrying the request. </p>"}))
    DescribeHsmConfigurationsMessage.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>A tag key or keys for which you want to return all matching HSM configurations that\n            are associated with the specified key or keys. For example, suppose that you have HSM\n            configurations that are tagged with keys called <code>owner</code> and\n                <code>environment</code>. If you specify both of these tag keys in the request,\n            Amazon Redshift returns a response with the HSM configurations that have either or both of\n            these tag keys associated with them.</p>"}))
    DescribeHsmConfigurationsMessage.add_member(:tag_values, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValueList, location_name: 'TagValues', traits: {"smithy.api#documentation" => "<p>A tag value or values for which you want to return all matching HSM configurations\n            that are associated with the specified tag value or values. For example, suppose that\n            you have HSM configurations that are tagged with values called <code>admin</code> and\n                <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift\n            returns a response with the HSM configurations that have either or both of these tag\n            values associated with them.</p>"}))
    DescribeHsmConfigurationsMessage.type = Types::DescribeHsmConfigurationsMessage
    DescribeInboundIntegrationsMessage.add_member(:integration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InboundIntegrationArn, location_name: 'IntegrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the inbound integration.</p>"}))
    DescribeInboundIntegrationsMessage.add_member(:target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetArn, location_name: 'TargetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the target of an inbound integration.</p>"}))
    DescribeInboundIntegrationsMessage.add_member(:max_records, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords', traits: {"smithy.api#documentation" => "<p>The maximum number of response records to return in each call. If the number of\n            remaining response records exceeds the specified <code>MaxRecords</code> value, a value\n            is returned in a <code>marker</code> field of the response. You can retrieve the next\n            set of records by retrying the command with the returned marker value. </p>\n         <p>Default: <code>100</code>\n         </p>\n         <p>Constraints: minimum 20, maximum 100.</p>"}))
    DescribeInboundIntegrationsMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An optional parameter that specifies the starting point to return a set of response\n            records. When the results of a <a>DescribeInboundIntegrations</a> request\n            exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the\n            <code>Marker</code> field of the response. You can retrieve the next set of response\n            records by providing the returned marker value in the <code>Marker</code> parameter and\n            retrying the request. </p>"}))
    DescribeInboundIntegrationsMessage.type = Types::DescribeInboundIntegrationsMessage
    DescribeIntegrationsFilter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeIntegrationsFilterName, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Specifies the type of integration filter.</p>", "smithy.api#required" => {}}))
    DescribeIntegrationsFilter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeIntegrationsFilterValueList, location_name: 'Values', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Specifies the values to filter on.</p>", "smithy.api#required" => {}}))
    DescribeIntegrationsFilter.type = Types::DescribeIntegrationsFilter
    DescribeIntegrationsFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeIntegrationsFilter, traits: {"smithy.api#xmlName" => "DescribeIntegrationsFilter"})
    DescribeIntegrationsFilterName.add_member(:integration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTEGRATION_ARN', traits: {"smithy.api#enumValue" => "integration-arn"}))
    DescribeIntegrationsFilterName.add_member(:source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SOURCE_ARN', traits: {"smithy.api#enumValue" => "source-arn"}))
    DescribeIntegrationsFilterName.add_member(:source_types, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SOURCE_TYPES', traits: {"smithy.api#enumValue" => "source-types"}))
    DescribeIntegrationsFilterName.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STATUS', traits: {"smithy.api#enumValue" => "status"}))
    DescribeIntegrationsFilterValueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "Value"})
    DescribeIntegrationsMessage.add_member(:integration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationArn, location_name: 'IntegrationArn', traits: {"smithy.api#documentation" => "<p>The unique identifier of the integration.</p>"}))
    DescribeIntegrationsMessage.add_member(:max_records, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords', traits: {"smithy.api#documentation" => "<p>The maximum number of response records to return in each call. If the number of\n            remaining response records exceeds the specified <code>MaxRecords</code> value, a value\n            is returned in a <code>marker</code> field of the response. You can retrieve the next\n            set of records by retrying the command with the returned marker value. </p>\n         <p>Default: <code>100</code>\n         </p>\n         <p>Constraints: minimum 20, maximum 100.</p>"}))
    DescribeIntegrationsMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An optional pagination token provided by a previous <code>DescribeIntegrations</code>\n            request. If this parameter is specified, the response includes only records beyond the\n            marker, up to the value specified by <code>MaxRecords</code>.</p>"}))
    DescribeIntegrationsMessage.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeIntegrationsFilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>A filter that specifies one or more resources to return.</p>"}))
    DescribeIntegrationsMessage.type = Types::DescribeIntegrationsMessage
    DescribeLoggingStatusMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The identifier of the cluster from which to get the logging status.</p>\n         <p>Example: <code>examplecluster</code>\n         </p>", "smithy.api#required" => {}}))
    DescribeLoggingStatusMessage.type = Types::DescribeLoggingStatusMessage
    DescribeLoggingStatusOutput.add_member(:logging_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'LoggingEnabled', traits: {"smithy.api#documentation" => "<p>\n            <code>true</code> if logging is on, <code>false</code> if logging is off.</p>"}))
    DescribeLoggingStatusOutput.add_member(:bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BucketName', traits: {"smithy.api#documentation" => "<p>The name of the S3 bucket where the log files are stored.</p>"}))
    DescribeLoggingStatusOutput.add_member(:s3_key_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: S3KeyPrefixValue, location_name: 'S3KeyPrefix', traits: {"smithy.api#documentation" => "<p>The prefix applied to the log file names.</p>"}))
    DescribeLoggingStatusOutput.add_member(:last_successful_delivery_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'LastSuccessfulDeliveryTime', traits: {"smithy.api#documentation" => "<p>The last time that logs were delivered.</p>"}))
    DescribeLoggingStatusOutput.add_member(:last_failure_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'LastFailureTime', traits: {"smithy.api#documentation" => "<p>The last time when logs failed to be delivered.</p>"}))
    DescribeLoggingStatusOutput.add_member(:last_failure_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastFailureMessage', traits: {"smithy.api#documentation" => "<p>The message indicating that logs failed to be delivered.</p>"}))
    DescribeLoggingStatusOutput.add_member(:log_destination_type, Smithy::Schema::Shapes::ShapeRef.new(shape: LogDestinationType, location_name: 'LogDestinationType', traits: {"smithy.api#documentation" => "<p>The log destination type. An enum with possible values of <code>s3</code> and <code>cloudwatch</code>.</p>"}))
    DescribeLoggingStatusOutput.add_member(:log_exports, Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'LogExports', traits: {"smithy.api#documentation" => "<p>The collection of exported log types. Possible values are <code>connectionlog</code>, <code>useractivitylog</code>, and \n            <code>userlog</code>.</p>"}))
    DescribeLoggingStatusOutput.type = Types::DescribeLoggingStatusOutput
    DescribeNodeConfigurationOptionsMessage.add_member(:action_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionType, location_name: 'ActionType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The action type to evaluate for possible node configurations.\n            Specify \"restore-cluster\" to get configuration combinations based on an existing snapshot. \n            Specify \"recommend-node-config\" to get configuration recommendations based on an existing cluster or snapshot. \n            Specify \"resize-cluster\" to get configuration combinations for elastic resize based on an existing cluster.\n        </p>", "smithy.api#required" => {}}))
    DescribeNodeConfigurationOptionsMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the cluster to evaluate for possible node configurations.</p>"}))
    DescribeNodeConfigurationOptionsMessage.add_member(:snapshot_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the snapshot to evaluate for possible node configurations.</p>"}))
    DescribeNodeConfigurationOptionsMessage.add_member(:snapshot_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the snapshot associated with the message to describe node configuration.</p>"}))
    DescribeNodeConfigurationOptionsMessage.add_member(:owner_account, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OwnerAccount', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account used to create or copy the snapshot. \n            Required if you are restoring a snapshot you do not own, \n            optional if you own the snapshot.</p>"}))
    DescribeNodeConfigurationOptionsMessage.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeConfigurationOptionsFilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>A set of name, operator, and value items to filter the results.</p>", "smithy.api#xmlName" => "Filter"}))
    DescribeNodeConfigurationOptionsMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An optional parameter that specifies the starting point to return a set of response\n            records. When the results of a <a>DescribeNodeConfigurationOptions</a> request\n            exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the\n            <code>Marker</code> field of the response. You can retrieve the next set of response\n            records by providing the returned marker value in the <code>Marker</code> parameter and\n            retrying the request. </p>"}))
    DescribeNodeConfigurationOptionsMessage.add_member(:max_records, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords', traits: {"smithy.api#documentation" => "<p>The maximum number of response records to return in each call. If the number of\n            remaining response records exceeds the specified <code>MaxRecords</code> value, a value\n            is returned in a <code>marker</code> field of the response. You can retrieve the next\n            set of records by retrying the command with the returned marker value. </p>\n         <p>Default: <code>500</code>\n         </p>\n         <p>Constraints: minimum 100, maximum 500.</p>"}))
    DescribeNodeConfigurationOptionsMessage.type = Types::DescribeNodeConfigurationOptionsMessage
    DescribeOrderableClusterOptionsMessage.add_member(:cluster_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterVersion', traits: {"smithy.api#documentation" => "<p>The version filter value. Specify this parameter to show only the available\n            offerings matching the specified version.</p>\n         <p>Default: All versions.</p>\n         <p>Constraints: Must be one of the version returned from <a>DescribeClusterVersions</a>.</p>"}))
    DescribeOrderableClusterOptionsMessage.add_member(:node_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeType', traits: {"smithy.api#documentation" => "<p>The node type filter value. Specify this parameter to show only the available\n            offerings matching the specified node type.</p>"}))
    DescribeOrderableClusterOptionsMessage.add_member(:max_records, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords', traits: {"smithy.api#documentation" => "<p>The maximum number of response records to return in each call. If the number of\n            remaining response records exceeds the specified <code>MaxRecords</code> value, a value\n            is returned in a <code>marker</code> field of the response. You can retrieve the next\n            set of records by retrying the command with the returned marker value. </p>\n         <p>Default: <code>100</code>\n         </p>\n         <p>Constraints: minimum 20, maximum 100.</p>"}))
    DescribeOrderableClusterOptionsMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An optional parameter that specifies the starting point to return a set of response\n            records. When the results of a <a>DescribeOrderableClusterOptions</a> request\n            exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the\n                <code>Marker</code> field of the response. You can retrieve the next set of response\n            records by providing the returned marker value in the <code>Marker</code> parameter and\n            retrying the request. </p>"}))
    DescribeOrderableClusterOptionsMessage.type = Types::DescribeOrderableClusterOptionsMessage
    DescribePartnersInputMessage.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationAccountId, location_name: 'AccountId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Web Services account ID that owns the cluster.</p>", "smithy.api#required" => {}}))
    DescribePartnersInputMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationClusterIdentifier, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The cluster identifier of the cluster whose partner integration is being described.</p>", "smithy.api#required" => {}}))
    DescribePartnersInputMessage.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationDatabaseName, location_name: 'DatabaseName', traits: {"smithy.api#documentation" => "<p>The name of the database whose partner integration is being described. If database name is not specified, then all databases in the cluster are described.</p>"}))
    DescribePartnersInputMessage.add_member(:partner_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationPartnerName, location_name: 'PartnerName', traits: {"smithy.api#documentation" => "<p>The name of the partner that is being described. If partner name is not specified, then all partner integrations are described.</p>"}))
    DescribePartnersInputMessage.type = Types::DescribePartnersInputMessage
    DescribePartnersOutputMessage.add_member(:partner_integration_info_list, Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationInfoList, location_name: 'PartnerIntegrationInfoList', traits: {"smithy.api#documentation" => "<p>A list of partner integrations.</p>"}))
    DescribePartnersOutputMessage.type = Types::DescribePartnersOutputMessage
    DescribeRedshiftIdcApplicationsMessage.add_member(:redshift_idc_application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RedshiftIdcApplicationArn', traits: {"smithy.api#documentation" => "<p>The ARN for the Redshift application that integrates with IAM Identity Center.</p>"}))
    DescribeRedshiftIdcApplicationsMessage.add_member(:max_records, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords', traits: {"smithy.api#documentation" => "<p>The maximum number of response records to return in each call. If the number of remaining response records \n            exceeds the specified MaxRecords value, a value is returned in a marker field of the response. You can retrieve \n            the next set of records by retrying the command with the returned marker value.</p>"}))
    DescribeRedshiftIdcApplicationsMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a \n            value is returned in a response, you can retrieve the next set\n            of records by providing this returned marker value in the Marker parameter\n            and retrying the command. If the Marker field is empty, all response\n            records have been retrieved for the request.\n        </p>"}))
    DescribeRedshiftIdcApplicationsMessage.type = Types::DescribeRedshiftIdcApplicationsMessage
    DescribeRedshiftIdcApplicationsResult.add_member(:redshift_idc_applications, Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftIdcApplicationList, location_name: 'RedshiftIdcApplications', traits: {"smithy.api#documentation" => "<p>The list of Amazon Redshift IAM Identity Center applications.</p>"}))
    DescribeRedshiftIdcApplicationsResult.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>A value that indicates the starting point for the next set of response records in a subsequent \n            request. If a value is returned in a response, you can retrieve the next set\n            of records by providing this returned marker value in the Marker parameter\n            and retrying the command. If the Marker field is empty, all response\n            records have been retrieved for the request.\n        </p>"}))
    DescribeRedshiftIdcApplicationsResult.type = Types::DescribeRedshiftIdcApplicationsResult
    DescribeReservedNodeExchangeStatusInputMessage.add_member(:reserved_node_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedNodeId', traits: {"smithy.api#documentation" => "<p>The identifier of the source reserved node in a reserved-node exchange request.</p>"}))
    DescribeReservedNodeExchangeStatusInputMessage.add_member(:reserved_node_exchange_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedNodeExchangeRequestId', traits: {"smithy.api#documentation" => "<p>The identifier of the reserved-node exchange request.</p>"}))
    DescribeReservedNodeExchangeStatusInputMessage.add_member(:max_records, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords', traits: {"smithy.api#documentation" => "<p>The maximum number of response records to return in each call. If the number of\n            remaining response records exceeds the specified <code>MaxRecords</code> value, a value\n            is returned in a <code>Marker</code> field of the response. You can retrieve the next\n            set of records by retrying the command with the returned marker value.</p>"}))
    DescribeReservedNodeExchangeStatusInputMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An optional pagination token provided by a previous <code>DescribeReservedNodeExchangeStatus</code> request. If this \n            parameter is specified, the response includes only records beyond the marker, up to the value \n            specified by the <code>MaxRecords</code> parameter. You can retrieve the next set of response\n            records by providing the returned marker value in the <code>Marker</code> parameter and\n            retrying the request.</p>"}))
    DescribeReservedNodeExchangeStatusInputMessage.type = Types::DescribeReservedNodeExchangeStatusInputMessage
    DescribeReservedNodeExchangeStatusOutputMessage.add_member(:reserved_node_exchange_status_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeExchangeStatusList, location_name: 'ReservedNodeExchangeStatusDetails', traits: {"smithy.api#documentation" => "<p>The details of the reserved-node exchange request, including the status, request\n            time, source reserved-node identifier, and additional details.</p>"}))
    DescribeReservedNodeExchangeStatusOutputMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>A pagination token provided by a previous <code>DescribeReservedNodeExchangeStatus</code> request.</p>"}))
    DescribeReservedNodeExchangeStatusOutputMessage.type = Types::DescribeReservedNodeExchangeStatusOutputMessage
    DescribeReservedNodeOfferingsMessage.add_member(:reserved_node_offering_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedNodeOfferingId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the offering.</p>"}))
    DescribeReservedNodeOfferingsMessage.add_member(:max_records, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords', traits: {"smithy.api#documentation" => "<p>The maximum number of response records to return in each call. If the number of\n            remaining response records exceeds the specified <code>MaxRecords</code> value, a value\n            is returned in a <code>marker</code> field of the response. You can retrieve the next\n            set of records by retrying the command with the returned marker value. </p>\n         <p>Default: <code>100</code>\n         </p>\n         <p>Constraints: minimum 20, maximum 100.</p>"}))
    DescribeReservedNodeOfferingsMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An optional parameter that specifies the starting point to return a set of response\n            records. When the results of a <a>DescribeReservedNodeOfferings</a> request\n            exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the\n                <code>Marker</code> field of the response. You can retrieve the next set of response\n            records by providing the returned marker value in the <code>Marker</code> parameter and\n            retrying the request. </p>"}))
    DescribeReservedNodeOfferingsMessage.type = Types::DescribeReservedNodeOfferingsMessage
    DescribeReservedNodesMessage.add_member(:reserved_node_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedNodeId', traits: {"smithy.api#documentation" => "<p>Identifier for the node reservation.</p>"}))
    DescribeReservedNodesMessage.add_member(:max_records, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords', traits: {"smithy.api#documentation" => "<p>The maximum number of response records to return in each call. If the number of\n            remaining response records exceeds the specified <code>MaxRecords</code> value, a value\n            is returned in a <code>marker</code> field of the response. You can retrieve the next\n            set of records by retrying the command with the returned marker value. </p>\n         <p>Default: <code>100</code>\n         </p>\n         <p>Constraints: minimum 20, maximum 100.</p>"}))
    DescribeReservedNodesMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An optional parameter that specifies the starting point to return a set of response\n            records. When the results of a <a>DescribeReservedNodes</a> request exceed\n            the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the\n                <code>Marker</code> field of the response. You can retrieve the next set of response\n            records by providing the returned marker value in the <code>Marker</code> parameter and\n            retrying the request. </p>"}))
    DescribeReservedNodesMessage.type = Types::DescribeReservedNodesMessage
    DescribeResizeMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier of a cluster whose resize progress you are requesting. This\n            parameter is case-sensitive.</p>\n         <p>By default, resize operations for all clusters defined for an Amazon Web Services account are\n            returned.</p>", "smithy.api#required" => {}}))
    DescribeResizeMessage.type = Types::DescribeResizeMessage
    DescribeResizeOutput.add_member(:target_node_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetNodeType', traits: {"smithy.api#documentation" => "<p>The node type that the cluster will have after the resize operation is\n            complete.</p>"}))
    DescribeResizeOutput.add_member(:target_number_of_nodes, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'TargetNumberOfNodes', traits: {"smithy.api#documentation" => "<p>The number of nodes that the cluster will have after the resize operation is\n            complete.</p>"}))
    DescribeResizeOutput.add_member(:target_cluster_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetClusterType', traits: {"smithy.api#documentation" => "<p>The cluster type after the resize operation is complete.</p>\n         <p>Valid Values: <code>multi-node</code> | <code>single-node</code>\n         </p>"}))
    DescribeResizeOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the resize operation.</p>\n         <p>Valid Values: <code>NONE</code> | <code>IN_PROGRESS</code> | <code>FAILED</code> |\n                <code>SUCCEEDED</code> | <code>CANCELLING</code>\n         </p>"}))
    DescribeResizeOutput.add_member(:import_tables_completed, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTablesCompleted, location_name: 'ImportTablesCompleted', traits: {"smithy.api#documentation" => "<p>The names of tables that have been completely imported .</p>\n         <p>Valid Values: List of table names.</p>"}))
    DescribeResizeOutput.add_member(:import_tables_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTablesInProgress, location_name: 'ImportTablesInProgress', traits: {"smithy.api#documentation" => "<p>The names of tables that are being currently imported.</p>\n         <p>Valid Values: List of table names.</p>"}))
    DescribeResizeOutput.add_member(:import_tables_not_started, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTablesNotStarted, location_name: 'ImportTablesNotStarted', traits: {"smithy.api#documentation" => "<p>The names of tables that have not been yet imported.</p>\n         <p>Valid Values: List of table names</p>"}))
    DescribeResizeOutput.add_member(:avg_resize_rate_in_mega_bytes_per_second, Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'AvgResizeRateInMegaBytesPerSecond', traits: {"smithy.api#documentation" => "<p>The average rate of the resize operation over the last few minutes, measured in\n            megabytes per second. After the resize operation completes, this value shows the average\n            rate of the entire resize operation.</p>"}))
    DescribeResizeOutput.add_member(:total_resize_data_in_mega_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: 'TotalResizeDataInMegaBytes', traits: {"smithy.api#documentation" => "<p>The estimated total amount of data, in megabytes, on the cluster before the resize\n            operation began.</p>"}))
    DescribeResizeOutput.add_member(:progress_in_mega_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: 'ProgressInMegaBytes', traits: {"smithy.api#documentation" => "<p>While the resize operation is in progress, this value shows the current amount of\n            data, in megabytes, that has been processed so far. When the resize operation is\n            complete, this value shows the total amount of data, in megabytes, on the cluster, which\n            may be more or less than TotalResizeDataInMegaBytes (the estimated total amount of data\n            before resize).</p>"}))
    DescribeResizeOutput.add_member(:elapsed_time_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: 'ElapsedTimeInSeconds', traits: {"smithy.api#documentation" => "<p>The amount of seconds that have elapsed since the resize operation began. After the\n            resize operation completes, this value shows the total actual time, in seconds, for the\n            resize operation.</p>"}))
    DescribeResizeOutput.add_member(:estimated_time_to_completion_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: 'EstimatedTimeToCompletionInSeconds', traits: {"smithy.api#documentation" => "<p>The estimated time remaining, in seconds, until the resize operation is complete.\n            This value is calculated based on the average resize rate and the estimated amount of\n            data remaining to be processed. Once the resize operation is complete, this value will\n            be 0.</p>"}))
    DescribeResizeOutput.add_member(:resize_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResizeType', traits: {"smithy.api#documentation" => "<p>An enum with possible values of <code>ClassicResize</code> and\n                <code>ElasticResize</code>. These values describe the type of resize operation being\n            performed. </p>"}))
    DescribeResizeOutput.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>An optional string to provide additional details about the resize action.</p>"}))
    DescribeResizeOutput.add_member(:target_encryption_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetEncryptionType', traits: {"smithy.api#documentation" => "<p>The type of encryption for the cluster after the resize is complete.</p>\n         <p>Possible values are <code>KMS</code> and <code>None</code>. </p>"}))
    DescribeResizeOutput.add_member(:data_transfer_progress_percent, Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'DataTransferProgressPercent', traits: {"smithy.api#documentation" => "<p>The percent of data transferred from source cluster to target cluster.</p>"}))
    DescribeResizeOutput.type = Types::DescribeResizeOutput
    DescribeScheduledActionsMessage.add_member(:scheduled_action_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduledActionName', traits: {"smithy.api#documentation" => "<p>The name of the scheduled action to retrieve. </p>"}))
    DescribeScheduledActionsMessage.add_member(:target_action_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionTypeValues, location_name: 'TargetActionType', traits: {"smithy.api#documentation" => "<p>The type of the scheduled actions to retrieve. </p>"}))
    DescribeScheduledActionsMessage.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The start time in UTC of the scheduled actions to retrieve. \n            Only active scheduled actions that have invocations after this time are retrieved.</p>"}))
    DescribeScheduledActionsMessage.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The end time in UTC of the scheduled action to retrieve. \n            Only active scheduled actions that have invocations before this time are retrieved.</p>"}))
    DescribeScheduledActionsMessage.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'Active', traits: {"smithy.api#documentation" => "<p>If true, retrieve only active scheduled actions. \n           If false, retrieve only disabled scheduled actions. </p>"}))
    DescribeScheduledActionsMessage.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionFilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>List of scheduled action filters. </p>"}))
    DescribeScheduledActionsMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An optional parameter that specifies the starting point to return a set of response\n            records. When the results of a <a>DescribeScheduledActions</a> request\n            exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the\n            <code>Marker</code> field of the response. You can retrieve the next set of response\n            records by providing the returned marker value in the <code>Marker</code> parameter and\n            retrying the request. </p>"}))
    DescribeScheduledActionsMessage.add_member(:max_records, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords', traits: {"smithy.api#documentation" => "<p>The maximum number of response records to return in each call. If the number of\n            remaining response records exceeds the specified <code>MaxRecords</code> value, a value\n            is returned in a <code>marker</code> field of the response. You can retrieve the next\n            set of records by retrying the command with the returned marker value. </p>\n         <p>Default: <code>100</code>\n         </p>\n         <p>Constraints: minimum 20, maximum 100.</p>"}))
    DescribeScheduledActionsMessage.type = Types::DescribeScheduledActionsMessage
    DescribeSnapshotCopyGrantsMessage.add_member(:snapshot_copy_grant_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotCopyGrantName', traits: {"smithy.api#documentation" => "<p>The name of the snapshot copy grant.</p>"}))
    DescribeSnapshotCopyGrantsMessage.add_member(:max_records, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords', traits: {"smithy.api#documentation" => "<p>The maximum number of response records to return in each call. If the number of\n            remaining response records exceeds the specified <code>MaxRecords</code> value, a value\n            is returned in a <code>marker</code> field of the response. You can retrieve the next\n            set of records by retrying the command with the returned marker value. </p>\n         <p>Default: <code>100</code>\n         </p>\n         <p>Constraints: minimum 20, maximum 100.</p>"}))
    DescribeSnapshotCopyGrantsMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An optional parameter that specifies the starting point to return a set of response\n            records. When the results of a <code>DescribeSnapshotCopyGrant</code> request exceed the\n            value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the\n                <code>Marker</code> field of the response. You can retrieve the next set of response\n            records by providing the returned marker value in the <code>Marker</code> parameter and\n            retrying the request. </p>\n         <p>Constraints: You can specify either the <b>SnapshotCopyGrantName</b> parameter or the <b>Marker</b> parameter, but not both. </p>"}))
    DescribeSnapshotCopyGrantsMessage.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>A tag key or keys for which you want to return all matching resources that are\n            associated with the specified key or keys. For example, suppose that you have resources\n            tagged with keys called <code>owner</code> and <code>environment</code>. If you specify\n            both of these tag keys in the request, Amazon Redshift returns a response with all resources\n            that have either or both of these tag keys associated with them.</p>"}))
    DescribeSnapshotCopyGrantsMessage.add_member(:tag_values, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValueList, location_name: 'TagValues', traits: {"smithy.api#documentation" => "<p>A tag value or values for which you want to return all matching resources that are\n            associated with the specified value or values. For example, suppose that you have\n            resources tagged with values called <code>admin</code> and <code>test</code>. If you\n            specify both of these tag values in the request, Amazon Redshift returns a response with all\n            resources that have either or both of these tag values associated with them.</p>"}))
    DescribeSnapshotCopyGrantsMessage.type = Types::DescribeSnapshotCopyGrantsMessage
    DescribeSnapshotSchedulesMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier for the cluster whose snapshot schedules you want to\n            view.</p>"}))
    DescribeSnapshotSchedulesMessage.add_member(:schedule_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduleIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for a snapshot schedule.</p>"}))
    DescribeSnapshotSchedulesMessage.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>The key value for a snapshot schedule tag.</p>"}))
    DescribeSnapshotSchedulesMessage.add_member(:tag_values, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValueList, location_name: 'TagValues', traits: {"smithy.api#documentation" => "<p>The value corresponding to the key of the snapshot schedule tag.</p>"}))
    DescribeSnapshotSchedulesMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>A value that indicates the starting point for the next set of response records in a\n            subsequent request. If a value is returned in a response, you can retrieve the next set\n            of records by providing this returned marker value in the <code>marker</code> parameter\n            and retrying the command. If the <code>marker</code> field is empty, all response\n            records have been retrieved for the request.</p>"}))
    DescribeSnapshotSchedulesMessage.add_member(:max_records, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords', traits: {"smithy.api#documentation" => "<p>The maximum number or response records to return in each call. If the number of\n            remaining response records exceeds the specified <code>MaxRecords</code> value, a value\n            is returned in a <code>marker</code> field of the response. You can retrieve the next\n            set of records by retrying the command with the returned <code>marker</code>\n            value.</p>"}))
    DescribeSnapshotSchedulesMessage.type = Types::DescribeSnapshotSchedulesMessage
    DescribeSnapshotSchedulesOutputMessage.add_member(:snapshot_schedules, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotScheduleList, location_name: 'SnapshotSchedules', traits: {"smithy.api#documentation" => "<p>A list of SnapshotSchedules.</p>"}))
    DescribeSnapshotSchedulesOutputMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>A value that indicates the starting point for the next set of response records in a\n            subsequent request. If a value is returned in a response, you can retrieve the next set\n            of records by providing this returned marker value in the <code>marker</code> parameter\n            and retrying the command. If the <code>marker</code> field is empty, all response\n            records have been retrieved for the request.</p>"}))
    DescribeSnapshotSchedulesOutputMessage.type = Types::DescribeSnapshotSchedulesOutputMessage
    DescribeTableRestoreStatusMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The Amazon Redshift cluster that the table is being restored to.</p>"}))
    DescribeTableRestoreStatusMessage.add_member(:table_restore_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TableRestoreRequestId', traits: {"smithy.api#documentation" => "<p>The identifier of the table restore request to return status for. If you don't\n            specify a <code>TableRestoreRequestId</code> value, then\n                <code>DescribeTableRestoreStatus</code> returns the status of all in-progress table\n            restore requests.</p>"}))
    DescribeTableRestoreStatusMessage.add_member(:max_records, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords', traits: {"smithy.api#documentation" => "<p>The maximum number of records to include in the response. If more records exist\n            than the specified <code>MaxRecords</code> value, a pagination token called a marker is\n            included in the response so that the remaining results can be retrieved.</p>"}))
    DescribeTableRestoreStatusMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An optional pagination token provided by a previous\n                <code>DescribeTableRestoreStatus</code> request. If this parameter is specified, the\n            response includes only records beyond the marker, up to the value specified by the\n                <code>MaxRecords</code> parameter.</p>"}))
    DescribeTableRestoreStatusMessage.type = Types::DescribeTableRestoreStatusMessage
    DescribeTagsMessage.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for which you want to describe the tag or tags. For\n            example, <code>arn:aws:redshift:us-east-2:123456789:cluster:t1</code>. </p>"}))
    DescribeTagsMessage.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The type of resource with which you want to view tags. Valid resource types are: </p>\n         <ul>\n            <li>\n               <p>Cluster</p>\n            </li>\n            <li>\n               <p>CIDR/IP</p>\n            </li>\n            <li>\n               <p>EC2 security group</p>\n            </li>\n            <li>\n               <p>Snapshot</p>\n            </li>\n            <li>\n               <p>Cluster security group</p>\n            </li>\n            <li>\n               <p>Subnet group</p>\n            </li>\n            <li>\n               <p>HSM connection</p>\n            </li>\n            <li>\n               <p>HSM certificate</p>\n            </li>\n            <li>\n               <p>Parameter group</p>\n            </li>\n            <li>\n               <p>Snapshot copy grant</p>\n            </li>\n            <li>\n               <p>Integration (zero-ETL integration or S3 event integration)</p>\n               <note>\n                  <p>To describe the tags associated with an <code>integration</code>, don't specify <code>ResourceType</code>, \n                    instead specify the <code>ResourceName</code> of the integration.</p>\n               </note>\n            </li>\n         </ul>\n         <p>For more information about Amazon Redshift resource types and constructing ARNs, go to\n                <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-overview.html#redshift-iam-access-control-specify-actions\">Specifying Policy Elements: Actions, Effects, Resources, and Principals</a> in\n            the Amazon Redshift Cluster Management Guide. </p>"}))
    DescribeTagsMessage.add_member(:max_records, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords', traits: {"smithy.api#documentation" => "<p>The maximum number or response records to return in each call. If the number of\n            remaining response records exceeds the specified <code>MaxRecords</code> value, a value\n            is returned in a <code>marker</code> field of the response. You can retrieve the next\n            set of records by retrying the command with the returned <code>marker</code> value.\n        </p>"}))
    DescribeTagsMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>A value that indicates the starting point for the next set of response records in a\n            subsequent request. If a value is returned in a response, you can retrieve the next set\n            of records by providing this returned marker value in the <code>marker</code> parameter\n            and retrying the command. If the <code>marker</code> field is empty, all response\n            records have been retrieved for the request. </p>"}))
    DescribeTagsMessage.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>A tag key or keys for which you want to return all matching resources that are\n            associated with the specified key or keys. For example, suppose that you have resources\n            tagged with keys called <code>owner</code> and <code>environment</code>. If you specify\n            both of these tag keys in the request, Amazon Redshift returns a response with all resources\n            that have either or both of these tag keys associated with them.</p>"}))
    DescribeTagsMessage.add_member(:tag_values, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValueList, location_name: 'TagValues', traits: {"smithy.api#documentation" => "<p>A tag value or values for which you want to return all matching resources that are\n            associated with the specified value or values. For example, suppose that you have\n            resources tagged with values called <code>admin</code> and <code>test</code>. If you\n            specify both of these tag values in the request, Amazon Redshift returns a response with all\n            resources that have either or both of these tag values associated with them.</p>"}))
    DescribeTagsMessage.type = Types::DescribeTagsMessage
    DescribeUsageLimitsMessage.add_member(:usage_limit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UsageLimitId', traits: {"smithy.api#documentation" => "<p>The identifier of the usage limit to describe.</p>"}))
    DescribeUsageLimitsMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the cluster for which you want to describe usage limits.</p>"}))
    DescribeUsageLimitsMessage.add_member(:feature_type, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitFeatureType, location_name: 'FeatureType', traits: {"smithy.api#documentation" => "<p>The feature type for which you want to describe usage limits.</p>"}))
    DescribeUsageLimitsMessage.add_member(:max_records, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords', traits: {"smithy.api#documentation" => "<p>The maximum number of response records to return in each call. If the number of\n            remaining response records exceeds the specified <code>MaxRecords</code> value, a value\n            is returned in a <code>marker</code> field of the response. You can retrieve the next\n            set of records by retrying the command with the returned marker value. </p>\n         <p>Default: <code>100</code>\n         </p>\n         <p>Constraints: minimum 20, maximum 100.</p>"}))
    DescribeUsageLimitsMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An optional parameter that specifies the starting point to return a set of response\n            records. When the results of a <a>DescribeUsageLimits</a> request\n            exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the\n            <code>Marker</code> field of the response. You can retrieve the next set of response\n            records by providing the returned marker value in the <code>Marker</code> parameter and\n            retrying the request. </p>"}))
    DescribeUsageLimitsMessage.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>A tag key or keys for which you want to return all matching usage limit objects\n            that are associated with the specified key or keys. For example, suppose that you\n            have parameter groups that are tagged with keys called <code>owner</code> and\n            <code>environment</code>. If you specify both of these tag keys in the request,\n            Amazon Redshift returns a response with the usage limit objects have either or both of these\n            tag keys associated with them.</p>"}))
    DescribeUsageLimitsMessage.add_member(:tag_values, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValueList, location_name: 'TagValues', traits: {"smithy.api#documentation" => "<p>A tag value or values for which you want to return all matching usage limit objects\n            that are associated with the specified tag value or values. For example, suppose\n            that you have parameter groups that are tagged with values called <code>admin</code> and\n            <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift\n            returns a response with the usage limit objects that have either or both of these tag\n            values associated with them.</p>"}))
    DescribeUsageLimitsMessage.type = Types::DescribeUsageLimitsMessage
    DescribeUsageLimitsOutput.add_member(:usage_limits, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimits, location_name: 'UsageLimits', traits: {"smithy.api#documentation" => "<p>Contains the output from the <a>DescribeUsageLimits</a>\n            action. </p>"}))
    DescribeUsageLimitsOutput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>A value that indicates the starting point for the next set of response records in a\n            subsequent request. If a value is returned in a response, you can retrieve the next set\n            of records by providing this returned marker value in the <code>Marker</code> parameter\n            and retrying the command. If the <code>Marker</code> field is empty, all response\n            records have been retrieved for the request. </p>"}))
    DescribeUsageLimitsOutput.type = Types::DescribeUsageLimitsOutput
    DisableLoggingMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The identifier of the cluster on which logging is to be stopped.</p>\n         <p>Example: <code>examplecluster</code>\n         </p>", "smithy.api#required" => {}}))
    DisableLoggingMessage.type = Types::DisableLoggingMessage
    DisableLoggingOutput.add_member(:logging_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'LoggingEnabled', traits: {"smithy.api#documentation" => "<p>\n            <code>true</code> if logging is on, <code>false</code> if logging is off.</p>"}))
    DisableLoggingOutput.add_member(:bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BucketName', traits: {"smithy.api#documentation" => "<p>The name of the S3 bucket where the log files are stored.</p>"}))
    DisableLoggingOutput.add_member(:s3_key_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: S3KeyPrefixValue, location_name: 'S3KeyPrefix', traits: {"smithy.api#documentation" => "<p>The prefix applied to the log file names.</p>"}))
    DisableLoggingOutput.add_member(:last_successful_delivery_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'LastSuccessfulDeliveryTime', traits: {"smithy.api#documentation" => "<p>The last time that logs were delivered.</p>"}))
    DisableLoggingOutput.add_member(:last_failure_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'LastFailureTime', traits: {"smithy.api#documentation" => "<p>The last time when logs failed to be delivered.</p>"}))
    DisableLoggingOutput.add_member(:last_failure_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastFailureMessage', traits: {"smithy.api#documentation" => "<p>The message indicating that logs failed to be delivered.</p>"}))
    DisableLoggingOutput.add_member(:log_destination_type, Smithy::Schema::Shapes::ShapeRef.new(shape: LogDestinationType, location_name: 'LogDestinationType', traits: {"smithy.api#documentation" => "<p>The log destination type. An enum with possible values of <code>s3</code> and <code>cloudwatch</code>.</p>"}))
    DisableLoggingOutput.add_member(:log_exports, Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'LogExports', traits: {"smithy.api#documentation" => "<p>The collection of exported log types. Possible values are <code>connectionlog</code>, <code>useractivitylog</code>, and \n            <code>userlog</code>.</p>"}))
    DisableLoggingOutput.type = Types::DisableLoggingOutput
    DisableSnapshotCopyMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier of the source cluster that you want to disable copying of\n            snapshots to a destination region.</p>\n         <p>Constraints: Must be the valid name of an existing cluster that has cross-region\n            snapshot copy enabled.</p>", "smithy.api#required" => {}}))
    DisableSnapshotCopyMessage.type = Types::DisableSnapshotCopyMessage
    DisableSnapshotCopyResult.add_member(:cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster'))
    DisableSnapshotCopyResult.type = Types::DisableSnapshotCopyResult
    DisassociateDataShareConsumerMessage.add_member(:data_share_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataShareArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the datashare to remove association for.</p>", "smithy.api#required" => {}}))
    DisassociateDataShareConsumerMessage.add_member(:disassociate_entire_account, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DisassociateEntireAccount', traits: {"smithy.api#documentation" => "<p>A value that specifies whether association for the datashare is removed from the\n            entire account.</p>"}))
    DisassociateDataShareConsumerMessage.add_member(:consumer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConsumerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the consumer namespace that association for\n            the datashare is removed from.</p>"}))
    DisassociateDataShareConsumerMessage.add_member(:consumer_region, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConsumerRegion', traits: {"smithy.api#documentation" => "<p>From a datashare consumer account, removes association of a datashare from all the existing and future namespaces in the specified Amazon Web Services Region.</p>"}))
    DisassociateDataShareConsumerMessage.type = Types::DisassociateDataShareConsumerMessage
    DisassociateDataShareConsumerOutput.add_member(:data_share_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataShareArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the datashare that the consumer is to use.</p>"}))
    DisassociateDataShareConsumerOutput.add_member(:producer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProducerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the producer namespace.</p>"}))
    DisassociateDataShareConsumerOutput.add_member(:allow_publicly_accessible_consumers, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllowPubliclyAccessibleConsumers', traits: {"smithy.api#documentation" => "<p>A value that specifies whether the datashare can be shared to a publicly accessible  cluster.</p>"}))
    DisassociateDataShareConsumerOutput.add_member(:data_share_associations, Smithy::Schema::Shapes::ShapeRef.new(shape: DataShareAssociationList, location_name: 'DataShareAssociations', traits: {"smithy.api#documentation" => "<p>A value that specifies when the datashare has an association between producer and data\n            consumers.</p>"}))
    DisassociateDataShareConsumerOutput.add_member(:managed_by, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ManagedBy', traits: {"smithy.api#documentation" => "<p>The identifier of a datashare to show its managing entity.</p>"}))
    DisassociateDataShareConsumerOutput.add_member(:data_share_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DataShareType, location_name: 'DataShareType', traits: {"smithy.api#documentation" => "<p> The type of the datashare created by RegisterNamespace.</p>"}))
    DisassociateDataShareConsumerOutput.type = Types::DisassociateDataShareConsumerOutput
    EC2SecurityGroup.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the EC2 security group.</p>"}))
    EC2SecurityGroup.add_member(:ec2_security_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EC2SecurityGroupName', traits: {"smithy.api#documentation" => "<p>The name of the EC2 Security Group.</p>"}))
    EC2SecurityGroup.add_member(:ec2_security_group_owner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EC2SecurityGroupOwnerId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the owner of the EC2 security group specified in the\n                <code>EC2SecurityGroupName</code> field. </p>"}))
    EC2SecurityGroup.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of tags for the EC2 security group.</p>"}))
    EC2SecurityGroup.type = Types::EC2SecurityGroup
    EC2SecurityGroupList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EC2SecurityGroup, traits: {"smithy.api#xmlName" => "EC2SecurityGroup"})
    ElasticIpStatus.add_member(:elastic_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ElasticIp', traits: {"smithy.api#documentation" => "<p>The elastic IP (EIP) address for the cluster.</p>"}))
    ElasticIpStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the elastic IP (EIP) address.</p>"}))
    ElasticIpStatus.type = Types::ElasticIpStatus
    EligibleTracksToUpdateList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTarget, traits: {"smithy.api#xmlName" => "UpdateTarget"})
    EnableLoggingMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The identifier of the cluster on which logging is to be started.</p>\n         <p>Example: <code>examplecluster</code>\n         </p>", "smithy.api#required" => {}}))
    EnableLoggingMessage.add_member(:bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BucketName', traits: {"smithy.api#documentation" => "<p>The name of an existing S3 bucket where the log files are to be stored.</p>\n         <p>Constraints:</p>\n         <ul>\n            <li>\n               <p>Must be in the same region as the cluster</p>\n            </li>\n            <li>\n               <p>The cluster must have read bucket and put object permissions</p>\n            </li>\n         </ul>"}))
    EnableLoggingMessage.add_member(:s3_key_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: S3KeyPrefixValue, location_name: 'S3KeyPrefix', traits: {"smithy.api#documentation" => "<p>The prefix applied to the log file names.</p>\n         <p>Valid characters are any letter from any language, any whitespace character, any numeric character, and the following characters: \n            underscore (<code>_</code>), period (<code>.</code>), colon (<code>:</code>), slash (<code>/</code>), equal (<code>=</code>), plus (<code>+</code>), backslash (<code>\\</code>),\n            hyphen (<code>-</code>), at symbol (<code>@</code>).</p>"}))
    EnableLoggingMessage.add_member(:log_destination_type, Smithy::Schema::Shapes::ShapeRef.new(shape: LogDestinationType, location_name: 'LogDestinationType', traits: {"smithy.api#documentation" => "<p>The log destination type. An enum with possible values of <code>s3</code> and <code>cloudwatch</code>.</p>"}))
    EnableLoggingMessage.add_member(:log_exports, Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'LogExports', traits: {"smithy.api#documentation" => "<p>The collection of exported log types. Possible values are <code>connectionlog</code>, <code>useractivitylog</code>, and <code>userlog</code>.</p>"}))
    EnableLoggingMessage.type = Types::EnableLoggingMessage
    EnableLoggingOutput.add_member(:logging_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'LoggingEnabled', traits: {"smithy.api#documentation" => "<p>\n            <code>true</code> if logging is on, <code>false</code> if logging is off.</p>"}))
    EnableLoggingOutput.add_member(:bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BucketName', traits: {"smithy.api#documentation" => "<p>The name of the S3 bucket where the log files are stored.</p>"}))
    EnableLoggingOutput.add_member(:s3_key_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: S3KeyPrefixValue, location_name: 'S3KeyPrefix', traits: {"smithy.api#documentation" => "<p>The prefix applied to the log file names.</p>"}))
    EnableLoggingOutput.add_member(:last_successful_delivery_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'LastSuccessfulDeliveryTime', traits: {"smithy.api#documentation" => "<p>The last time that logs were delivered.</p>"}))
    EnableLoggingOutput.add_member(:last_failure_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'LastFailureTime', traits: {"smithy.api#documentation" => "<p>The last time when logs failed to be delivered.</p>"}))
    EnableLoggingOutput.add_member(:last_failure_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastFailureMessage', traits: {"smithy.api#documentation" => "<p>The message indicating that logs failed to be delivered.</p>"}))
    EnableLoggingOutput.add_member(:log_destination_type, Smithy::Schema::Shapes::ShapeRef.new(shape: LogDestinationType, location_name: 'LogDestinationType', traits: {"smithy.api#documentation" => "<p>The log destination type. An enum with possible values of <code>s3</code> and <code>cloudwatch</code>.</p>"}))
    EnableLoggingOutput.add_member(:log_exports, Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'LogExports', traits: {"smithy.api#documentation" => "<p>The collection of exported log types. Possible values are <code>connectionlog</code>, <code>useractivitylog</code>, and \n            <code>userlog</code>.</p>"}))
    EnableLoggingOutput.type = Types::EnableLoggingOutput
    EnableSnapshotCopyMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier of the source cluster to copy snapshots from.</p>\n         <p>Constraints: Must be the valid name of an existing cluster that does not already\n            have cross-region snapshot copy enabled.</p>", "smithy.api#required" => {}}))
    EnableSnapshotCopyMessage.add_member(:destination_region, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DestinationRegion', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The destination Amazon Web Services Region that you want to copy snapshots to.</p>\n         <p>Constraints: Must be the name of a valid Amazon Web Services Region. For more information, see\n                <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html#redshift_region\">Regions and Endpoints</a> in the Amazon Web Services General Reference.\n        </p>", "smithy.api#required" => {}}))
    EnableSnapshotCopyMessage.add_member(:retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'RetentionPeriod', traits: {"smithy.api#documentation" => "<p>The number of days to retain automated snapshots in the destination region after\n            they are copied from the source region.</p>\n         <p>Default: 7.</p>\n         <p>Constraints: Must be at least 1 and no more than 35.</p>"}))
    EnableSnapshotCopyMessage.add_member(:snapshot_copy_grant_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotCopyGrantName', traits: {"smithy.api#documentation" => "<p>The name of the snapshot copy grant to use when snapshots of an Amazon Web Services KMS-encrypted\n            cluster are copied to the destination region.</p>"}))
    EnableSnapshotCopyMessage.add_member(:manual_snapshot_retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'ManualSnapshotRetentionPeriod', traits: {"smithy.api#documentation" => "<p>The number of days to retain newly copied snapshots in the destination Amazon Web Services Region\n            after they are copied from the source Amazon Web Services Region. If the value is -1, the manual\n            snapshot is retained indefinitely. </p>\n         <p>The value must be either -1 or an integer between 1 and 3,653.</p>"}))
    EnableSnapshotCopyMessage.type = Types::EnableSnapshotCopyMessage
    EnableSnapshotCopyResult.add_member(:cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster'))
    EnableSnapshotCopyResult.type = Types::EnableSnapshotCopyResult
    EncryptionContextMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    EncryptionContextMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Endpoint.add_member(:address, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Address', traits: {"smithy.api#documentation" => "<p>The DNS address of the Cluster.</p>"}))
    Endpoint.add_member(:port, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Port', traits: {"smithy.api#documentation" => "<p>The port that the database engine is listening on.</p>"}))
    Endpoint.add_member(:vpc_endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointsList, location_name: 'VpcEndpoints', traits: {"smithy.api#documentation" => "<p>Describes a connection endpoint.</p>"}))
    Endpoint.type = Types::Endpoint
    EndpointAccess.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The cluster identifier of the cluster associated with the endpoint.</p>"}))
    EndpointAccess.add_member(:resource_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceOwner', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the owner of the cluster.</p>"}))
    EndpointAccess.add_member(:subnet_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubnetGroupName', traits: {"smithy.api#documentation" => "<p>The subnet group name where Amazon Redshift chooses to deploy the endpoint.</p>"}))
    EndpointAccess.add_member(:endpoint_status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointStatus', traits: {"smithy.api#documentation" => "<p>The status of the endpoint.</p>"}))
    EndpointAccess.add_member(:endpoint_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointName', traits: {"smithy.api#documentation" => "<p>The name of the endpoint.</p>"}))
    EndpointAccess.add_member(:endpoint_create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'EndpointCreateTime', traits: {"smithy.api#documentation" => "<p>The time (UTC) that the endpoint was created.</p>"}))
    EndpointAccess.add_member(:port, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Port', traits: {"smithy.api#documentation" => "<p>The port number on which the cluster accepts incoming connections.</p>"}))
    EndpointAccess.add_member(:address, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Address', traits: {"smithy.api#documentation" => "<p>The DNS address of the endpoint.</p>"}))
    EndpointAccess.add_member(:vpc_security_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupMembershipList, location_name: 'VpcSecurityGroups', traits: {"smithy.api#documentation" => "<p>The security groups associated with the endpoint.</p>"}))
    EndpointAccess.add_member(:vpc_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpoint, location_name: 'VpcEndpoint'))
    EndpointAccess.type = Types::EndpointAccess
    EndpointAccesses.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointAccess)
    EndpointAlreadyExistsFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    EndpointAlreadyExistsFault.type = Types::EndpointAlreadyExistsFault
    EndpointAuthorization.add_member(:grantor, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Grantor', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the cluster owner.</p>"}))
    EndpointAuthorization.add_member(:grantee, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Grantee', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the grantee of the cluster.</p>"}))
    EndpointAuthorization.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The cluster identifier.</p>"}))
    EndpointAuthorization.add_member(:authorize_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'AuthorizeTime', traits: {"smithy.api#documentation" => "<p>The time (UTC) when the authorization was created.</p>"}))
    EndpointAuthorization.add_member(:cluster_status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterStatus', traits: {"smithy.api#documentation" => "<p>The status of the cluster.</p>"}))
    EndpointAuthorization.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the authorization action.</p>"}))
    EndpointAuthorization.add_member(:allowed_all_vp_cs, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllowedAllVPCs', traits: {"smithy.api#documentation" => "<p>Indicates whether all VPCs in the grantee account are allowed access to the cluster.</p>"}))
    EndpointAuthorization.add_member(:allowed_vp_cs, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcIdentifierList, location_name: 'AllowedVPCs', traits: {"smithy.api#documentation" => "<p>The VPCs allowed access to the cluster.</p>"}))
    EndpointAuthorization.add_member(:endpoint_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'EndpointCount', traits: {"smithy.api#documentation" => "<p>The number of Redshift-managed VPC endpoints created for the authorization.</p>"}))
    EndpointAuthorization.type = Types::EndpointAuthorization
    EndpointAuthorizationAlreadyExistsFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    EndpointAuthorizationAlreadyExistsFault.type = Types::EndpointAuthorizationAlreadyExistsFault
    EndpointAuthorizationNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    EndpointAuthorizationNotFoundFault.type = Types::EndpointAuthorizationNotFoundFault
    EndpointAuthorizations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointAuthorization)
    EndpointAuthorizationsPerClusterLimitExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    EndpointAuthorizationsPerClusterLimitExceededFault.type = Types::EndpointAuthorizationsPerClusterLimitExceededFault
    EndpointNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    EndpointNotFoundFault.type = Types::EndpointNotFoundFault
    EndpointsPerAuthorizationLimitExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    EndpointsPerAuthorizationLimitExceededFault.type = Types::EndpointsPerAuthorizationLimitExceededFault
    EndpointsPerClusterLimitExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    EndpointsPerClusterLimitExceededFault.type = Types::EndpointsPerClusterLimitExceededFault
    Event.add_member(:source_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier for the source of the event.</p>"}))
    Event.add_member(:source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceType, location_name: 'SourceType', traits: {"smithy.api#documentation" => "<p>The source type for this event.</p>"}))
    Event.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The text of this event.</p>"}))
    Event.add_member(:event_categories, Smithy::Schema::Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: 'EventCategories', traits: {"smithy.api#documentation" => "<p>A list of the event categories.</p>\n         <p>Values: Configuration, Management, Monitoring, Security, Pending</p>"}))
    Event.add_member(:severity, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Severity', traits: {"smithy.api#documentation" => "<p>The severity of the event.</p>\n         <p>Values: ERROR, INFO</p>"}))
    Event.add_member(:date, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'Date', traits: {"smithy.api#documentation" => "<p>The date and time of the event.</p>"}))
    Event.add_member(:event_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EventId', traits: {"smithy.api#documentation" => "<p>The identifier of the event.</p>"}))
    Event.type = Types::Event
    EventCategoriesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "EventCategory"})
    EventCategoriesMap.add_member(:source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceType', traits: {"smithy.api#documentation" => "<p>The source type, such as cluster or cluster-snapshot, that the returned categories\n            belong to.</p>"}))
    EventCategoriesMap.add_member(:events, Smithy::Schema::Shapes::ShapeRef.new(shape: EventInfoMapList, location_name: 'Events', traits: {"smithy.api#documentation" => "<p>The events in the event category.</p>"}))
    EventCategoriesMap.type = Types::EventCategoriesMap
    EventCategoriesMapList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EventCategoriesMap, traits: {"smithy.api#xmlName" => "EventCategoriesMap"})
    EventCategoriesMessage.add_member(:event_categories_map_list, Smithy::Schema::Shapes::ShapeRef.new(shape: EventCategoriesMapList, location_name: 'EventCategoriesMapList', traits: {"smithy.api#documentation" => "<p>A list of event categories descriptions.</p>"}))
    EventCategoriesMessage.type = Types::EventCategoriesMessage
    EventInfoMap.add_member(:event_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EventId', traits: {"smithy.api#documentation" => "<p>The identifier of an Amazon Redshift event.</p>"}))
    EventInfoMap.add_member(:event_categories, Smithy::Schema::Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: 'EventCategories', traits: {"smithy.api#documentation" => "<p>The category of an Amazon Redshift event.</p>"}))
    EventInfoMap.add_member(:event_description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EventDescription', traits: {"smithy.api#documentation" => "<p>The description of an Amazon Redshift event.</p>"}))
    EventInfoMap.add_member(:severity, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Severity', traits: {"smithy.api#documentation" => "<p>The severity of the event.</p>\n         <p>Values: ERROR, INFO</p>"}))
    EventInfoMap.type = Types::EventInfoMap
    EventInfoMapList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EventInfoMap, traits: {"smithy.api#xmlName" => "EventInfoMap"})
    EventList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Event, traits: {"smithy.api#xmlName" => "Event"})
    EventSubscription.add_member(:customer_aws_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomerAwsId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account associated with the Amazon Redshift event notification\n            subscription.</p>"}))
    EventSubscription.add_member(:cust_subscription_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustSubscriptionId', traits: {"smithy.api#documentation" => "<p>The name of the Amazon Redshift event notification subscription.</p>"}))
    EventSubscription.add_member(:sns_topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnsTopicArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon SNS topic used by the event\n            notification subscription.</p>"}))
    EventSubscription.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the Amazon Redshift event notification subscription.</p>\n         <p>Constraints:</p>\n         <ul>\n            <li>\n               <p>Can be one of the following: active | no-permission |\n                    topic-not-exist</p>\n            </li>\n            <li>\n               <p>The status \"no-permission\" indicates that Amazon Redshift no longer has\n                    permission to post to the Amazon SNS topic. The status \"topic-not-exist\"\n                    indicates that the topic was deleted after the subscription was\n                    created.</p>\n            </li>\n         </ul>"}))
    EventSubscription.add_member(:subscription_creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'SubscriptionCreationTime', traits: {"smithy.api#documentation" => "<p>The date and time the Amazon Redshift event notification subscription was\n            created.</p>"}))
    EventSubscription.add_member(:source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceType', traits: {"smithy.api#documentation" => "<p>The source type of the events returned by the Amazon Redshift event notification, such as\n            cluster, cluster-snapshot, cluster-parameter-group, cluster-security-group, or scheduled-action. </p>"}))
    EventSubscription.add_member(:source_ids_list, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceIdsList, location_name: 'SourceIdsList', traits: {"smithy.api#documentation" => "<p>A list of the sources that publish events to the Amazon Redshift event notification\n            subscription.</p>"}))
    EventSubscription.add_member(:event_categories_list, Smithy::Schema::Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: 'EventCategoriesList', traits: {"smithy.api#documentation" => "<p>The list of Amazon Redshift event categories specified in the event notification\n            subscription.</p>\n         <p>Values: Configuration, Management, Monitoring, Security, Pending</p>"}))
    EventSubscription.add_member(:severity, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Severity', traits: {"smithy.api#documentation" => "<p>The event severity specified in the Amazon Redshift event notification\n            subscription.</p>\n         <p>Values: ERROR, INFO</p>"}))
    EventSubscription.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>A boolean value indicating whether the subscription is enabled; <code>true</code>\n            indicates that the subscription is enabled.</p>"}))
    EventSubscription.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of tags for the event subscription.</p>"}))
    EventSubscription.type = Types::EventSubscription
    EventSubscriptionQuotaExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    EventSubscriptionQuotaExceededFault.type = Types::EventSubscriptionQuotaExceededFault
    EventSubscriptionsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EventSubscription, traits: {"smithy.api#xmlName" => "EventSubscription"})
    EventSubscriptionsMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>A value that indicates the starting point for the next set of response records in a\n            subsequent request. If a value is returned in a response, you can retrieve the next set\n            of records by providing this returned marker value in the <code>Marker</code> parameter\n            and retrying the command. If the <code>Marker</code> field is empty, all response\n            records have been retrieved for the request. </p>"}))
    EventSubscriptionsMessage.add_member(:event_subscriptions_list, Smithy::Schema::Shapes::ShapeRef.new(shape: EventSubscriptionsList, location_name: 'EventSubscriptionsList', traits: {"smithy.api#documentation" => "<p>A list of event subscriptions.</p>"}))
    EventSubscriptionsMessage.type = Types::EventSubscriptionsMessage
    EventsMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>A value that indicates the starting point for the next set of response records in a\n            subsequent request. If a value is returned in a response, you can retrieve the next set\n            of records by providing this returned marker value in the <code>Marker</code> parameter\n            and retrying the command. If the <code>Marker</code> field is empty, all response\n            records have been retrieved for the request. </p>"}))
    EventsMessage.add_member(:events, Smithy::Schema::Shapes::ShapeRef.new(shape: EventList, location_name: 'Events', traits: {"smithy.api#documentation" => "<p>A list of <code>Event</code> instances. </p>"}))
    EventsMessage.type = Types::EventsMessage
    FailoverPrimaryComputeInputMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier of the cluster for which the primary compute unit will be failed over to another Availability Zone.</p>", "smithy.api#required" => {}}))
    FailoverPrimaryComputeInputMessage.type = Types::FailoverPrimaryComputeInputMessage
    FailoverPrimaryComputeResult.add_member(:cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster'))
    FailoverPrimaryComputeResult.type = Types::FailoverPrimaryComputeResult
    GetClusterCredentialsMessage.add_member(:db_user, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbUser', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of a database user. If a user name matching <code>DbUser</code> exists in\n            the database, the temporary user credentials have the same permissions as the existing\n            user. If <code>DbUser</code> doesn't exist in the database and <code>Autocreate</code>\n            is <code>True</code>, a new user is created using the value for <code>DbUser</code> with\n            PUBLIC permissions. If a database user matching the value for <code>DbUser</code>\n            doesn't exist and <code>Autocreate</code> is <code>False</code>, then the command\n            succeeds but the connection attempt will fail because the user doesn't exist in the\n            database.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/redshift/latest/dg/r_CREATE_USER.html\">CREATE USER</a> in the Amazon\n            Redshift Database Developer Guide. </p>\n         <p>Constraints:</p>\n         <ul>\n            <li>\n               <p>Must be 1 to 64 alphanumeric characters or hyphens. The user name can't be\n                        <code>PUBLIC</code>.</p>\n            </li>\n            <li>\n               <p>Must contain uppercase or lowercase letters, numbers, underscore, plus sign, period\n                    (dot), at symbol (@), or hyphen.</p>\n            </li>\n            <li>\n               <p>First character must be a letter.</p>\n            </li>\n            <li>\n               <p>Must not contain a colon ( : ) or slash ( / ). </p>\n            </li>\n            <li>\n               <p>Cannot be a reserved word. A list of reserved words can be found in <a href=\"http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html\">Reserved Words</a> in the Amazon\n                    Redshift Database Developer Guide.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    GetClusterCredentialsMessage.add_member(:db_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbName', traits: {"smithy.api#documentation" => "<p>The name of a database that <code>DbUser</code> is authorized to log on to. If\n                <code>DbName</code> is not specified, <code>DbUser</code> can log on to any existing\n            database.</p>\n         <p>Constraints:</p>\n         <ul>\n            <li>\n               <p>Must be 1 to 64 alphanumeric characters or hyphens</p>\n            </li>\n            <li>\n               <p>Must contain uppercase or lowercase letters, numbers, underscore, plus sign, period\n                    (dot), at symbol (@), or hyphen.</p>\n            </li>\n            <li>\n               <p>First character must be a letter.</p>\n            </li>\n            <li>\n               <p>Must not contain a colon ( : ) or slash ( / ). </p>\n            </li>\n            <li>\n               <p>Cannot be a reserved word. A list of reserved words can be found in <a href=\"http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html\">Reserved Words</a> in the Amazon\n                    Redshift Database Developer Guide.</p>\n            </li>\n         </ul>"}))
    GetClusterCredentialsMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the cluster that contains the database for which you are\n            requesting credentials. This parameter is case sensitive.</p>"}))
    GetClusterCredentialsMessage.add_member(:duration_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'DurationSeconds', traits: {"smithy.api#documentation" => "<p>The number of seconds until the returned temporary password expires.</p>\n         <p>Constraint: minimum 900, maximum 3600.</p>\n         <p>Default: 900</p>"}))
    GetClusterCredentialsMessage.add_member(:auto_create, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AutoCreate', traits: {"smithy.api#documentation" => "<p>Create a database user with the name specified for the user named in\n                <code>DbUser</code> if one does not exist.</p>"}))
    GetClusterCredentialsMessage.add_member(:db_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: DbGroupList, location_name: 'DbGroups', traits: {"smithy.api#documentation" => "<p>A list of the names of existing database groups that the user named in\n                <code>DbUser</code> will join for the current session, in addition to any group\n            memberships for an existing user. If not specified, a new user is added only to\n            PUBLIC.</p>\n         <p>Database group name constraints</p>\n         <ul>\n            <li>\n               <p>Must be 1 to 64 alphanumeric characters or hyphens</p>\n            </li>\n            <li>\n               <p>Must contain only lowercase letters, numbers, underscore, plus sign, period\n                    (dot), at symbol (@), or hyphen.</p>\n            </li>\n            <li>\n               <p>First character must be a letter.</p>\n            </li>\n            <li>\n               <p>Must not contain a colon ( : ) or slash ( / ). </p>\n            </li>\n            <li>\n               <p>Cannot be a reserved word. A list of reserved words can be found in <a href=\"http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html\">Reserved Words</a> in the Amazon\n                    Redshift Database Developer Guide.</p>\n            </li>\n         </ul>"}))
    GetClusterCredentialsMessage.add_member(:custom_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomDomainName', traits: {"smithy.api#documentation" => "<p>The custom domain name for the cluster credentials.</p>"}))
    GetClusterCredentialsMessage.type = Types::GetClusterCredentialsMessage
    GetClusterCredentialsOutput.add_member(:db_user, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbUser', traits: {"smithy.api#documentation" => "<p>A database user name that is authorized to log on to the database <code>DbName</code>\n            using the password <code>DbPassword</code>. If the specified DbUser exists in the\n            database, the new user name has the same database permissions as the the user named in\n            DbUser. By default, the user is added to PUBLIC. If the <code>DbGroups</code> parameter\n            is specifed, <code>DbUser</code> is added to the listed groups for any sessions created\n            using these credentials.</p>"}))
    GetClusterCredentialsOutput.add_member(:db_password, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'DbPassword', traits: {"smithy.api#documentation" => "<p>A temporary password that authorizes the user name returned by <code>DbUser</code>\n            to log on to the database <code>DbName</code>. </p>"}))
    GetClusterCredentialsOutput.add_member(:expiration, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'Expiration', traits: {"smithy.api#documentation" => "<p>The date and time the password in <code>DbPassword</code> expires.</p>"}))
    GetClusterCredentialsOutput.type = Types::GetClusterCredentialsOutput
    GetClusterCredentialsWithIAMMessage.add_member(:db_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbName', traits: {"smithy.api#documentation" => "<p>The name of the database for which you are requesting credentials.\n            If the database name is specified, the IAM policy must allow access to the resource <code>dbname</code> for the specified database name.\n            If the database name is not specified, access to all databases is allowed.</p>"}))
    GetClusterCredentialsWithIAMMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the cluster that contains the database for which you are\n            requesting credentials. </p>"}))
    GetClusterCredentialsWithIAMMessage.add_member(:duration_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'DurationSeconds', traits: {"smithy.api#documentation" => "<p>The number of seconds until the returned temporary password expires.</p>\n         <p>Range: 900-3600. Default: 900.</p>"}))
    GetClusterCredentialsWithIAMMessage.add_member(:custom_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomDomainName', traits: {"smithy.api#documentation" => "<p>The custom domain name for the IAM message cluster credentials.</p>"}))
    GetClusterCredentialsWithIAMMessage.type = Types::GetClusterCredentialsWithIAMMessage
    GetClusterCredentialsWithIAMOutput.add_member(:db_user, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbUser', traits: {"smithy.api#documentation" => "<p>A database user name that you provide when you connect to a database. The database user is mapped 1:1 to the source IAM identity. </p>"}))
    GetClusterCredentialsWithIAMOutput.add_member(:db_password, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'DbPassword', traits: {"smithy.api#documentation" => "<p>A temporary password that you provide when you connect to a database.</p>"}))
    GetClusterCredentialsWithIAMOutput.add_member(:expiration, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'Expiration', traits: {"smithy.api#documentation" => "<p>The time (UTC) when the temporary password expires. After this timestamp, a log in with the temporary password fails.</p>"}))
    GetClusterCredentialsWithIAMOutput.add_member(:next_refresh_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'NextRefreshTime', traits: {"smithy.api#documentation" => "<p>Reserved for future use.</p>"}))
    GetClusterCredentialsWithIAMOutput.type = Types::GetClusterCredentialsWithIAMOutput
    GetReservedNodeExchangeConfigurationOptionsInputMessage.add_member(:action_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeExchangeActionType, location_name: 'ActionType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The action type of the reserved-node configuration. The action type can be an exchange initiated from either a snapshot or a resize.</p>", "smithy.api#required" => {}}))
    GetReservedNodeExchangeConfigurationOptionsInputMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier for the cluster that is the source for a reserved-node exchange.</p>"}))
    GetReservedNodeExchangeConfigurationOptionsInputMessage.add_member(:snapshot_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier for the snapshot that is the source for the reserved-node exchange.</p>"}))
    GetReservedNodeExchangeConfigurationOptionsInputMessage.add_member(:max_records, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords', traits: {"smithy.api#documentation" => "<p>The maximum number of response records to return in each call. If the number of\n            remaining response records exceeds the specified <code>MaxRecords</code> value, a value\n            is returned in a <code>Marker</code> field of the response. You can retrieve the next\n            set of records by retrying the command with the returned marker value.</p>"}))
    GetReservedNodeExchangeConfigurationOptionsInputMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An optional pagination token provided by a previous <code>GetReservedNodeExchangeConfigurationOptions</code> request. If this \n            parameter is specified, the response includes only records beyond the marker, up to the value \n            specified by the <code>MaxRecords</code> parameter. You can retrieve the next set of response\n            records by providing the returned marker value in the <code>Marker</code> parameter and\n            retrying the request.</p>"}))
    GetReservedNodeExchangeConfigurationOptionsInputMessage.type = Types::GetReservedNodeExchangeConfigurationOptionsInputMessage
    GetReservedNodeExchangeConfigurationOptionsOutputMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>A pagination token provided by a previous <code>GetReservedNodeExchangeConfigurationOptions</code> request.</p>"}))
    GetReservedNodeExchangeConfigurationOptionsOutputMessage.add_member(:reserved_node_configuration_option_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeConfigurationOptionList, location_name: 'ReservedNodeConfigurationOptionList', traits: {"smithy.api#documentation" => "<p>the configuration options for the reserved-node\n            exchange. These options include information about the source reserved node and target reserved\n            node. Details include the node type, the price, the node count, and the offering\n            type.</p>"}))
    GetReservedNodeExchangeConfigurationOptionsOutputMessage.type = Types::GetReservedNodeExchangeConfigurationOptionsOutputMessage
    GetReservedNodeExchangeOfferingsInputMessage.add_member(:reserved_node_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedNodeId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>A string representing the node identifier for the DC1 Reserved Node to be\n            exchanged.</p>", "smithy.api#required" => {}}))
    GetReservedNodeExchangeOfferingsInputMessage.add_member(:max_records, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords', traits: {"smithy.api#documentation" => "<p>An integer setting the maximum number of ReservedNodeOfferings to\n            retrieve.</p>"}))
    GetReservedNodeExchangeOfferingsInputMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>A value that indicates the starting point for the next set of\n            ReservedNodeOfferings.</p>"}))
    GetReservedNodeExchangeOfferingsInputMessage.type = Types::GetReservedNodeExchangeOfferingsInputMessage
    GetReservedNodeExchangeOfferingsOutputMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An optional parameter that specifies the starting point for returning a set of\n            response records. When the results of a <code>GetReservedNodeExchangeOfferings</code>\n            request exceed the value specified in MaxRecords, Amazon Redshift returns a value in the\n            marker field of the response. You can retrieve the next set of response records by\n            providing the returned marker value in the marker parameter and retrying the request.\n        </p>"}))
    GetReservedNodeExchangeOfferingsOutputMessage.add_member(:reserved_node_offerings, Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeOfferingList, location_name: 'ReservedNodeOfferings', traits: {"smithy.api#documentation" => "<p>Returns an array of <a>ReservedNodeOffering</a> objects.</p>"}))
    GetReservedNodeExchangeOfferingsOutputMessage.type = Types::GetReservedNodeExchangeOfferingsOutputMessage
    GetResourcePolicyMessage.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource of which its resource policy is fetched.</p>", "smithy.api#required" => {}}))
    GetResourcePolicyMessage.type = Types::GetResourcePolicyMessage
    GetResourcePolicyResult.add_member(:resource_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: 'ResourcePolicy', traits: {"smithy.api#documentation" => "<p>The content of the resource policy.</p>"}))
    GetResourcePolicyResult.type = Types::GetResourcePolicyResult
    HsmClientCertificate.add_member(:hsm_client_certificate_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmClientCertificateIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the HSM client certificate.</p>"}))
    HsmClientCertificate.add_member(:hsm_client_certificate_public_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmClientCertificatePublicKey', traits: {"smithy.api#documentation" => "<p>The public key that the Amazon Redshift cluster will use to connect to the HSM. You must\n            register the public key in the HSM.</p>"}))
    HsmClientCertificate.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of tags for the HSM client certificate.</p>"}))
    HsmClientCertificate.type = Types::HsmClientCertificate
    HsmClientCertificateAlreadyExistsFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    HsmClientCertificateAlreadyExistsFault.type = Types::HsmClientCertificateAlreadyExistsFault
    HsmClientCertificateList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: HsmClientCertificate, traits: {"smithy.api#xmlName" => "HsmClientCertificate"})
    HsmClientCertificateMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>A value that indicates the starting point for the next set of response records in a\n            subsequent request. If a value is returned in a response, you can retrieve the next set\n            of records by providing this returned marker value in the <code>Marker</code> parameter\n            and retrying the command. If the <code>Marker</code> field is empty, all response\n            records have been retrieved for the request. </p>"}))
    HsmClientCertificateMessage.add_member(:hsm_client_certificates, Smithy::Schema::Shapes::ShapeRef.new(shape: HsmClientCertificateList, location_name: 'HsmClientCertificates', traits: {"smithy.api#documentation" => "<p>A list of the identifiers for one or more HSM client certificates used by Amazon Redshift\n            clusters to store and retrieve database encryption keys in an HSM.</p>"}))
    HsmClientCertificateMessage.type = Types::HsmClientCertificateMessage
    HsmClientCertificateNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    HsmClientCertificateNotFoundFault.type = Types::HsmClientCertificateNotFoundFault
    HsmClientCertificateQuotaExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    HsmClientCertificateQuotaExceededFault.type = Types::HsmClientCertificateQuotaExceededFault
    HsmConfiguration.add_member(:hsm_configuration_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmConfigurationIdentifier', traits: {"smithy.api#documentation" => "<p>The name of the Amazon Redshift HSM configuration.</p>"}))
    HsmConfiguration.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A text description of the HSM configuration.</p>"}))
    HsmConfiguration.add_member(:hsm_ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmIpAddress', traits: {"smithy.api#documentation" => "<p>The IP address that the Amazon Redshift cluster must use to access the HSM.</p>"}))
    HsmConfiguration.add_member(:hsm_partition_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmPartitionName', traits: {"smithy.api#documentation" => "<p>The name of the partition in the HSM where the Amazon Redshift clusters will store their\n            database encryption keys.</p>"}))
    HsmConfiguration.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of tags for the HSM configuration.</p>"}))
    HsmConfiguration.type = Types::HsmConfiguration
    HsmConfigurationAlreadyExistsFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    HsmConfigurationAlreadyExistsFault.type = Types::HsmConfigurationAlreadyExistsFault
    HsmConfigurationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: HsmConfiguration, traits: {"smithy.api#xmlName" => "HsmConfiguration"})
    HsmConfigurationMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>A value that indicates the starting point for the next set of response records in a\n            subsequent request. If a value is returned in a response, you can retrieve the next set\n            of records by providing this returned marker value in the <code>Marker</code> parameter\n            and retrying the command. If the <code>Marker</code> field is empty, all response\n            records have been retrieved for the request. </p>"}))
    HsmConfigurationMessage.add_member(:hsm_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: HsmConfigurationList, location_name: 'HsmConfigurations', traits: {"smithy.api#documentation" => "<p>A list of <code>HsmConfiguration</code> objects.</p>"}))
    HsmConfigurationMessage.type = Types::HsmConfigurationMessage
    HsmConfigurationNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    HsmConfigurationNotFoundFault.type = Types::HsmConfigurationNotFoundFault
    HsmConfigurationQuotaExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    HsmConfigurationQuotaExceededFault.type = Types::HsmConfigurationQuotaExceededFault
    HsmStatus.add_member(:hsm_client_certificate_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmClientCertificateIdentifier', traits: {"smithy.api#documentation" => "<p>Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to\n            retrieve the data encryption keys stored in an HSM.</p>"}))
    HsmStatus.add_member(:hsm_configuration_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmConfigurationIdentifier', traits: {"smithy.api#documentation" => "<p>Specifies the name of the HSM configuration that contains the information the\n            Amazon Redshift cluster can use to retrieve and store keys in an HSM.</p>"}))
    HsmStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Reports whether the Amazon Redshift cluster has finished applying any HSM settings\n            changes specified in a modify cluster command.</p>\n         <p>Values: active, applying</p>"}))
    HsmStatus.type = Types::HsmStatus
    IPRange.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the IP range, for example, \"authorized\".</p>"}))
    IPRange.add_member(:cidrip, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CIDRIP', traits: {"smithy.api#documentation" => "<p>The IP range in Classless Inter-Domain Routing (CIDR) notation.</p>"}))
    IPRange.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of tags for the IP range.</p>"}))
    IPRange.type = Types::IPRange
    IPRangeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IPRange, traits: {"smithy.api#xmlName" => "IPRange"})
    IamRoleArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "IamRoleArn"})
    ImpactRankingType.add_member(:high, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HIGH', traits: {"smithy.api#enumValue" => "HIGH"}))
    ImpactRankingType.add_member(:medium, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEDIUM', traits: {"smithy.api#enumValue" => "MEDIUM"}))
    ImpactRankingType.add_member(:low, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOW', traits: {"smithy.api#enumValue" => "LOW"}))
    ImportTablesCompleted.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ImportTablesInProgress.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ImportTablesNotStarted.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    InProgressTableRestoreQuotaExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InProgressTableRestoreQuotaExceededFault.type = Types::InProgressTableRestoreQuotaExceededFault
    InboundIntegration.add_member(:integration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InboundIntegrationArn, location_name: 'IntegrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an inbound integration.</p>"}))
    InboundIntegration.add_member(:source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the source of an inbound integration.</p>"}))
    InboundIntegration.add_member(:target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetArn, location_name: 'TargetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the target of an inbound integration.</p>"}))
    InboundIntegration.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ZeroETLIntegrationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of an inbound integration.</p>"}))
    InboundIntegration.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationErrorList, location_name: 'Errors', traits: {"smithy.api#documentation" => "<p>The outstanding errors of an inbound  integration. Each item is an \"IntegrationError\". This is null if there is no error.</p>"}))
    InboundIntegration.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CreateTime', traits: {"smithy.api#documentation" => "<p>The creation time of an inbound integration.</p>"}))
    InboundIntegration.type = Types::InboundIntegration
    InboundIntegrationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InboundIntegration, traits: {"smithy.api#xmlName" => "InboundIntegration"})
    InboundIntegrationsMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>A value that indicates the starting point for the next set of response records in a\n            subsequent request. If a value is returned in a response, you can retrieve the next set\n            of records by providing this returned marker value in the <code>Marker</code> parameter\n            and retrying the command. If the <code>Marker</code> field is empty, all response\n            records have been retrieved for the request. </p>"}))
    InboundIntegrationsMessage.add_member(:inbound_integrations, Smithy::Schema::Shapes::ShapeRef.new(shape: InboundIntegrationList, location_name: 'InboundIntegrations', traits: {"smithy.api#documentation" => "<p>A list of <a>InboundIntegration</a> instances.</p>"}))
    InboundIntegrationsMessage.type = Types::InboundIntegrationsMessage
    IncompatibleOrderableOptions.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    IncompatibleOrderableOptions.type = Types::IncompatibleOrderableOptions
    InsufficientClusterCapacityFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InsufficientClusterCapacityFault.type = Types::InsufficientClusterCapacityFault
    InsufficientS3BucketPolicyFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InsufficientS3BucketPolicyFault.type = Types::InsufficientS3BucketPolicyFault
    Integration.add_member(:integration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationArn, location_name: 'IntegrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the integration.</p>"}))
    Integration.add_member(:integration_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationName, location_name: 'IntegrationName', traits: {"smithy.api#documentation" => "<p>The name of the integration.</p>"}))
    Integration.add_member(:source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceArn, location_name: 'SourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the database used as the source for\n            replication.</p>"}))
    Integration.add_member(:target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetArn, location_name: 'TargetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Redshift data warehouse to use as the target for replication.</p>"}))
    Integration.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ZeroETLIntegrationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the integration.</p>"}))
    Integration.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationErrorList, location_name: 'Errors', traits: {"smithy.api#documentation" => "<p>Any errors associated with the integration.</p>"}))
    Integration.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CreateTime', traits: {"smithy.api#documentation" => "<p>The time (UTC) when the integration was created.</p>"}))
    Integration.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the integration.</p>"}))
    Integration.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KMSKeyId', traits: {"smithy.api#documentation" => "<p>The Key Management Service (KMS) key identifier for the key used to\n            encrypt the integration.</p>"}))
    Integration.add_member(:additional_encryption_context, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionContextMap, location_name: 'AdditionalEncryptionContext', traits: {"smithy.api#documentation" => "<p>The encryption context for the integration. For more information, \n            see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context\">Encryption context</a> in the <i>Amazon Web Services Key Management Service Developer\n                Guide</i>.</p>"}))
    Integration.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of tags associated with the integration.</p>"}))
    Integration.type = Types::Integration
    IntegrationAlreadyExistsFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    IntegrationAlreadyExistsFault.type = Types::IntegrationAlreadyExistsFault
    IntegrationConflictOperationFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    IntegrationConflictOperationFault.type = Types::IntegrationConflictOperationFault
    IntegrationConflictStateFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    IntegrationConflictStateFault.type = Types::IntegrationConflictStateFault
    IntegrationError.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorCode', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The error code of an inbound integration error.</p>", "smithy.api#required" => {}}))
    IntegrationError.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The error message of an inbound integration error.</p>"}))
    IntegrationError.type = Types::IntegrationError
    IntegrationErrorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationError, traits: {"smithy.api#xmlName" => "IntegrationError"})
    IntegrationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Integration, traits: {"smithy.api#xmlName" => "Integration"})
    IntegrationNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    IntegrationNotFoundFault.type = Types::IntegrationNotFoundFault
    IntegrationQuotaExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    IntegrationQuotaExceededFault.type = Types::IntegrationQuotaExceededFault
    IntegrationSourceNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    IntegrationSourceNotFoundFault.type = Types::IntegrationSourceNotFoundFault
    IntegrationTargetNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    IntegrationTargetNotFoundFault.type = Types::IntegrationTargetNotFoundFault
    IntegrationsMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>A value that indicates the starting point for the next set of response records in a subsequent request. \n            If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the <code>Marker</code> parameter and retrying the command. \n            If the <code>Marker</code> field is empty, all response records have been retrieved for the request.</p>"}))
    IntegrationsMessage.add_member(:integrations, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationList, location_name: 'Integrations', traits: {"smithy.api#documentation" => "<p>List of integrations that are described.</p>"}))
    IntegrationsMessage.type = Types::IntegrationsMessage
    InvalidAuthenticationProfileRequestFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidAuthenticationProfileRequestFault.type = Types::InvalidAuthenticationProfileRequestFault
    InvalidAuthorizationStateFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidAuthorizationStateFault.type = Types::InvalidAuthorizationStateFault
    InvalidClusterParameterGroupStateFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidClusterParameterGroupStateFault.type = Types::InvalidClusterParameterGroupStateFault
    InvalidClusterSecurityGroupStateFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidClusterSecurityGroupStateFault.type = Types::InvalidClusterSecurityGroupStateFault
    InvalidClusterSnapshotScheduleStateFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidClusterSnapshotScheduleStateFault.type = Types::InvalidClusterSnapshotScheduleStateFault
    InvalidClusterSnapshotStateFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidClusterSnapshotStateFault.type = Types::InvalidClusterSnapshotStateFault
    InvalidClusterStateFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidClusterStateFault.type = Types::InvalidClusterStateFault
    InvalidClusterSubnetGroupStateFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidClusterSubnetGroupStateFault.type = Types::InvalidClusterSubnetGroupStateFault
    InvalidClusterSubnetStateFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidClusterSubnetStateFault.type = Types::InvalidClusterSubnetStateFault
    InvalidClusterTrackFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidClusterTrackFault.type = Types::InvalidClusterTrackFault
    InvalidDataShareFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidDataShareFault.type = Types::InvalidDataShareFault
    InvalidElasticIpFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidElasticIpFault.type = Types::InvalidElasticIpFault
    InvalidEndpointStateFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidEndpointStateFault.type = Types::InvalidEndpointStateFault
    InvalidHsmClientCertificateStateFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidHsmClientCertificateStateFault.type = Types::InvalidHsmClientCertificateStateFault
    InvalidHsmConfigurationStateFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidHsmConfigurationStateFault.type = Types::InvalidHsmConfigurationStateFault
    InvalidNamespaceFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidNamespaceFault.type = Types::InvalidNamespaceFault
    InvalidPolicyFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidPolicyFault.type = Types::InvalidPolicyFault
    InvalidReservedNodeStateFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidReservedNodeStateFault.type = Types::InvalidReservedNodeStateFault
    InvalidRestoreFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidRestoreFault.type = Types::InvalidRestoreFault
    InvalidRetentionPeriodFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidRetentionPeriodFault.type = Types::InvalidRetentionPeriodFault
    InvalidS3BucketNameFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidS3BucketNameFault.type = Types::InvalidS3BucketNameFault
    InvalidS3KeyPrefixFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidS3KeyPrefixFault.type = Types::InvalidS3KeyPrefixFault
    InvalidScheduleFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidScheduleFault.type = Types::InvalidScheduleFault
    InvalidScheduledActionFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidScheduledActionFault.type = Types::InvalidScheduledActionFault
    InvalidSnapshotCopyGrantStateFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidSnapshotCopyGrantStateFault.type = Types::InvalidSnapshotCopyGrantStateFault
    InvalidSubnet.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidSubnet.type = Types::InvalidSubnet
    InvalidSubscriptionStateFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidSubscriptionStateFault.type = Types::InvalidSubscriptionStateFault
    InvalidTableRestoreArgumentFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidTableRestoreArgumentFault.type = Types::InvalidTableRestoreArgumentFault
    InvalidTagFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidTagFault.type = Types::InvalidTagFault
    InvalidUsageLimitFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidUsageLimitFault.type = Types::InvalidUsageLimitFault
    InvalidVPCNetworkStateFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidVPCNetworkStateFault.type = Types::InvalidVPCNetworkStateFault
    Ipv6CidrBlockNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    Ipv6CidrBlockNotFoundFault.type = Types::Ipv6CidrBlockNotFoundFault
    LakeFormationQuery.add_member(:authorization, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAuthorization, location_name: 'Authorization', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Determines whether the query scope is enabled or disabled.</p>", "smithy.api#required" => {}}))
    LakeFormationQuery.type = Types::LakeFormationQuery
    LakeFormationScopeUnion.add_member(:lake_formation_query, Types::LakeFormationScopeUnion::LakeFormationQuery, Smithy::Schema::Shapes::ShapeRef.new(shape: LakeFormationQuery, location_name: 'LakeFormationQuery', traits: {"smithy.api#documentation" => "<p>The Lake Formation scope.</p>"}))
    LakeFormationScopeUnion.add_member(:unknown, Types::LakeFormationScopeUnion::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    LakeFormationScopeUnion.type = Types::LakeFormationScopeUnion
    LakeFormationServiceIntegrations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LakeFormationScopeUnion)
    LimitExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    LimitExceededFault.type = Types::LimitExceededFault
    ListRecommendationsMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the Amazon Redshift cluster for which the list of Advisor recommendations is returned. \n          If the neither the cluster identifier and the cluster namespace ARN parameters are specified, then recommendations for all clusters in the account are returned.</p>"}))
    ListRecommendationsMessage.add_member(:namespace_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NamespaceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Redshift cluster namespace Amazon Resource Name (ARN) for which the list of Advisor recommendations is returned.\n            If the neither the cluster identifier and the cluster namespace ARN parameters are specified, then recommendations for all clusters in the account are returned.</p>"}))
    ListRecommendationsMessage.add_member(:max_records, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords', traits: {"smithy.api#documentation" => "<p>The maximum number of response records to return in each call. If the number of remaining response records \n            exceeds the specified MaxRecords value, a value is returned in a marker field of the response. You can retrieve \n            the next set of records by retrying the command with the returned marker value.</p>"}))
    ListRecommendationsMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a \n            value is returned in a response, you can retrieve the next set\n            of records by providing this returned marker value in the Marker parameter\n            and retrying the command. If the Marker field is empty, all response\n            records have been retrieved for the request.\n        </p>"}))
    ListRecommendationsMessage.type = Types::ListRecommendationsMessage
    ListRecommendationsResult.add_member(:recommendations, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationList, location_name: 'Recommendations', traits: {"smithy.api#documentation" => "<p>The Advisor recommendations for action on the Amazon Redshift cluster.</p>"}))
    ListRecommendationsResult.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>A value that indicates the starting point for the next set of response records in a subsequent \n            request. If a value is returned in a response, you can retrieve the next set\n            of records by providing this returned marker value in the Marker parameter\n            and retrying the command. If the Marker field is empty, all response\n            records have been retrieved for the request.\n        </p>"}))
    ListRecommendationsResult.type = Types::ListRecommendationsResult
    LogDestinationType.add_member(:s3, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3', traits: {"smithy.api#enumValue" => "s3"}))
    LogDestinationType.add_member(:cloudwatch, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOUDWATCH', traits: {"smithy.api#enumValue" => "cloudwatch"}))
    LogTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MaintenanceTrack.add_member(:maintenance_track_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MaintenanceTrackName', traits: {"smithy.api#documentation" => "<p>The name of the maintenance track. Possible values are <code>current</code> and\n                <code>trailing</code>.</p>"}))
    MaintenanceTrack.add_member(:database_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DatabaseVersion', traits: {"smithy.api#documentation" => "<p>The version number for the cluster release.</p>"}))
    MaintenanceTrack.add_member(:update_targets, Smithy::Schema::Shapes::ShapeRef.new(shape: EligibleTracksToUpdateList, location_name: 'UpdateTargets', traits: {"smithy.api#documentation" => "<p>An array of <a>UpdateTarget</a> objects to update with the maintenance\n            track. </p>"}))
    MaintenanceTrack.type = Types::MaintenanceTrack
    Mode.add_member(:standard, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STANDARD', traits: {"smithy.api#enumValue" => "standard"}))
    Mode.add_member(:high_performance, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HIGH_PERFORMANCE', traits: {"smithy.api#enumValue" => "high-performance"}))
    ModifyAquaInputMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The identifier of the cluster to be modified.</p>", "smithy.api#required" => {}}))
    ModifyAquaInputMessage.add_member(:aqua_configuration_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AquaConfigurationStatus, location_name: 'AquaConfigurationStatus', traits: {"smithy.api#documentation" => "<p>This parameter is retired. Amazon Redshift automatically  determines whether to use AQUA (Advanced Query Accelerator).</p>"}))
    ModifyAquaInputMessage.type = Types::ModifyAquaInputMessage
    ModifyAquaOutputMessage.add_member(:aqua_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AquaConfiguration, location_name: 'AquaConfiguration', traits: {"smithy.api#documentation" => "<p>This parameter is retired. Amazon Redshift automatically determines whether to use AQUA (Advanced Query Accelerator). </p>"}))
    ModifyAquaOutputMessage.type = Types::ModifyAquaOutputMessage
    ModifyAuthenticationProfileMessage.add_member(:authentication_profile_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationProfileNameString, location_name: 'AuthenticationProfileName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the authentication profile to replace.</p>", "smithy.api#required" => {}}))
    ModifyAuthenticationProfileMessage.add_member(:authentication_profile_content, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AuthenticationProfileContent', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The new content of the authentication profile in JSON format.\n            The maximum length of the JSON string is determined by a quota for your account.</p>", "smithy.api#required" => {}}))
    ModifyAuthenticationProfileMessage.type = Types::ModifyAuthenticationProfileMessage
    ModifyAuthenticationProfileResult.add_member(:authentication_profile_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationProfileNameString, location_name: 'AuthenticationProfileName', traits: {"smithy.api#documentation" => "<p>The name of the authentication profile that was replaced.</p>"}))
    ModifyAuthenticationProfileResult.add_member(:authentication_profile_content, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AuthenticationProfileContent', traits: {"smithy.api#documentation" => "<p>The updated content of the authentication profile in JSON format.</p>"}))
    ModifyAuthenticationProfileResult.type = Types::ModifyAuthenticationProfileResult
    ModifyClusterDbRevisionMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier of a cluster whose database revision you want to modify. </p>\n         <p>Example: <code>examplecluster</code>\n         </p>", "smithy.api#required" => {}}))
    ModifyClusterDbRevisionMessage.add_member(:revision_target, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RevisionTarget', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The identifier of the database revision. You can retrieve this value from the\n            response to the <a>DescribeClusterDbRevisions</a> request.</p>", "smithy.api#required" => {}}))
    ModifyClusterDbRevisionMessage.type = Types::ModifyClusterDbRevisionMessage
    ModifyClusterDbRevisionResult.add_member(:cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster'))
    ModifyClusterDbRevisionResult.type = Types::ModifyClusterDbRevisionResult
    ModifyClusterIamRolesMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier of the cluster for which you want to associate or\n            disassociate IAM roles.</p>", "smithy.api#required" => {}}))
    ModifyClusterIamRolesMessage.add_member(:add_iam_roles, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArnList, location_name: 'AddIamRoles', traits: {"smithy.api#documentation" => "<p>Zero or more IAM roles to associate with the cluster. The roles must be in their\n            Amazon Resource Name (ARN) format. </p>"}))
    ModifyClusterIamRolesMessage.add_member(:remove_iam_roles, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArnList, location_name: 'RemoveIamRoles', traits: {"smithy.api#documentation" => "<p>Zero or more IAM roles in ARN format to disassociate from the cluster. </p>"}))
    ModifyClusterIamRolesMessage.add_member(:default_iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultIamRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the IAM role that was set as default for the cluster when the cluster was last modified.</p>"}))
    ModifyClusterIamRolesMessage.type = Types::ModifyClusterIamRolesMessage
    ModifyClusterIamRolesResult.add_member(:cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster'))
    ModifyClusterIamRolesResult.type = Types::ModifyClusterIamRolesResult
    ModifyClusterMaintenanceMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>A unique identifier for the cluster.</p>", "smithy.api#required" => {}}))
    ModifyClusterMaintenanceMessage.add_member(:defer_maintenance, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DeferMaintenance', traits: {"smithy.api#documentation" => "<p>A boolean indicating whether to enable the deferred maintenance window. </p>"}))
    ModifyClusterMaintenanceMessage.add_member(:defer_maintenance_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeferMaintenanceIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for the deferred maintenance window.</p>"}))
    ModifyClusterMaintenanceMessage.add_member(:defer_maintenance_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'DeferMaintenanceStartTime', traits: {"smithy.api#documentation" => "<p>A timestamp indicating the start time for the deferred maintenance window.</p>"}))
    ModifyClusterMaintenanceMessage.add_member(:defer_maintenance_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'DeferMaintenanceEndTime', traits: {"smithy.api#documentation" => "<p>A timestamp indicating end time for the deferred maintenance window. If you specify an\n            end time, you can't specify a duration.</p>"}))
    ModifyClusterMaintenanceMessage.add_member(:defer_maintenance_duration, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'DeferMaintenanceDuration', traits: {"smithy.api#documentation" => "<p>An integer indicating the duration of the maintenance window in days. If you specify a\n            duration, you can't specify an end time. The duration must be 45 days or less.</p>"}))
    ModifyClusterMaintenanceMessage.type = Types::ModifyClusterMaintenanceMessage
    ModifyClusterMaintenanceResult.add_member(:cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster'))
    ModifyClusterMaintenanceResult.type = Types::ModifyClusterMaintenanceResult
    ModifyClusterMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier of the cluster to be modified.</p>\n         <p>Example: <code>examplecluster</code>\n         </p>", "smithy.api#required" => {}}))
    ModifyClusterMessage.add_member(:cluster_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterType', traits: {"smithy.api#documentation" => "<p>The new cluster type.</p>\n         <p>When you submit your cluster resize request, your existing cluster goes into a\n            read-only mode. After Amazon Redshift provisions a new cluster based on your resize\n            requirements, there will be outage for a period while the old cluster is deleted and\n            your connection is switched to the new cluster. You can use <a>DescribeResize</a> to track the progress of the resize request. </p>\n         <p>Valid Values: <code> multi-node | single-node </code>\n         </p>"}))
    ModifyClusterMessage.add_member(:node_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeType', traits: {"smithy.api#documentation" => "<p>The new node type of the cluster. If you specify a new node type, you must also\n            specify the number of nodes parameter.</p>\n         <p>\nFor more information about resizing clusters, go to \n<a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/rs-resize-tutorial.html\">Resizing Clusters in Amazon Redshift</a> \nin the <i>Amazon Redshift Cluster Management Guide</i>.</p>\n         <p>Valid Values: \n            <code>dc2.large</code> | <code>dc2.8xlarge</code> | \n            <code>ra3.large</code> |  <code>ra3.xlplus</code> |  <code>ra3.4xlarge</code> | <code>ra3.16xlarge</code>\n         </p>"}))
    ModifyClusterMessage.add_member(:number_of_nodes, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'NumberOfNodes', traits: {"smithy.api#documentation" => "<p>The new number of nodes of the cluster. If you specify a new number of nodes, you\n            must also specify the node type parameter.</p>\n         <p>\nFor more information about resizing clusters, go to \n<a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/rs-resize-tutorial.html\">Resizing Clusters in Amazon Redshift</a> \nin the <i>Amazon Redshift Cluster Management Guide</i>.</p>\n         <p>Valid Values: Integer greater than <code>0</code>.</p>"}))
    ModifyClusterMessage.add_member(:cluster_security_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSecurityGroupNameList, location_name: 'ClusterSecurityGroups', traits: {"smithy.api#documentation" => "<p>A list of cluster security groups to be authorized on this cluster. This change is\n            asynchronously applied as soon as possible.</p>\n         <p>Security groups currently associated with the cluster, and not in the list of\n            groups to apply, will be revoked from the cluster.</p>\n         <p>Constraints:</p>\n         <ul>\n            <li>\n               <p>Must be 1 to 255 alphanumeric characters or hyphens</p>\n            </li>\n            <li>\n               <p>First character must be a letter</p>\n            </li>\n            <li>\n               <p>Cannot end with a hyphen or contain two consecutive hyphens</p>\n            </li>\n         </ul>"}))
    ModifyClusterMessage.add_member(:vpc_security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: 'VpcSecurityGroupIds', traits: {"smithy.api#documentation" => "<p>A list of virtual private cloud (VPC) security groups to be associated with the\n            cluster. This change is asynchronously applied as soon as possible.</p>"}))
    ModifyClusterMessage.add_member(:master_user_password, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'MasterUserPassword', traits: {"smithy.api#documentation" => "<p>The new password for the cluster admin user. This change is asynchronously applied\n            as soon as possible. Between the time of the request and the completion of the request,\n            the <code>MasterUserPassword</code> element exists in the\n                <code>PendingModifiedValues</code> element of the operation response. </p>\n         <p>You can't use <code>MasterUserPassword</code> if <code>ManageMasterPassword</code> is <code>true</code>.</p>\n         <note>\n            <p>Operations never return the password, so this operation provides a way to\n                regain access to the admin user account for a cluster if the password is\n                lost.</p>\n         </note>\n         <p>Default: Uses existing setting.</p>\n         <p>Constraints:</p>\n         <ul>\n            <li>\n               <p>Must be between 8 and 64 characters in length.</p>\n            </li>\n            <li>\n               <p>Must contain at least one uppercase letter.</p>\n            </li>\n            <li>\n               <p>Must contain at least one lowercase letter.</p>\n            </li>\n            <li>\n               <p>Must contain one number.</p>\n            </li>\n            <li>\n               <p>Can be any printable ASCII character (ASCII code 33-126) except <code>'</code>\n                    (single quote), <code>\"</code> (double quote), <code>\\</code>, <code>/</code>, or <code>@</code>.</p>\n            </li>\n         </ul>"}))
    ModifyClusterMessage.add_member(:cluster_parameter_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterParameterGroupName', traits: {"smithy.api#documentation" => "<p>The name of the cluster parameter group to apply to this cluster. This change is\n            applied only after the cluster is rebooted. To reboot a cluster use <a>RebootCluster</a>. </p>\n         <p>Default: Uses existing setting.</p>\n         <p>Constraints: The cluster parameter group must be in the same parameter group family\n            that matches the cluster version.</p>"}))
    ModifyClusterMessage.add_member(:automated_snapshot_retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'AutomatedSnapshotRetentionPeriod', traits: {"smithy.api#documentation" => "<p>The number of days that automated snapshots are retained. If the value is 0,\n            automated snapshots are disabled. Even if automated snapshots are disabled, you can\n            still create manual snapshots when you want with <a>CreateClusterSnapshot</a>. </p>\n         <p>If you decrease the automated snapshot retention period from its current value,\n            existing automated snapshots that fall outside of the new retention period will be\n            immediately deleted.</p>\n         <p>You can't disable automated snapshots for RA3 node types. Set the automated retention period from 1-35 days.</p>\n         <p>Default: Uses existing setting.</p>\n         <p>Constraints: Must be a value from 0 to 35.</p>"}))
    ModifyClusterMessage.add_member(:manual_snapshot_retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'ManualSnapshotRetentionPeriod', traits: {"smithy.api#documentation" => "<p>The default for number of days that a newly created manual snapshot is retained. If\n            the value is -1, the manual snapshot is retained indefinitely. This value doesn't\n            retroactively change the retention periods of existing manual snapshots.</p>\n         <p>The value must be either -1 or an integer between 1 and 3,653.</p>\n         <p>The default value is -1.</p>"}))
    ModifyClusterMessage.add_member(:preferred_maintenance_window, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredMaintenanceWindow', traits: {"smithy.api#documentation" => "<p>The weekly time range (in UTC) during which system maintenance can occur, if\n            necessary. If system maintenance is necessary during the window, it may result in an\n            outage.</p>\n         <p>This maintenance window change is made immediately. If the new maintenance window\n            indicates the current time, there must be at least 120 minutes between the current time\n            and end of the window in order to ensure that pending changes are applied.</p>\n         <p>Default: Uses existing setting.</p>\n         <p>Format: ddd:hh24:mi-ddd:hh24:mi, for example\n            <code>wed:07:30-wed:08:00</code>.</p>\n         <p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p>\n         <p>Constraints: Must be at least 30 minutes.</p>"}))
    ModifyClusterMessage.add_member(:cluster_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterVersion', traits: {"smithy.api#documentation" => "<p>The new version number of the Amazon Redshift engine to upgrade to.</p>\n         <p>For major version upgrades, if a non-default cluster parameter group is currently\n            in use, a new cluster parameter group in the cluster parameter group family for the new\n            version must be specified. The new cluster parameter group can be the default for that\n            cluster parameter group family. \nFor more information about parameters and parameter groups, go to \n<a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html\">Amazon Redshift Parameter Groups</a> \nin the <i>Amazon Redshift Cluster Management Guide</i>.</p>\n         <p>Example: <code>1.0</code>\n         </p>"}))
    ModifyClusterMessage.add_member(:allow_version_upgrade, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AllowVersionUpgrade', traits: {"smithy.api#documentation" => "<p>If <code>true</code>, major version upgrades will be applied automatically to the\n            cluster during the maintenance window. </p>\n         <p>Default: <code>false</code>\n         </p>"}))
    ModifyClusterMessage.add_member(:hsm_client_certificate_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmClientCertificateIdentifier', traits: {"smithy.api#documentation" => "<p>Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to\n            retrieve the data encryption keys stored in an HSM.</p>"}))
    ModifyClusterMessage.add_member(:hsm_configuration_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmConfigurationIdentifier', traits: {"smithy.api#documentation" => "<p>Specifies the name of the HSM configuration that contains the information the\n            Amazon Redshift cluster can use to retrieve and store keys in an HSM.</p>"}))
    ModifyClusterMessage.add_member(:new_cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NewClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The new identifier for the cluster.</p>\n         <p>Constraints:</p>\n         <ul>\n            <li>\n               <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p>\n            </li>\n            <li>\n               <p>Alphabetic characters must be lowercase.</p>\n            </li>\n            <li>\n               <p>First character must be a letter.</p>\n            </li>\n            <li>\n               <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>\n            </li>\n            <li>\n               <p>Must be unique for all clusters within an Amazon Web Services account.</p>\n            </li>\n         </ul>\n         <p>Example: <code>examplecluster</code>\n         </p>"}))
    ModifyClusterMessage.add_member(:publicly_accessible, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'PubliclyAccessible', traits: {"smithy.api#documentation" => "<p>If <code>true</code>, the cluster can be accessed from a public network. Only\n            clusters in VPCs can be set to be publicly available.</p>\n         <p>Default: false</p>"}))
    ModifyClusterMessage.add_member(:elastic_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ElasticIp', traits: {"smithy.api#documentation" => "<p>The Elastic IP (EIP) address for the cluster.</p>\n         <p>Constraints: The cluster must be provisioned in EC2-VPC and publicly-accessible\n            through an Internet gateway. For more information about provisioning clusters in\n            EC2-VPC, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#cluster-platforms\">Supported\n                Platforms to Launch Your Cluster</a> in the Amazon Redshift Cluster Management Guide.</p>"}))
    ModifyClusterMessage.add_member(:enhanced_vpc_routing, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnhancedVpcRouting', traits: {"smithy.api#documentation" => "<p>An option that specifies whether to create the cluster with enhanced VPC routing\n            enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a\n            VPC. For more information, see <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html\">Enhanced VPC Routing</a> in\n            the Amazon Redshift Cluster Management Guide.</p>\n         <p>If this option is <code>true</code>, enhanced VPC routing is enabled. </p>\n         <p>Default: false</p>"}))
    ModifyClusterMessage.add_member(:maintenance_track_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MaintenanceTrackName', traits: {"smithy.api#documentation" => "<p>The name for the maintenance track that you want to assign for the cluster. This name\n            change is asynchronous. The new track name stays in the\n                <code>PendingModifiedValues</code> for the cluster until the next maintenance\n            window. When the maintenance track changes, the cluster is switched to the latest\n            cluster release available for the maintenance track. At this point, the maintenance\n            track name is applied.</p>"}))
    ModifyClusterMessage.add_member(:encrypted, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'Encrypted', traits: {"smithy.api#documentation" => "<p>Indicates whether the cluster is encrypted. If the value is encrypted (true) and you\n            provide a value for the <code>KmsKeyId</code> parameter, we encrypt the cluster\n            with the provided <code>KmsKeyId</code>. If you don't provide a <code>KmsKeyId</code>,\n            we encrypt with the default key. </p>\n         <p>If the value is not encrypted (false), then the cluster is decrypted. </p>"}))
    ModifyClusterMessage.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>The Key Management Service (KMS) key ID of the encryption key that you want to use\n            to encrypt data in the cluster.</p>"}))
    ModifyClusterMessage.add_member(:availability_zone_relocation, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AvailabilityZoneRelocation', traits: {"smithy.api#documentation" => "<p>The option to enable relocation for an Amazon Redshift cluster between Availability Zones after the cluster modification is complete.</p>"}))
    ModifyClusterMessage.add_member(:availability_zone, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AvailabilityZone', traits: {"smithy.api#documentation" => "<p>The option to initiate relocation for an Amazon Redshift cluster to the target Availability Zone.</p>"}))
    ModifyClusterMessage.add_member(:port, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Port', traits: {"smithy.api#documentation" => "<p>The option to change the port of an Amazon Redshift cluster.</p>\n         <p>Valid Values:\n        </p>\n         <ul>\n            <li>\n               <p>For clusters with ra3 nodes - Select a port within the ranges <code>5431-5455</code> or <code>8191-8215</code>. (If you have an existing cluster \n                with ra3 nodes, it isn't required that you change the port to these ranges.)</p>\n            </li>\n            <li>\n               <p>For clusters with dc2 nodes - Select a port within the range <code>1150-65535</code>.</p>\n            </li>\n         </ul>"}))
    ModifyClusterMessage.add_member(:manage_master_password, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'ManageMasterPassword', traits: {"smithy.api#documentation" => "<p>If <code>true</code>, Amazon Redshift uses Secrets Manager to manage this cluster's admin credentials. \n            You can't use <code>MasterUserPassword</code> if <code>ManageMasterPassword</code> is true. \n            If <code>ManageMasterPassword</code> is false or not set, Amazon Redshift uses \n            <code>MasterUserPassword</code> for the admin user account's password.\n        </p>"}))
    ModifyClusterMessage.add_member(:master_password_secret_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterPasswordSecretKmsKeyId', traits: {"smithy.api#documentation" => "<p>The ID of the Key Management Service (KMS) key used to encrypt and store the cluster's admin credentials secret. \n            You can only use this parameter if <code>ManageMasterPassword</code> is true.</p>"}))
    ModifyClusterMessage.add_member(:ip_address_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IpAddressType', traits: {"smithy.api#documentation" => "<p>The IP address types that the cluster supports. Possible values are <code>ipv4</code> and <code>dualstack</code>.</p>"}))
    ModifyClusterMessage.add_member(:multi_az, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'MultiAZ', traits: {"smithy.api#documentation" => "<p>If true and the cluster is currently only deployed in a single Availability Zone, the cluster will be modified to be deployed in two Availability Zones.</p>"}))
    ModifyClusterMessage.type = Types::ModifyClusterMessage
    ModifyClusterParameterGroupMessage.add_member(:parameter_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the parameter group to be modified.</p>", "smithy.api#required" => {}}))
    ModifyClusterParameterGroupMessage.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersList, location_name: 'Parameters', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>An array of parameters to be modified. A maximum of 20 parameters can be modified\n            in a single request.</p>\n         <p>For each parameter to be modified, you must supply at least the parameter name and\n            parameter value; other name-value pairs of the parameter are optional.</p>\n         <p>For the workload management (WLM) configuration, you must supply all the name-value\n            pairs in the wlm_json_configuration parameter.</p>", "smithy.api#required" => {}}))
    ModifyClusterParameterGroupMessage.type = Types::ModifyClusterParameterGroupMessage
    ModifyClusterParameterGroupOutput.add_member(:parameter_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupName', traits: {"smithy.api#documentation" => "<p>The name of the cluster parameter group.</p>"}))
    ModifyClusterParameterGroupOutput.add_member(:parameter_group_status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupStatus', traits: {"smithy.api#documentation" => "<p>The status of the parameter group. For example, if you made a change to a parameter\n            group name-value pair, then the change could be pending a reboot of an associated\n            cluster.</p>"}))
    ModifyClusterParameterGroupOutput.type = Types::ModifyClusterParameterGroupOutput
    ModifyClusterResult.add_member(:cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster'))
    ModifyClusterResult.type = Types::ModifyClusterResult
    ModifyClusterSnapshotMessage.add_member(:snapshot_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The identifier of the snapshot whose setting you want to modify.</p>", "smithy.api#required" => {}}))
    ModifyClusterSnapshotMessage.add_member(:manual_snapshot_retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'ManualSnapshotRetentionPeriod', traits: {"smithy.api#documentation" => "<p>The number of days that a manual snapshot is retained. If the value is -1, the manual\n            snapshot is retained indefinitely.</p>\n         <p>If the manual snapshot falls outside of the new retention period, you can specify the\n            force option to immediately delete the snapshot.</p>\n         <p>The value must be either -1 or an integer between 1 and 3,653.</p>"}))
    ModifyClusterSnapshotMessage.add_member(:force, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Force', traits: {"smithy.api#documentation" => "<p>A Boolean option to override an exception if the retention period has already\n            passed.</p>"}))
    ModifyClusterSnapshotMessage.type = Types::ModifyClusterSnapshotMessage
    ModifyClusterSnapshotResult.add_member(:snapshot, Smithy::Schema::Shapes::ShapeRef.new(shape: Snapshot, location_name: 'Snapshot'))
    ModifyClusterSnapshotResult.type = Types::ModifyClusterSnapshotResult
    ModifyClusterSnapshotScheduleMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>A unique identifier for the cluster whose snapshot schedule you want to modify.\n        </p>", "smithy.api#required" => {}}))
    ModifyClusterSnapshotScheduleMessage.add_member(:schedule_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduleIdentifier', traits: {"smithy.api#documentation" => "<p>A unique alphanumeric identifier for the schedule that you want to associate with the\n            cluster.</p>"}))
    ModifyClusterSnapshotScheduleMessage.add_member(:disassociate_schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DisassociateSchedule', traits: {"smithy.api#documentation" => "<p>A boolean to indicate whether to remove the assoiciation between the cluster and the\n            schedule.</p>"}))
    ModifyClusterSnapshotScheduleMessage.type = Types::ModifyClusterSnapshotScheduleMessage
    ModifyClusterSubnetGroupMessage.add_member(:cluster_subnet_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterSubnetGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the subnet group to be modified.</p>", "smithy.api#required" => {}}))
    ModifyClusterSubnetGroupMessage.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A text description of the subnet group to be modified.</p>"}))
    ModifyClusterSubnetGroupMessage.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIdentifierList, location_name: 'SubnetIds', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>An array of VPC subnet IDs. A maximum of 20 subnets can be modified in a single\n            request.</p>", "smithy.api#required" => {}}))
    ModifyClusterSubnetGroupMessage.type = Types::ModifyClusterSubnetGroupMessage
    ModifyClusterSubnetGroupResult.add_member(:cluster_subnet_group, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSubnetGroup, location_name: 'ClusterSubnetGroup'))
    ModifyClusterSubnetGroupResult.type = Types::ModifyClusterSubnetGroupResult
    ModifyCustomDomainAssociationMessage.add_member(:custom_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainNameString, location_name: 'CustomDomainName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The custom domain name for a changed custom domain association.</p>", "smithy.api#required" => {}}))
    ModifyCustomDomainAssociationMessage.add_member(:custom_domain_certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainCertificateArnString, location_name: 'CustomDomainCertificateArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The certificate Amazon Resource Name (ARN) for the changed custom domain association.</p>", "smithy.api#required" => {}}))
    ModifyCustomDomainAssociationMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The identifier of the cluster to change a custom domain association for.</p>", "smithy.api#required" => {}}))
    ModifyCustomDomainAssociationMessage.type = Types::ModifyCustomDomainAssociationMessage
    ModifyCustomDomainAssociationResult.add_member(:custom_domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainNameString, location_name: 'CustomDomainName', traits: {"smithy.api#documentation" => "<p>The custom domain name associated with the result for the changed custom domain association.</p>"}))
    ModifyCustomDomainAssociationResult.add_member(:custom_domain_certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainCertificateArnString, location_name: 'CustomDomainCertificateArn', traits: {"smithy.api#documentation" => "<p>The certificate Amazon Resource Name (ARN) associated with the result for the changed custom domain association.</p>"}))
    ModifyCustomDomainAssociationResult.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the cluster associated with the result for the changed custom domain association.</p>"}))
    ModifyCustomDomainAssociationResult.add_member(:custom_domain_cert_expiry_time, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomDomainCertExpiryTime', traits: {"smithy.api#documentation" => "<p>The certificate expiration time associated with the result for the changed custom domain association.</p>"}))
    ModifyCustomDomainAssociationResult.type = Types::ModifyCustomDomainAssociationResult
    ModifyEndpointAccessMessage.add_member(:endpoint_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The endpoint to be modified.</p>", "smithy.api#required" => {}}))
    ModifyEndpointAccessMessage.add_member(:vpc_security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: 'VpcSecurityGroupIds', traits: {"smithy.api#documentation" => "<p>The complete list of VPC security groups associated with the endpoint after the endpoint is modified.</p>"}))
    ModifyEndpointAccessMessage.type = Types::ModifyEndpointAccessMessage
    ModifyEndpointAccessOutput.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The cluster identifier of the cluster associated with the endpoint.</p>"}))
    ModifyEndpointAccessOutput.add_member(:resource_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceOwner', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the owner of the cluster.</p>"}))
    ModifyEndpointAccessOutput.add_member(:subnet_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubnetGroupName', traits: {"smithy.api#documentation" => "<p>The subnet group name where Amazon Redshift chooses to deploy the endpoint.</p>"}))
    ModifyEndpointAccessOutput.add_member(:endpoint_status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointStatus', traits: {"smithy.api#documentation" => "<p>The status of the endpoint.</p>"}))
    ModifyEndpointAccessOutput.add_member(:endpoint_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointName', traits: {"smithy.api#documentation" => "<p>The name of the endpoint.</p>"}))
    ModifyEndpointAccessOutput.add_member(:endpoint_create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'EndpointCreateTime', traits: {"smithy.api#documentation" => "<p>The time (UTC) that the endpoint was created.</p>"}))
    ModifyEndpointAccessOutput.add_member(:port, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Port', traits: {"smithy.api#documentation" => "<p>The port number on which the cluster accepts incoming connections.</p>"}))
    ModifyEndpointAccessOutput.add_member(:address, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Address', traits: {"smithy.api#documentation" => "<p>The DNS address of the endpoint.</p>"}))
    ModifyEndpointAccessOutput.add_member(:vpc_security_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupMembershipList, location_name: 'VpcSecurityGroups', traits: {"smithy.api#documentation" => "<p>The security groups associated with the endpoint.</p>"}))
    ModifyEndpointAccessOutput.add_member(:vpc_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpoint, location_name: 'VpcEndpoint'))
    ModifyEndpointAccessOutput.type = Types::ModifyEndpointAccessOutput
    ModifyEventSubscriptionMessage.add_member(:subscription_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubscriptionName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the modified Amazon Redshift event notification subscription.</p>", "smithy.api#required" => {}}))
    ModifyEventSubscriptionMessage.add_member(:sns_topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnsTopicArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the SNS topic to be used by the event\n            notification subscription.</p>"}))
    ModifyEventSubscriptionMessage.add_member(:source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceType', traits: {"smithy.api#documentation" => "<p>The type of source that will be generating the events. For example, if you want to\n            be notified of events generated by a cluster, you would set this parameter to cluster.\n            If this value is not specified, events are returned for all Amazon Redshift objects in your\n            Amazon Web Services account. You must specify a source type in order to specify source IDs.</p>\n         <p>Valid values: cluster, cluster-parameter-group, cluster-security-group, cluster-snapshot, and scheduled-action.</p>"}))
    ModifyEventSubscriptionMessage.add_member(:source_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceIdsList, location_name: 'SourceIds', traits: {"smithy.api#documentation" => "<p>A list of one or more identifiers of Amazon Redshift source objects. All of the objects\n            must be of the same type as was specified in the source type parameter. The event\n            subscription will return only events generated by the specified objects. If not\n            specified, then events are returned for all objects within the source type\n            specified.</p>\n         <p>Example: my-cluster-1, my-cluster-2</p>\n         <p>Example: my-snapshot-20131010</p>"}))
    ModifyEventSubscriptionMessage.add_member(:event_categories, Smithy::Schema::Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: 'EventCategories', traits: {"smithy.api#documentation" => "<p>Specifies the Amazon Redshift event categories to be published by the event notification\n            subscription.</p>\n         <p>Values: configuration, management, monitoring, security, pending</p>"}))
    ModifyEventSubscriptionMessage.add_member(:severity, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Severity', traits: {"smithy.api#documentation" => "<p>Specifies the Amazon Redshift event severity to be published by the event notification\n            subscription.</p>\n         <p>Values: ERROR, INFO</p>"}))
    ModifyEventSubscriptionMessage.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>A Boolean value indicating if the subscription is enabled. <code>true</code>\n            indicates the subscription is enabled </p>"}))
    ModifyEventSubscriptionMessage.type = Types::ModifyEventSubscriptionMessage
    ModifyEventSubscriptionResult.add_member(:event_subscription, Smithy::Schema::Shapes::ShapeRef.new(shape: EventSubscription, location_name: 'EventSubscription'))
    ModifyEventSubscriptionResult.type = Types::ModifyEventSubscriptionResult
    ModifyIntegrationMessage.add_member(:integration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationArn, location_name: 'IntegrationArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier of the integration to modify.</p>", "smithy.api#required" => {}}))
    ModifyIntegrationMessage.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A new description for the integration.</p>"}))
    ModifyIntegrationMessage.add_member(:integration_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationName, location_name: 'IntegrationName', traits: {"smithy.api#documentation" => "<p>A new name for the integration.</p>"}))
    ModifyIntegrationMessage.type = Types::ModifyIntegrationMessage
    ModifyIntegrationOutput.add_member(:integration_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationArn, location_name: 'IntegrationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the integration.</p>"}))
    ModifyIntegrationOutput.add_member(:integration_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationName, location_name: 'IntegrationName', traits: {"smithy.api#documentation" => "<p>The name of the integration.</p>"}))
    ModifyIntegrationOutput.add_member(:source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceArn, location_name: 'SourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the database used as the source for\n            replication.</p>"}))
    ModifyIntegrationOutput.add_member(:target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetArn, location_name: 'TargetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Redshift data warehouse to use as the target for replication.</p>"}))
    ModifyIntegrationOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ZeroETLIntegrationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the integration.</p>"}))
    ModifyIntegrationOutput.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationErrorList, location_name: 'Errors', traits: {"smithy.api#documentation" => "<p>Any errors associated with the integration.</p>"}))
    ModifyIntegrationOutput.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CreateTime', traits: {"smithy.api#documentation" => "<p>The time (UTC) when the integration was created.</p>"}))
    ModifyIntegrationOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the integration.</p>"}))
    ModifyIntegrationOutput.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KMSKeyId', traits: {"smithy.api#documentation" => "<p>The Key Management Service (KMS) key identifier for the key used to\n            encrypt the integration.</p>"}))
    ModifyIntegrationOutput.add_member(:additional_encryption_context, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionContextMap, location_name: 'AdditionalEncryptionContext', traits: {"smithy.api#documentation" => "<p>The encryption context for the integration. For more information, \n            see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context\">Encryption context</a> in the <i>Amazon Web Services Key Management Service Developer\n                Guide</i>.</p>"}))
    ModifyIntegrationOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of tags associated with the integration.</p>"}))
    ModifyIntegrationOutput.type = Types::ModifyIntegrationOutput
    ModifyRedshiftIdcApplicationMessage.add_member(:redshift_idc_application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RedshiftIdcApplicationArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The ARN for the Redshift application that integrates with IAM Identity Center.</p>", "smithy.api#required" => {}}))
    ModifyRedshiftIdcApplicationMessage.add_member(:identity_namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityNamespaceString, location_name: 'IdentityNamespace', traits: {"smithy.api#documentation" => "<p>The namespace for the Amazon Redshift IAM Identity Center application to change. It determines which managed application \n            verifies the connection token.</p>"}))
    ModifyRedshiftIdcApplicationMessage.add_member(:iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IamRoleArn', traits: {"smithy.api#documentation" => "<p>The IAM role ARN associated with the Amazon Redshift IAM Identity Center application to change. It has the required permissions \n            to be assumed and invoke the IDC Identity Center API.</p>"}))
    ModifyRedshiftIdcApplicationMessage.add_member(:idc_display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IdcDisplayNameString, location_name: 'IdcDisplayName', traits: {"smithy.api#documentation" => "<p>The display name for the Amazon Redshift IAM Identity Center application to change. It appears on the console.</p>"}))
    ModifyRedshiftIdcApplicationMessage.add_member(:authorized_token_issuer_list, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizedTokenIssuerList, location_name: 'AuthorizedTokenIssuerList', traits: {"smithy.api#documentation" => "<p>The authorized token issuer list for the Amazon Redshift IAM Identity Center application to change.</p>"}))
    ModifyRedshiftIdcApplicationMessage.add_member(:service_integrations, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceIntegrationList, location_name: 'ServiceIntegrations', traits: {"smithy.api#documentation" => "<p>A collection of service integrations associated with the application.</p>"}))
    ModifyRedshiftIdcApplicationMessage.type = Types::ModifyRedshiftIdcApplicationMessage
    ModifyRedshiftIdcApplicationResult.add_member(:redshift_idc_application, Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftIdcApplication, location_name: 'RedshiftIdcApplication'))
    ModifyRedshiftIdcApplicationResult.type = Types::ModifyRedshiftIdcApplicationResult
    ModifyScheduledActionMessage.add_member(:scheduled_action_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduledActionName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the scheduled action to modify. </p>", "smithy.api#required" => {}}))
    ModifyScheduledActionMessage.add_member(:target_action, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionType, location_name: 'TargetAction', traits: {"smithy.api#documentation" => "<p>A modified JSON format of the scheduled action. \n            For more information about this parameter, see <a>ScheduledAction</a>. </p>"}))
    ModifyScheduledActionMessage.add_member(:schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Schedule', traits: {"smithy.api#documentation" => "<p>A modified schedule in either <code>at( )</code> or <code>cron( )</code> format. \n            For more information about this parameter, see <a>ScheduledAction</a>.</p>"}))
    ModifyScheduledActionMessage.add_member(:iam_role, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IamRole', traits: {"smithy.api#documentation" => "<p>A different IAM role to assume to run the target action. \n            For more information about this parameter, see <a>ScheduledAction</a>.</p>"}))
    ModifyScheduledActionMessage.add_member(:scheduled_action_description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduledActionDescription', traits: {"smithy.api#documentation" => "<p>A modified description of the scheduled action. </p>"}))
    ModifyScheduledActionMessage.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>A modified start time of the scheduled action. \n            For more information about this parameter, see <a>ScheduledAction</a>. </p>"}))
    ModifyScheduledActionMessage.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>A modified end time of the scheduled action. \n            For more information about this parameter, see <a>ScheduledAction</a>. </p>"}))
    ModifyScheduledActionMessage.add_member(:enable, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'Enable', traits: {"smithy.api#documentation" => "<p>A modified enable flag of the scheduled action. If true, the scheduled action is active. If false, the scheduled action is disabled. </p>"}))
    ModifyScheduledActionMessage.type = Types::ModifyScheduledActionMessage
    ModifyScheduledActionOutput.add_member(:scheduled_action_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduledActionName', traits: {"smithy.api#documentation" => "<p>The name of the scheduled action. </p>"}))
    ModifyScheduledActionOutput.add_member(:target_action, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionType, location_name: 'TargetAction', traits: {"smithy.api#documentation" => "<p>A JSON format string of the Amazon Redshift API operation with input parameters. </p>\n         <p>\"<code>{\\\"ResizeCluster\\\":{\\\"NodeType\\\":\\\"ra3.4xlarge\\\",\\\"ClusterIdentifier\\\":\\\"my-test-cluster\\\",\\\"NumberOfNodes\\\":3}}</code>\". </p>"}))
    ModifyScheduledActionOutput.add_member(:schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Schedule', traits: {"smithy.api#documentation" => "<p>The schedule for a one-time (at format) or recurring (cron format) scheduled action. \n            Schedule invocations must be separated by at least one hour.</p>\n         <p>Format of at expressions is \"<code>at(yyyy-mm-ddThh:mm:ss)</code>\". For example, \"<code>at(2016-03-04T17:27:00)</code>\".</p>\n         <p>Format of cron expressions is \"<code>cron(Minutes Hours Day-of-month Month Day-of-week Year)</code>\". \n            For example, \"<code>cron(0 10 ? * MON *)</code>\". For more information, see \n            <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html#CronExpressions\">Cron Expressions</a> \n            in the <i>Amazon CloudWatch Events User Guide</i>.</p>"}))
    ModifyScheduledActionOutput.add_member(:iam_role, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IamRole', traits: {"smithy.api#documentation" => "<p>The IAM role to assume to run the scheduled action. \n            This IAM role must have permission to run the Amazon Redshift API operation in the scheduled action.\n            This IAM role must allow the Amazon Redshift scheduler (Principal scheduler.redshift.amazonaws.com) to assume permissions on your behalf.\n               \nFor more information about the IAM role to use with the Amazon Redshift scheduler, see \n<a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-identity-based.html\">Using Identity-Based Policies for Amazon Redshift</a> \nin the <i>Amazon Redshift Cluster Management Guide</i>.\n</p>"}))
    ModifyScheduledActionOutput.add_member(:scheduled_action_description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduledActionDescription', traits: {"smithy.api#documentation" => "<p>The description of the scheduled action. </p>"}))
    ModifyScheduledActionOutput.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the scheduled action. For example, <code>DISABLED</code>. </p>"}))
    ModifyScheduledActionOutput.add_member(:next_invocations, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionTimeList, location_name: 'NextInvocations', traits: {"smithy.api#documentation" => "<p>List of times when the scheduled action will run. </p>"}))
    ModifyScheduledActionOutput.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The start time in UTC when the schedule is active. Before this time, the scheduled action does not trigger. </p>"}))
    ModifyScheduledActionOutput.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The end time in UTC when the schedule is no longer active. After this time, the scheduled action does not trigger. </p>"}))
    ModifyScheduledActionOutput.type = Types::ModifyScheduledActionOutput
    ModifySnapshotCopyRetentionPeriodMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier of the cluster for which you want to change the retention\n            period for either automated or manual snapshots that are copied to a destination Amazon Web Services Region.</p>\n         <p>Constraints: Must be the valid name of an existing cluster that has cross-region\n            snapshot copy enabled.</p>", "smithy.api#required" => {}}))
    ModifySnapshotCopyRetentionPeriodMessage.add_member(:retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'RetentionPeriod', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The number of days to retain automated snapshots in the destination Amazon Web Services Region\n            after they are copied from the source Amazon Web Services Region.</p>\n         <p>By default, this only changes the retention period of copied automated snapshots. </p>\n         <p>If you decrease the retention period for automated snapshots that are copied to a\n            destination Amazon Web Services Region, Amazon Redshift deletes any existing automated snapshots that were\n            copied to the destination Amazon Web Services Region and that fall outside of the new retention\n            period.</p>\n         <p>Constraints: Must be at least 1 and no more than 35 for automated snapshots. </p>\n         <p>If you specify the <code>manual</code> option, only newly copied manual snapshots will\n            have the new retention period. </p>\n         <p>If you specify the value of -1 newly copied manual snapshots are retained\n            indefinitely.</p>\n         <p>Constraints: The number of days must be either -1 or an integer between 1 and 3,653\n            for manual snapshots.</p>", "smithy.api#required" => {}}))
    ModifySnapshotCopyRetentionPeriodMessage.add_member(:manual, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Manual', traits: {"smithy.api#documentation" => "<p>Indicates whether to apply the snapshot retention period to newly copied manual\n            snapshots instead of automated snapshots.</p>"}))
    ModifySnapshotCopyRetentionPeriodMessage.type = Types::ModifySnapshotCopyRetentionPeriodMessage
    ModifySnapshotCopyRetentionPeriodResult.add_member(:cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster'))
    ModifySnapshotCopyRetentionPeriodResult.type = Types::ModifySnapshotCopyRetentionPeriodResult
    ModifySnapshotScheduleMessage.add_member(:schedule_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduleIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>A unique alphanumeric identifier of the schedule to modify.</p>", "smithy.api#required" => {}}))
    ModifySnapshotScheduleMessage.add_member(:schedule_definitions, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleDefinitionList, location_name: 'ScheduleDefinitions', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>An updated list of schedule definitions. A schedule definition is made up of schedule\n            expressions, for example, \"cron(30 12 *)\" or \"rate(12 hours)\".</p>", "smithy.api#required" => {}}))
    ModifySnapshotScheduleMessage.type = Types::ModifySnapshotScheduleMessage
    ModifySnapshotScheduleOutput.add_member(:schedule_definitions, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleDefinitionList, location_name: 'ScheduleDefinitions', traits: {"smithy.api#documentation" => "<p>A list of ScheduleDefinitions.</p>"}))
    ModifySnapshotScheduleOutput.add_member(:schedule_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduleIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for the schedule.</p>"}))
    ModifySnapshotScheduleOutput.add_member(:schedule_description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduleDescription', traits: {"smithy.api#documentation" => "<p>The description of the schedule.</p>"}))
    ModifySnapshotScheduleOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An optional set of tags describing the schedule.</p>"}))
    ModifySnapshotScheduleOutput.add_member(:next_invocations, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledSnapshotTimeList, location_name: 'NextInvocations', traits: {"smithy.api#documentation" => "<p></p>"}))
    ModifySnapshotScheduleOutput.add_member(:associated_cluster_count, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'AssociatedClusterCount', traits: {"smithy.api#documentation" => "<p>The number of clusters associated with the schedule.</p>"}))
    ModifySnapshotScheduleOutput.add_member(:associated_clusters, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedClusterList, location_name: 'AssociatedClusters', traits: {"smithy.api#documentation" => "<p>A list of clusters associated with the schedule. A maximum of 100 clusters is returned.</p>"}))
    ModifySnapshotScheduleOutput.type = Types::ModifySnapshotScheduleOutput
    ModifyUsageLimitMessage.add_member(:usage_limit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UsageLimitId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The identifier of the usage limit to modify.</p>", "smithy.api#required" => {}}))
    ModifyUsageLimitMessage.add_member(:amount, Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: 'Amount', traits: {"smithy.api#documentation" => "<p>The new limit amount. \n            For more information about this parameter, see <a>UsageLimit</a>. </p>"}))
    ModifyUsageLimitMessage.add_member(:breach_action, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitBreachAction, location_name: 'BreachAction', traits: {"smithy.api#documentation" => "<p>The new action that Amazon Redshift takes when the limit is reached. \n            For more information about this parameter, see <a>UsageLimit</a>. </p>"}))
    ModifyUsageLimitMessage.type = Types::ModifyUsageLimitMessage
    ModifyUsageLimitOutput.add_member(:usage_limit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UsageLimitId', traits: {"smithy.api#documentation" => "<p>The identifier of the usage limit.</p>"}))
    ModifyUsageLimitOutput.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the cluster with a usage limit.</p>"}))
    ModifyUsageLimitOutput.add_member(:feature_type, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitFeatureType, location_name: 'FeatureType', traits: {"smithy.api#documentation" => "<p>The Amazon Redshift feature to which the limit applies.</p>"}))
    ModifyUsageLimitOutput.add_member(:limit_type, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitLimitType, location_name: 'LimitType', traits: {"smithy.api#documentation" => "<p>The type of limit. Depending on the feature type, this can be based on a time duration or data size.</p>"}))
    ModifyUsageLimitOutput.add_member(:amount, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'Amount', traits: {"smithy.api#documentation" => "<p>The limit amount. If time-based, this amount is in minutes. If data-based, this amount is in terabytes (TB).</p>"}))
    ModifyUsageLimitOutput.add_member(:period, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitPeriod, location_name: 'Period', traits: {"smithy.api#documentation" => "<p>The time period that the amount applies to. A <code>weekly</code> period begins on Sunday. The default is <code>monthly</code>. </p>"}))
    ModifyUsageLimitOutput.add_member(:breach_action, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitBreachAction, location_name: 'BreachAction', traits: {"smithy.api#documentation" => "<p>The action that Amazon Redshift takes when the limit is reached. Possible values are: </p>\n         <ul>\n            <li>\n               <p>\n                  <b>log</b> - To log an event in a system table. The default is log.</p>\n            </li>\n            <li>\n               <p>\n                  <b>emit-metric</b> - To emit CloudWatch metrics.</p>\n            </li>\n            <li>\n               <p>\n                  <b>disable</b> - To disable the feature until the next usage period begins.</p>\n            </li>\n         </ul>"}))
    ModifyUsageLimitOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tag instances.</p>"}))
    ModifyUsageLimitOutput.type = Types::ModifyUsageLimitOutput
    NamespaceIdentifierUnion.add_member(:serverless_identifier, Types::NamespaceIdentifierUnion::ServerlessIdentifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessIdentifier, location_name: 'ServerlessIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier for a serverless namespace.</p>"}))
    NamespaceIdentifierUnion.add_member(:provisioned_identifier, Types::NamespaceIdentifierUnion::ProvisionedIdentifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedIdentifier, location_name: 'ProvisionedIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier for a provisioned cluster.</p>"}))
    NamespaceIdentifierUnion.add_member(:unknown, Types::NamespaceIdentifierUnion::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    NamespaceIdentifierUnion.type = Types::NamespaceIdentifierUnion
    NamespaceRegistrationStatus.add_member(:registering, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REGISTERING', traits: {"smithy.api#enumValue" => "Registering"}))
    NamespaceRegistrationStatus.add_member(:deregistering, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEREGISTERING', traits: {"smithy.api#enumValue" => "Deregistering"}))
    NetworkInterface.add_member(:network_interface_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NetworkInterfaceId', traits: {"smithy.api#documentation" => "<p>The network interface identifier. </p>"}))
    NetworkInterface.add_member(:subnet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubnetId', traits: {"smithy.api#documentation" => "<p>The subnet identifier. </p>"}))
    NetworkInterface.add_member(:private_ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PrivateIpAddress', traits: {"smithy.api#documentation" => "<p>The IPv4 address of the network interface within the subnet. </p>"}))
    NetworkInterface.add_member(:availability_zone, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AvailabilityZone', traits: {"smithy.api#documentation" => "<p>The Availability Zone. </p>"}))
    NetworkInterface.add_member(:ipv6_address, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Ipv6Address', traits: {"smithy.api#documentation" => "<p>The IPv6 address of the network interface within the subnet. </p>"}))
    NetworkInterface.type = Types::NetworkInterface
    NetworkInterfaceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterface, traits: {"smithy.api#xmlName" => "NetworkInterface"})
    NodeConfigurationOption.add_member(:node_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeType', traits: {"smithy.api#documentation" => "<p>The node type, such as, \"ra3.4xlarge\".</p>"}))
    NodeConfigurationOption.add_member(:number_of_nodes, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumberOfNodes', traits: {"smithy.api#documentation" => "<p>The number of nodes.</p>"}))
    NodeConfigurationOption.add_member(:estimated_disk_utilization_percent, Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'EstimatedDiskUtilizationPercent', traits: {"smithy.api#documentation" => "<p>The estimated disk utilizaton percentage.</p>"}))
    NodeConfigurationOption.add_member(:mode, Smithy::Schema::Shapes::ShapeRef.new(shape: Mode, location_name: 'Mode', traits: {"smithy.api#documentation" => "<p>The category of the node configuration recommendation.</p>"}))
    NodeConfigurationOption.type = Types::NodeConfigurationOption
    NodeConfigurationOptionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NodeConfigurationOption, traits: {"smithy.api#xmlName" => "NodeConfigurationOption"})
    NodeConfigurationOptionsFilter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeConfigurationOptionsFilterName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the element to filter.</p>"}))
    NodeConfigurationOptionsFilter.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: OperatorType, location_name: 'Operator', traits: {"smithy.api#documentation" => "<p>The filter operator.\n            If filter Name is NodeType only the 'in' operator is supported.\n            Provide one value to evaluate for 'eq', 'lt', 'le', 'gt', and 'ge'. \n            Provide two values to evaluate for 'between'.\n            Provide a list of values for 'in'.</p>"}))
    NodeConfigurationOptionsFilter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: ValueStringList, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>List of values. Compare Name using Operator to Values.\n            If filter Name is NumberOfNodes, then values can range from 0 to 200.\n            If filter Name is EstimatedDiskUtilizationPercent, then values can range from 0 to 100. \n            For example, filter NumberOfNodes (name) GT (operator) 3 (values).</p>", "smithy.api#xmlName" => "Value"}))
    NodeConfigurationOptionsFilter.type = Types::NodeConfigurationOptionsFilter
    NodeConfigurationOptionsFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NodeConfigurationOptionsFilter, traits: {"smithy.api#xmlName" => "NodeConfigurationOptionsFilter"})
    NodeConfigurationOptionsFilterName.add_member(:node_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NODE_TYPE', traits: {"smithy.api#enumValue" => "NodeType"}))
    NodeConfigurationOptionsFilterName.add_member(:num_nodes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NUM_NODES', traits: {"smithy.api#enumValue" => "NumberOfNodes"}))
    NodeConfigurationOptionsFilterName.add_member(:estimated_disk_utilization_percent, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ESTIMATED_DISK_UTILIZATION_PERCENT', traits: {"smithy.api#enumValue" => "EstimatedDiskUtilizationPercent"}))
    NodeConfigurationOptionsFilterName.add_member(:mode, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MODE', traits: {"smithy.api#enumValue" => "Mode"}))
    NodeConfigurationOptionsMessage.add_member(:node_configuration_option_list, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeConfigurationOptionList, location_name: 'NodeConfigurationOptionList', traits: {"smithy.api#documentation" => "<p>A list of valid node configurations.</p>"}))
    NodeConfigurationOptionsMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>A value that indicates the starting point for the next set of response records in a\n            subsequent request. If a value is returned in a response, you can retrieve the next set\n            of records by providing this returned marker value in the <code>Marker</code> parameter\n            and retrying the command. If the <code>Marker</code> field is empty, all response\n            records have been retrieved for the request. </p>"}))
    NodeConfigurationOptionsMessage.type = Types::NodeConfigurationOptionsMessage
    NumberOfNodesPerClusterLimitExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    NumberOfNodesPerClusterLimitExceededFault.type = Types::NumberOfNodesPerClusterLimitExceededFault
    NumberOfNodesQuotaExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    NumberOfNodesQuotaExceededFault.type = Types::NumberOfNodesQuotaExceededFault
    OperatorType.add_member(:eq, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQ', traits: {"smithy.api#enumValue" => "eq"}))
    OperatorType.add_member(:lt, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LT', traits: {"smithy.api#enumValue" => "lt"}))
    OperatorType.add_member(:gt, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GT', traits: {"smithy.api#enumValue" => "gt"}))
    OperatorType.add_member(:le, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LE', traits: {"smithy.api#enumValue" => "le"}))
    OperatorType.add_member(:ge, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GE', traits: {"smithy.api#enumValue" => "ge"}))
    OperatorType.add_member(:in, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN', traits: {"smithy.api#enumValue" => "in"}))
    OperatorType.add_member(:between, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BETWEEN', traits: {"smithy.api#enumValue" => "between"}))
    OrderableClusterOption.add_member(:cluster_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterVersion', traits: {"smithy.api#documentation" => "<p>The version of the orderable cluster.</p>"}))
    OrderableClusterOption.add_member(:cluster_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterType', traits: {"smithy.api#documentation" => "<p>The cluster type, for example <code>multi-node</code>. </p>"}))
    OrderableClusterOption.add_member(:node_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeType', traits: {"smithy.api#documentation" => "<p>The node type for the orderable cluster.</p>"}))
    OrderableClusterOption.add_member(:availability_zones, Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneList, location_name: 'AvailabilityZones', traits: {"smithy.api#documentation" => "<p>A list of availability zones for the orderable cluster.</p>"}))
    OrderableClusterOption.type = Types::OrderableClusterOption
    OrderableClusterOptionsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OrderableClusterOption, traits: {"smithy.api#xmlName" => "OrderableClusterOption"})
    OrderableClusterOptionsMessage.add_member(:orderable_cluster_options, Smithy::Schema::Shapes::ShapeRef.new(shape: OrderableClusterOptionsList, location_name: 'OrderableClusterOptions', traits: {"smithy.api#documentation" => "<p>An <code>OrderableClusterOption</code> structure containing information about\n            orderable options for the cluster.</p>"}))
    OrderableClusterOptionsMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>A value that indicates the starting point for the next set of response records in a\n            subsequent request. If a value is returned in a response, you can retrieve the next set\n            of records by providing this returned marker value in the <code>Marker</code> parameter\n            and retrying the command. If the <code>Marker</code> field is empty, all response\n            records have been retrieved for the request. </p>"}))
    OrderableClusterOptionsMessage.type = Types::OrderableClusterOptionsMessage
    Parameter.add_member(:parameter_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterName', traits: {"smithy.api#documentation" => "<p>The name of the parameter.</p>"}))
    Parameter.add_member(:parameter_value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterValue', traits: {"smithy.api#documentation" => "<p>The value of the parameter. If <code>ParameterName</code> is <code>wlm_json_configuration</code>, \n            then the maximum size of <code>ParameterValue</code> is 8000 characters.</p>"}))
    Parameter.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the parameter.</p>"}))
    Parameter.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Source', traits: {"smithy.api#documentation" => "<p>The source of the parameter value, such as \"engine-default\" or \"user\".</p>"}))
    Parameter.add_member(:data_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataType', traits: {"smithy.api#documentation" => "<p>The data type of the parameter.</p>"}))
    Parameter.add_member(:allowed_values, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AllowedValues', traits: {"smithy.api#documentation" => "<p>The valid range of values for the parameter.</p>"}))
    Parameter.add_member(:apply_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterApplyType, location_name: 'ApplyType', traits: {"smithy.api#documentation" => "<p>Specifies how to apply the WLM configuration parameter. Some properties can be\n            applied dynamically, while other properties require that any associated clusters be\n            rebooted for the configuration changes to be applied. \nFor more information about parameters and parameter groups, go to \n<a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html\">Amazon Redshift Parameter Groups</a> \nin the <i>Amazon Redshift Cluster Management Guide</i>.</p>"}))
    Parameter.add_member(:is_modifiable, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsModifiable', traits: {"smithy.api#documentation" => "<p>If <code>true</code>, the parameter can be modified. Some parameters have security\n            or operational implications that prevent them from being changed. </p>"}))
    Parameter.add_member(:minimum_engine_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MinimumEngineVersion', traits: {"smithy.api#documentation" => "<p>The earliest engine version to which the parameter can apply.</p>"}))
    Parameter.type = Types::Parameter
    ParameterApplyType.add_member(:static, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'static', traits: {"smithy.api#enumValue" => "static"}))
    ParameterApplyType.add_member(:dynamic, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'dynamic', traits: {"smithy.api#enumValue" => "dynamic"}))
    ParameterGroupList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterParameterGroup, traits: {"smithy.api#xmlName" => "ClusterParameterGroup"})
    ParametersList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Parameter, traits: {"smithy.api#xmlName" => "Parameter"})
    PartnerIntegrationInfo.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationDatabaseName, location_name: 'DatabaseName', traits: {"smithy.api#documentation" => "<p>The name of the database that receives data from a partner.</p>"}))
    PartnerIntegrationInfo.add_member(:partner_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationPartnerName, location_name: 'PartnerName', traits: {"smithy.api#documentation" => "<p>The name of the partner.</p>"}))
    PartnerIntegrationInfo.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The partner integration status.</p>"}))
    PartnerIntegrationInfo.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationStatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>The status message provided by the partner.</p>"}))
    PartnerIntegrationInfo.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date (UTC) that the partner integration was created.</p>"}))
    PartnerIntegrationInfo.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The date (UTC) that the partner integration status was last updated by the partner.</p>"}))
    PartnerIntegrationInfo.type = Types::PartnerIntegrationInfo
    PartnerIntegrationInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationInfo, traits: {"smithy.api#xmlName" => "PartnerIntegrationInfo"})
    PartnerIntegrationStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Active', traits: {"smithy.api#enumValue" => "Active"}))
    PartnerIntegrationStatus.add_member(:inactive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Inactive', traits: {"smithy.api#enumValue" => "Inactive"}))
    PartnerIntegrationStatus.add_member(:runtime_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RuntimeFailure', traits: {"smithy.api#enumValue" => "RuntimeFailure"}))
    PartnerIntegrationStatus.add_member(:connection_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ConnectionFailure', traits: {"smithy.api#enumValue" => "ConnectionFailure"}))
    PartnerNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    PartnerNotFoundFault.type = Types::PartnerNotFoundFault
    PauseClusterInput.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The identifier of the cluster to be paused.</p>", "smithy.api#required" => {}}))
    PauseClusterInput.type = Types::PauseClusterInput
    PauseClusterMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The identifier of the cluster to be paused.</p>", "smithy.api#required" => {}}))
    PauseClusterMessage.type = Types::PauseClusterMessage
    PauseClusterResult.add_member(:cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster'))
    PauseClusterResult.type = Types::PauseClusterResult
    PendingActionsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    PendingModifiedValues.add_member(:master_user_password, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'MasterUserPassword', traits: {"smithy.api#documentation" => "<p>The pending or in-progress change of the admin user password for the\n            cluster.</p>"}))
    PendingModifiedValues.add_member(:node_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeType', traits: {"smithy.api#documentation" => "<p>The pending or in-progress change of the cluster's node type.</p>"}))
    PendingModifiedValues.add_member(:number_of_nodes, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'NumberOfNodes', traits: {"smithy.api#documentation" => "<p>The pending or in-progress change of the number of nodes in the cluster.</p>"}))
    PendingModifiedValues.add_member(:cluster_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterType', traits: {"smithy.api#documentation" => "<p>The pending or in-progress change of the cluster type.</p>"}))
    PendingModifiedValues.add_member(:cluster_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterVersion', traits: {"smithy.api#documentation" => "<p>The pending or in-progress change of the service version.</p>"}))
    PendingModifiedValues.add_member(:automated_snapshot_retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'AutomatedSnapshotRetentionPeriod', traits: {"smithy.api#documentation" => "<p>The pending or in-progress change of the automated snapshot retention\n            period.</p>"}))
    PendingModifiedValues.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The pending or in-progress change of the new identifier for the cluster.</p>"}))
    PendingModifiedValues.add_member(:publicly_accessible, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'PubliclyAccessible', traits: {"smithy.api#documentation" => "<p>The pending or in-progress change of the ability to connect to the cluster from the\n            public network.</p>"}))
    PendingModifiedValues.add_member(:enhanced_vpc_routing, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnhancedVpcRouting', traits: {"smithy.api#documentation" => "<p>An option that specifies whether to create the cluster with enhanced VPC routing\n            enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a\n            VPC. For more information, see <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html\">Enhanced VPC Routing</a> in\n            the Amazon Redshift Cluster Management Guide.</p>\n         <p>If this option is <code>true</code>, enhanced VPC routing is enabled. </p>\n         <p>Default: false</p>"}))
    PendingModifiedValues.add_member(:maintenance_track_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MaintenanceTrackName', traits: {"smithy.api#documentation" => "<p>The name of the maintenance track that the cluster will change to during the next\n            maintenance window.</p>"}))
    PendingModifiedValues.add_member(:encryption_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EncryptionType', traits: {"smithy.api#documentation" => "<p>The encryption type for a cluster. Possible values are: KMS and None. </p>"}))
    PendingModifiedValues.type = Types::PendingModifiedValues
    ProvisionedIdentifier.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the provisioned cluster.</p>", "smithy.api#required" => {}}))
    ProvisionedIdentifier.type = Types::ProvisionedIdentifier
    PurchaseReservedNodeOfferingMessage.add_member(:reserved_node_offering_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedNodeOfferingId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier of the reserved node offering you want to purchase.</p>", "smithy.api#required" => {}}))
    PurchaseReservedNodeOfferingMessage.add_member(:node_count, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'NodeCount', traits: {"smithy.api#documentation" => "<p>The number of reserved nodes that you want to purchase.</p>\n         <p>Default: <code>1</code>\n         </p>"}))
    PurchaseReservedNodeOfferingMessage.type = Types::PurchaseReservedNodeOfferingMessage
    PurchaseReservedNodeOfferingResult.add_member(:reserved_node, Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNode, location_name: 'ReservedNode'))
    PurchaseReservedNodeOfferingResult.type = Types::PurchaseReservedNodeOfferingResult
    PutResourcePolicyMessage.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource of which its resource policy is updated.</p>", "smithy.api#required" => {}}))
    PutResourcePolicyMessage.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Policy', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The content of the resource policy being updated.</p>", "smithy.api#required" => {}}))
    PutResourcePolicyMessage.type = Types::PutResourcePolicyMessage
    PutResourcePolicyResult.add_member(:resource_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: 'ResourcePolicy', traits: {"smithy.api#documentation" => "<p>The content of the updated resource policy.</p>"}))
    PutResourcePolicyResult.type = Types::PutResourcePolicyResult
    ReadWriteAccess.add_member(:authorization, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAuthorization, location_name: 'Authorization', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Determines whether the read/write scope is enabled or disabled.</p>", "smithy.api#required" => {}}))
    ReadWriteAccess.type = Types::ReadWriteAccess
    RebootClusterMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The cluster identifier.</p>", "smithy.api#required" => {}}))
    RebootClusterMessage.type = Types::RebootClusterMessage
    RebootClusterResult.add_member(:cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster'))
    RebootClusterResult.type = Types::RebootClusterResult
    Recommendation.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>A unique identifier of the Advisor recommendation.</p>"}))
    Recommendation.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The unique identifier of the cluster for which the recommendation is returned.</p>"}))
    Recommendation.add_member(:namespace_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NamespaceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Redshift cluster namespace ARN for which the recommendations is returned.</p>"}))
    Recommendation.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time (UTC) that the recommendation was created.</p>"}))
    Recommendation.add_member(:recommendation_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommendationType', traits: {"smithy.api#documentation" => "<p>The type of Advisor recommendation.</p>"}))
    Recommendation.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Title', traits: {"smithy.api#documentation" => "<p>The title of the recommendation.</p>"}))
    Recommendation.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the recommendation.</p>"}))
    Recommendation.add_member(:observation, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Observation', traits: {"smithy.api#documentation" => "<p>The description of what was observed about your cluster.</p>"}))
    Recommendation.add_member(:impact_ranking, Smithy::Schema::Shapes::ShapeRef.new(shape: ImpactRankingType, location_name: 'ImpactRanking', traits: {"smithy.api#documentation" => "<p>The scale of the impact that the Advisor recommendation has to the performance and cost of the cluster.</p>"}))
    Recommendation.add_member(:recommendation_text, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommendationText', traits: {"smithy.api#documentation" => "<p>The description of the recommendation.</p>"}))
    Recommendation.add_member(:recommended_actions, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendedActionList, location_name: 'RecommendedActions', traits: {"smithy.api#documentation" => "<p>List of Amazon Redshift recommended actions.</p>"}))
    Recommendation.add_member(:reference_links, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceLinkList, location_name: 'ReferenceLinks', traits: {"smithy.api#documentation" => "<p>List of helpful links for more information about the Advisor recommendation.</p>"}))
    Recommendation.type = Types::Recommendation
    RecommendationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Recommendation, traits: {"smithy.api#xmlName" => "Recommendation"})
    RecommendedAction.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Text', traits: {"smithy.api#documentation" => "<p>The specific instruction about the command.</p>"}))
    RecommendedAction.add_member(:database, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Database', traits: {"smithy.api#documentation" => "<p>The database name to perform the action on. Only applicable if the type of command is SQL.</p>"}))
    RecommendedAction.add_member(:command, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Command', traits: {"smithy.api#documentation" => "<p>The command to run.</p>"}))
    RecommendedAction.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendedActionType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of command.</p>"}))
    RecommendedAction.type = Types::RecommendedAction
    RecommendedActionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendedAction, traits: {"smithy.api#xmlName" => "RecommendedAction"})
    RecommendedActionType.add_member(:sql, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SQL', traits: {"smithy.api#enumValue" => "SQL"}))
    RecommendedActionType.add_member(:cli, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLI', traits: {"smithy.api#enumValue" => "CLI"}))
    RecurringCharge.add_member(:recurring_charge_amount, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'RecurringChargeAmount', traits: {"smithy.api#documentation" => "<p>The amount charged per the period of time specified by the recurring charge\n            frequency.</p>"}))
    RecurringCharge.add_member(:recurring_charge_frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecurringChargeFrequency', traits: {"smithy.api#documentation" => "<p>The frequency at which the recurring charge amount is applied.</p>"}))
    RecurringCharge.type = Types::RecurringCharge
    RecurringChargeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RecurringCharge, traits: {"smithy.api#xmlName" => "RecurringCharge"})
    RedshiftIdcApplication.add_member(:idc_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IdcInstanceArn', traits: {"smithy.api#documentation" => "<p>The ARN for the IAM Identity Center instance that Redshift integrates with.</p>"}))
    RedshiftIdcApplication.add_member(:redshift_idc_application_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftIdcApplicationName, location_name: 'RedshiftIdcApplicationName', traits: {"smithy.api#documentation" => "<p>The name of the Redshift application in IAM Identity Center.</p>"}))
    RedshiftIdcApplication.add_member(:redshift_idc_application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RedshiftIdcApplicationArn', traits: {"smithy.api#documentation" => "<p>The ARN for the Redshift application that integrates with IAM Identity Center.</p>"}))
    RedshiftIdcApplication.add_member(:identity_namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityNamespaceString, location_name: 'IdentityNamespace', traits: {"smithy.api#documentation" => "<p>The identity namespace for the Amazon Redshift IAM Identity Center application. It determines which managed application verifies the connection token.</p>"}))
    RedshiftIdcApplication.add_member(:idc_display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IdcDisplayNameString, location_name: 'IdcDisplayName', traits: {"smithy.api#documentation" => "<p>The display name for the Amazon Redshift IAM Identity Center application. It appears on the console.</p>"}))
    RedshiftIdcApplication.add_member(:iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IamRoleArn', traits: {"smithy.api#documentation" => "<p>The ARN for the Amazon Redshift IAM Identity Center application. It has the required permissions to be assumed and invoke the IDC Identity Center API.</p>"}))
    RedshiftIdcApplication.add_member(:idc_managed_application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IdcManagedApplicationArn', traits: {"smithy.api#documentation" => "<p>The ARN for the Amazon Redshift IAM Identity Center application.</p>"}))
    RedshiftIdcApplication.add_member(:idc_onboard_status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IdcOnboardStatus', traits: {"smithy.api#documentation" => "<p>The onboarding status for the Amazon Redshift IAM Identity Center application.</p>"}))
    RedshiftIdcApplication.add_member(:authorized_token_issuer_list, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizedTokenIssuerList, location_name: 'AuthorizedTokenIssuerList', traits: {"smithy.api#documentation" => "<p>The authorized token issuer list for the Amazon Redshift IAM Identity Center application.</p>"}))
    RedshiftIdcApplication.add_member(:service_integrations, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceIntegrationList, location_name: 'ServiceIntegrations', traits: {"smithy.api#documentation" => "<p>A list of service integrations for the Redshift IAM Identity Center application.</p>"}))
    RedshiftIdcApplication.type = Types::RedshiftIdcApplication
    RedshiftIdcApplicationAlreadyExistsFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    RedshiftIdcApplicationAlreadyExistsFault.type = Types::RedshiftIdcApplicationAlreadyExistsFault
    RedshiftIdcApplicationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftIdcApplication)
    RedshiftIdcApplicationNotExistsFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    RedshiftIdcApplicationNotExistsFault.type = Types::RedshiftIdcApplicationNotExistsFault
    RedshiftIdcApplicationQuotaExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    RedshiftIdcApplicationQuotaExceededFault.type = Types::RedshiftIdcApplicationQuotaExceededFault
    ReferenceLink.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Text', traits: {"smithy.api#documentation" => "<p>The hyperlink text that describes the link to more information.</p>"}))
    ReferenceLink.add_member(:link, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Link', traits: {"smithy.api#documentation" => "<p>The URL address to find more information.</p>"}))
    ReferenceLink.type = Types::ReferenceLink
    ReferenceLinkList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceLink, traits: {"smithy.api#xmlName" => "ReferenceLink"})
    RegisterNamespaceInputMessage.add_member(:namespace_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceIdentifierUnion, location_name: 'NamespaceIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier of the cluster or \n            serverless namespace that you want to register. </p>", "smithy.api#required" => {}}))
    RegisterNamespaceInputMessage.add_member(:consumer_identifiers, Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumerIdentifierList, location_name: 'ConsumerIdentifiers', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>An array containing the ID of the consumer account \n            that you want to register the namespace to.</p>", "smithy.api#required" => {}}))
    RegisterNamespaceInputMessage.type = Types::RegisterNamespaceInputMessage
    RegisterNamespaceOutputMessage.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceRegistrationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The registration status of the cluster or \n            serverless namespace.</p>"}))
    RegisterNamespaceOutputMessage.type = Types::RegisterNamespaceOutputMessage
    RejectDataShareMessage.add_member(:data_share_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataShareArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the datashare to reject.</p>", "smithy.api#required" => {}}))
    RejectDataShareMessage.type = Types::RejectDataShareMessage
    RejectDataShareOutput.add_member(:data_share_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataShareArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the datashare that the consumer is to use.</p>"}))
    RejectDataShareOutput.add_member(:producer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProducerArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the producer namespace.</p>"}))
    RejectDataShareOutput.add_member(:allow_publicly_accessible_consumers, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllowPubliclyAccessibleConsumers', traits: {"smithy.api#documentation" => "<p>A value that specifies whether the datashare can be shared to a publicly accessible  cluster.</p>"}))
    RejectDataShareOutput.add_member(:data_share_associations, Smithy::Schema::Shapes::ShapeRef.new(shape: DataShareAssociationList, location_name: 'DataShareAssociations', traits: {"smithy.api#documentation" => "<p>A value that specifies when the datashare has an association between producer and data\n            consumers.</p>"}))
    RejectDataShareOutput.add_member(:managed_by, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ManagedBy', traits: {"smithy.api#documentation" => "<p>The identifier of a datashare to show its managing entity.</p>"}))
    RejectDataShareOutput.add_member(:data_share_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DataShareType, location_name: 'DataShareType', traits: {"smithy.api#documentation" => "<p> The type of the datashare created by RegisterNamespace.</p>"}))
    RejectDataShareOutput.type = Types::RejectDataShareOutput
    ReservedNode.add_member(:reserved_node_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedNodeId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the reservation.</p>"}))
    ReservedNode.add_member(:reserved_node_offering_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedNodeOfferingId', traits: {"smithy.api#documentation" => "<p>The identifier for the reserved node offering.</p>"}))
    ReservedNode.add_member(:node_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeType', traits: {"smithy.api#documentation" => "<p>The node type of the reserved node.</p>"}))
    ReservedNode.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The time the reservation started. You purchase a reserved node offering for a\n            duration. This is the start time of that duration.</p>"}))
    ReservedNode.add_member(:duration, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Duration', traits: {"smithy.api#documentation" => "<p>The duration of the node reservation in seconds.</p>"}))
    ReservedNode.add_member(:fixed_price, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'FixedPrice', traits: {"smithy.api#documentation" => "<p>The fixed cost Amazon Redshift charges you for this reserved node.</p>"}))
    ReservedNode.add_member(:usage_price, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'UsagePrice', traits: {"smithy.api#documentation" => "<p>The hourly rate Amazon Redshift charges you for this reserved node.</p>"}))
    ReservedNode.add_member(:currency_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CurrencyCode', traits: {"smithy.api#documentation" => "<p>The currency code for the reserved cluster.</p>"}))
    ReservedNode.add_member(:node_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NodeCount', traits: {"smithy.api#documentation" => "<p>The number of reserved compute nodes.</p>"}))
    ReservedNode.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the reserved compute node.</p>\n         <p>Possible Values:</p>\n         <ul>\n            <li>\n               <p>pending-payment-This reserved node has recently been purchased, and the\n                    sale has been approved, but payment has not yet been confirmed.</p>\n            </li>\n            <li>\n               <p>active-This reserved node is owned by the caller and is available for\n                    use.</p>\n            </li>\n            <li>\n               <p>payment-failed-Payment failed for the purchase attempt.</p>\n            </li>\n            <li>\n               <p>retired-The reserved node is no longer available. </p>\n            </li>\n            <li>\n               <p>exchanging-The owner is exchanging the reserved node for another reserved\n                    node.</p>\n            </li>\n         </ul>"}))
    ReservedNode.add_member(:offering_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OfferingType', traits: {"smithy.api#documentation" => "<p>The anticipated utilization of the reserved node, as defined in the reserved node\n            offering.</p>"}))
    ReservedNode.add_member(:recurring_charges, Smithy::Schema::Shapes::ShapeRef.new(shape: RecurringChargeList, location_name: 'RecurringCharges', traits: {"smithy.api#documentation" => "<p>The recurring charges for the reserved node.</p>"}))
    ReservedNode.add_member(:reserved_node_offering_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeOfferingType, location_name: 'ReservedNodeOfferingType', traits: {"smithy.api#documentation" => "<p></p>"}))
    ReservedNode.type = Types::ReservedNode
    ReservedNodeAlreadyExistsFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ReservedNodeAlreadyExistsFault.type = Types::ReservedNodeAlreadyExistsFault
    ReservedNodeAlreadyMigratedFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ReservedNodeAlreadyMigratedFault.type = Types::ReservedNodeAlreadyMigratedFault
    ReservedNodeConfigurationOption.add_member(:source_reserved_node, Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNode, location_name: 'SourceReservedNode'))
    ReservedNodeConfigurationOption.add_member(:target_reserved_node_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TargetReservedNodeCount', traits: {"smithy.api#documentation" => "<p>The target reserved-node count.</p>"}))
    ReservedNodeConfigurationOption.add_member(:target_reserved_node_offering, Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeOffering, location_name: 'TargetReservedNodeOffering'))
    ReservedNodeConfigurationOption.type = Types::ReservedNodeConfigurationOption
    ReservedNodeConfigurationOptionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeConfigurationOption, traits: {"smithy.api#xmlName" => "ReservedNodeConfigurationOption"})
    ReservedNodeExchangeActionType.add_member(:restore_cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESTORE_CLUSTER', traits: {"smithy.api#enumValue" => "restore-cluster"}))
    ReservedNodeExchangeActionType.add_member(:resize_cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESIZE_CLUSTER', traits: {"smithy.api#enumValue" => "resize-cluster"}))
    ReservedNodeExchangeNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ReservedNodeExchangeNotFoundFault.type = Types::ReservedNodeExchangeNotFoundFault
    ReservedNodeExchangeStatus.add_member(:reserved_node_exchange_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedNodeExchangeRequestId', traits: {"smithy.api#documentation" => "<p>The identifier of the reserved-node exchange request.</p>"}))
    ReservedNodeExchangeStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeExchangeStatusType, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the reserved-node exchange request. Statuses include in-progress and requested.</p>"}))
    ReservedNodeExchangeStatus.add_member(:request_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'RequestTime', traits: {"smithy.api#documentation" => "<p>A date and time that indicate when the reserved-node exchange was requested.</p>"}))
    ReservedNodeExchangeStatus.add_member(:source_reserved_node_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceReservedNodeId', traits: {"smithy.api#documentation" => "<p>The identifier of the source reserved node.</p>"}))
    ReservedNodeExchangeStatus.add_member(:source_reserved_node_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceReservedNodeType', traits: {"smithy.api#documentation" => "<p>The source reserved-node type, for example ra3.4xlarge.</p>"}))
    ReservedNodeExchangeStatus.add_member(:source_reserved_node_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'SourceReservedNodeCount', traits: {"smithy.api#documentation" => "<p>The source reserved-node count in the cluster.</p>"}))
    ReservedNodeExchangeStatus.add_member(:target_reserved_node_offering_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetReservedNodeOfferingId', traits: {"smithy.api#documentation" => "<p>The identifier of the target reserved node offering.</p>"}))
    ReservedNodeExchangeStatus.add_member(:target_reserved_node_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetReservedNodeType', traits: {"smithy.api#documentation" => "<p>The node type of the target reserved node, for example ra3.4xlarge.</p>"}))
    ReservedNodeExchangeStatus.add_member(:target_reserved_node_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TargetReservedNodeCount', traits: {"smithy.api#documentation" => "<p>The count of target reserved nodes in the cluster.</p>"}))
    ReservedNodeExchangeStatus.type = Types::ReservedNodeExchangeStatus
    ReservedNodeExchangeStatusList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeExchangeStatus, traits: {"smithy.api#xmlName" => "ReservedNodeExchangeStatus"})
    ReservedNodeExchangeStatusType.add_member(:requested, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REQUESTED', traits: {"smithy.api#enumValue" => "REQUESTED"}))
    ReservedNodeExchangeStatusType.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    ReservedNodeExchangeStatusType.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ReservedNodeExchangeStatusType.add_member(:retrying, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RETRYING', traits: {"smithy.api#enumValue" => "RETRYING"}))
    ReservedNodeExchangeStatusType.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    ReservedNodeExchangeStatusType.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ReservedNodeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNode, traits: {"smithy.api#xmlName" => "ReservedNode"})
    ReservedNodeNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ReservedNodeNotFoundFault.type = Types::ReservedNodeNotFoundFault
    ReservedNodeOffering.add_member(:reserved_node_offering_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedNodeOfferingId', traits: {"smithy.api#documentation" => "<p>The offering identifier.</p>"}))
    ReservedNodeOffering.add_member(:node_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeType', traits: {"smithy.api#documentation" => "<p>The node type offered by the reserved node offering.</p>"}))
    ReservedNodeOffering.add_member(:duration, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Duration', traits: {"smithy.api#documentation" => "<p>The duration, in seconds, for which the offering will reserve the node.</p>"}))
    ReservedNodeOffering.add_member(:fixed_price, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'FixedPrice', traits: {"smithy.api#documentation" => "<p>The upfront fixed charge you will pay to purchase the specific reserved node\n            offering.</p>"}))
    ReservedNodeOffering.add_member(:usage_price, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'UsagePrice', traits: {"smithy.api#documentation" => "<p>The rate you are charged for each hour the cluster that is using the offering is\n            running.</p>"}))
    ReservedNodeOffering.add_member(:currency_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CurrencyCode', traits: {"smithy.api#documentation" => "<p>The currency code for the compute nodes offering.</p>"}))
    ReservedNodeOffering.add_member(:offering_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OfferingType', traits: {"smithy.api#documentation" => "<p>The anticipated utilization of the reserved node, as defined in the reserved node\n            offering.</p>"}))
    ReservedNodeOffering.add_member(:recurring_charges, Smithy::Schema::Shapes::ShapeRef.new(shape: RecurringChargeList, location_name: 'RecurringCharges', traits: {"smithy.api#documentation" => "<p>The charge to your account regardless of whether you are creating any clusters\n            using the node offering. Recurring charges are only in effect for heavy-utilization\n            reserved nodes.</p>"}))
    ReservedNodeOffering.add_member(:reserved_node_offering_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeOfferingType, location_name: 'ReservedNodeOfferingType', traits: {"smithy.api#documentation" => "<p></p>"}))
    ReservedNodeOffering.type = Types::ReservedNodeOffering
    ReservedNodeOfferingList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeOffering, traits: {"smithy.api#xmlName" => "ReservedNodeOffering"})
    ReservedNodeOfferingNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ReservedNodeOfferingNotFoundFault.type = Types::ReservedNodeOfferingNotFoundFault
    ReservedNodeOfferingType.add_member(:regular, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Regular', traits: {"smithy.api#enumValue" => "Regular"}))
    ReservedNodeOfferingType.add_member(:upgradable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Upgradable', traits: {"smithy.api#enumValue" => "Upgradable"}))
    ReservedNodeOfferingsMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>A value that indicates the starting point for the next set of response records in a\n            subsequent request. If a value is returned in a response, you can retrieve the next set\n            of records by providing this returned marker value in the <code>Marker</code> parameter\n            and retrying the command. If the <code>Marker</code> field is empty, all response\n            records have been retrieved for the request. </p>"}))
    ReservedNodeOfferingsMessage.add_member(:reserved_node_offerings, Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeOfferingList, location_name: 'ReservedNodeOfferings', traits: {"smithy.api#documentation" => "<p>A list of <code>ReservedNodeOffering</code> objects.</p>"}))
    ReservedNodeOfferingsMessage.type = Types::ReservedNodeOfferingsMessage
    ReservedNodeQuotaExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ReservedNodeQuotaExceededFault.type = Types::ReservedNodeQuotaExceededFault
    ReservedNodesMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>A value that indicates the starting point for the next set of response records in a\n            subsequent request. If a value is returned in a response, you can retrieve the next set\n            of records by providing this returned marker value in the <code>Marker</code> parameter\n            and retrying the command. If the <code>Marker</code> field is empty, all response\n            records have been retrieved for the request. </p>"}))
    ReservedNodesMessage.add_member(:reserved_nodes, Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeList, location_name: 'ReservedNodes', traits: {"smithy.api#documentation" => "<p>The list of <code>ReservedNode</code> objects.</p>"}))
    ReservedNodesMessage.type = Types::ReservedNodesMessage
    ResetClusterParameterGroupMessage.add_member(:parameter_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the cluster parameter group to be reset.</p>", "smithy.api#required" => {}}))
    ResetClusterParameterGroupMessage.add_member(:reset_all_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ResetAllParameters', traits: {"smithy.api#documentation" => "<p>If <code>true</code>, all parameters in the specified parameter group will be reset\n            to their default values. </p>\n         <p>Default: <code>true</code>\n         </p>"}))
    ResetClusterParameterGroupMessage.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersList, location_name: 'Parameters', traits: {"smithy.api#documentation" => "<p>An array of names of parameters to be reset. If\n                <i>ResetAllParameters</i> option is not used, then at least one\n            parameter name must be supplied. </p>\n         <p>Constraints: A maximum of 20 parameters can be reset in a single request.</p>"}))
    ResetClusterParameterGroupMessage.type = Types::ResetClusterParameterGroupMessage
    ResetClusterParameterGroupOutput.add_member(:parameter_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupName', traits: {"smithy.api#documentation" => "<p>The name of the cluster parameter group.</p>"}))
    ResetClusterParameterGroupOutput.add_member(:parameter_group_status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupStatus', traits: {"smithy.api#documentation" => "<p>The status of the parameter group. For example, if you made a change to a parameter\n            group name-value pair, then the change could be pending a reboot of an associated\n            cluster.</p>"}))
    ResetClusterParameterGroupOutput.type = Types::ResetClusterParameterGroupOutput
    ResizeClusterInput.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the cluster to resize.</p>", "smithy.api#required" => {}}))
    ResizeClusterInput.add_member(:cluster_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterType', traits: {"smithy.api#documentation" => "<p>The new cluster type for the specified cluster.</p>"}))
    ResizeClusterInput.add_member(:node_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeType', traits: {"smithy.api#documentation" => "<p>The new node type for the nodes you are adding. If not specified, the cluster's current node type is used.</p>"}))
    ResizeClusterInput.add_member(:number_of_nodes, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'NumberOfNodes', traits: {"smithy.api#documentation" => "<p>The new number of nodes for the cluster. If not specified, the cluster's current number of nodes is used.</p>"}))
    ResizeClusterInput.add_member(:classic, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'Classic', traits: {"smithy.api#documentation" => "<p>A boolean value indicating whether the resize operation is using the classic resize\n            process. If you don't provide this parameter or set the value to\n            <code>false</code>, the resize type is elastic. </p>"}))
    ResizeClusterInput.add_member(:reserved_node_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedNodeId', traits: {"smithy.api#documentation" => "<p>The identifier of the reserved node.</p>"}))
    ResizeClusterInput.add_member(:target_reserved_node_offering_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetReservedNodeOfferingId', traits: {"smithy.api#documentation" => "<p>The identifier of the target reserved node offering.</p>"}))
    ResizeClusterInput.type = Types::ResizeClusterInput
    ResizeClusterMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the cluster to resize.</p>", "smithy.api#required" => {}}))
    ResizeClusterMessage.add_member(:cluster_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterType', traits: {"smithy.api#documentation" => "<p>The new cluster type for the specified cluster.</p>"}))
    ResizeClusterMessage.add_member(:node_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeType', traits: {"smithy.api#documentation" => "<p>The new node type for the nodes you are adding. If not specified, the cluster's current node type is used.</p>"}))
    ResizeClusterMessage.add_member(:number_of_nodes, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'NumberOfNodes', traits: {"smithy.api#documentation" => "<p>The new number of nodes for the cluster. If not specified, the cluster's current number of nodes is used.</p>"}))
    ResizeClusterMessage.add_member(:classic, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'Classic', traits: {"smithy.api#documentation" => "<p>A boolean value indicating whether the resize operation is using the classic resize\n            process. If you don't provide this parameter or set the value to\n            <code>false</code>, the resize type is elastic. </p>"}))
    ResizeClusterMessage.add_member(:reserved_node_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedNodeId', traits: {"smithy.api#documentation" => "<p>The identifier of the reserved node.</p>"}))
    ResizeClusterMessage.add_member(:target_reserved_node_offering_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetReservedNodeOfferingId', traits: {"smithy.api#documentation" => "<p>The identifier of the target reserved node offering.</p>"}))
    ResizeClusterMessage.type = Types::ResizeClusterMessage
    ResizeClusterResult.add_member(:cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster'))
    ResizeClusterResult.type = Types::ResizeClusterResult
    ResizeInfo.add_member(:resize_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResizeType', traits: {"smithy.api#documentation" => "<p>Returns the value <code>ClassicResize</code>.</p>"}))
    ResizeInfo.add_member(:allow_cancel_resize, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllowCancelResize', traits: {"smithy.api#documentation" => "<p>A boolean value indicating if the resize operation can be cancelled.</p>"}))
    ResizeInfo.type = Types::ResizeInfo
    ResizeNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ResizeNotFoundFault.type = Types::ResizeNotFoundFault
    ResourceNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ResourceNotFoundFault.type = Types::ResourceNotFoundFault
    ResourcePolicy.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The resources that a policy is attached to.</p>"}))
    ResourcePolicy.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p>The content of a resource policy.</p>"}))
    ResourcePolicy.type = Types::ResourcePolicy
    RestorableNodeTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "NodeType"})
    RestoreFromClusterSnapshotMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The identifier of the cluster that will be created from restoring the\n            snapshot.</p>\n         <p>Constraints:</p>\n         <ul>\n            <li>\n               <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p>\n            </li>\n            <li>\n               <p>Alphabetic characters must be lowercase.</p>\n            </li>\n            <li>\n               <p>First character must be a letter.</p>\n            </li>\n            <li>\n               <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>\n            </li>\n            <li>\n               <p>Must be unique for all clusters within an Amazon Web Services account.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    RestoreFromClusterSnapshotMessage.add_member(:snapshot_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotIdentifier', traits: {"smithy.api#documentation" => "<p>The name of the snapshot from which to create the new cluster. This parameter isn't\n            case sensitive. You must specify this parameter or <code>snapshotArn</code>, but not both.</p>\n         <p>Example: <code>my-snapshot-id</code>\n         </p>"}))
    RestoreFromClusterSnapshotMessage.add_member(:snapshot_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the snapshot associated with the message to restore from a cluster. You must specify\n            this parameter or <code>snapshotIdentifier</code>, but not both.</p>"}))
    RestoreFromClusterSnapshotMessage.add_member(:snapshot_cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The name of the cluster the source snapshot was created from. This parameter is\n            required if your IAM user has a policy containing a snapshot resource element that\n            specifies anything other than * for the cluster name.</p>"}))
    RestoreFromClusterSnapshotMessage.add_member(:port, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Port', traits: {"smithy.api#documentation" => "<p>The port number on which the cluster accepts connections.</p>\n         <p>Default: The same port as the original cluster.</p>\n         <p>Valid values: For clusters with DC2 nodes, must be within the range <code>1150</code>-<code>65535</code>. For clusters with ra3 nodes, must be \n            within the ranges <code>5431</code>-<code>5455</code> or <code>8191</code>-<code>8215</code>.</p>"}))
    RestoreFromClusterSnapshotMessage.add_member(:availability_zone, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AvailabilityZone', traits: {"smithy.api#documentation" => "<p>The Amazon EC2 Availability Zone in which to restore the cluster.</p>\n         <p>Default: A random, system-chosen Availability Zone.</p>\n         <p>Example: <code>us-east-2a</code>\n         </p>"}))
    RestoreFromClusterSnapshotMessage.add_member(:allow_version_upgrade, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AllowVersionUpgrade', traits: {"smithy.api#documentation" => "<p>If <code>true</code>, major version upgrades can be applied during the maintenance\n            window to the Amazon Redshift engine that is running on the cluster. </p>\n         <p>Default: <code>true</code>\n         </p>"}))
    RestoreFromClusterSnapshotMessage.add_member(:cluster_subnet_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterSubnetGroupName', traits: {"smithy.api#documentation" => "<p>The name of the subnet group where you want to cluster restored.</p>\n         <p>A snapshot of cluster in VPC can be restored only in VPC. Therefore, you must\n            provide subnet group name where you want the cluster restored.</p>"}))
    RestoreFromClusterSnapshotMessage.add_member(:publicly_accessible, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'PubliclyAccessible', traits: {"smithy.api#documentation" => "<p>If <code>true</code>, the cluster can be accessed from a public network. </p>\n         <p>Default: false</p>"}))
    RestoreFromClusterSnapshotMessage.add_member(:owner_account, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OwnerAccount', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account used to create or copy the snapshot. Required if you are\n            restoring a snapshot you do not own, optional if you own the snapshot.</p>"}))
    RestoreFromClusterSnapshotMessage.add_member(:hsm_client_certificate_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmClientCertificateIdentifier', traits: {"smithy.api#documentation" => "<p>Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to\n            retrieve the data encryption keys stored in an HSM.</p>"}))
    RestoreFromClusterSnapshotMessage.add_member(:hsm_configuration_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmConfigurationIdentifier', traits: {"smithy.api#documentation" => "<p>Specifies the name of the HSM configuration that contains the information the\n            Amazon Redshift cluster can use to retrieve and store keys in an HSM.</p>"}))
    RestoreFromClusterSnapshotMessage.add_member(:elastic_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ElasticIp', traits: {"smithy.api#documentation" => "<p>The Elastic IP (EIP) address for the cluster. Don't specify the Elastic IP address for a publicly \n            accessible cluster with availability zone relocation turned on.</p>"}))
    RestoreFromClusterSnapshotMessage.add_member(:cluster_parameter_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterParameterGroupName', traits: {"smithy.api#documentation" => "<p>The name of the parameter group to be associated with this cluster.</p>\n         <p>Default: The default Amazon Redshift cluster parameter group. For information about the\n            default parameter group, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html\">Working with Amazon\n                Redshift Parameter Groups</a>.</p>\n         <p>Constraints:</p>\n         <ul>\n            <li>\n               <p>Must be 1 to 255 alphanumeric characters or hyphens.</p>\n            </li>\n            <li>\n               <p>First character must be a letter.</p>\n            </li>\n            <li>\n               <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>\n            </li>\n         </ul>"}))
    RestoreFromClusterSnapshotMessage.add_member(:cluster_security_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSecurityGroupNameList, location_name: 'ClusterSecurityGroups', traits: {"smithy.api#documentation" => "<p>A list of security groups to be associated with this cluster.</p>\n         <p>Default: The default cluster security group for Amazon Redshift.</p>\n         <p>Cluster security groups only apply to clusters outside of VPCs.</p>"}))
    RestoreFromClusterSnapshotMessage.add_member(:vpc_security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: 'VpcSecurityGroupIds', traits: {"smithy.api#documentation" => "<p>A list of Virtual Private Cloud (VPC) security groups to be associated with the\n            cluster.</p>\n         <p>Default: The default VPC security group is associated with the cluster.</p>\n         <p>VPC security groups only apply to clusters in VPCs.</p>"}))
    RestoreFromClusterSnapshotMessage.add_member(:preferred_maintenance_window, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredMaintenanceWindow', traits: {"smithy.api#documentation" => "<p>The weekly time range (in UTC) during which automated cluster maintenance can\n            occur.</p>\n         <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>\n         </p>\n         <p> Default: The value selected for the cluster from which the snapshot was taken. For\n            more information about the time blocks for each region, see <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-maintenance-windows\">Maintenance Windows</a> in Amazon Redshift Cluster Management Guide. </p>\n         <p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p>\n         <p>Constraints: Minimum 30-minute window.</p>"}))
    RestoreFromClusterSnapshotMessage.add_member(:automated_snapshot_retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'AutomatedSnapshotRetentionPeriod', traits: {"smithy.api#documentation" => "<p>The number of days that automated snapshots are retained. If the value is 0,\n            automated snapshots are disabled. Even if automated snapshots are disabled, you can\n            still create manual snapshots when you want with <a>CreateClusterSnapshot</a>. </p>\n         <p>You can't disable automated snapshots for RA3 node types. Set the automated retention period from 1-35 days.</p>\n         <p>Default: The value selected for the cluster from which the snapshot was\n            taken.</p>\n         <p>Constraints: Must be a value from 0 to 35.</p>"}))
    RestoreFromClusterSnapshotMessage.add_member(:manual_snapshot_retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'ManualSnapshotRetentionPeriod', traits: {"smithy.api#documentation" => "<p>The default number of days to retain a manual snapshot. If the value is -1, the\n            snapshot is retained indefinitely. This setting doesn't change the retention period\n            of existing snapshots.</p>\n         <p>The value must be either -1 or an integer between 1 and 3,653.</p>"}))
    RestoreFromClusterSnapshotMessage.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>The Key Management Service (KMS) key ID of the encryption key that encrypts data in the cluster \n            restored from a shared snapshot. You can also provide \n            the key ID when you restore from an unencrypted snapshot to an encrypted cluster in \n            the same account. Additionally, you can specify a new KMS key ID when you restore from an encrypted \n            snapshot in the same account in order to change it. In that case, the restored cluster is encrypted \n            with the new KMS key ID.</p>"}))
    RestoreFromClusterSnapshotMessage.add_member(:node_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeType', traits: {"smithy.api#documentation" => "<p>The node type that the restored cluster will be provisioned with.</p>\n         <p>If you have a DC instance type, you\n            must restore into that same instance type and size. In other words, you can only restore\n            a dc2.large node type into another dc2 type. For more information about node types, see \n                <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-about-clusters-and-nodes\">\n                About Clusters and Nodes</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>"}))
    RestoreFromClusterSnapshotMessage.add_member(:enhanced_vpc_routing, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnhancedVpcRouting', traits: {"smithy.api#documentation" => "<p>An option that specifies whether to create the cluster with enhanced VPC routing\n            enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a\n            VPC. For more information, see <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html\">Enhanced VPC Routing</a> in\n            the Amazon Redshift Cluster Management Guide.</p>\n         <p>If this option is <code>true</code>, enhanced VPC routing is enabled. </p>\n         <p>Default: false</p>"}))
    RestoreFromClusterSnapshotMessage.add_member(:additional_info, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AdditionalInfo', traits: {"smithy.api#documentation" => "<p>Reserved.</p>"}))
    RestoreFromClusterSnapshotMessage.add_member(:iam_roles, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArnList, location_name: 'IamRoles', traits: {"smithy.api#documentation" => "<p>A list of Identity and Access Management (IAM) roles that can be used by the\n            cluster to access other Amazon Web Services services. You must supply the IAM roles in their Amazon\n            Resource Name (ARN) format. </p>\n         <p>The maximum number of IAM roles that you can associate is subject to a quota.\n            For more information, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html\">Quotas and limits</a>\n            in the <i>Amazon Redshift Cluster Management Guide</i>.</p>"}))
    RestoreFromClusterSnapshotMessage.add_member(:maintenance_track_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MaintenanceTrackName', traits: {"smithy.api#documentation" => "<p>The name of the maintenance track for the restored cluster. When you take a snapshot,\n            the snapshot inherits the <code>MaintenanceTrack</code> value from the cluster. The\n            snapshot might be on a different track than the cluster that was the source for the\n            snapshot. For example, suppose that you take a snapshot of a cluster that is on the\n            current track and then change the cluster to be on the trailing track. In this case, the\n            snapshot and the source cluster are on different tracks.</p>"}))
    RestoreFromClusterSnapshotMessage.add_member(:snapshot_schedule_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotScheduleIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for the snapshot schedule.</p>"}))
    RestoreFromClusterSnapshotMessage.add_member(:number_of_nodes, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'NumberOfNodes', traits: {"smithy.api#documentation" => "<p>The number of nodes specified when provisioning the restored cluster.</p>"}))
    RestoreFromClusterSnapshotMessage.add_member(:availability_zone_relocation, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AvailabilityZoneRelocation', traits: {"smithy.api#documentation" => "<p>The option to enable relocation for an Amazon Redshift cluster between Availability Zones after the cluster is restored.</p>"}))
    RestoreFromClusterSnapshotMessage.add_member(:aqua_configuration_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AquaConfigurationStatus, location_name: 'AquaConfigurationStatus', traits: {"smithy.api#documentation" => "<p>This parameter is retired. It does not set the AQUA configuration status. Amazon Redshift automatically determines whether to use AQUA (Advanced Query Accelerator).</p>"}))
    RestoreFromClusterSnapshotMessage.add_member(:default_iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultIamRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the IAM role that was set as default for the cluster when the cluster was last modified while it was restored from a snapshot.</p>"}))
    RestoreFromClusterSnapshotMessage.add_member(:reserved_node_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedNodeId', traits: {"smithy.api#documentation" => "<p>The identifier of the target reserved node offering.</p>"}))
    RestoreFromClusterSnapshotMessage.add_member(:target_reserved_node_offering_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetReservedNodeOfferingId', traits: {"smithy.api#documentation" => "<p>The identifier of the target reserved node offering.</p>"}))
    RestoreFromClusterSnapshotMessage.add_member(:encrypted, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'Encrypted', traits: {"smithy.api#documentation" => "<p>Enables support for restoring an unencrypted snapshot to a cluster encrypted \n            with Key Management Service (KMS) and a customer managed key.</p>"}))
    RestoreFromClusterSnapshotMessage.add_member(:manage_master_password, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'ManageMasterPassword', traits: {"smithy.api#documentation" => "<p>If <code>true</code>, Amazon Redshift uses Secrets Manager to manage the restored \n            cluster's admin credentials. If <code>ManageMasterPassword</code> is false or not set, \n            Amazon Redshift uses the admin credentials the cluster had at the time the snapshot was taken.</p>"}))
    RestoreFromClusterSnapshotMessage.add_member(:master_password_secret_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterPasswordSecretKmsKeyId', traits: {"smithy.api#documentation" => "<p>The ID of the Key Management Service (KMS) key used to encrypt and store the cluster's admin credentials secret. \n            You can only use this parameter if <code>ManageMasterPassword</code> is true.</p>"}))
    RestoreFromClusterSnapshotMessage.add_member(:ip_address_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IpAddressType', traits: {"smithy.api#documentation" => "<p>The IP address type for the cluster. Possible values are <code>ipv4</code> and <code>dualstack</code>.</p>"}))
    RestoreFromClusterSnapshotMessage.add_member(:multi_az, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'MultiAZ', traits: {"smithy.api#documentation" => "<p>If true, the snapshot will be restored to a cluster deployed in two Availability Zones.</p>"}))
    RestoreFromClusterSnapshotMessage.type = Types::RestoreFromClusterSnapshotMessage
    RestoreFromClusterSnapshotResult.add_member(:cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster'))
    RestoreFromClusterSnapshotResult.type = Types::RestoreFromClusterSnapshotResult
    RestoreStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the restore action. Returns starting, restoring, completed, or\n            failed.</p>"}))
    RestoreStatus.add_member(:current_restore_rate_in_mega_bytes_per_second, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'CurrentRestoreRateInMegaBytesPerSecond', traits: {"smithy.api#documentation" => "<p>The number of megabytes per second being transferred from the backup storage.\n            Returns the average rate for a completed backup.\n            This field is only updated when you restore to DC2 node types. </p>"}))
    RestoreStatus.add_member(:snapshot_size_in_mega_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'SnapshotSizeInMegaBytes', traits: {"smithy.api#documentation" => "<p>The size of the set of snapshot data used to restore the cluster.\n            This field is only updated when you restore to DC2 node types. </p>"}))
    RestoreStatus.add_member(:progress_in_mega_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ProgressInMegaBytes', traits: {"smithy.api#documentation" => "<p>The number of megabytes that have been transferred from snapshot storage.\n            This field is only updated when you restore to DC2 node types. </p>"}))
    RestoreStatus.add_member(:elapsed_time_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ElapsedTimeInSeconds', traits: {"smithy.api#documentation" => "<p>The amount of time an in-progress restore has been running, or the amount of time\n            it took a completed restore to finish.\n            This field is only updated when you restore to DC2 node types. </p>"}))
    RestoreStatus.add_member(:estimated_time_to_completion_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'EstimatedTimeToCompletionInSeconds', traits: {"smithy.api#documentation" => "<p>The estimate of the time remaining before the restore will complete. Returns 0 for\n            a completed restore.\n            This field is only updated when you restore to DC2 node types. </p>"}))
    RestoreStatus.type = Types::RestoreStatus
    RestoreTableFromClusterSnapshotMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The identifier of the Amazon Redshift cluster to restore the table to.</p>", "smithy.api#required" => {}}))
    RestoreTableFromClusterSnapshotMessage.add_member(:snapshot_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The identifier of the snapshot to restore the table from. This snapshot must have\n            been created from the Amazon Redshift cluster specified by the\n                <code>ClusterIdentifier</code> parameter.</p>", "smithy.api#required" => {}}))
    RestoreTableFromClusterSnapshotMessage.add_member(:source_database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceDatabaseName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the source database that contains the table to restore from.</p>", "smithy.api#required" => {}}))
    RestoreTableFromClusterSnapshotMessage.add_member(:source_schema_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceSchemaName', traits: {"smithy.api#documentation" => "<p>The name of the source schema that contains the table to restore from. If you do\n            not specify a <code>SourceSchemaName</code> value, the default is\n            <code>public</code>.</p>"}))
    RestoreTableFromClusterSnapshotMessage.add_member(:source_table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceTableName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the source table to restore from.</p>", "smithy.api#required" => {}}))
    RestoreTableFromClusterSnapshotMessage.add_member(:target_database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetDatabaseName', traits: {"smithy.api#documentation" => "<p>The name of the database to restore the table to.</p>"}))
    RestoreTableFromClusterSnapshotMessage.add_member(:target_schema_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetSchemaName', traits: {"smithy.api#documentation" => "<p>The name of the schema to restore the table to.</p>"}))
    RestoreTableFromClusterSnapshotMessage.add_member(:new_table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NewTableName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the table to create as a result of the current request.</p>", "smithy.api#required" => {}}))
    RestoreTableFromClusterSnapshotMessage.add_member(:enable_case_sensitive_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnableCaseSensitiveIdentifier', traits: {"smithy.api#documentation" => "<p>Indicates whether name identifiers for database, schema, and table are case sensitive. \n            If <code>true</code>, the names are case sensitive. \n            If <code>false</code> (default), the names are not case sensitive.</p>"}))
    RestoreTableFromClusterSnapshotMessage.type = Types::RestoreTableFromClusterSnapshotMessage
    RestoreTableFromClusterSnapshotResult.add_member(:table_restore_status, Smithy::Schema::Shapes::ShapeRef.new(shape: TableRestoreStatus, location_name: 'TableRestoreStatus'))
    RestoreTableFromClusterSnapshotResult.type = Types::RestoreTableFromClusterSnapshotResult
    ResumeClusterInput.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The identifier of the cluster to be resumed.</p>", "smithy.api#required" => {}}))
    ResumeClusterInput.type = Types::ResumeClusterInput
    ResumeClusterMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The identifier of the cluster to be resumed.</p>", "smithy.api#required" => {}}))
    ResumeClusterMessage.type = Types::ResumeClusterMessage
    ResumeClusterResult.add_member(:cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster'))
    ResumeClusterResult.type = Types::ResumeClusterResult
    RevisionTarget.add_member(:database_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DatabaseRevision', traits: {"smithy.api#documentation" => "<p>A unique string that identifies the version to update the cluster to. You can use this\n            value in <a>ModifyClusterDbRevision</a>.</p>"}))
    RevisionTarget.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A string that describes the changes and features that will be applied to the cluster\n            when it is updated to the corresponding <a>ClusterDbRevision</a>.</p>"}))
    RevisionTarget.add_member(:database_revision_release_date, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'DatabaseRevisionReleaseDate', traits: {"smithy.api#documentation" => "<p>The date on which the database revision was released.</p>"}))
    RevisionTarget.type = Types::RevisionTarget
    RevisionTargetsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionTarget, traits: {"smithy.api#xmlName" => "RevisionTarget"})
    RevokeClusterSecurityGroupIngressMessage.add_member(:cluster_security_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterSecurityGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the security Group from which to revoke the ingress rule.</p>", "smithy.api#required" => {}}))
    RevokeClusterSecurityGroupIngressMessage.add_member(:cidrip, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CIDRIP', traits: {"smithy.api#documentation" => "<p>The IP range for which to revoke access. This range must be a valid Classless\n            Inter-Domain Routing (CIDR) block of IP addresses. If <code>CIDRIP</code> is specified,\n                <code>EC2SecurityGroupName</code> and <code>EC2SecurityGroupOwnerId</code> cannot be\n            provided. </p>"}))
    RevokeClusterSecurityGroupIngressMessage.add_member(:ec2_security_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EC2SecurityGroupName', traits: {"smithy.api#documentation" => "<p>The name of the EC2 Security Group whose access is to be revoked. If\n                <code>EC2SecurityGroupName</code> is specified, <code>EC2SecurityGroupOwnerId</code>\n            must also be provided and <code>CIDRIP</code> cannot be provided. </p>"}))
    RevokeClusterSecurityGroupIngressMessage.add_member(:ec2_security_group_owner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EC2SecurityGroupOwnerId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account number of the owner of the security group specified in the\n                <code>EC2SecurityGroupName</code> parameter. The Amazon Web Services access key ID is not an\n            acceptable value. If <code>EC2SecurityGroupOwnerId</code> is specified,\n                <code>EC2SecurityGroupName</code> must also be provided. and <code>CIDRIP</code>\n            cannot be provided. </p>\n         <p>Example: <code>111122223333</code>\n         </p>"}))
    RevokeClusterSecurityGroupIngressMessage.type = Types::RevokeClusterSecurityGroupIngressMessage
    RevokeClusterSecurityGroupIngressResult.add_member(:cluster_security_group, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSecurityGroup, location_name: 'ClusterSecurityGroup'))
    RevokeClusterSecurityGroupIngressResult.type = Types::RevokeClusterSecurityGroupIngressResult
    RevokeEndpointAccessMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The cluster to revoke access from.</p>"}))
    RevokeEndpointAccessMessage.add_member(:account, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Account', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID whose access is to be revoked.</p>"}))
    RevokeEndpointAccessMessage.add_member(:vpc_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcIdentifierList, location_name: 'VpcIds', traits: {"smithy.api#documentation" => "<p>The virtual private cloud (VPC) identifiers for which access is to be revoked.</p>"}))
    RevokeEndpointAccessMessage.add_member(:force, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Force', traits: {"smithy.api#documentation" => "<p>Indicates whether to force the revoke action. \n           If true, the Redshift-managed VPC endpoints associated with the endpoint authorization are also deleted.</p>"}))
    RevokeEndpointAccessMessage.type = Types::RevokeEndpointAccessMessage
    RevokeEndpointAccessOutput.add_member(:grantor, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Grantor', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the cluster owner.</p>"}))
    RevokeEndpointAccessOutput.add_member(:grantee, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Grantee', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the grantee of the cluster.</p>"}))
    RevokeEndpointAccessOutput.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The cluster identifier.</p>"}))
    RevokeEndpointAccessOutput.add_member(:authorize_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'AuthorizeTime', traits: {"smithy.api#documentation" => "<p>The time (UTC) when the authorization was created.</p>"}))
    RevokeEndpointAccessOutput.add_member(:cluster_status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterStatus', traits: {"smithy.api#documentation" => "<p>The status of the cluster.</p>"}))
    RevokeEndpointAccessOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the authorization action.</p>"}))
    RevokeEndpointAccessOutput.add_member(:allowed_all_vp_cs, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllowedAllVPCs', traits: {"smithy.api#documentation" => "<p>Indicates whether all VPCs in the grantee account are allowed access to the cluster.</p>"}))
    RevokeEndpointAccessOutput.add_member(:allowed_vp_cs, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcIdentifierList, location_name: 'AllowedVPCs', traits: {"smithy.api#documentation" => "<p>The VPCs allowed access to the cluster.</p>"}))
    RevokeEndpointAccessOutput.add_member(:endpoint_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'EndpointCount', traits: {"smithy.api#documentation" => "<p>The number of Redshift-managed VPC endpoints created for the authorization.</p>"}))
    RevokeEndpointAccessOutput.type = Types::RevokeEndpointAccessOutput
    RevokeSnapshotAccessMessage.add_member(:snapshot_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the snapshot that the account can no longer access.</p>"}))
    RevokeSnapshotAccessMessage.add_member(:snapshot_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the snapshot associated with the message to revoke access.</p>"}))
    RevokeSnapshotAccessMessage.add_member(:snapshot_cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the cluster the snapshot was created from. This parameter is\n            required if your IAM user has a policy containing a snapshot resource element that\n            specifies anything other than * for the cluster name.</p>"}))
    RevokeSnapshotAccessMessage.add_member(:account_with_restore_access, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AccountWithRestoreAccess', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The identifier of the Amazon Web Services account that can no longer restore the specified\n            snapshot.</p>", "smithy.api#required" => {}}))
    RevokeSnapshotAccessMessage.type = Types::RevokeSnapshotAccessMessage
    RevokeSnapshotAccessResult.add_member(:snapshot, Smithy::Schema::Shapes::ShapeRef.new(shape: Snapshot, location_name: 'Snapshot'))
    RevokeSnapshotAccessResult.type = Types::RevokeSnapshotAccessResult
    RotateEncryptionKeyMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier of the cluster that you want to rotate the encryption keys\n            for.</p>\n         <p>Constraints: Must be the name of valid cluster that has encryption\n            enabled.</p>", "smithy.api#required" => {}}))
    RotateEncryptionKeyMessage.type = Types::RotateEncryptionKeyMessage
    RotateEncryptionKeyResult.add_member(:cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster'))
    RotateEncryptionKeyResult.type = Types::RotateEncryptionKeyResult
    S3AccessGrantsScopeUnion.add_member(:read_write_access, Types::S3AccessGrantsScopeUnion::ReadWriteAccess, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadWriteAccess, location_name: 'ReadWriteAccess', traits: {"smithy.api#documentation" => "<p>The S3 Access Grants scope.</p>"}))
    S3AccessGrantsScopeUnion.add_member(:unknown, Types::S3AccessGrantsScopeUnion::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    S3AccessGrantsScopeUnion.type = Types::S3AccessGrantsScopeUnion
    S3AccessGrantsServiceIntegrations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: S3AccessGrantsScopeUnion)
    SNSInvalidTopicFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SNSInvalidTopicFault.type = Types::SNSInvalidTopicFault
    SNSNoAuthorizationFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SNSNoAuthorizationFault.type = Types::SNSNoAuthorizationFault
    SNSTopicArnNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SNSTopicArnNotFoundFault.type = Types::SNSTopicArnNotFoundFault
    ScheduleDefinitionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "ScheduleDefinition"})
    ScheduleDefinitionTypeUnsupportedFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ScheduleDefinitionTypeUnsupportedFault.type = Types::ScheduleDefinitionTypeUnsupportedFault
    ScheduleState.add_member(:modifying, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MODIFYING', traits: {"smithy.api#enumValue" => "MODIFYING"}))
    ScheduleState.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ScheduleState.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ScheduledAction.add_member(:scheduled_action_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduledActionName', traits: {"smithy.api#documentation" => "<p>The name of the scheduled action. </p>"}))
    ScheduledAction.add_member(:target_action, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionType, location_name: 'TargetAction', traits: {"smithy.api#documentation" => "<p>A JSON format string of the Amazon Redshift API operation with input parameters. </p>\n         <p>\"<code>{\\\"ResizeCluster\\\":{\\\"NodeType\\\":\\\"ra3.4xlarge\\\",\\\"ClusterIdentifier\\\":\\\"my-test-cluster\\\",\\\"NumberOfNodes\\\":3}}</code>\". </p>"}))
    ScheduledAction.add_member(:schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Schedule', traits: {"smithy.api#documentation" => "<p>The schedule for a one-time (at format) or recurring (cron format) scheduled action. \n            Schedule invocations must be separated by at least one hour.</p>\n         <p>Format of at expressions is \"<code>at(yyyy-mm-ddThh:mm:ss)</code>\". For example, \"<code>at(2016-03-04T17:27:00)</code>\".</p>\n         <p>Format of cron expressions is \"<code>cron(Minutes Hours Day-of-month Month Day-of-week Year)</code>\". \n            For example, \"<code>cron(0 10 ? * MON *)</code>\". For more information, see \n            <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html#CronExpressions\">Cron Expressions</a> \n            in the <i>Amazon CloudWatch Events User Guide</i>.</p>"}))
    ScheduledAction.add_member(:iam_role, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IamRole', traits: {"smithy.api#documentation" => "<p>The IAM role to assume to run the scheduled action. \n            This IAM role must have permission to run the Amazon Redshift API operation in the scheduled action.\n            This IAM role must allow the Amazon Redshift scheduler (Principal scheduler.redshift.amazonaws.com) to assume permissions on your behalf.\n               \nFor more information about the IAM role to use with the Amazon Redshift scheduler, see \n<a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-identity-based.html\">Using Identity-Based Policies for Amazon Redshift</a> \nin the <i>Amazon Redshift Cluster Management Guide</i>.\n</p>"}))
    ScheduledAction.add_member(:scheduled_action_description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduledActionDescription', traits: {"smithy.api#documentation" => "<p>The description of the scheduled action. </p>"}))
    ScheduledAction.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the scheduled action. For example, <code>DISABLED</code>. </p>"}))
    ScheduledAction.add_member(:next_invocations, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionTimeList, location_name: 'NextInvocations', traits: {"smithy.api#documentation" => "<p>List of times when the scheduled action will run. </p>"}))
    ScheduledAction.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The start time in UTC when the schedule is active. Before this time, the scheduled action does not trigger. </p>"}))
    ScheduledAction.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'EndTime', traits: {"smithy.api#documentation" => "<p>The end time in UTC when the schedule is no longer active. After this time, the scheduled action does not trigger. </p>"}))
    ScheduledAction.type = Types::ScheduledAction
    ScheduledActionAlreadyExistsFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ScheduledActionAlreadyExistsFault.type = Types::ScheduledActionAlreadyExistsFault
    ScheduledActionFilter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionFilterName, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The type of element to filter. </p>", "smithy.api#required" => {}}))
    ScheduledActionFilter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: ValueStringList, location_name: 'Values', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>List of values. Compare if the value (of type defined by <code>Name</code>) equals an item in the list of scheduled actions. </p>", "smithy.api#required" => {}}))
    ScheduledActionFilter.type = Types::ScheduledActionFilter
    ScheduledActionFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionFilter, traits: {"smithy.api#xmlName" => "ScheduledActionFilter"})
    ScheduledActionFilterName.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLUSTER_IDENTIFIER', traits: {"smithy.api#enumValue" => "cluster-identifier"}))
    ScheduledActionFilterName.add_member(:iam_role, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM_ROLE', traits: {"smithy.api#enumValue" => "iam-role"}))
    ScheduledActionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledAction, traits: {"smithy.api#xmlName" => "ScheduledAction"})
    ScheduledActionNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ScheduledActionNotFoundFault.type = Types::ScheduledActionNotFoundFault
    ScheduledActionQuotaExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ScheduledActionQuotaExceededFault.type = Types::ScheduledActionQuotaExceededFault
    ScheduledActionState.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ScheduledActionState.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    ScheduledActionTimeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, traits: {"smithy.api#xmlName" => "ScheduledActionTime"})
    ScheduledActionType.add_member(:resize_cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: ResizeClusterMessage, location_name: 'ResizeCluster', traits: {"smithy.api#documentation" => "<p>An action that runs a <code>ResizeCluster</code> API operation. </p>"}))
    ScheduledActionType.add_member(:pause_cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: PauseClusterMessage, location_name: 'PauseCluster', traits: {"smithy.api#documentation" => "<p>An action that runs a <code>PauseCluster</code> API operation. </p>"}))
    ScheduledActionType.add_member(:resume_cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: ResumeClusterMessage, location_name: 'ResumeCluster', traits: {"smithy.api#documentation" => "<p>An action that runs a <code>ResumeCluster</code> API operation. </p>"}))
    ScheduledActionType.type = Types::ScheduledActionType
    ScheduledActionTypeUnsupportedFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ScheduledActionTypeUnsupportedFault.type = Types::ScheduledActionTypeUnsupportedFault
    ScheduledActionTypeValues.add_member(:resize_cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESIZE_CLUSTER', traits: {"smithy.api#enumValue" => "ResizeCluster"}))
    ScheduledActionTypeValues.add_member(:pause_cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAUSE_CLUSTER', traits: {"smithy.api#enumValue" => "PauseCluster"}))
    ScheduledActionTypeValues.add_member(:resume_cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESUME_CLUSTER', traits: {"smithy.api#enumValue" => "ResumeCluster"}))
    ScheduledActionsMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An optional parameter that specifies the starting point to return a set of response\n            records. When the results of a <a>DescribeScheduledActions</a> request\n            exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the\n            <code>Marker</code> field of the response. You can retrieve the next set of response\n            records by providing the returned marker value in the <code>Marker</code> parameter and\n            retrying the request. </p>"}))
    ScheduledActionsMessage.add_member(:scheduled_actions, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionList, location_name: 'ScheduledActions', traits: {"smithy.api#documentation" => "<p>List of retrieved scheduled actions. </p>"}))
    ScheduledActionsMessage.type = Types::ScheduledActionsMessage
    ScheduledSnapshotTimeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, traits: {"smithy.api#xmlName" => "SnapshotTime"})
    SecondaryClusterInfo.add_member(:availability_zone, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AvailabilityZone', traits: {"smithy.api#documentation" => "<p>The name of the Availability Zone in which the secondary compute unit of the cluster is located.</p>"}))
    SecondaryClusterInfo.add_member(:cluster_nodes, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNodesList, location_name: 'ClusterNodes', traits: {"smithy.api#documentation" => "<p>The nodes in the secondary compute unit.</p>"}))
    SecondaryClusterInfo.type = Types::SecondaryClusterInfo
    ServerlessIdentifier.add_member(:namespace_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NamespaceIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the serverless namespace.</p>", "smithy.api#required" => {}}))
    ServerlessIdentifier.add_member(:workgroup_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'WorkgroupIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the workgroup \n            associated with the serverless namespace.</p>", "smithy.api#required" => {}}))
    ServerlessIdentifier.type = Types::ServerlessIdentifier
    ServiceAuthorization.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "Enabled"}))
    ServiceAuthorization.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "Disabled"}))
    ServiceIntegrationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceIntegrationsUnion)
    ServiceIntegrationsUnion.add_member(:lake_formation, Types::ServiceIntegrationsUnion::LakeFormation, Smithy::Schema::Shapes::ShapeRef.new(shape: LakeFormationServiceIntegrations, location_name: 'LakeFormation', traits: {"smithy.api#documentation" => "<p>A list of scopes set up for Lake Formation integration.</p>"}))
    ServiceIntegrationsUnion.add_member(:s3_access_grants, Types::ServiceIntegrationsUnion::S3AccessGrants, Smithy::Schema::Shapes::ShapeRef.new(shape: S3AccessGrantsServiceIntegrations, location_name: 'S3AccessGrants', traits: {"smithy.api#documentation" => "<p>A list of scopes set up for S3 Access Grants integration.</p>"}))
    ServiceIntegrationsUnion.add_member(:unknown, Types::ServiceIntegrationsUnion::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ServiceIntegrationsUnion.type = Types::ServiceIntegrationsUnion
    Snapshot.add_member(:snapshot_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotIdentifier', traits: {"smithy.api#documentation" => "<p>The snapshot identifier that is provided in the request.</p>"}))
    Snapshot.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the cluster for which the snapshot was taken.</p>"}))
    Snapshot.add_member(:snapshot_create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'SnapshotCreateTime', traits: {"smithy.api#documentation" => "<p>The time (in UTC format) when Amazon Redshift began the snapshot. A snapshot contains a\n            copy of the cluster data as of this exact time.</p>"}))
    Snapshot.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The snapshot status. The value of the status depends on the API operation used: </p>\n         <ul>\n            <li>\n               <p>\n                  <a>CreateClusterSnapshot</a> and <a>CopyClusterSnapshot</a> returns status as \"creating\". </p>\n            </li>\n            <li>\n               <p>\n                  <a>DescribeClusterSnapshots</a> returns status as \"creating\",\n                    \"available\", \"final snapshot\", or \"failed\".</p>\n            </li>\n            <li>\n               <p>\n                  <a>DeleteClusterSnapshot</a> returns status as \"deleted\".</p>\n            </li>\n         </ul>"}))
    Snapshot.add_member(:port, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Port', traits: {"smithy.api#documentation" => "<p>The port that the cluster is listening on.</p>"}))
    Snapshot.add_member(:availability_zone, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AvailabilityZone', traits: {"smithy.api#documentation" => "<p>The Availability Zone in which the cluster was created.</p>"}))
    Snapshot.add_member(:cluster_create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'ClusterCreateTime', traits: {"smithy.api#documentation" => "<p>The time (UTC) when the cluster was originally created.</p>"}))
    Snapshot.add_member(:master_username, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterUsername', traits: {"smithy.api#documentation" => "<p>The admin user name for the cluster.</p>"}))
    Snapshot.add_member(:cluster_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterVersion', traits: {"smithy.api#documentation" => "<p>The version ID of the Amazon Redshift engine that is running on the cluster.</p>"}))
    Snapshot.add_member(:engine_full_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineFullVersion', traits: {"smithy.api#documentation" => "<p>The cluster version of the cluster used to create the snapshot. For example, 1.0.15503. </p>"}))
    Snapshot.add_member(:snapshot_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotType', traits: {"smithy.api#documentation" => "<p>The snapshot type. Snapshots created using <a>CreateClusterSnapshot</a>\n            and <a>CopyClusterSnapshot</a> are of type \"manual\". </p>"}))
    Snapshot.add_member(:node_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeType', traits: {"smithy.api#documentation" => "<p>The node type of the nodes in the cluster.</p>"}))
    Snapshot.add_member(:number_of_nodes, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumberOfNodes', traits: {"smithy.api#documentation" => "<p>The number of nodes in the cluster.</p>"}))
    Snapshot.add_member(:db_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBName', traits: {"smithy.api#documentation" => "<p>The name of the database that was created when the cluster was created.</p>"}))
    Snapshot.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>The VPC identifier of the cluster if the snapshot is from a cluster in a VPC.\n            Otherwise, this field is not in the output.</p>"}))
    Snapshot.add_member(:encrypted, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Encrypted', traits: {"smithy.api#documentation" => "<p>If <code>true</code>, the data in the snapshot is encrypted at rest.</p>"}))
    Snapshot.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>The Key Management Service (KMS) key ID of the encryption key that was used to\n            encrypt data in the cluster from which the snapshot was taken.</p>"}))
    Snapshot.add_member(:encrypted_with_hsm, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EncryptedWithHSM', traits: {"smithy.api#documentation" => "<p>A boolean that indicates whether the snapshot data is encrypted using the HSM keys\n            of the source cluster. <code>true</code> indicates that the data is encrypted using HSM\n            keys.</p>"}))
    Snapshot.add_member(:accounts_with_restore_access, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountsWithRestoreAccessList, location_name: 'AccountsWithRestoreAccess', traits: {"smithy.api#documentation" => "<p>A list of the Amazon Web Services accounts authorized to restore the snapshot. Returns\n                <code>null</code> if no accounts are authorized. Visible only to the snapshot owner.\n        </p>"}))
    Snapshot.add_member(:owner_account, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OwnerAccount', traits: {"smithy.api#documentation" => "<p>For manual snapshots, the Amazon Web Services account used to create or copy the snapshot.\n            For automatic snapshots, the owner of the cluster. The owner can perform all snapshot\n            actions, such as sharing a manual snapshot.</p>"}))
    Snapshot.add_member(:total_backup_size_in_mega_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'TotalBackupSizeInMegaBytes', traits: {"smithy.api#documentation" => "<p>The size of the complete set of backup data that would be used to restore the\n            cluster.</p>"}))
    Snapshot.add_member(:actual_incremental_backup_size_in_mega_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'ActualIncrementalBackupSizeInMegaBytes', traits: {"smithy.api#documentation" => "<p>The size of the incremental backup.</p>"}))
    Snapshot.add_member(:backup_progress_in_mega_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'BackupProgressInMegaBytes', traits: {"smithy.api#documentation" => "<p>The number of megabytes that have been transferred to the snapshot\n            backup.</p>"}))
    Snapshot.add_member(:current_backup_rate_in_mega_bytes_per_second, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'CurrentBackupRateInMegaBytesPerSecond', traits: {"smithy.api#documentation" => "<p>The number of megabytes per second being transferred to the snapshot backup.\n            Returns <code>0</code> for a completed backup. </p>"}))
    Snapshot.add_member(:estimated_seconds_to_completion, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'EstimatedSecondsToCompletion', traits: {"smithy.api#documentation" => "<p>The estimate of the time remaining before the snapshot backup will complete.\n            Returns <code>0</code> for a completed backup. </p>"}))
    Snapshot.add_member(:elapsed_time_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ElapsedTimeInSeconds', traits: {"smithy.api#documentation" => "<p>The amount of time an in-progress snapshot backup has been running, or the amount\n            of time it took a completed backup to finish.</p>"}))
    Snapshot.add_member(:source_region, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceRegion', traits: {"smithy.api#documentation" => "<p>The source region from which the snapshot was copied.</p>"}))
    Snapshot.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of tags for the cluster snapshot.</p>"}))
    Snapshot.add_member(:restorable_node_types, Smithy::Schema::Shapes::ShapeRef.new(shape: RestorableNodeTypeList, location_name: 'RestorableNodeTypes', traits: {"smithy.api#documentation" => "<p>The list of node types that this cluster snapshot is able to restore\n            into.</p>"}))
    Snapshot.add_member(:enhanced_vpc_routing, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnhancedVpcRouting', traits: {"smithy.api#documentation" => "<p>An option that specifies whether to create the cluster with enhanced VPC routing\n            enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a\n            VPC. For more information, see <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html\">Enhanced VPC Routing</a> in\n            the Amazon Redshift Cluster Management Guide.</p>\n         <p>If this option is <code>true</code>, enhanced VPC routing is enabled. </p>\n         <p>Default: false</p>"}))
    Snapshot.add_member(:maintenance_track_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MaintenanceTrackName', traits: {"smithy.api#documentation" => "<p>The name of the maintenance track for the snapshot.</p>"}))
    Snapshot.add_member(:manual_snapshot_retention_period, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'ManualSnapshotRetentionPeriod', traits: {"smithy.api#documentation" => "<p>The number of days that a manual snapshot is retained. If the value is -1, the manual\n            snapshot is retained indefinitely. </p>\n         <p>The value must be either -1 or an integer between 1 and 3,653.</p>"}))
    Snapshot.add_member(:manual_snapshot_remaining_days, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'ManualSnapshotRemainingDays', traits: {"smithy.api#documentation" => "<p>The number of days until a manual snapshot will pass its retention period.</p>"}))
    Snapshot.add_member(:snapshot_retention_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'SnapshotRetentionStartTime', traits: {"smithy.api#documentation" => "<p>A timestamp representing the start of the retention period for the snapshot.</p>"}))
    Snapshot.add_member(:master_password_secret_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterPasswordSecretArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the cluster's admin user credentials secret.</p>"}))
    Snapshot.add_member(:master_password_secret_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterPasswordSecretKmsKeyId', traits: {"smithy.api#documentation" => "<p>The ID of the Key Management Service (KMS) key used to encrypt and store the cluster's admin credentials secret.</p>"}))
    Snapshot.add_member(:snapshot_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the snapshot.</p>"}))
    Snapshot.type = Types::Snapshot
    SnapshotAttributeToSortBy.add_member(:source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SOURCE_TYPE', traits: {"smithy.api#enumValue" => "SOURCE_TYPE"}))
    SnapshotAttributeToSortBy.add_member(:total_size, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TOTAL_SIZE', traits: {"smithy.api#enumValue" => "TOTAL_SIZE"}))
    SnapshotAttributeToSortBy.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_TIME', traits: {"smithy.api#enumValue" => "CREATE_TIME"}))
    SnapshotCopyAlreadyDisabledFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SnapshotCopyAlreadyDisabledFault.type = Types::SnapshotCopyAlreadyDisabledFault
    SnapshotCopyAlreadyEnabledFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SnapshotCopyAlreadyEnabledFault.type = Types::SnapshotCopyAlreadyEnabledFault
    SnapshotCopyDisabledFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SnapshotCopyDisabledFault.type = Types::SnapshotCopyDisabledFault
    SnapshotCopyGrant.add_member(:snapshot_copy_grant_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotCopyGrantName', traits: {"smithy.api#documentation" => "<p>The name of the snapshot copy grant.</p>"}))
    SnapshotCopyGrant.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the encrypted symmetric key in Amazon Web Services KMS to which\n            Amazon Redshift is granted permission.</p>"}))
    SnapshotCopyGrant.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tag instances.</p>"}))
    SnapshotCopyGrant.type = Types::SnapshotCopyGrant
    SnapshotCopyGrantAlreadyExistsFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SnapshotCopyGrantAlreadyExistsFault.type = Types::SnapshotCopyGrantAlreadyExistsFault
    SnapshotCopyGrantList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotCopyGrant, traits: {"smithy.api#xmlName" => "SnapshotCopyGrant"})
    SnapshotCopyGrantMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An optional parameter that specifies the starting point to return a set of response\n            records. When the results of a <code>DescribeSnapshotCopyGrant</code> request exceed the\n            value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the\n                <code>Marker</code> field of the response. You can retrieve the next set of response\n            records by providing the returned marker value in the <code>Marker</code> parameter and\n            retrying the request. </p>\n         <p>Constraints: You can specify either the <b>SnapshotCopyGrantName</b> parameter or the <b>Marker</b> parameter, but not both. </p>"}))
    SnapshotCopyGrantMessage.add_member(:snapshot_copy_grants, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotCopyGrantList, location_name: 'SnapshotCopyGrants', traits: {"smithy.api#documentation" => "<p>The list of <code>SnapshotCopyGrant</code> objects.</p>"}))
    SnapshotCopyGrantMessage.type = Types::SnapshotCopyGrantMessage
    SnapshotCopyGrantNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SnapshotCopyGrantNotFoundFault.type = Types::SnapshotCopyGrantNotFoundFault
    SnapshotCopyGrantQuotaExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SnapshotCopyGrantQuotaExceededFault.type = Types::SnapshotCopyGrantQuotaExceededFault
    SnapshotErrorMessage.add_member(:snapshot_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for the snapshot returning the error.</p>"}))
    SnapshotErrorMessage.add_member(:snapshot_cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotClusterIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for the cluster.</p>"}))
    SnapshotErrorMessage.add_member(:failure_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FailureCode', traits: {"smithy.api#documentation" => "<p>The failure code for the error.</p>"}))
    SnapshotErrorMessage.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FailureReason', traits: {"smithy.api#documentation" => "<p>The text message describing the error.</p>"}))
    SnapshotErrorMessage.type = Types::SnapshotErrorMessage
    SnapshotIdentifierList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "String"})
    SnapshotList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Snapshot, traits: {"smithy.api#xmlName" => "Snapshot"})
    SnapshotMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>A value that indicates the starting point for the next set of response records in a\n            subsequent request. If a value is returned in a response, you can retrieve the next set\n            of records by providing this returned marker value in the <code>Marker</code> parameter\n            and retrying the command. If the <code>Marker</code> field is empty, all response\n            records have been retrieved for the request. </p>"}))
    SnapshotMessage.add_member(:snapshots, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotList, location_name: 'Snapshots', traits: {"smithy.api#documentation" => "<p>A list of <a>Snapshot</a> instances. </p>"}))
    SnapshotMessage.type = Types::SnapshotMessage
    SnapshotSchedule.add_member(:schedule_definitions, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleDefinitionList, location_name: 'ScheduleDefinitions', traits: {"smithy.api#documentation" => "<p>A list of ScheduleDefinitions.</p>"}))
    SnapshotSchedule.add_member(:schedule_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduleIdentifier', traits: {"smithy.api#documentation" => "<p>A unique identifier for the schedule.</p>"}))
    SnapshotSchedule.add_member(:schedule_description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduleDescription', traits: {"smithy.api#documentation" => "<p>The description of the schedule.</p>"}))
    SnapshotSchedule.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An optional set of tags describing the schedule.</p>"}))
    SnapshotSchedule.add_member(:next_invocations, Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledSnapshotTimeList, location_name: 'NextInvocations', traits: {"smithy.api#documentation" => "<p></p>"}))
    SnapshotSchedule.add_member(:associated_cluster_count, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'AssociatedClusterCount', traits: {"smithy.api#documentation" => "<p>The number of clusters associated with the schedule.</p>"}))
    SnapshotSchedule.add_member(:associated_clusters, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedClusterList, location_name: 'AssociatedClusters', traits: {"smithy.api#documentation" => "<p>A list of clusters associated with the schedule. A maximum of 100 clusters is returned.</p>"}))
    SnapshotSchedule.type = Types::SnapshotSchedule
    SnapshotScheduleAlreadyExistsFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SnapshotScheduleAlreadyExistsFault.type = Types::SnapshotScheduleAlreadyExistsFault
    SnapshotScheduleList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotSchedule, traits: {"smithy.api#xmlName" => "SnapshotSchedule"})
    SnapshotScheduleNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SnapshotScheduleNotFoundFault.type = Types::SnapshotScheduleNotFoundFault
    SnapshotScheduleQuotaExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SnapshotScheduleQuotaExceededFault.type = Types::SnapshotScheduleQuotaExceededFault
    SnapshotScheduleUpdateInProgressFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SnapshotScheduleUpdateInProgressFault.type = Types::SnapshotScheduleUpdateInProgressFault
    SnapshotSortingEntity.add_member(:attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotAttributeToSortBy, location_name: 'Attribute', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The category for sorting the snapshots.</p>", "smithy.api#required" => {}}))
    SnapshotSortingEntity.add_member(:sort_order, Smithy::Schema::Shapes::ShapeRef.new(shape: SortByOrder, location_name: 'SortOrder', traits: {"smithy.api#documentation" => "<p>The order for listing the attributes.</p>"}))
    SnapshotSortingEntity.type = Types::SnapshotSortingEntity
    SnapshotSortingEntityList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotSortingEntity, traits: {"smithy.api#xmlName" => "SnapshotSortingEntity"})
    SortByOrder.add_member(:ascending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASCENDING', traits: {"smithy.api#enumValue" => "ASC"}))
    SortByOrder.add_member(:descending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DESCENDING', traits: {"smithy.api#enumValue" => "DESC"}))
    SourceIdsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "SourceId"})
    SourceNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SourceNotFoundFault.type = Types::SourceNotFoundFault
    SourceType.add_member(:cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cluster', traits: {"smithy.api#enumValue" => "cluster"}))
    SourceType.add_member(:cluster_parameter_group, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cluster_parameter_group', traits: {"smithy.api#enumValue" => "cluster-parameter-group"}))
    SourceType.add_member(:cluster_security_group, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cluster_security_group', traits: {"smithy.api#enumValue" => "cluster-security-group"}))
    SourceType.add_member(:cluster_snapshot, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cluster_snapshot', traits: {"smithy.api#enumValue" => "cluster-snapshot"}))
    SourceType.add_member(:scheduled_action, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'scheduled_action', traits: {"smithy.api#enumValue" => "scheduled-action"}))
    Subnet.add_member(:subnet_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubnetIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the subnet.</p>"}))
    Subnet.add_member(:subnet_availability_zone, Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: 'SubnetAvailabilityZone', traits: {"smithy.api#documentation" => "<p></p>"}))
    Subnet.add_member(:subnet_status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubnetStatus', traits: {"smithy.api#documentation" => "<p>The status of the subnet.</p>"}))
    Subnet.type = Types::Subnet
    SubnetAlreadyInUse.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SubnetAlreadyInUse.type = Types::SubnetAlreadyInUse
    SubnetIdentifierList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "SubnetIdentifier"})
    SubnetList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Subnet, traits: {"smithy.api#xmlName" => "Subnet"})
    SubscriptionAlreadyExistFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SubscriptionAlreadyExistFault.type = Types::SubscriptionAlreadyExistFault
    SubscriptionCategoryNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SubscriptionCategoryNotFoundFault.type = Types::SubscriptionCategoryNotFoundFault
    SubscriptionEventIdNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SubscriptionEventIdNotFoundFault.type = Types::SubscriptionEventIdNotFoundFault
    SubscriptionNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SubscriptionNotFoundFault.type = Types::SubscriptionNotFoundFault
    SubscriptionSeverityNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SubscriptionSeverityNotFoundFault.type = Types::SubscriptionSeverityNotFoundFault
    SupportedOperation.add_member(:operation_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OperationName', traits: {"smithy.api#documentation" => "<p>A list of the supported operations.</p>"}))
    SupportedOperation.type = Types::SupportedOperation
    SupportedOperationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedOperation, traits: {"smithy.api#xmlName" => "SupportedOperation"})
    SupportedPlatform.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p></p>"}))
    SupportedPlatform.type = Types::SupportedPlatform
    SupportedPlatformsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedPlatform, traits: {"smithy.api#xmlName" => "SupportedPlatform"})
    TableLimitExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    TableLimitExceededFault.type = Types::TableLimitExceededFault
    TableRestoreNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    TableRestoreNotFoundFault.type = Types::TableRestoreNotFoundFault
    TableRestoreStatus.add_member(:table_restore_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TableRestoreRequestId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the table restore request.</p>"}))
    TableRestoreStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TableRestoreStatusType, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>A value that describes the current state of the table restore request.</p>\n         <p>Valid Values: <code>SUCCEEDED</code>, <code>FAILED</code>, <code>CANCELED</code>,\n                <code>PENDING</code>, <code>IN_PROGRESS</code>\n         </p>"}))
    TableRestoreStatus.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A description of the status of the table restore request. Status values include\n                <code>SUCCEEDED</code>, <code>FAILED</code>, <code>CANCELED</code>,\n                <code>PENDING</code>, <code>IN_PROGRESS</code>.</p>"}))
    TableRestoreStatus.add_member(:request_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'RequestTime', traits: {"smithy.api#documentation" => "<p>The time that the table restore request was made, in Universal Coordinated Time\n            (UTC).</p>"}))
    TableRestoreStatus.add_member(:progress_in_mega_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: 'ProgressInMegaBytes', traits: {"smithy.api#documentation" => "<p>The amount of data restored to the new table so far, in megabytes (MB).</p>"}))
    TableRestoreStatus.add_member(:total_data_in_mega_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: 'TotalDataInMegaBytes', traits: {"smithy.api#documentation" => "<p>The total amount of data to restore to the new table, in megabytes (MB).</p>"}))
    TableRestoreStatus.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the Amazon Redshift cluster that the table is being restored\n            to.</p>"}))
    TableRestoreStatus.add_member(:snapshot_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the snapshot that the table is being restored from.</p>"}))
    TableRestoreStatus.add_member(:source_database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceDatabaseName', traits: {"smithy.api#documentation" => "<p>The name of the source database that contains the table being restored.</p>"}))
    TableRestoreStatus.add_member(:source_schema_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceSchemaName', traits: {"smithy.api#documentation" => "<p>The name of the source schema that contains the table being restored.</p>"}))
    TableRestoreStatus.add_member(:source_table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceTableName', traits: {"smithy.api#documentation" => "<p>The name of the source table being restored.</p>"}))
    TableRestoreStatus.add_member(:target_database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetDatabaseName', traits: {"smithy.api#documentation" => "<p>The name of the database to restore the table to.</p>"}))
    TableRestoreStatus.add_member(:target_schema_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetSchemaName', traits: {"smithy.api#documentation" => "<p>The name of the schema to restore the table to.</p>"}))
    TableRestoreStatus.add_member(:new_table_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NewTableName', traits: {"smithy.api#documentation" => "<p>The name of the table to create as a result of the table restore request.</p>"}))
    TableRestoreStatus.type = Types::TableRestoreStatus
    TableRestoreStatusList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TableRestoreStatus, traits: {"smithy.api#xmlName" => "TableRestoreStatus"})
    TableRestoreStatusMessage.add_member(:table_restore_status_details, Smithy::Schema::Shapes::ShapeRef.new(shape: TableRestoreStatusList, location_name: 'TableRestoreStatusDetails', traits: {"smithy.api#documentation" => "<p>A list of status details for one or more table restore requests.</p>"}))
    TableRestoreStatusMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>A pagination token that can be used in a subsequent <a>DescribeTableRestoreStatus</a> request.</p>"}))
    TableRestoreStatusMessage.type = Types::TableRestoreStatusMessage
    TableRestoreStatusType.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    TableRestoreStatusType.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    TableRestoreStatusType.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    TableRestoreStatusType.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    TableRestoreStatusType.add_member(:canceled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELED', traits: {"smithy.api#enumValue" => "CANCELED"}))
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The key, or name, for the resource tag.</p>"}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value for the resource tag.</p>"}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "TagKey"})
    TagLimitExceededFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    TagLimitExceededFault.type = Types::TagLimitExceededFault
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag, traits: {"smithy.api#xmlName" => "Tag"})
    TagValueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "TagValue"})
    TaggedResource.add_member(:tag, Smithy::Schema::Shapes::ShapeRef.new(shape: Tag, location_name: 'Tag', traits: {"smithy.api#documentation" => "<p>The tag for the resource.</p>"}))
    TaggedResource.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) with which the tag is associated, for example:\n                <code>arn:aws:redshift:us-east-2:123456789:cluster:t1</code>.</p>"}))
    TaggedResource.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The type of resource with which the tag is associated. Valid resource types are: </p>\n         <ul>\n            <li>\n               <p>Cluster</p>\n            </li>\n            <li>\n               <p>CIDR/IP</p>\n            </li>\n            <li>\n               <p>EC2 security group</p>\n            </li>\n            <li>\n               <p>Snapshot</p>\n            </li>\n            <li>\n               <p>Cluster security group</p>\n            </li>\n            <li>\n               <p>Subnet group</p>\n            </li>\n            <li>\n               <p>HSM connection</p>\n            </li>\n            <li>\n               <p>HSM certificate</p>\n            </li>\n            <li>\n               <p>Parameter group</p>\n            </li>\n         </ul>\n         <p>For more information about Amazon Redshift resource types and constructing ARNs, go to\n                <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-overview.html#redshift-iam-access-control-specify-actions\">Constructing an Amazon Redshift Amazon Resource Name (ARN)</a> in the\n            Amazon Redshift Cluster Management Guide. </p>"}))
    TaggedResource.type = Types::TaggedResource
    TaggedResourceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TaggedResource, traits: {"smithy.api#xmlName" => "TaggedResource"})
    TaggedResourceListMessage.add_member(:tagged_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: TaggedResourceList, location_name: 'TaggedResources', traits: {"smithy.api#documentation" => "<p>A list of tags with their associated resources.</p>"}))
    TaggedResourceListMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>A value that indicates the starting point for the next set of response records in a\n            subsequent request. If a value is returned in a response, you can retrieve the next set\n            of records by providing this returned marker value in the <code>Marker</code> parameter\n            and retrying the command. If the <code>Marker</code> field is empty, all response\n            records have been retrieved for the request. </p>"}))
    TaggedResourceListMessage.type = Types::TaggedResourceListMessage
    TrackList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MaintenanceTrack, traits: {"smithy.api#xmlName" => "MaintenanceTrack"})
    TrackListMessage.add_member(:maintenance_tracks, Smithy::Schema::Shapes::ShapeRef.new(shape: TrackList, location_name: 'MaintenanceTracks', traits: {"smithy.api#documentation" => "<p>A list of maintenance tracks output by the <code>DescribeClusterTracks</code>\n            operation. </p>"}))
    TrackListMessage.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>The starting point to return a set of response tracklist records. You can retrieve the\n            next set of response records by providing the returned marker value in the\n                <code>Marker</code> parameter and retrying the request.</p>"}))
    TrackListMessage.type = Types::TrackListMessage
    UnauthorizedOperation.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    UnauthorizedOperation.type = Types::UnauthorizedOperation
    UnauthorizedPartnerIntegrationFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    UnauthorizedPartnerIntegrationFault.type = Types::UnauthorizedPartnerIntegrationFault
    UnknownSnapshotCopyRegionFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    UnknownSnapshotCopyRegionFault.type = Types::UnknownSnapshotCopyRegionFault
    UnsupportedOperationFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    UnsupportedOperationFault.type = Types::UnsupportedOperationFault
    UnsupportedOptionFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    UnsupportedOptionFault.type = Types::UnsupportedOptionFault
    UpdatePartnerStatusInputMessage.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationAccountId, location_name: 'AccountId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Web Services account ID that owns the cluster.</p>", "smithy.api#required" => {}}))
    UpdatePartnerStatusInputMessage.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationClusterIdentifier, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The cluster identifier of the cluster whose partner integration status is being updated.</p>", "smithy.api#required" => {}}))
    UpdatePartnerStatusInputMessage.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationDatabaseName, location_name: 'DatabaseName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the database whose partner integration status is being updated.</p>", "smithy.api#required" => {}}))
    UpdatePartnerStatusInputMessage.add_member(:partner_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationPartnerName, location_name: 'PartnerName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the partner whose integration status is being updated.</p>", "smithy.api#required" => {}}))
    UpdatePartnerStatusInputMessage.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationStatus, location_name: 'Status', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The value of the updated status.</p>", "smithy.api#required" => {}}))
    UpdatePartnerStatusInputMessage.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationStatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>The status message provided by the partner.</p>"}))
    UpdatePartnerStatusInputMessage.type = Types::UpdatePartnerStatusInputMessage
    UpdatePartnerStatusOutput.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationDatabaseName, location_name: 'DatabaseName', traits: {"smithy.api#documentation" => "<p>The name of the database that receives data from the partner.</p>"}))
    UpdatePartnerStatusOutput.add_member(:partner_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationPartnerName, location_name: 'PartnerName', traits: {"smithy.api#documentation" => "<p>The name of the partner that is authorized to send data.</p>"}))
    UpdatePartnerStatusOutput.type = Types::UpdatePartnerStatusOutput
    UpdateTarget.add_member(:maintenance_track_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MaintenanceTrackName', traits: {"smithy.api#documentation" => "<p>The name of the new maintenance track.</p>"}))
    UpdateTarget.add_member(:database_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DatabaseVersion', traits: {"smithy.api#documentation" => "<p>The cluster version for the new maintenance track.</p>"}))
    UpdateTarget.add_member(:supported_operations, Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedOperationList, location_name: 'SupportedOperations', traits: {"smithy.api#documentation" => "<p>A list of operations supported by the maintenance track.</p>"}))
    UpdateTarget.type = Types::UpdateTarget
    UsageLimit.add_member(:usage_limit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UsageLimitId', traits: {"smithy.api#documentation" => "<p>The identifier of the usage limit.</p>"}))
    UsageLimit.add_member(:cluster_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the cluster with a usage limit.</p>"}))
    UsageLimit.add_member(:feature_type, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitFeatureType, location_name: 'FeatureType', traits: {"smithy.api#documentation" => "<p>The Amazon Redshift feature to which the limit applies.</p>"}))
    UsageLimit.add_member(:limit_type, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitLimitType, location_name: 'LimitType', traits: {"smithy.api#documentation" => "<p>The type of limit. Depending on the feature type, this can be based on a time duration or data size.</p>"}))
    UsageLimit.add_member(:amount, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'Amount', traits: {"smithy.api#documentation" => "<p>The limit amount. If time-based, this amount is in minutes. If data-based, this amount is in terabytes (TB).</p>"}))
    UsageLimit.add_member(:period, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitPeriod, location_name: 'Period', traits: {"smithy.api#documentation" => "<p>The time period that the amount applies to. A <code>weekly</code> period begins on Sunday. The default is <code>monthly</code>. </p>"}))
    UsageLimit.add_member(:breach_action, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitBreachAction, location_name: 'BreachAction', traits: {"smithy.api#documentation" => "<p>The action that Amazon Redshift takes when the limit is reached. Possible values are: </p>\n         <ul>\n            <li>\n               <p>\n                  <b>log</b> - To log an event in a system table. The default is log.</p>\n            </li>\n            <li>\n               <p>\n                  <b>emit-metric</b> - To emit CloudWatch metrics.</p>\n            </li>\n            <li>\n               <p>\n                  <b>disable</b> - To disable the feature until the next usage period begins.</p>\n            </li>\n         </ul>"}))
    UsageLimit.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tag instances.</p>"}))
    UsageLimit.type = Types::UsageLimit
    UsageLimitAlreadyExistsFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    UsageLimitAlreadyExistsFault.type = Types::UsageLimitAlreadyExistsFault
    UsageLimitBreachAction.add_member(:log, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOG', traits: {"smithy.api#enumValue" => "log"}))
    UsageLimitBreachAction.add_member(:emit_metric, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMIT_METRIC', traits: {"smithy.api#enumValue" => "emit-metric"}))
    UsageLimitBreachAction.add_member(:disable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLE', traits: {"smithy.api#enumValue" => "disable"}))
    UsageLimitFeatureType.add_member(:spectrum, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SPECTRUM', traits: {"smithy.api#enumValue" => "spectrum"}))
    UsageLimitFeatureType.add_member(:concurrency_scaling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONCURRENCY_SCALING', traits: {"smithy.api#enumValue" => "concurrency-scaling"}))
    UsageLimitFeatureType.add_member(:cross_region_datasharing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CROSS_REGION_DATASHARING', traits: {"smithy.api#enumValue" => "cross-region-datasharing"}))
    UsageLimitLimitType.add_member(:time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIME', traits: {"smithy.api#enumValue" => "time"}))
    UsageLimitLimitType.add_member(:data_scanned, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATA_SCANNED', traits: {"smithy.api#enumValue" => "data-scanned"}))
    UsageLimitNotFoundFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    UsageLimitNotFoundFault.type = Types::UsageLimitNotFoundFault
    UsageLimitPeriod.add_member(:daily, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DAILY', traits: {"smithy.api#enumValue" => "daily"}))
    UsageLimitPeriod.add_member(:weekly, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WEEKLY', traits: {"smithy.api#enumValue" => "weekly"}))
    UsageLimitPeriod.add_member(:monthly, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MONTHLY', traits: {"smithy.api#enumValue" => "monthly"}))
    UsageLimits.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimit)
    ValueStringList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "item"})
    VpcEndpoint.add_member(:vpc_endpoint_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcEndpointId', traits: {"smithy.api#documentation" => "<p>The connection endpoint ID for connecting an Amazon Redshift cluster through the proxy.</p>"}))
    VpcEndpoint.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>The VPC identifier that the endpoint is associated. </p>"}))
    VpcEndpoint.add_member(:network_interfaces, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterfaceList, location_name: 'NetworkInterfaces', traits: {"smithy.api#documentation" => "<p>One or more network interfaces of the endpoint. Also known as an interface endpoint. </p>"}))
    VpcEndpoint.type = Types::VpcEndpoint
    VpcEndpointsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpoint, traits: {"smithy.api#xmlName" => "VpcEndpoint"})
    VpcIdentifierList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "VpcIdentifier"})
    VpcSecurityGroupIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "VpcSecurityGroupId"})
    VpcSecurityGroupMembership.add_member(:vpc_security_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcSecurityGroupId', traits: {"smithy.api#documentation" => "<p>The identifier of the VPC security group.</p>"}))
    VpcSecurityGroupMembership.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the VPC security group.</p>"}))
    VpcSecurityGroupMembership.type = Types::VpcSecurityGroupMembership
    VpcSecurityGroupMembershipList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupMembership, traits: {"smithy.api#xmlName" => "VpcSecurityGroup"})
    ZeroETLIntegrationStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "creating"}))
    ZeroETLIntegrationStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "active"}))
    ZeroETLIntegrationStatus.add_member(:modifying, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MODIFYING', traits: {"smithy.api#enumValue" => "modifying"}))
    ZeroETLIntegrationStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "failed"}))
    ZeroETLIntegrationStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "deleting"}))
    ZeroETLIntegrationStatus.add_member(:syncing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYNCING', traits: {"smithy.api#enumValue" => "syncing"}))
    ZeroETLIntegrationStatus.add_member(:needs_attention, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEEDS_ATTENTION', traits: {"smithy.api#enumValue" => "needs_attention"}))

    RedshiftServiceVersion20121201 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.redshift#RedshiftServiceVersion20121201"
      service.name = "RedshiftServiceVersion20121201"
      service.version = "2012-12-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Redshift", "arnNamespace" => "redshift", "cloudFormationName" => "Redshift", "cloudTrailEventSource" => "redshift.amazonaws.com", "endpointPrefix" => "redshift"}, "aws.auth#sigv4" => {"name" => "redshift"}, "aws.protocols#awsQuery" => {}, "smithy.api#title" => "Amazon Redshift", "smithy.api#xmlNamespace" => {"uri" => "http://redshift.amazonaws.com/doc/2012-12-01/"}}
      service.add_operation(:accept_reserved_node_exchange, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#AcceptReservedNodeExchange"
        operation.name = "AcceptReservedNodeExchange"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptReservedNodeExchangeInputMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptReservedNodeExchangeOutputMessage)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceUnavailableFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidReservedNodeStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeAlreadyExistsFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeAlreadyMigratedFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeOfferingNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:add_partner, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#AddPartner"
        operation.name = "AddPartner"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AddPartnerInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AddPartnerOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedPartnerIntegrationFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:associate_data_share_consumer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#AssociateDataShareConsumer"
        operation.name = "AssociateDataShareConsumer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateDataShareConsumerMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateDataShareConsumerOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDataShareFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNamespaceFault)
        operation.traits = {}
      end)
      service.add_operation(:authorize_cluster_security_group_ingress, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#AuthorizeClusterSecurityGroupIngress"
        operation.name = "AuthorizeClusterSecurityGroupIngress"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizeClusterSecurityGroupIngressMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizeClusterSecurityGroupIngressResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationAlreadyExistsFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationQuotaExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSecurityGroupNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterSecurityGroupStateFault)
        operation.traits = {}
      end)
      service.add_operation(:authorize_data_share, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#AuthorizeDataShare"
        operation.name = "AuthorizeDataShare"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizeDataShareMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizeDataShareOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDataShareFault)
        operation.traits = {}
      end)
      service.add_operation(:authorize_endpoint_access, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#AuthorizeEndpointAccess"
        operation.name = "AuthorizeEndpointAccess"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizeEndpointAccessMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizeEndpointAccessOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointAuthorizationAlreadyExistsFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointAuthorizationsPerClusterLimitExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAuthorizationStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:authorize_snapshot_access, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#AuthorizeSnapshotAccess"
        operation.name = "AuthorizeSnapshotAccess"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizeSnapshotAccessMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizeSnapshotAccessResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationAlreadyExistsFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationQuotaExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshotNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceRequestThrottlingFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterSnapshotStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:batch_delete_cluster_snapshots, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#BatchDeleteClusterSnapshots"
        operation.name = "BatchDeleteClusterSnapshots"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteClusterSnapshotsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteClusterSnapshotsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteRequestSizeExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:batch_modify_cluster_snapshots, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#BatchModifyClusterSnapshots"
        operation.name = "BatchModifyClusterSnapshots"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchModifyClusterSnapshotsMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchModifyClusterSnapshotsOutputMessage)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BatchModifyClusterSnapshotsLimitExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRetentionPeriodFault)
        operation.traits = {}
      end)
      service.add_operation(:cancel_resize, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CancelResize"
        operation.name = "CancelResize"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelResizeMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelResizeOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResizeNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:copy_cluster_snapshot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CopyClusterSnapshot"
        operation.name = "CopyClusterSnapshot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CopyClusterSnapshotMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CopyClusterSnapshotResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshotAlreadyExistsFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshotNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshotQuotaExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterSnapshotStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRetentionPeriodFault)
        operation.traits = {}
      end)
      service.add_operation(:create_authentication_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateAuthenticationProfile"
        operation.name = "CreateAuthenticationProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAuthenticationProfileMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAuthenticationProfileResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationProfileAlreadyExistsFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationProfileQuotaExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAuthenticationProfileRequestFault)
        operation.traits = {}
      end)
      service.add_operation(:create_cluster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateCluster"
        operation.name = "CreateCluster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterAlreadyExistsFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterParameterGroupNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterQuotaExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSecurityGroupNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSubnetGroupNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceRequestThrottlingFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HsmClientCertificateNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HsmConfigurationNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientClusterCapacityFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterSubnetGroupStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterTrackFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidElasticIpFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRetentionPeriodFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv6CidrBlockNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfNodesPerClusterLimitExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfNodesQuotaExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftIdcApplicationNotExistsFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotScheduleNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagLimitExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:create_cluster_parameter_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateClusterParameterGroup"
        operation.name = "CreateClusterParameterGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterParameterGroupMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterParameterGroupResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterParameterGroupAlreadyExistsFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterParameterGroupQuotaExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagLimitExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:create_cluster_security_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateClusterSecurityGroup"
        operation.name = "CreateClusterSecurityGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterSecurityGroupMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterSecurityGroupResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSecurityGroupAlreadyExistsFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSecurityGroupQuotaExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagLimitExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:create_cluster_snapshot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateClusterSnapshot"
        operation.name = "CreateClusterSnapshot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterSnapshotMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterSnapshotResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshotAlreadyExistsFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshotQuotaExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRetentionPeriodFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagLimitExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:create_cluster_subnet_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateClusterSubnetGroup"
        operation.name = "CreateClusterSubnetGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterSubnetGroupMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterSubnetGroupResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSubnetGroupAlreadyExistsFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSubnetGroupQuotaExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSubnetQuotaExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceRequestThrottlingFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagLimitExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        operation.traits = {}
      end)
      service.add_operation(:create_custom_domain_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateCustomDomainAssociation"
        operation.name = "CreateCustomDomainAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomDomainAssociationMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomDomainAssociationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CustomCnameAssociationFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:create_endpoint_access, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateEndpointAccess"
        operation.name = "CreateEndpointAccess"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEndpointAccessMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEndpointAccessOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessToClusterDeniedFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSubnetGroupNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointAlreadyExistsFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointsPerAuthorizationLimitExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointsPerClusterLimitExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterSecurityGroupStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:create_event_subscription, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateEventSubscription"
        operation.name = "CreateEventSubscription"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEventSubscriptionMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEventSubscriptionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EventSubscriptionQuotaExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SNSInvalidTopicFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SNSNoAuthorizationFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SNSTopicArnNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SourceNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionAlreadyExistFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionCategoryNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionEventIdNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionSeverityNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagLimitExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:create_hsm_client_certificate, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateHsmClientCertificate"
        operation.name = "CreateHsmClientCertificate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateHsmClientCertificateMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateHsmClientCertificateResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HsmClientCertificateAlreadyExistsFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HsmClientCertificateQuotaExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagLimitExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:create_hsm_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateHsmConfiguration"
        operation.name = "CreateHsmConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateHsmConfigurationMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateHsmConfigurationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HsmConfigurationAlreadyExistsFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HsmConfigurationQuotaExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagLimitExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:create_integration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateIntegration"
        operation.name = "CreateIntegration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIntegrationMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIntegrationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationAlreadyExistsFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationConflictOperationFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationQuotaExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationSourceNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationTargetNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagLimitExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:create_redshift_idc_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateRedshiftIdcApplication"
        operation.name = "CreateRedshiftIdcApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRedshiftIdcApplicationMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRedshiftIdcApplicationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceAccessDeniedFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceUnavailableFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftIdcApplicationAlreadyExistsFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftIdcApplicationQuotaExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:create_scheduled_action, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateScheduledAction"
        operation.name = "CreateScheduledAction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateScheduledActionMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateScheduledActionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidScheduledActionFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidScheduleFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionAlreadyExistsFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionQuotaExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionTypeUnsupportedFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:create_snapshot_copy_grant, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateSnapshotCopyGrant"
        operation.name = "CreateSnapshotCopyGrant"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSnapshotCopyGrantMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSnapshotCopyGrantResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceRequestThrottlingFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotCopyGrantAlreadyExistsFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotCopyGrantQuotaExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagLimitExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:create_snapshot_schedule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateSnapshotSchedule"
        operation.name = "CreateSnapshotSchedule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSnapshotScheduleMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSnapshotScheduleOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidScheduleFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleDefinitionTypeUnsupportedFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotScheduleAlreadyExistsFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotScheduleQuotaExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagLimitExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:create_tags, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateTags"
        operation.name = "CreateTags"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTagsMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagLimitExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:create_usage_limit, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateUsageLimit"
        operation.name = "CreateUsageLimit"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUsageLimitMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUsageLimitOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidUsageLimitFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagLimitExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitAlreadyExistsFault)
        operation.traits = {}
      end)
      service.add_operation(:deauthorize_data_share, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeauthorizeDataShare"
        operation.name = "DeauthorizeDataShare"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeauthorizeDataShareMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeauthorizeDataShareOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDataShareFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_authentication_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteAuthenticationProfile"
        operation.name = "DeleteAuthenticationProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAuthenticationProfileMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAuthenticationProfileResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationProfileNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAuthenticationProfileRequestFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_cluster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteCluster"
        operation.name = "DeleteCluster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshotAlreadyExistsFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshotQuotaExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRetentionPeriodFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_cluster_parameter_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteClusterParameterGroup"
        operation.name = "DeleteClusterParameterGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterParameterGroupMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterParameterGroupNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterParameterGroupStateFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_cluster_security_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteClusterSecurityGroup"
        operation.name = "DeleteClusterSecurityGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterSecurityGroupMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSecurityGroupNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterSecurityGroupStateFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_cluster_snapshot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteClusterSnapshot"
        operation.name = "DeleteClusterSnapshot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterSnapshotInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterSnapshotResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshotNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterSnapshotStateFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_cluster_subnet_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteClusterSubnetGroup"
        operation.name = "DeleteClusterSubnetGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterSubnetGroupMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSubnetGroupNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterSubnetGroupStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterSubnetStateFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_custom_domain_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteCustomDomainAssociation"
        operation.name = "DeleteCustomDomainAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCustomDomainAssociationMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CustomCnameAssociationFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainAssociationNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_endpoint_access, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteEndpointAccess"
        operation.name = "DeleteEndpointAccess"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEndpointAccessMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEndpointAccessOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterSecurityGroupStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointStateFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_event_subscription, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteEventSubscription"
        operation.name = "DeleteEventSubscription"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEventSubscriptionMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubscriptionStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_hsm_client_certificate, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteHsmClientCertificate"
        operation.name = "DeleteHsmClientCertificate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteHsmClientCertificateMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HsmClientCertificateNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidHsmClientCertificateStateFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_hsm_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteHsmConfiguration"
        operation.name = "DeleteHsmConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteHsmConfigurationMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HsmConfigurationNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidHsmConfigurationStateFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_integration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteIntegration"
        operation.name = "DeleteIntegration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIntegrationMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIntegrationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationConflictOperationFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationConflictStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_partner, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeletePartner"
        operation.name = "DeletePartner"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePartnerInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePartnerOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedPartnerIntegrationFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_redshift_idc_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteRedshiftIdcApplication"
        operation.name = "DeleteRedshiftIdcApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRedshiftIdcApplicationMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceAccessDeniedFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceUnavailableFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftIdcApplicationNotExistsFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_resource_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourcePolicyMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_scheduled_action, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteScheduledAction"
        operation.name = "DeleteScheduledAction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteScheduledActionMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        operation.traits = {}
      end)
      service.add_operation(:delete_snapshot_copy_grant, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteSnapshotCopyGrant"
        operation.name = "DeleteSnapshotCopyGrant"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSnapshotCopyGrantMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSnapshotCopyGrantStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotCopyGrantNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_snapshot_schedule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteSnapshotSchedule"
        operation.name = "DeleteSnapshotSchedule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSnapshotScheduleMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterSnapshotScheduleStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotScheduleNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_tags, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteTags"
        operation.name = "DeleteTags"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTagsMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_usage_limit, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteUsageLimit"
        operation.name = "DeleteUsageLimit"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUsageLimitMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:deregister_namespace, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeregisterNamespace"
        operation.name = "DeregisterNamespace"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterNamespaceInputMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterNamespaceOutputMessage)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNamespaceFault)
        operation.traits = {}
      end)
      service.add_operation(:describe_account_attributes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeAccountAttributes"
        operation.name = "DescribeAccountAttributes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccountAttributesMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccountAttributesOutput)
        operation.traits = {}
      end)
      service.add_operation(:describe_authentication_profiles, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeAuthenticationProfiles"
        operation.name = "DescribeAuthenticationProfiles"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAuthenticationProfilesMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAuthenticationProfilesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationProfileNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAuthenticationProfileRequestFault)
        operation.traits = {}
      end)
      service.add_operation(:describe_cluster_db_revisions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeClusterDbRevisions"
        operation.name = "DescribeClusterDbRevisions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClusterDbRevisionsMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterDbRevisionsMessage)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeClusterDbRevisions.new
      end)
      service.add_operation(:describe_cluster_parameter_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeClusterParameterGroups"
        operation.name = "DescribeClusterParameterGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClusterParameterGroupsMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterParameterGroupsMessage)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterParameterGroupNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeClusterParameterGroups.new
      end)
      service.add_operation(:describe_cluster_parameters, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeClusterParameters"
        operation.name = "DescribeClusterParameters"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClusterParametersMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClusterParametersOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterParameterGroupNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeClusterParameters.new
      end)
      service.add_operation(:describe_cluster_security_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeClusterSecurityGroups"
        operation.name = "DescribeClusterSecurityGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClusterSecurityGroupsMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSecurityGroupMessage)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSecurityGroupNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeClusterSecurityGroups.new
      end)
      service.add_operation(:describe_cluster_snapshots, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeClusterSnapshots"
        operation.name = "DescribeClusterSnapshots"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClusterSnapshotsMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotMessage)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshotNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeClusterSnapshots.new
      end)
      service.add_operation(:describe_cluster_subnet_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeClusterSubnetGroups"
        operation.name = "DescribeClusterSubnetGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClusterSubnetGroupsMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSubnetGroupMessage)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSubnetGroupNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeClusterSubnetGroups.new
      end)
      service.add_operation(:describe_cluster_tracks, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeClusterTracks"
        operation.name = "DescribeClusterTracks"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClusterTracksMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TrackListMessage)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterTrackFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeClusterTracks.new
      end)
      service.add_operation(:describe_cluster_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeClusterVersions"
        operation.name = "DescribeClusterVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClusterVersionsMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterVersionsMessage)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeClusterVersions.new
      end)
      service.add_operation(:describe_clusters, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeClusters"
        operation.name = "DescribeClusters"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClustersMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ClustersMessage)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.traits = {"smithy.api#suppress" => ["WaitableTraitInvalidErrorType"]}
        operation[:paginator] = Paginators::DescribeClusters.new
      end)
      service.add_operation(:describe_custom_domain_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeCustomDomainAssociations"
        operation.name = "DescribeCustomDomainAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCustomDomainAssociationsMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainAssociationsMessage)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainAssociationNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeCustomDomainAssociations.new
      end)
      service.add_operation(:describe_data_shares, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeDataShares"
        operation.name = "DescribeDataShares"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDataSharesMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDataSharesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDataShareFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDataShares.new
      end)
      service.add_operation(:describe_data_shares_for_consumer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeDataSharesForConsumer"
        operation.name = "DescribeDataSharesForConsumer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDataSharesForConsumerMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDataSharesForConsumerResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNamespaceFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDataSharesForConsumer.new
      end)
      service.add_operation(:describe_data_shares_for_producer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeDataSharesForProducer"
        operation.name = "DescribeDataSharesForProducer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDataSharesForProducerMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDataSharesForProducerResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNamespaceFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDataSharesForProducer.new
      end)
      service.add_operation(:describe_default_cluster_parameters, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeDefaultClusterParameters"
        operation.name = "DescribeDefaultClusterParameters"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDefaultClusterParametersMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDefaultClusterParametersResult)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDefaultClusterParameters.new
      end)
      service.add_operation(:describe_endpoint_access, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeEndpointAccess"
        operation.name = "DescribeEndpointAccess"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEndpointAccessMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEndpointAccessOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEndpointAccess.new
      end)
      service.add_operation(:describe_endpoint_authorization, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeEndpointAuthorization"
        operation.name = "DescribeEndpointAuthorization"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEndpointAuthorizationMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEndpointAuthorizationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEndpointAuthorization.new
      end)
      service.add_operation(:describe_event_categories, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeEventCategories"
        operation.name = "DescribeEventCategories"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventCategoriesMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: EventCategoriesMessage)
        operation.traits = {}
      end)
      service.add_operation(:describe_event_subscriptions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeEventSubscriptions"
        operation.name = "DescribeEventSubscriptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventSubscriptionsMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: EventSubscriptionsMessage)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEventSubscriptions.new
      end)
      service.add_operation(:describe_events, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeEvents"
        operation.name = "DescribeEvents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventsMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: EventsMessage)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEvents.new
      end)
      service.add_operation(:describe_hsm_client_certificates, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeHsmClientCertificates"
        operation.name = "DescribeHsmClientCertificates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeHsmClientCertificatesMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: HsmClientCertificateMessage)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HsmClientCertificateNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeHsmClientCertificates.new
      end)
      service.add_operation(:describe_hsm_configurations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeHsmConfigurations"
        operation.name = "DescribeHsmConfigurations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeHsmConfigurationsMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: HsmConfigurationMessage)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HsmConfigurationNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeHsmConfigurations.new
      end)
      service.add_operation(:describe_inbound_integrations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeInboundIntegrations"
        operation.name = "DescribeInboundIntegrations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeInboundIntegrationsMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: InboundIntegrationsMessage)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNamespaceFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeInboundIntegrations.new
      end)
      service.add_operation(:describe_integrations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeIntegrations"
        operation.name = "DescribeIntegrations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeIntegrationsMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationsMessage)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeIntegrations.new
      end)
      service.add_operation(:describe_logging_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeLoggingStatus"
        operation.name = "DescribeLoggingStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLoggingStatusMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLoggingStatusOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:describe_node_configuration_options, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeNodeConfigurationOptions"
        operation.name = "DescribeNodeConfigurationOptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeNodeConfigurationOptionsMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: NodeConfigurationOptionsMessage)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessToSnapshotDeniedFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshotNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterSnapshotStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeNodeConfigurationOptions.new
      end)
      service.add_operation(:describe_orderable_cluster_options, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeOrderableClusterOptions"
        operation.name = "DescribeOrderableClusterOptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOrderableClusterOptionsMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: OrderableClusterOptionsMessage)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeOrderableClusterOptions.new
      end)
      service.add_operation(:describe_partners, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribePartners"
        operation.name = "DescribePartners"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePartnersInputMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePartnersOutputMessage)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedPartnerIntegrationFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:describe_redshift_idc_applications, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeRedshiftIdcApplications"
        operation.name = "DescribeRedshiftIdcApplications"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRedshiftIdcApplicationsMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRedshiftIdcApplicationsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceAccessDeniedFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceUnavailableFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftIdcApplicationNotExistsFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeRedshiftIdcApplications.new
      end)
      service.add_operation(:describe_reserved_node_exchange_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeReservedNodeExchangeStatus"
        operation.name = "DescribeReservedNodeExchangeStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReservedNodeExchangeStatusInputMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReservedNodeExchangeStatusOutputMessage)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeExchangeNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeReservedNodeExchangeStatus.new
      end)
      service.add_operation(:describe_reserved_node_offerings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeReservedNodeOfferings"
        operation.name = "DescribeReservedNodeOfferings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReservedNodeOfferingsMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeOfferingsMessage)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceUnavailableFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeOfferingNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeReservedNodeOfferings.new
      end)
      service.add_operation(:describe_reserved_nodes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeReservedNodes"
        operation.name = "DescribeReservedNodes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReservedNodesMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodesMessage)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceUnavailableFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeReservedNodes.new
      end)
      service.add_operation(:describe_resize, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeResize"
        operation.name = "DescribeResize"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeResizeMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeResizeOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResizeNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:describe_scheduled_actions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeScheduledActions"
        operation.name = "DescribeScheduledActions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeScheduledActionsMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionsMessage)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeScheduledActions.new
      end)
      service.add_operation(:describe_snapshot_copy_grants, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeSnapshotCopyGrants"
        operation.name = "DescribeSnapshotCopyGrants"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSnapshotCopyGrantsMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotCopyGrantMessage)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotCopyGrantNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeSnapshotCopyGrants.new
      end)
      service.add_operation(:describe_snapshot_schedules, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeSnapshotSchedules"
        operation.name = "DescribeSnapshotSchedules"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSnapshotSchedulesMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSnapshotSchedulesOutputMessage)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeSnapshotSchedules.new
      end)
      service.add_operation(:describe_storage, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeStorage"
        operation.name = "DescribeStorage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerStorageMessage)
        operation.traits = {}
      end)
      service.add_operation(:describe_table_restore_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeTableRestoreStatus"
        operation.name = "DescribeTableRestoreStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTableRestoreStatusMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TableRestoreStatusMessage)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TableRestoreNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeTableRestoreStatus.new
      end)
      service.add_operation(:describe_tags, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeTags"
        operation.name = "DescribeTags"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTagsMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TaggedResourceListMessage)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeTags.new
      end)
      service.add_operation(:describe_usage_limits, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeUsageLimits"
        operation.name = "DescribeUsageLimits"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUsageLimitsMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUsageLimitsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeUsageLimits.new
      end)
      service.add_operation(:disable_logging, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DisableLogging"
        operation.name = "DisableLogging"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableLoggingMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableLoggingOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:disable_snapshot_copy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DisableSnapshotCopy"
        operation.name = "DisableSnapshotCopy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableSnapshotCopyMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableSnapshotCopyResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotCopyAlreadyDisabledFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_data_share_consumer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DisassociateDataShareConsumer"
        operation.name = "DisassociateDataShareConsumer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateDataShareConsumerMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateDataShareConsumerOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDataShareFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNamespaceFault)
        operation.traits = {}
      end)
      service.add_operation(:enable_logging, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#EnableLogging"
        operation.name = "EnableLogging"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableLoggingMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableLoggingOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BucketNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientS3BucketPolicyFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3BucketNameFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3KeyPrefixFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:enable_snapshot_copy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#EnableSnapshotCopy"
        operation.name = "EnableSnapshotCopy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableSnapshotCopyMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableSnapshotCopyResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CopyToRegionDisabledFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceRequestThrottlingFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IncompatibleOrderableOptions)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRetentionPeriodFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotCopyAlreadyEnabledFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotCopyGrantNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownSnapshotCopyRegionFault)
        operation.traits = {}
      end)
      service.add_operation(:failover_primary_compute, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#FailoverPrimaryCompute"
        operation.name = "FailoverPrimaryCompute"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: FailoverPrimaryComputeInputMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: FailoverPrimaryComputeResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:get_cluster_credentials, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#GetClusterCredentials"
        operation.name = "GetClusterCredentials"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetClusterCredentialsMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetClusterCredentialsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:get_cluster_credentials_with_iam, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#GetClusterCredentialsWithIAM"
        operation.name = "GetClusterCredentialsWithIAM"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetClusterCredentialsWithIAMMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetClusterCredentialsWithIAMOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:get_reserved_node_exchange_configuration_options, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#GetReservedNodeExchangeConfigurationOptions"
        operation.name = "GetReservedNodeExchangeConfigurationOptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReservedNodeExchangeConfigurationOptionsInputMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReservedNodeExchangeConfigurationOptionsOutputMessage)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshotNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceUnavailableFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidReservedNodeStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeAlreadyMigratedFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeOfferingNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
        operation[:paginator] = Paginators::GetReservedNodeExchangeConfigurationOptions.new
      end)
      service.add_operation(:get_reserved_node_exchange_offerings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#GetReservedNodeExchangeOfferings"
        operation.name = "GetReservedNodeExchangeOfferings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReservedNodeExchangeOfferingsInputMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReservedNodeExchangeOfferingsOutputMessage)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceUnavailableFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidReservedNodeStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeAlreadyMigratedFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeOfferingNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
        operation[:paginator] = Paginators::GetReservedNodeExchangeOfferings.new
      end)
      service.add_operation(:get_resource_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#GetResourcePolicy"
        operation.name = "GetResourcePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcePolicyMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcePolicyResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPolicyFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:list_recommendations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ListRecommendations"
        operation.name = "ListRecommendations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRecommendationsMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRecommendationsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
        operation[:paginator] = Paginators::ListRecommendations.new
      end)
      service.add_operation(:modify_aqua_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyAquaConfiguration"
        operation.name = "ModifyAquaConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyAquaInputMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyAquaOutputMessage)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_authentication_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyAuthenticationProfile"
        operation.name = "ModifyAuthenticationProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyAuthenticationProfileMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyAuthenticationProfileResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationProfileNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationProfileQuotaExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAuthenticationProfileRequestFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_cluster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyCluster"
        operation.name = "ModifyCluster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyClusterMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyClusterResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterAlreadyExistsFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterParameterGroupNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSecurityGroupNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CustomCnameAssociationFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceRequestThrottlingFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HsmClientCertificateNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HsmConfigurationNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientClusterCapacityFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterSecurityGroupStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterTrackFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidElasticIpFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRetentionPeriodFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv6CidrBlockNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfNodesPerClusterLimitExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfNodesQuotaExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TableLimitExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOptionFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_cluster_db_revision, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyClusterDbRevision"
        operation.name = "ModifyClusterDbRevision"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyClusterDbRevisionMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyClusterDbRevisionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterOnLatestRevisionFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_cluster_iam_roles, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyClusterIamRoles"
        operation.name = "ModifyClusterIamRoles"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyClusterIamRolesMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyClusterIamRolesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_cluster_maintenance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyClusterMaintenance"
        operation.name = "ModifyClusterMaintenance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyClusterMaintenanceMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyClusterMaintenanceResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_cluster_parameter_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyClusterParameterGroup"
        operation.name = "ModifyClusterParameterGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyClusterParameterGroupMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyClusterParameterGroupOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterParameterGroupNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterParameterGroupStateFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_cluster_snapshot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyClusterSnapshot"
        operation.name = "ModifyClusterSnapshot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyClusterSnapshotMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyClusterSnapshotResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshotNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterSnapshotStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRetentionPeriodFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_cluster_snapshot_schedule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyClusterSnapshotSchedule"
        operation.name = "ModifyClusterSnapshotSchedule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyClusterSnapshotScheduleMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterSnapshotScheduleStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotScheduleNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_cluster_subnet_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyClusterSubnetGroup"
        operation.name = "ModifyClusterSubnetGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyClusterSubnetGroupMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyClusterSubnetGroupResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSubnetGroupNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSubnetQuotaExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceRequestThrottlingFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetAlreadyInUse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        operation.traits = {}
      end)
      service.add_operation(:modify_custom_domain_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyCustomDomainAssociation"
        operation.name = "ModifyCustomDomainAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyCustomDomainAssociationMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyCustomDomainAssociationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CustomCnameAssociationFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainAssociationNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_endpoint_access, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyEndpointAccess"
        operation.name = "ModifyEndpointAccess"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyEndpointAccessMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyEndpointAccessOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterSecurityGroupStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        operation.traits = {}
      end)
      service.add_operation(:modify_event_subscription, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyEventSubscription"
        operation.name = "ModifyEventSubscription"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyEventSubscriptionMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyEventSubscriptionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubscriptionStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SNSInvalidTopicFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SNSNoAuthorizationFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SNSTopicArnNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SourceNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionCategoryNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionEventIdNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionSeverityNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_integration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyIntegration"
        operation.name = "ModifyIntegration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyIntegrationMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyIntegrationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationAlreadyExistsFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationConflictOperationFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationConflictStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_redshift_idc_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyRedshiftIdcApplication"
        operation.name = "ModifyRedshiftIdcApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyRedshiftIdcApplicationMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyRedshiftIdcApplicationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceAccessDeniedFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceUnavailableFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftIdcApplicationNotExistsFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_scheduled_action, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyScheduledAction"
        operation.name = "ModifyScheduledAction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyScheduledActionMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyScheduledActionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidScheduledActionFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidScheduleFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionTypeUnsupportedFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_snapshot_copy_retention_period, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifySnapshotCopyRetentionPeriod"
        operation.name = "ModifySnapshotCopyRetentionPeriod"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifySnapshotCopyRetentionPeriodMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifySnapshotCopyRetentionPeriodResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRetentionPeriodFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotCopyDisabledFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        operation.traits = {}
      end)
      service.add_operation(:modify_snapshot_schedule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifySnapshotSchedule"
        operation.name = "ModifySnapshotSchedule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifySnapshotScheduleMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifySnapshotScheduleOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidScheduleFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotScheduleNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotScheduleUpdateInProgressFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_usage_limit, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyUsageLimit"
        operation.name = "ModifyUsageLimit"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyUsageLimitMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyUsageLimitOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidUsageLimitFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:pause_cluster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#PauseCluster"
        operation.name = "PauseCluster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PauseClusterInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PauseClusterResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:purchase_reserved_node_offering, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#PurchaseReservedNodeOffering"
        operation.name = "PurchaseReservedNodeOffering"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PurchaseReservedNodeOfferingMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PurchaseReservedNodeOfferingResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeAlreadyExistsFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeOfferingNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeQuotaExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:put_resource_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictPolicyUpdateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPolicyFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:reboot_cluster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#RebootCluster"
        operation.name = "RebootCluster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RebootClusterMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RebootClusterResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.traits = {}
      end)
      service.add_operation(:register_namespace, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#RegisterNamespace"
        operation.name = "RegisterNamespace"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterNamespaceInputMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterNamespaceOutputMessage)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNamespaceFault)
        operation.traits = {}
      end)
      service.add_operation(:reject_data_share, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#RejectDataShare"
        operation.name = "RejectDataShare"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RejectDataShareMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RejectDataShareOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDataShareFault)
        operation.traits = {}
      end)
      service.add_operation(:reset_cluster_parameter_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ResetClusterParameterGroup"
        operation.name = "ResetClusterParameterGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ResetClusterParameterGroupMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ResetClusterParameterGroupOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterParameterGroupNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterParameterGroupStateFault)
        operation.traits = {}
      end)
      service.add_operation(:resize_cluster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ResizeCluster"
        operation.name = "ResizeCluster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ResizeClusterInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ResizeClusterResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceUnavailableFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientClusterCapacityFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidReservedNodeStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfNodesPerClusterLimitExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfNodesQuotaExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeAlreadyExistsFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeAlreadyMigratedFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeOfferingNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOptionFault)
        operation.traits = {}
      end)
      service.add_operation(:restore_from_cluster_snapshot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#RestoreFromClusterSnapshot"
        operation.name = "RestoreFromClusterSnapshot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreFromClusterSnapshotMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreFromClusterSnapshotResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessToSnapshotDeniedFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterAlreadyExistsFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterParameterGroupNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterQuotaExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSecurityGroupNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshotNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSubnetGroupNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceRequestThrottlingFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceUnavailableFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HsmClientCertificateNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HsmConfigurationNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientClusterCapacityFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterSnapshotStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterSubnetGroupStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterTrackFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidElasticIpFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidReservedNodeStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRestoreFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv6CidrBlockNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfNodesPerClusterLimitExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfNodesQuotaExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeAlreadyExistsFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeAlreadyMigratedFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeOfferingNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotScheduleNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagLimitExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:restore_table_from_cluster_snapshot, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#RestoreTableFromClusterSnapshot"
        operation.name = "RestoreTableFromClusterSnapshot"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreTableFromClusterSnapshotMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreTableFromClusterSnapshotResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshotNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InProgressTableRestoreQuotaExceededFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterSnapshotStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTableRestoreArgumentFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:resume_cluster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ResumeCluster"
        operation.name = "ResumeCluster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ResumeClusterInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ResumeClusterResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientClusterCapacityFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:revoke_cluster_security_group_ingress, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#RevokeClusterSecurityGroupIngress"
        operation.name = "RevokeClusterSecurityGroupIngress"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RevokeClusterSecurityGroupIngressMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RevokeClusterSecurityGroupIngressResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSecurityGroupNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterSecurityGroupStateFault)
        operation.traits = {}
      end)
      service.add_operation(:revoke_endpoint_access, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#RevokeEndpointAccess"
        operation.name = "RevokeEndpointAccess"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RevokeEndpointAccessMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RevokeEndpointAccessOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointAuthorizationNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAuthorizationStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterSecurityGroupStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointStateFault)
        operation.traits = {}
      end)
      service.add_operation(:revoke_snapshot_access, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#RevokeSnapshotAccess"
        operation.name = "RevokeSnapshotAccess"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RevokeSnapshotAccessMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RevokeSnapshotAccessResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessToSnapshotDeniedFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshotNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:rotate_encryption_key, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#RotateEncryptionKey"
        operation.name = "RotateEncryptionKey"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RotateEncryptionKeyMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RotateEncryptionKeyResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceRequestThrottlingFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:update_partner_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#UpdatePartnerStatus"
        operation.name = "UpdatePartnerStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePartnerStatusInputMessage)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePartnerStatusOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerNotFoundFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedPartnerIntegrationFault)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
