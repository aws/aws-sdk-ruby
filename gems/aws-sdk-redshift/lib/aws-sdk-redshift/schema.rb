# frozen_string_literal: true

# This is generated code!

module Aws::Redshift
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AcceptReservedNodeExchangeInputMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AcceptReservedNodeExchangeInputMessage', name: 'AcceptReservedNodeExchangeInputMessage')
    AcceptReservedNodeExchangeOutputMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AcceptReservedNodeExchangeOutputMessage', name: 'AcceptReservedNodeExchangeOutputMessage')
    AccessToClusterDeniedFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AccessToClusterDeniedFault', name: 'AccessToClusterDeniedFault', traits: {"aws.protocols#awsQueryError" => {"code" => "AccessToClusterDenied", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AccessToSnapshotDeniedFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AccessToSnapshotDeniedFault', name: 'AccessToSnapshotDeniedFault', traits: {"aws.protocols#awsQueryError" => {"code" => "AccessToSnapshotDenied", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AccountAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AccountAttribute', name: 'AccountAttribute')
    AccountWithRestoreAccess = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AccountWithRestoreAccess', name: 'AccountWithRestoreAccess')
    AccountsWithRestoreAccessList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#AccountsWithRestoreAccessList', name: 'AccountsWithRestoreAccessList')
    ActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#ActionType', name: 'ActionType')
    AddPartnerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AddPartnerInput', name: 'AddPartnerInput')
    AddPartnerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AddPartnerOutput', name: 'AddPartnerOutput')
    AquaConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AquaConfiguration', name: 'AquaConfiguration')
    AquaConfigurationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#AquaConfigurationStatus', name: 'AquaConfigurationStatus')
    AquaStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#AquaStatus', name: 'AquaStatus')
    AssociateDataShareConsumerMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AssociateDataShareConsumerMessage', name: 'AssociateDataShareConsumerMessage')
    AssociateDataShareConsumerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AssociateDataShareConsumerOutput', name: 'AssociateDataShareConsumerOutput')
    AssociatedClusterList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#AssociatedClusterList', name: 'AssociatedClusterList')
    Association = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#Association', name: 'Association')
    AssociationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#AssociationList', name: 'AssociationList')
    AttributeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#AttributeList', name: 'AttributeList')
    AttributeNameList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#AttributeNameList', name: 'AttributeNameList')
    AttributeValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#AttributeValueList', name: 'AttributeValueList')
    AttributeValueTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AttributeValueTarget', name: 'AttributeValueTarget')
    AuthenticationProfile = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AuthenticationProfile', name: 'AuthenticationProfile')
    AuthenticationProfileAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AuthenticationProfileAlreadyExistsFault', name: 'AuthenticationProfileAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "AuthenticationProfileAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AuthenticationProfileList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#AuthenticationProfileList', name: 'AuthenticationProfileList')
    AuthenticationProfileNameString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshift#AuthenticationProfileNameString', name: 'AuthenticationProfileNameString', traits: {"smithy.api#length" => {"min" => 0, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-]+$"})
    AuthenticationProfileNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AuthenticationProfileNotFoundFault', name: 'AuthenticationProfileNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "AuthenticationProfileNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    AuthenticationProfileQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AuthenticationProfileQuotaExceededFault', name: 'AuthenticationProfileQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "AuthenticationProfileQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AuthorizationAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AuthorizationAlreadyExistsFault', name: 'AuthorizationAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "AuthorizationAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AuthorizationNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AuthorizationNotFoundFault', name: 'AuthorizationNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "AuthorizationNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    AuthorizationQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AuthorizationQuotaExceededFault', name: 'AuthorizationQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "AuthorizationQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AuthorizationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#AuthorizationStatus', name: 'AuthorizationStatus')
    AuthorizeClusterSecurityGroupIngressMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AuthorizeClusterSecurityGroupIngressMessage', name: 'AuthorizeClusterSecurityGroupIngressMessage')
    AuthorizeClusterSecurityGroupIngressResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AuthorizeClusterSecurityGroupIngressResult', name: 'AuthorizeClusterSecurityGroupIngressResult')
    AuthorizeDataShareMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AuthorizeDataShareMessage', name: 'AuthorizeDataShareMessage')
    AuthorizeDataShareOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AuthorizeDataShareOutput', name: 'AuthorizeDataShareOutput')
    AuthorizeEndpointAccessMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AuthorizeEndpointAccessMessage', name: 'AuthorizeEndpointAccessMessage')
    AuthorizeEndpointAccessOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AuthorizeEndpointAccessOutput', name: 'AuthorizeEndpointAccessOutput')
    AuthorizeSnapshotAccessMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AuthorizeSnapshotAccessMessage', name: 'AuthorizeSnapshotAccessMessage')
    AuthorizeSnapshotAccessResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AuthorizeSnapshotAccessResult', name: 'AuthorizeSnapshotAccessResult')
    AuthorizedAudienceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#AuthorizedAudienceList', name: 'AuthorizedAudienceList')
    AuthorizedTokenIssuer = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AuthorizedTokenIssuer', name: 'AuthorizedTokenIssuer')
    AuthorizedTokenIssuerList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#AuthorizedTokenIssuerList', name: 'AuthorizedTokenIssuerList')
    AvailabilityZone = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#AvailabilityZone', name: 'AvailabilityZone')
    AvailabilityZoneList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#AvailabilityZoneList', name: 'AvailabilityZoneList')
    BatchDeleteClusterSnapshotsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#BatchDeleteClusterSnapshotsRequest', name: 'BatchDeleteClusterSnapshotsRequest')
    BatchDeleteClusterSnapshotsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#BatchDeleteClusterSnapshotsResult', name: 'BatchDeleteClusterSnapshotsResult')
    BatchDeleteRequestSizeExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#BatchDeleteRequestSizeExceededFault', name: 'BatchDeleteRequestSizeExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "BatchDeleteRequestSizeExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BatchModifyClusterSnapshotsLimitExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#BatchModifyClusterSnapshotsLimitExceededFault', name: 'BatchModifyClusterSnapshotsLimitExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "BatchModifyClusterSnapshotsLimitExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BatchModifyClusterSnapshotsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#BatchModifyClusterSnapshotsMessage', name: 'BatchModifyClusterSnapshotsMessage')
    BatchModifyClusterSnapshotsOutputMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#BatchModifyClusterSnapshotsOutputMessage', name: 'BatchModifyClusterSnapshotsOutputMessage')
    BatchSnapshotOperationErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#BatchSnapshotOperationErrorList', name: 'BatchSnapshotOperationErrorList')
    BatchSnapshotOperationErrors = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#BatchSnapshotOperationErrors', name: 'BatchSnapshotOperationErrors')
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.redshift#Boolean', name: 'Boolean')
    BooleanOptional = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.redshift#BooleanOptional', name: 'BooleanOptional')
    BucketNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#BucketNotFoundFault', name: 'BucketNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "BucketNotFoundFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CancelResizeMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CancelResizeMessage', name: 'CancelResizeMessage')
    CancelResizeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CancelResizeOutput', name: 'CancelResizeOutput')
    CertificateAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CertificateAssociation', name: 'CertificateAssociation')
    CertificateAssociationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#CertificateAssociationList', name: 'CertificateAssociationList')
    Cluster = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#Cluster', name: 'Cluster')
    ClusterAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterAlreadyExistsFault', name: 'ClusterAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClusterAssociatedToSchedule = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterAssociatedToSchedule', name: 'ClusterAssociatedToSchedule')
    ClusterDbRevision = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterDbRevision', name: 'ClusterDbRevision')
    ClusterDbRevisionsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ClusterDbRevisionsList', name: 'ClusterDbRevisionsList')
    ClusterDbRevisionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterDbRevisionsMessage', name: 'ClusterDbRevisionsMessage')
    ClusterIamRole = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterIamRole', name: 'ClusterIamRole')
    ClusterIamRoleList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ClusterIamRoleList', name: 'ClusterIamRoleList')
    ClusterList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ClusterList', name: 'ClusterList')
    ClusterNode = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterNode', name: 'ClusterNode')
    ClusterNodesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ClusterNodesList', name: 'ClusterNodesList')
    ClusterNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterNotFoundFault', name: 'ClusterNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ClusterOnLatestRevisionFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterOnLatestRevisionFault', name: 'ClusterOnLatestRevisionFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterOnLatestRevision", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClusterParameterGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterParameterGroup', name: 'ClusterParameterGroup')
    ClusterParameterGroupAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterParameterGroupAlreadyExistsFault', name: 'ClusterParameterGroupAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterParameterGroupAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClusterParameterGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterParameterGroupNotFoundFault', name: 'ClusterParameterGroupNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterParameterGroupNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ClusterParameterGroupQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterParameterGroupQuotaExceededFault', name: 'ClusterParameterGroupQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterParameterGroupQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClusterParameterGroupStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterParameterGroupStatus', name: 'ClusterParameterGroupStatus')
    ClusterParameterGroupStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ClusterParameterGroupStatusList', name: 'ClusterParameterGroupStatusList')
    ClusterParameterGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterParameterGroupsMessage', name: 'ClusterParameterGroupsMessage')
    ClusterParameterStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterParameterStatus', name: 'ClusterParameterStatus')
    ClusterParameterStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ClusterParameterStatusList', name: 'ClusterParameterStatusList')
    ClusterQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterQuotaExceededFault', name: 'ClusterQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClusterSecurityGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterSecurityGroup', name: 'ClusterSecurityGroup')
    ClusterSecurityGroupAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterSecurityGroupAlreadyExistsFault', name: 'ClusterSecurityGroupAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterSecurityGroupAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClusterSecurityGroupMembership = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterSecurityGroupMembership', name: 'ClusterSecurityGroupMembership')
    ClusterSecurityGroupMembershipList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ClusterSecurityGroupMembershipList', name: 'ClusterSecurityGroupMembershipList')
    ClusterSecurityGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterSecurityGroupMessage', name: 'ClusterSecurityGroupMessage')
    ClusterSecurityGroupNameList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ClusterSecurityGroupNameList', name: 'ClusterSecurityGroupNameList')
    ClusterSecurityGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterSecurityGroupNotFoundFault', name: 'ClusterSecurityGroupNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterSecurityGroupNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ClusterSecurityGroupQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterSecurityGroupQuotaExceededFault', name: 'ClusterSecurityGroupQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "QuotaExceeded.ClusterSecurityGroup", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClusterSecurityGroups = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ClusterSecurityGroups', name: 'ClusterSecurityGroups')
    ClusterSnapshotAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterSnapshotAlreadyExistsFault', name: 'ClusterSnapshotAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterSnapshotAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClusterSnapshotCopyStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterSnapshotCopyStatus', name: 'ClusterSnapshotCopyStatus')
    ClusterSnapshotNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterSnapshotNotFoundFault', name: 'ClusterSnapshotNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterSnapshotNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ClusterSnapshotQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterSnapshotQuotaExceededFault', name: 'ClusterSnapshotQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterSnapshotQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClusterSubnetGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterSubnetGroup', name: 'ClusterSubnetGroup')
    ClusterSubnetGroupAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterSubnetGroupAlreadyExistsFault', name: 'ClusterSubnetGroupAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterSubnetGroupAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClusterSubnetGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterSubnetGroupMessage', name: 'ClusterSubnetGroupMessage')
    ClusterSubnetGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterSubnetGroupNotFoundFault', name: 'ClusterSubnetGroupNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterSubnetGroupNotFoundFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClusterSubnetGroupQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterSubnetGroupQuotaExceededFault', name: 'ClusterSubnetGroupQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterSubnetGroupQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClusterSubnetGroups = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ClusterSubnetGroups', name: 'ClusterSubnetGroups')
    ClusterSubnetQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterSubnetQuotaExceededFault', name: 'ClusterSubnetQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ClusterSubnetQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClusterVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterVersion', name: 'ClusterVersion')
    ClusterVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ClusterVersionList', name: 'ClusterVersionList')
    ClusterVersionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClusterVersionsMessage', name: 'ClusterVersionsMessage')
    ClustersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ClustersMessage', name: 'ClustersMessage')
    ConflictPolicyUpdateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ConflictPolicyUpdateFault', name: 'ConflictPolicyUpdateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ConflictPolicyUpdateFault", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConsumerIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ConsumerIdentifierList', name: 'ConsumerIdentifierList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    CopyClusterSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CopyClusterSnapshotMessage', name: 'CopyClusterSnapshotMessage')
    CopyClusterSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CopyClusterSnapshotResult', name: 'CopyClusterSnapshotResult')
    CopyToRegionDisabledFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CopyToRegionDisabledFault', name: 'CopyToRegionDisabledFault', traits: {"aws.protocols#awsQueryError" => {"code" => "CopyToRegionDisabledFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CreateAuthenticationProfileMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateAuthenticationProfileMessage', name: 'CreateAuthenticationProfileMessage')
    CreateAuthenticationProfileResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateAuthenticationProfileResult', name: 'CreateAuthenticationProfileResult')
    CreateClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateClusterMessage', name: 'CreateClusterMessage')
    CreateClusterParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateClusterParameterGroupMessage', name: 'CreateClusterParameterGroupMessage')
    CreateClusterParameterGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateClusterParameterGroupResult', name: 'CreateClusterParameterGroupResult')
    CreateClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateClusterResult', name: 'CreateClusterResult')
    CreateClusterSecurityGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateClusterSecurityGroupMessage', name: 'CreateClusterSecurityGroupMessage')
    CreateClusterSecurityGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateClusterSecurityGroupResult', name: 'CreateClusterSecurityGroupResult')
    CreateClusterSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateClusterSnapshotMessage', name: 'CreateClusterSnapshotMessage')
    CreateClusterSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateClusterSnapshotResult', name: 'CreateClusterSnapshotResult')
    CreateClusterSubnetGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateClusterSubnetGroupMessage', name: 'CreateClusterSubnetGroupMessage')
    CreateClusterSubnetGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateClusterSubnetGroupResult', name: 'CreateClusterSubnetGroupResult')
    CreateCustomDomainAssociationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateCustomDomainAssociationMessage', name: 'CreateCustomDomainAssociationMessage')
    CreateCustomDomainAssociationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateCustomDomainAssociationResult', name: 'CreateCustomDomainAssociationResult')
    CreateEndpointAccessMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateEndpointAccessMessage', name: 'CreateEndpointAccessMessage')
    CreateEndpointAccessOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateEndpointAccessOutput', name: 'CreateEndpointAccessOutput')
    CreateEventSubscriptionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateEventSubscriptionMessage', name: 'CreateEventSubscriptionMessage')
    CreateEventSubscriptionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateEventSubscriptionResult', name: 'CreateEventSubscriptionResult')
    CreateHsmClientCertificateMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateHsmClientCertificateMessage', name: 'CreateHsmClientCertificateMessage')
    CreateHsmClientCertificateResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateHsmClientCertificateResult', name: 'CreateHsmClientCertificateResult')
    CreateHsmConfigurationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateHsmConfigurationMessage', name: 'CreateHsmConfigurationMessage')
    CreateHsmConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateHsmConfigurationResult', name: 'CreateHsmConfigurationResult')
    CreateIntegrationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateIntegrationMessage', name: 'CreateIntegrationMessage')
    CreateIntegrationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateIntegrationOutput', name: 'CreateIntegrationOutput')
    CreateRedshiftIdcApplicationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateRedshiftIdcApplicationMessage', name: 'CreateRedshiftIdcApplicationMessage')
    CreateRedshiftIdcApplicationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateRedshiftIdcApplicationResult', name: 'CreateRedshiftIdcApplicationResult')
    CreateScheduledActionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateScheduledActionMessage', name: 'CreateScheduledActionMessage')
    CreateScheduledActionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateScheduledActionOutput', name: 'CreateScheduledActionOutput')
    CreateSnapshotCopyGrantMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateSnapshotCopyGrantMessage', name: 'CreateSnapshotCopyGrantMessage')
    CreateSnapshotCopyGrantResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateSnapshotCopyGrantResult', name: 'CreateSnapshotCopyGrantResult')
    CreateSnapshotScheduleMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateSnapshotScheduleMessage', name: 'CreateSnapshotScheduleMessage')
    CreateSnapshotScheduleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateSnapshotScheduleOutput', name: 'CreateSnapshotScheduleOutput')
    CreateTagsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateTagsMessage', name: 'CreateTagsMessage')
    CreateUsageLimitMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateUsageLimitMessage', name: 'CreateUsageLimitMessage')
    CreateUsageLimitOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CreateUsageLimitOutput', name: 'CreateUsageLimitOutput')
    CustomCnameAssociationFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CustomCnameAssociationFault', name: 'CustomCnameAssociationFault', traits: {"aws.protocols#awsQueryError" => {"code" => "CustomCnameAssociationFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CustomDomainAssociationNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CustomDomainAssociationNotFoundFault', name: 'CustomDomainAssociationNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "CustomDomainAssociationNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    CustomDomainAssociationsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CustomDomainAssociationsMessage', name: 'CustomDomainAssociationsMessage')
    CustomDomainCertificateArnString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshift#CustomDomainCertificateArnString', name: 'CustomDomainCertificateArnString', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[\\w+=/,.@-]+:acm:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=,.@-]+)*$"})
    CustomDomainNameString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshift#CustomDomainNameString', name: 'CustomDomainNameString', traits: {"smithy.api#length" => {"min" => 1, "max" => 253}, "smithy.api#pattern" => "^(((?!-)[A-Za-z0-9-]{0,62}[A-Za-z0-9])\\.)+((?!-)[A-Za-z0-9-]{1,62}[A-Za-z0-9])$"})
    CustomerStorageMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#CustomerStorageMessage', name: 'CustomerStorageMessage')
    DataShare = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DataShare', name: 'DataShare')
    DataShareAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DataShareAssociation', name: 'DataShareAssociation')
    DataShareAssociationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#DataShareAssociationList', name: 'DataShareAssociationList')
    DataShareList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#DataShareList', name: 'DataShareList')
    DataShareStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#DataShareStatus', name: 'DataShareStatus')
    DataShareStatusForConsumer = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#DataShareStatusForConsumer', name: 'DataShareStatusForConsumer')
    DataShareStatusForProducer = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#DataShareStatusForProducer', name: 'DataShareStatusForProducer')
    DataShareType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#DataShareType', name: 'DataShareType')
    DataTransferProgress = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DataTransferProgress', name: 'DataTransferProgress')
    DbGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#DbGroupList', name: 'DbGroupList')
    DeauthorizeDataShareMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeauthorizeDataShareMessage', name: 'DeauthorizeDataShareMessage')
    DeauthorizeDataShareOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeauthorizeDataShareOutput', name: 'DeauthorizeDataShareOutput')
    DefaultClusterParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DefaultClusterParameters', name: 'DefaultClusterParameters')
    DeferredMaintenanceWindow = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeferredMaintenanceWindow', name: 'DeferredMaintenanceWindow')
    DeferredMaintenanceWindowsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#DeferredMaintenanceWindowsList', name: 'DeferredMaintenanceWindowsList')
    DeleteAuthenticationProfileMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteAuthenticationProfileMessage', name: 'DeleteAuthenticationProfileMessage')
    DeleteAuthenticationProfileResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteAuthenticationProfileResult', name: 'DeleteAuthenticationProfileResult')
    DeleteClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteClusterMessage', name: 'DeleteClusterMessage')
    DeleteClusterParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteClusterParameterGroupMessage', name: 'DeleteClusterParameterGroupMessage')
    DeleteClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteClusterResult', name: 'DeleteClusterResult')
    DeleteClusterSecurityGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteClusterSecurityGroupMessage', name: 'DeleteClusterSecurityGroupMessage')
    DeleteClusterSnapshotInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteClusterSnapshotInput', name: 'DeleteClusterSnapshotInput')
    DeleteClusterSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteClusterSnapshotMessage', name: 'DeleteClusterSnapshotMessage')
    DeleteClusterSnapshotMessageList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#DeleteClusterSnapshotMessageList', name: 'DeleteClusterSnapshotMessageList')
    DeleteClusterSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteClusterSnapshotResult', name: 'DeleteClusterSnapshotResult')
    DeleteClusterSubnetGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteClusterSubnetGroupMessage', name: 'DeleteClusterSubnetGroupMessage')
    DeleteCustomDomainAssociationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteCustomDomainAssociationMessage', name: 'DeleteCustomDomainAssociationMessage')
    DeleteEndpointAccessMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteEndpointAccessMessage', name: 'DeleteEndpointAccessMessage')
    DeleteEndpointAccessOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteEndpointAccessOutput', name: 'DeleteEndpointAccessOutput')
    DeleteEventSubscriptionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteEventSubscriptionMessage', name: 'DeleteEventSubscriptionMessage')
    DeleteHsmClientCertificateMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteHsmClientCertificateMessage', name: 'DeleteHsmClientCertificateMessage')
    DeleteHsmConfigurationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteHsmConfigurationMessage', name: 'DeleteHsmConfigurationMessage')
    DeleteIntegrationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteIntegrationMessage', name: 'DeleteIntegrationMessage')
    DeleteIntegrationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteIntegrationOutput', name: 'DeleteIntegrationOutput')
    DeletePartnerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeletePartnerInput', name: 'DeletePartnerInput')
    DeletePartnerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeletePartnerOutput', name: 'DeletePartnerOutput')
    DeleteRedshiftIdcApplicationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteRedshiftIdcApplicationMessage', name: 'DeleteRedshiftIdcApplicationMessage')
    DeleteResourcePolicyMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteResourcePolicyMessage', name: 'DeleteResourcePolicyMessage')
    DeleteScheduledActionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteScheduledActionMessage', name: 'DeleteScheduledActionMessage')
    DeleteSnapshotCopyGrantMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteSnapshotCopyGrantMessage', name: 'DeleteSnapshotCopyGrantMessage')
    DeleteSnapshotScheduleMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteSnapshotScheduleMessage', name: 'DeleteSnapshotScheduleMessage')
    DeleteTagsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteTagsMessage', name: 'DeleteTagsMessage')
    DeleteUsageLimitMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeleteUsageLimitMessage', name: 'DeleteUsageLimitMessage')
    DependentServiceAccessDeniedFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DependentServiceAccessDeniedFault', name: 'DependentServiceAccessDeniedFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DependentServiceAccessDenied", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    DependentServiceRequestThrottlingFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DependentServiceRequestThrottlingFault', name: 'DependentServiceRequestThrottlingFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DependentServiceRequestThrottlingFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DependentServiceUnavailableFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DependentServiceUnavailableFault', name: 'DependentServiceUnavailableFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DependentServiceUnavailableFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DeregisterNamespaceInputMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeregisterNamespaceInputMessage', name: 'DeregisterNamespaceInputMessage')
    DeregisterNamespaceOutputMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DeregisterNamespaceOutputMessage', name: 'DeregisterNamespaceOutputMessage')
    DescribeAccountAttributesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeAccountAttributesMessage', name: 'DescribeAccountAttributesMessage')
    DescribeAccountAttributesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeAccountAttributesOutput', name: 'DescribeAccountAttributesOutput')
    DescribeAuthenticationProfilesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeAuthenticationProfilesMessage', name: 'DescribeAuthenticationProfilesMessage')
    DescribeAuthenticationProfilesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeAuthenticationProfilesResult', name: 'DescribeAuthenticationProfilesResult')
    DescribeClusterDbRevisionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeClusterDbRevisionsMessage', name: 'DescribeClusterDbRevisionsMessage')
    DescribeClusterParameterGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeClusterParameterGroupsMessage', name: 'DescribeClusterParameterGroupsMessage')
    DescribeClusterParametersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeClusterParametersMessage', name: 'DescribeClusterParametersMessage')
    DescribeClusterParametersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeClusterParametersOutput', name: 'DescribeClusterParametersOutput')
    DescribeClusterSecurityGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeClusterSecurityGroupsMessage', name: 'DescribeClusterSecurityGroupsMessage')
    DescribeClusterSnapshotsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeClusterSnapshotsMessage', name: 'DescribeClusterSnapshotsMessage')
    DescribeClusterSubnetGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeClusterSubnetGroupsMessage', name: 'DescribeClusterSubnetGroupsMessage')
    DescribeClusterTracksMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeClusterTracksMessage', name: 'DescribeClusterTracksMessage')
    DescribeClusterVersionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeClusterVersionsMessage', name: 'DescribeClusterVersionsMessage')
    DescribeClustersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeClustersMessage', name: 'DescribeClustersMessage')
    DescribeCustomDomainAssociationsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeCustomDomainAssociationsMessage', name: 'DescribeCustomDomainAssociationsMessage')
    DescribeDataSharesForConsumerMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeDataSharesForConsumerMessage', name: 'DescribeDataSharesForConsumerMessage')
    DescribeDataSharesForConsumerResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeDataSharesForConsumerResult', name: 'DescribeDataSharesForConsumerResult')
    DescribeDataSharesForProducerMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeDataSharesForProducerMessage', name: 'DescribeDataSharesForProducerMessage')
    DescribeDataSharesForProducerResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeDataSharesForProducerResult', name: 'DescribeDataSharesForProducerResult')
    DescribeDataSharesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeDataSharesMessage', name: 'DescribeDataSharesMessage')
    DescribeDataSharesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeDataSharesResult', name: 'DescribeDataSharesResult')
    DescribeDefaultClusterParametersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeDefaultClusterParametersMessage', name: 'DescribeDefaultClusterParametersMessage')
    DescribeDefaultClusterParametersResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeDefaultClusterParametersResult', name: 'DescribeDefaultClusterParametersResult')
    DescribeEndpointAccessMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeEndpointAccessMessage', name: 'DescribeEndpointAccessMessage')
    DescribeEndpointAccessOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeEndpointAccessOutput', name: 'DescribeEndpointAccessOutput')
    DescribeEndpointAuthorizationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeEndpointAuthorizationMessage', name: 'DescribeEndpointAuthorizationMessage')
    DescribeEndpointAuthorizationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeEndpointAuthorizationOutput', name: 'DescribeEndpointAuthorizationOutput')
    DescribeEventCategoriesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeEventCategoriesMessage', name: 'DescribeEventCategoriesMessage')
    DescribeEventSubscriptionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeEventSubscriptionsMessage', name: 'DescribeEventSubscriptionsMessage')
    DescribeEventsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeEventsMessage', name: 'DescribeEventsMessage')
    DescribeHsmClientCertificatesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeHsmClientCertificatesMessage', name: 'DescribeHsmClientCertificatesMessage')
    DescribeHsmConfigurationsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeHsmConfigurationsMessage', name: 'DescribeHsmConfigurationsMessage')
    DescribeInboundIntegrationsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeInboundIntegrationsMessage', name: 'DescribeInboundIntegrationsMessage')
    DescribeIntegrationsFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeIntegrationsFilter', name: 'DescribeIntegrationsFilter')
    DescribeIntegrationsFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#DescribeIntegrationsFilterList', name: 'DescribeIntegrationsFilterList')
    DescribeIntegrationsFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#DescribeIntegrationsFilterName', name: 'DescribeIntegrationsFilterName')
    DescribeIntegrationsFilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#DescribeIntegrationsFilterValueList', name: 'DescribeIntegrationsFilterValueList')
    DescribeIntegrationsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeIntegrationsMessage', name: 'DescribeIntegrationsMessage')
    DescribeLoggingStatusMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeLoggingStatusMessage', name: 'DescribeLoggingStatusMessage')
    DescribeLoggingStatusOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeLoggingStatusOutput', name: 'DescribeLoggingStatusOutput')
    DescribeNodeConfigurationOptionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeNodeConfigurationOptionsMessage', name: 'DescribeNodeConfigurationOptionsMessage')
    DescribeOrderableClusterOptionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeOrderableClusterOptionsMessage', name: 'DescribeOrderableClusterOptionsMessage')
    DescribePartnersInputMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribePartnersInputMessage', name: 'DescribePartnersInputMessage')
    DescribePartnersOutputMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribePartnersOutputMessage', name: 'DescribePartnersOutputMessage')
    DescribeRedshiftIdcApplicationsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeRedshiftIdcApplicationsMessage', name: 'DescribeRedshiftIdcApplicationsMessage')
    DescribeRedshiftIdcApplicationsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeRedshiftIdcApplicationsResult', name: 'DescribeRedshiftIdcApplicationsResult')
    DescribeReservedNodeExchangeStatusInputMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeReservedNodeExchangeStatusInputMessage', name: 'DescribeReservedNodeExchangeStatusInputMessage')
    DescribeReservedNodeExchangeStatusOutputMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeReservedNodeExchangeStatusOutputMessage', name: 'DescribeReservedNodeExchangeStatusOutputMessage')
    DescribeReservedNodeOfferingsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeReservedNodeOfferingsMessage', name: 'DescribeReservedNodeOfferingsMessage')
    DescribeReservedNodesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeReservedNodesMessage', name: 'DescribeReservedNodesMessage')
    DescribeResizeMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeResizeMessage', name: 'DescribeResizeMessage')
    DescribeResizeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeResizeOutput', name: 'DescribeResizeOutput')
    DescribeScheduledActionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeScheduledActionsMessage', name: 'DescribeScheduledActionsMessage')
    DescribeSnapshotCopyGrantsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeSnapshotCopyGrantsMessage', name: 'DescribeSnapshotCopyGrantsMessage')
    DescribeSnapshotSchedulesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeSnapshotSchedulesMessage', name: 'DescribeSnapshotSchedulesMessage')
    DescribeSnapshotSchedulesOutputMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeSnapshotSchedulesOutputMessage', name: 'DescribeSnapshotSchedulesOutputMessage')
    DescribeTableRestoreStatusMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeTableRestoreStatusMessage', name: 'DescribeTableRestoreStatusMessage')
    DescribeTagsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeTagsMessage', name: 'DescribeTagsMessage')
    DescribeUsageLimitsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeUsageLimitsMessage', name: 'DescribeUsageLimitsMessage')
    DescribeUsageLimitsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DescribeUsageLimitsOutput', name: 'DescribeUsageLimitsOutput')
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshift#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^.*$"})
    DisableLoggingMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DisableLoggingMessage', name: 'DisableLoggingMessage')
    DisableLoggingOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DisableLoggingOutput', name: 'DisableLoggingOutput')
    DisableSnapshotCopyMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DisableSnapshotCopyMessage', name: 'DisableSnapshotCopyMessage')
    DisableSnapshotCopyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DisableSnapshotCopyResult', name: 'DisableSnapshotCopyResult')
    DisassociateDataShareConsumerMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DisassociateDataShareConsumerMessage', name: 'DisassociateDataShareConsumerMessage')
    DisassociateDataShareConsumerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#DisassociateDataShareConsumerOutput', name: 'DisassociateDataShareConsumerOutput')
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.redshift#Double', name: 'Double')
    DoubleOptional = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.redshift#DoubleOptional', name: 'DoubleOptional')
    EC2SecurityGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#EC2SecurityGroup', name: 'EC2SecurityGroup')
    EC2SecurityGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#EC2SecurityGroupList', name: 'EC2SecurityGroupList')
    ElasticIpStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ElasticIpStatus', name: 'ElasticIpStatus')
    EligibleTracksToUpdateList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#EligibleTracksToUpdateList', name: 'EligibleTracksToUpdateList')
    EnableLoggingMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#EnableLoggingMessage', name: 'EnableLoggingMessage')
    EnableLoggingOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#EnableLoggingOutput', name: 'EnableLoggingOutput')
    EnableSnapshotCopyMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#EnableSnapshotCopyMessage', name: 'EnableSnapshotCopyMessage')
    EnableSnapshotCopyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#EnableSnapshotCopyResult', name: 'EnableSnapshotCopyResult')
    EncryptionContextMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.redshift#EncryptionContextMap', name: 'EncryptionContextMap')
    Endpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#Endpoint', name: 'Endpoint')
    EndpointAccess = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#EndpointAccess', name: 'EndpointAccess')
    EndpointAccesses = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#EndpointAccesses', name: 'EndpointAccesses')
    EndpointAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#EndpointAlreadyExistsFault', name: 'EndpointAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "EndpointAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EndpointAuthorization = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#EndpointAuthorization', name: 'EndpointAuthorization')
    EndpointAuthorizationAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#EndpointAuthorizationAlreadyExistsFault', name: 'EndpointAuthorizationAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "EndpointAuthorizationAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EndpointAuthorizationNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#EndpointAuthorizationNotFoundFault', name: 'EndpointAuthorizationNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "EndpointAuthorizationNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    EndpointAuthorizations = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#EndpointAuthorizations', name: 'EndpointAuthorizations')
    EndpointAuthorizationsPerClusterLimitExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#EndpointAuthorizationsPerClusterLimitExceededFault', name: 'EndpointAuthorizationsPerClusterLimitExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "EndpointAuthorizationsPerClusterLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EndpointNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#EndpointNotFoundFault', name: 'EndpointNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "EndpointNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    EndpointsPerAuthorizationLimitExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#EndpointsPerAuthorizationLimitExceededFault', name: 'EndpointsPerAuthorizationLimitExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "EndpointsPerAuthorizationLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EndpointsPerClusterLimitExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#EndpointsPerClusterLimitExceededFault', name: 'EndpointsPerClusterLimitExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "EndpointsPerClusterLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Event = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#Event', name: 'Event')
    EventCategoriesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#EventCategoriesList', name: 'EventCategoriesList')
    EventCategoriesMap = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#EventCategoriesMap', name: 'EventCategoriesMap')
    EventCategoriesMapList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#EventCategoriesMapList', name: 'EventCategoriesMapList')
    EventCategoriesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#EventCategoriesMessage', name: 'EventCategoriesMessage')
    EventInfoMap = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#EventInfoMap', name: 'EventInfoMap')
    EventInfoMapList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#EventInfoMapList', name: 'EventInfoMapList')
    EventList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#EventList', name: 'EventList')
    EventSubscription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#EventSubscription', name: 'EventSubscription')
    EventSubscriptionQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#EventSubscriptionQuotaExceededFault', name: 'EventSubscriptionQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "EventSubscriptionQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EventSubscriptionsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#EventSubscriptionsList', name: 'EventSubscriptionsList')
    EventSubscriptionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#EventSubscriptionsMessage', name: 'EventSubscriptionsMessage')
    EventsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#EventsMessage', name: 'EventsMessage')
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshift#ExceptionMessage', name: 'ExceptionMessage')
    FailoverPrimaryComputeInputMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#FailoverPrimaryComputeInputMessage', name: 'FailoverPrimaryComputeInputMessage')
    FailoverPrimaryComputeResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#FailoverPrimaryComputeResult', name: 'FailoverPrimaryComputeResult')
    GetClusterCredentialsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#GetClusterCredentialsMessage', name: 'GetClusterCredentialsMessage')
    GetClusterCredentialsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#GetClusterCredentialsOutput', name: 'GetClusterCredentialsOutput')
    GetClusterCredentialsWithIAMMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#GetClusterCredentialsWithIAMMessage', name: 'GetClusterCredentialsWithIAMMessage')
    GetClusterCredentialsWithIAMOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#GetClusterCredentialsWithIAMOutput', name: 'GetClusterCredentialsWithIAMOutput')
    GetReservedNodeExchangeConfigurationOptionsInputMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#GetReservedNodeExchangeConfigurationOptionsInputMessage', name: 'GetReservedNodeExchangeConfigurationOptionsInputMessage')
    GetReservedNodeExchangeConfigurationOptionsOutputMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#GetReservedNodeExchangeConfigurationOptionsOutputMessage', name: 'GetReservedNodeExchangeConfigurationOptionsOutputMessage')
    GetReservedNodeExchangeOfferingsInputMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#GetReservedNodeExchangeOfferingsInputMessage', name: 'GetReservedNodeExchangeOfferingsInputMessage')
    GetReservedNodeExchangeOfferingsOutputMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#GetReservedNodeExchangeOfferingsOutputMessage', name: 'GetReservedNodeExchangeOfferingsOutputMessage')
    GetResourcePolicyMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#GetResourcePolicyMessage', name: 'GetResourcePolicyMessage')
    GetResourcePolicyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#GetResourcePolicyResult', name: 'GetResourcePolicyResult')
    HsmClientCertificate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#HsmClientCertificate', name: 'HsmClientCertificate')
    HsmClientCertificateAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#HsmClientCertificateAlreadyExistsFault', name: 'HsmClientCertificateAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "HsmClientCertificateAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    HsmClientCertificateList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#HsmClientCertificateList', name: 'HsmClientCertificateList')
    HsmClientCertificateMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#HsmClientCertificateMessage', name: 'HsmClientCertificateMessage')
    HsmClientCertificateNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#HsmClientCertificateNotFoundFault', name: 'HsmClientCertificateNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "HsmClientCertificateNotFoundFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    HsmClientCertificateQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#HsmClientCertificateQuotaExceededFault', name: 'HsmClientCertificateQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "HsmClientCertificateQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    HsmConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#HsmConfiguration', name: 'HsmConfiguration')
    HsmConfigurationAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#HsmConfigurationAlreadyExistsFault', name: 'HsmConfigurationAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "HsmConfigurationAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    HsmConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#HsmConfigurationList', name: 'HsmConfigurationList')
    HsmConfigurationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#HsmConfigurationMessage', name: 'HsmConfigurationMessage')
    HsmConfigurationNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#HsmConfigurationNotFoundFault', name: 'HsmConfigurationNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "HsmConfigurationNotFoundFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    HsmConfigurationQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#HsmConfigurationQuotaExceededFault', name: 'HsmConfigurationQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "HsmConfigurationQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    HsmStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#HsmStatus', name: 'HsmStatus')
    IPRange = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#IPRange', name: 'IPRange')
    IPRangeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#IPRangeList', name: 'IPRangeList')
    IamRoleArnList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#IamRoleArnList', name: 'IamRoleArnList')
    IdcDisplayNameString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshift#IdcDisplayNameString', name: 'IdcDisplayNameString', traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[\\w+=,.@-]+$"})
    IdentityNamespaceString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshift#IdentityNamespaceString', name: 'IdentityNamespaceString', traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[a-zA-Z0-9_+.\#@$-]+$"})
    ImpactRankingType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#ImpactRankingType', name: 'ImpactRankingType')
    ImportTablesCompleted = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ImportTablesCompleted', name: 'ImportTablesCompleted')
    ImportTablesInProgress = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ImportTablesInProgress', name: 'ImportTablesInProgress')
    ImportTablesNotStarted = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ImportTablesNotStarted', name: 'ImportTablesNotStarted')
    InProgressTableRestoreQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InProgressTableRestoreQuotaExceededFault', name: 'InProgressTableRestoreQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InProgressTableRestoreQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InboundIntegration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InboundIntegration', name: 'InboundIntegration')
    InboundIntegrationArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshift#InboundIntegrationArn', name: 'InboundIntegrationArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^arn:aws[a-z\\-]*:.+:[a-z0-9\\-]*:[0-9]*:integration:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    InboundIntegrationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#InboundIntegrationList', name: 'InboundIntegrationList')
    InboundIntegrationsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InboundIntegrationsMessage', name: 'InboundIntegrationsMessage')
    IncompatibleOrderableOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#IncompatibleOrderableOptions', name: 'IncompatibleOrderableOptions', traits: {"aws.protocols#awsQueryError" => {"code" => "IncompatibleOrderableOptions", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InsufficientClusterCapacityFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InsufficientClusterCapacityFault', name: 'InsufficientClusterCapacityFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InsufficientClusterCapacity", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InsufficientS3BucketPolicyFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InsufficientS3BucketPolicyFault', name: 'InsufficientS3BucketPolicyFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InsufficientS3BucketPolicyFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.redshift#Integer', name: 'Integer')
    IntegerOptional = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.redshift#IntegerOptional', name: 'IntegerOptional')
    Integration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#Integration', name: 'Integration')
    IntegrationAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#IntegrationAlreadyExistsFault', name: 'IntegrationAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "IntegrationAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IntegrationArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshift#IntegrationArn', name: 'IntegrationArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^arn:aws[a-z\\-]*:redshift:[a-z0-9\\-]*:[0-9]*:integration:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    IntegrationConflictOperationFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#IntegrationConflictOperationFault', name: 'IntegrationConflictOperationFault', traits: {"aws.protocols#awsQueryError" => {"code" => "IntegrationConflictOperationFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IntegrationConflictStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#IntegrationConflictStateFault', name: 'IntegrationConflictStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "IntegrationConflictStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IntegrationDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshift#IntegrationDescription', name: 'IntegrationDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^.*$"})
    IntegrationError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#IntegrationError', name: 'IntegrationError')
    IntegrationErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#IntegrationErrorList', name: 'IntegrationErrorList')
    IntegrationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#IntegrationList', name: 'IntegrationList')
    IntegrationName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshift#IntegrationName', name: 'IntegrationName', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9]*(-[a-zA-Z0-9]+)*$"})
    IntegrationNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#IntegrationNotFoundFault', name: 'IntegrationNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "IntegrationNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    IntegrationQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#IntegrationQuotaExceededFault', name: 'IntegrationQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "IntegrationQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IntegrationSourceNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#IntegrationSourceNotFoundFault', name: 'IntegrationSourceNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "IntegrationSourceNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    IntegrationTargetNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#IntegrationTargetNotFoundFault', name: 'IntegrationTargetNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "IntegrationTargetNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    IntegrationsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#IntegrationsMessage', name: 'IntegrationsMessage')
    InvalidAuthenticationProfileRequestFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidAuthenticationProfileRequestFault', name: 'InvalidAuthenticationProfileRequestFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidAuthenticationProfileRequestFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidAuthorizationStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidAuthorizationStateFault', name: 'InvalidAuthorizationStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidAuthorizationState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidClusterParameterGroupStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidClusterParameterGroupStateFault', name: 'InvalidClusterParameterGroupStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidClusterParameterGroupState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidClusterSecurityGroupStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidClusterSecurityGroupStateFault', name: 'InvalidClusterSecurityGroupStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidClusterSecurityGroupState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidClusterSnapshotScheduleStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidClusterSnapshotScheduleStateFault', name: 'InvalidClusterSnapshotScheduleStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidClusterSnapshotScheduleState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidClusterSnapshotStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidClusterSnapshotStateFault', name: 'InvalidClusterSnapshotStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidClusterSnapshotState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidClusterStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidClusterStateFault', name: 'InvalidClusterStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidClusterState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidClusterSubnetGroupStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidClusterSubnetGroupStateFault', name: 'InvalidClusterSubnetGroupStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidClusterSubnetGroupStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidClusterSubnetStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidClusterSubnetStateFault', name: 'InvalidClusterSubnetStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidClusterSubnetStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidClusterTrackFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidClusterTrackFault', name: 'InvalidClusterTrackFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidClusterTrack", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDataShareFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidDataShareFault', name: 'InvalidDataShareFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDataShareFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidElasticIpFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidElasticIpFault', name: 'InvalidElasticIpFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidElasticIpFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidEndpointStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidEndpointStateFault', name: 'InvalidEndpointStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidEndpointState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidHsmClientCertificateStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidHsmClientCertificateStateFault', name: 'InvalidHsmClientCertificateStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidHsmClientCertificateStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidHsmConfigurationStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidHsmConfigurationStateFault', name: 'InvalidHsmConfigurationStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidHsmConfigurationStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidNamespaceFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidNamespaceFault', name: 'InvalidNamespaceFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidNamespaceFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidPolicyFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidPolicyFault', name: 'InvalidPolicyFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidPolicyFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidReservedNodeStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidReservedNodeStateFault', name: 'InvalidReservedNodeStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidReservedNodeState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRestoreFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidRestoreFault', name: 'InvalidRestoreFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidRestore", "httpResponseCode" => 406}, "smithy.api#error" => "client", "smithy.api#httpError" => 406})
    InvalidRetentionPeriodFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidRetentionPeriodFault', name: 'InvalidRetentionPeriodFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidRetentionPeriodFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidS3BucketNameFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidS3BucketNameFault', name: 'InvalidS3BucketNameFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidS3BucketNameFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidS3KeyPrefixFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidS3KeyPrefixFault', name: 'InvalidS3KeyPrefixFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidS3KeyPrefixFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidScheduleFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidScheduleFault', name: 'InvalidScheduleFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidSchedule", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidScheduledActionFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidScheduledActionFault', name: 'InvalidScheduledActionFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidScheduledAction", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSnapshotCopyGrantStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidSnapshotCopyGrantStateFault', name: 'InvalidSnapshotCopyGrantStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidSnapshotCopyGrantStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSubnet = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidSubnet', name: 'InvalidSubnet', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidSubnet", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSubscriptionStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidSubscriptionStateFault', name: 'InvalidSubscriptionStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidSubscriptionStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidTableRestoreArgumentFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidTableRestoreArgumentFault', name: 'InvalidTableRestoreArgumentFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidTableRestoreArgument", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidTagFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidTagFault', name: 'InvalidTagFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidTagFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidUsageLimitFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidUsageLimitFault', name: 'InvalidUsageLimitFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidUsageLimit", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidVPCNetworkStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#InvalidVPCNetworkStateFault', name: 'InvalidVPCNetworkStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidVPCNetworkStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Ipv6CidrBlockNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#Ipv6CidrBlockNotFoundFault', name: 'Ipv6CidrBlockNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "Ipv6CidrBlockNotFoundFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LakeFormationQuery = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#LakeFormationQuery', name: 'LakeFormationQuery')
    LakeFormationScopeUnion = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.redshift#LakeFormationScopeUnion', name: 'LakeFormationScopeUnion')
    LakeFormationServiceIntegrations = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#LakeFormationServiceIntegrations', name: 'LakeFormationServiceIntegrations')
    LimitExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#LimitExceededFault', name: 'LimitExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "LimitExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListRecommendationsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ListRecommendationsMessage', name: 'ListRecommendationsMessage')
    ListRecommendationsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ListRecommendationsResult', name: 'ListRecommendationsResult')
    LogDestinationType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#LogDestinationType', name: 'LogDestinationType')
    LogTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#LogTypeList', name: 'LogTypeList')
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.redshift#Long', name: 'Long')
    LongOptional = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.redshift#LongOptional', name: 'LongOptional')
    MaintenanceTrack = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#MaintenanceTrack', name: 'MaintenanceTrack')
    Mode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#Mode', name: 'Mode')
    ModifyAquaInputMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyAquaInputMessage', name: 'ModifyAquaInputMessage')
    ModifyAquaOutputMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyAquaOutputMessage', name: 'ModifyAquaOutputMessage')
    ModifyAuthenticationProfileMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyAuthenticationProfileMessage', name: 'ModifyAuthenticationProfileMessage')
    ModifyAuthenticationProfileResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyAuthenticationProfileResult', name: 'ModifyAuthenticationProfileResult')
    ModifyClusterDbRevisionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyClusterDbRevisionMessage', name: 'ModifyClusterDbRevisionMessage')
    ModifyClusterDbRevisionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyClusterDbRevisionResult', name: 'ModifyClusterDbRevisionResult')
    ModifyClusterIamRolesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyClusterIamRolesMessage', name: 'ModifyClusterIamRolesMessage')
    ModifyClusterIamRolesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyClusterIamRolesResult', name: 'ModifyClusterIamRolesResult')
    ModifyClusterMaintenanceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyClusterMaintenanceMessage', name: 'ModifyClusterMaintenanceMessage')
    ModifyClusterMaintenanceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyClusterMaintenanceResult', name: 'ModifyClusterMaintenanceResult')
    ModifyClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyClusterMessage', name: 'ModifyClusterMessage')
    ModifyClusterParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyClusterParameterGroupMessage', name: 'ModifyClusterParameterGroupMessage')
    ModifyClusterParameterGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyClusterParameterGroupOutput', name: 'ModifyClusterParameterGroupOutput')
    ModifyClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyClusterResult', name: 'ModifyClusterResult')
    ModifyClusterSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyClusterSnapshotMessage', name: 'ModifyClusterSnapshotMessage')
    ModifyClusterSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyClusterSnapshotResult', name: 'ModifyClusterSnapshotResult')
    ModifyClusterSnapshotScheduleMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyClusterSnapshotScheduleMessage', name: 'ModifyClusterSnapshotScheduleMessage')
    ModifyClusterSubnetGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyClusterSubnetGroupMessage', name: 'ModifyClusterSubnetGroupMessage')
    ModifyClusterSubnetGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyClusterSubnetGroupResult', name: 'ModifyClusterSubnetGroupResult')
    ModifyCustomDomainAssociationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyCustomDomainAssociationMessage', name: 'ModifyCustomDomainAssociationMessage')
    ModifyCustomDomainAssociationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyCustomDomainAssociationResult', name: 'ModifyCustomDomainAssociationResult')
    ModifyEndpointAccessMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyEndpointAccessMessage', name: 'ModifyEndpointAccessMessage')
    ModifyEndpointAccessOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyEndpointAccessOutput', name: 'ModifyEndpointAccessOutput')
    ModifyEventSubscriptionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyEventSubscriptionMessage', name: 'ModifyEventSubscriptionMessage')
    ModifyEventSubscriptionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyEventSubscriptionResult', name: 'ModifyEventSubscriptionResult')
    ModifyIntegrationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyIntegrationMessage', name: 'ModifyIntegrationMessage')
    ModifyIntegrationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyIntegrationOutput', name: 'ModifyIntegrationOutput')
    ModifyRedshiftIdcApplicationMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyRedshiftIdcApplicationMessage', name: 'ModifyRedshiftIdcApplicationMessage')
    ModifyRedshiftIdcApplicationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyRedshiftIdcApplicationResult', name: 'ModifyRedshiftIdcApplicationResult')
    ModifyScheduledActionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyScheduledActionMessage', name: 'ModifyScheduledActionMessage')
    ModifyScheduledActionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyScheduledActionOutput', name: 'ModifyScheduledActionOutput')
    ModifySnapshotCopyRetentionPeriodMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifySnapshotCopyRetentionPeriodMessage', name: 'ModifySnapshotCopyRetentionPeriodMessage')
    ModifySnapshotCopyRetentionPeriodResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifySnapshotCopyRetentionPeriodResult', name: 'ModifySnapshotCopyRetentionPeriodResult')
    ModifySnapshotScheduleMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifySnapshotScheduleMessage', name: 'ModifySnapshotScheduleMessage')
    ModifySnapshotScheduleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifySnapshotScheduleOutput', name: 'ModifySnapshotScheduleOutput')
    ModifyUsageLimitMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyUsageLimitMessage', name: 'ModifyUsageLimitMessage')
    ModifyUsageLimitOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ModifyUsageLimitOutput', name: 'ModifyUsageLimitOutput')
    NamespaceIdentifierUnion = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.redshift#NamespaceIdentifierUnion', name: 'NamespaceIdentifierUnion')
    NamespaceRegistrationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#NamespaceRegistrationStatus', name: 'NamespaceRegistrationStatus')
    NetworkInterface = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#NetworkInterface', name: 'NetworkInterface')
    NetworkInterfaceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#NetworkInterfaceList', name: 'NetworkInterfaceList')
    NodeConfigurationOption = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#NodeConfigurationOption', name: 'NodeConfigurationOption')
    NodeConfigurationOptionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#NodeConfigurationOptionList', name: 'NodeConfigurationOptionList')
    NodeConfigurationOptionsFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#NodeConfigurationOptionsFilter', name: 'NodeConfigurationOptionsFilter')
    NodeConfigurationOptionsFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#NodeConfigurationOptionsFilterList', name: 'NodeConfigurationOptionsFilterList')
    NodeConfigurationOptionsFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#NodeConfigurationOptionsFilterName', name: 'NodeConfigurationOptionsFilterName')
    NodeConfigurationOptionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#NodeConfigurationOptionsMessage', name: 'NodeConfigurationOptionsMessage')
    NumberOfNodesPerClusterLimitExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#NumberOfNodesPerClusterLimitExceededFault', name: 'NumberOfNodesPerClusterLimitExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "NumberOfNodesPerClusterLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NumberOfNodesQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#NumberOfNodesQuotaExceededFault', name: 'NumberOfNodesQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "NumberOfNodesQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    OperatorType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#OperatorType', name: 'OperatorType')
    OrderableClusterOption = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#OrderableClusterOption', name: 'OrderableClusterOption')
    OrderableClusterOptionsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#OrderableClusterOptionsList', name: 'OrderableClusterOptionsList')
    OrderableClusterOptionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#OrderableClusterOptionsMessage', name: 'OrderableClusterOptionsMessage')
    Parameter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#Parameter', name: 'Parameter')
    ParameterApplyType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#ParameterApplyType', name: 'ParameterApplyType')
    ParameterGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ParameterGroupList', name: 'ParameterGroupList')
    ParametersList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ParametersList', name: 'ParametersList')
    PartnerIntegrationAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshift#PartnerIntegrationAccountId', name: 'PartnerIntegrationAccountId', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]+$"})
    PartnerIntegrationClusterIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshift#PartnerIntegrationClusterIdentifier', name: 'PartnerIntegrationClusterIdentifier', traits: {"smithy.api#length" => {"min" => 0, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-]+$"})
    PartnerIntegrationDatabaseName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshift#PartnerIntegrationDatabaseName', name: 'PartnerIntegrationDatabaseName', traits: {"smithy.api#length" => {"min" => 0, "max" => 127}, "smithy.api#pattern" => "^[\\p{L}_][\\p{L}\\p{N}@$#_]+$"})
    PartnerIntegrationInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#PartnerIntegrationInfo', name: 'PartnerIntegrationInfo')
    PartnerIntegrationInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#PartnerIntegrationInfoList', name: 'PartnerIntegrationInfoList')
    PartnerIntegrationPartnerName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshift#PartnerIntegrationPartnerName', name: 'PartnerIntegrationPartnerName', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-_]+$"})
    PartnerIntegrationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#PartnerIntegrationStatus', name: 'PartnerIntegrationStatus')
    PartnerIntegrationStatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshift#PartnerIntegrationStatusMessage', name: 'PartnerIntegrationStatusMessage', traits: {"smithy.api#length" => {"min" => 0, "max" => 262144}, "smithy.api#pattern" => "^[\\x20-\\x7E]+$"})
    PartnerNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#PartnerNotFoundFault', name: 'PartnerNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "PartnerNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    PauseClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#PauseClusterInput', name: 'PauseClusterInput')
    PauseClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#PauseClusterMessage', name: 'PauseClusterMessage')
    PauseClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#PauseClusterResult', name: 'PauseClusterResult')
    PendingActionsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#PendingActionsList', name: 'PendingActionsList')
    PendingModifiedValues = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#PendingModifiedValues', name: 'PendingModifiedValues')
    ProvisionedIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ProvisionedIdentifier', name: 'ProvisionedIdentifier')
    PurchaseReservedNodeOfferingMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#PurchaseReservedNodeOfferingMessage', name: 'PurchaseReservedNodeOfferingMessage')
    PurchaseReservedNodeOfferingResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#PurchaseReservedNodeOfferingResult', name: 'PurchaseReservedNodeOfferingResult')
    PutResourcePolicyMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#PutResourcePolicyMessage', name: 'PutResourcePolicyMessage')
    PutResourcePolicyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#PutResourcePolicyResult', name: 'PutResourcePolicyResult')
    ReadWriteAccess = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ReadWriteAccess', name: 'ReadWriteAccess')
    RebootClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RebootClusterMessage', name: 'RebootClusterMessage')
    RebootClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RebootClusterResult', name: 'RebootClusterResult')
    Recommendation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#Recommendation', name: 'Recommendation')
    RecommendationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#RecommendationList', name: 'RecommendationList')
    RecommendedAction = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RecommendedAction', name: 'RecommendedAction')
    RecommendedActionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#RecommendedActionList', name: 'RecommendedActionList')
    RecommendedActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#RecommendedActionType', name: 'RecommendedActionType')
    RecurringCharge = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RecurringCharge', name: 'RecurringCharge')
    RecurringChargeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#RecurringChargeList', name: 'RecurringChargeList')
    RedshiftIdcApplication = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RedshiftIdcApplication', name: 'RedshiftIdcApplication')
    RedshiftIdcApplicationAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RedshiftIdcApplicationAlreadyExistsFault', name: 'RedshiftIdcApplicationAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "RedshiftIdcApplicationAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    RedshiftIdcApplicationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#RedshiftIdcApplicationList', name: 'RedshiftIdcApplicationList')
    RedshiftIdcApplicationName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshift#RedshiftIdcApplicationName', name: 'RedshiftIdcApplicationName', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-z][a-z0-9]*(-[a-z0-9]+)*$"})
    RedshiftIdcApplicationNotExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RedshiftIdcApplicationNotExistsFault', name: 'RedshiftIdcApplicationNotExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "RedshiftIdcApplicationNotExists", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RedshiftIdcApplicationQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RedshiftIdcApplicationQuotaExceededFault', name: 'RedshiftIdcApplicationQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "RedshiftIdcApplicationQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ReferenceLink = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ReferenceLink', name: 'ReferenceLink')
    ReferenceLinkList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ReferenceLinkList', name: 'ReferenceLinkList')
    RegisterNamespaceInputMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RegisterNamespaceInputMessage', name: 'RegisterNamespaceInputMessage')
    RegisterNamespaceOutputMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RegisterNamespaceOutputMessage', name: 'RegisterNamespaceOutputMessage')
    RejectDataShareMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RejectDataShareMessage', name: 'RejectDataShareMessage')
    RejectDataShareOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RejectDataShareOutput', name: 'RejectDataShareOutput')
    ReservedNode = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ReservedNode', name: 'ReservedNode')
    ReservedNodeAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ReservedNodeAlreadyExistsFault', name: 'ReservedNodeAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ReservedNodeAlreadyExists", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ReservedNodeAlreadyMigratedFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ReservedNodeAlreadyMigratedFault', name: 'ReservedNodeAlreadyMigratedFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ReservedNodeAlreadyMigrated", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ReservedNodeConfigurationOption = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ReservedNodeConfigurationOption', name: 'ReservedNodeConfigurationOption')
    ReservedNodeConfigurationOptionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ReservedNodeConfigurationOptionList', name: 'ReservedNodeConfigurationOptionList')
    ReservedNodeExchangeActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#ReservedNodeExchangeActionType', name: 'ReservedNodeExchangeActionType')
    ReservedNodeExchangeNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ReservedNodeExchangeNotFoundFault', name: 'ReservedNodeExchangeNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ReservedNodeExchangeNotFond", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ReservedNodeExchangeStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ReservedNodeExchangeStatus', name: 'ReservedNodeExchangeStatus')
    ReservedNodeExchangeStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ReservedNodeExchangeStatusList', name: 'ReservedNodeExchangeStatusList')
    ReservedNodeExchangeStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#ReservedNodeExchangeStatusType', name: 'ReservedNodeExchangeStatusType')
    ReservedNodeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ReservedNodeList', name: 'ReservedNodeList')
    ReservedNodeNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ReservedNodeNotFoundFault', name: 'ReservedNodeNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ReservedNodeNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ReservedNodeOffering = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ReservedNodeOffering', name: 'ReservedNodeOffering')
    ReservedNodeOfferingList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ReservedNodeOfferingList', name: 'ReservedNodeOfferingList')
    ReservedNodeOfferingNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ReservedNodeOfferingNotFoundFault', name: 'ReservedNodeOfferingNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ReservedNodeOfferingNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ReservedNodeOfferingType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#ReservedNodeOfferingType', name: 'ReservedNodeOfferingType')
    ReservedNodeOfferingsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ReservedNodeOfferingsMessage', name: 'ReservedNodeOfferingsMessage')
    ReservedNodeQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ReservedNodeQuotaExceededFault', name: 'ReservedNodeQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ReservedNodeQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ReservedNodesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ReservedNodesMessage', name: 'ReservedNodesMessage')
    ResetClusterParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ResetClusterParameterGroupMessage', name: 'ResetClusterParameterGroupMessage')
    ResetClusterParameterGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ResetClusterParameterGroupOutput', name: 'ResetClusterParameterGroupOutput')
    ResizeClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ResizeClusterInput', name: 'ResizeClusterInput')
    ResizeClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ResizeClusterMessage', name: 'ResizeClusterMessage')
    ResizeClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ResizeClusterResult', name: 'ResizeClusterResult')
    ResizeInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ResizeInfo', name: 'ResizeInfo')
    ResizeNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ResizeNotFoundFault', name: 'ResizeNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ResizeNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ResourceNotFoundFault', name: 'ResourceNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourcePolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ResourcePolicy', name: 'ResourcePolicy')
    RestorableNodeTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#RestorableNodeTypeList', name: 'RestorableNodeTypeList')
    RestoreFromClusterSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RestoreFromClusterSnapshotMessage', name: 'RestoreFromClusterSnapshotMessage')
    RestoreFromClusterSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RestoreFromClusterSnapshotResult', name: 'RestoreFromClusterSnapshotResult')
    RestoreStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RestoreStatus', name: 'RestoreStatus')
    RestoreTableFromClusterSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RestoreTableFromClusterSnapshotMessage', name: 'RestoreTableFromClusterSnapshotMessage')
    RestoreTableFromClusterSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RestoreTableFromClusterSnapshotResult', name: 'RestoreTableFromClusterSnapshotResult')
    ResumeClusterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ResumeClusterInput', name: 'ResumeClusterInput')
    ResumeClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ResumeClusterMessage', name: 'ResumeClusterMessage')
    ResumeClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ResumeClusterResult', name: 'ResumeClusterResult')
    RevisionTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RevisionTarget', name: 'RevisionTarget')
    RevisionTargetsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#RevisionTargetsList', name: 'RevisionTargetsList')
    RevokeClusterSecurityGroupIngressMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RevokeClusterSecurityGroupIngressMessage', name: 'RevokeClusterSecurityGroupIngressMessage')
    RevokeClusterSecurityGroupIngressResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RevokeClusterSecurityGroupIngressResult', name: 'RevokeClusterSecurityGroupIngressResult')
    RevokeEndpointAccessMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RevokeEndpointAccessMessage', name: 'RevokeEndpointAccessMessage')
    RevokeEndpointAccessOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RevokeEndpointAccessOutput', name: 'RevokeEndpointAccessOutput')
    RevokeSnapshotAccessMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RevokeSnapshotAccessMessage', name: 'RevokeSnapshotAccessMessage')
    RevokeSnapshotAccessResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RevokeSnapshotAccessResult', name: 'RevokeSnapshotAccessResult')
    RotateEncryptionKeyMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RotateEncryptionKeyMessage', name: 'RotateEncryptionKeyMessage')
    RotateEncryptionKeyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#RotateEncryptionKeyResult', name: 'RotateEncryptionKeyResult')
    S3AccessGrantsScopeUnion = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.redshift#S3AccessGrantsScopeUnion', name: 'S3AccessGrantsScopeUnion')
    S3AccessGrantsServiceIntegrations = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#S3AccessGrantsServiceIntegrations', name: 'S3AccessGrantsServiceIntegrations')
    S3KeyPrefixValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshift#S3KeyPrefixValue', name: 'S3KeyPrefixValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*$"})
    SNSInvalidTopicFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SNSInvalidTopicFault', name: 'SNSInvalidTopicFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SNSInvalidTopic", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SNSNoAuthorizationFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SNSNoAuthorizationFault', name: 'SNSNoAuthorizationFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SNSNoAuthorization", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SNSTopicArnNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SNSTopicArnNotFoundFault', name: 'SNSTopicArnNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SNSTopicArnNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ScheduleDefinitionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ScheduleDefinitionList', name: 'ScheduleDefinitionList')
    ScheduleDefinitionTypeUnsupportedFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ScheduleDefinitionTypeUnsupportedFault', name: 'ScheduleDefinitionTypeUnsupportedFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ScheduleDefinitionTypeUnsupported", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ScheduleState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#ScheduleState', name: 'ScheduleState')
    ScheduledAction = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ScheduledAction', name: 'ScheduledAction')
    ScheduledActionAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ScheduledActionAlreadyExistsFault', name: 'ScheduledActionAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ScheduledActionAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ScheduledActionFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ScheduledActionFilter', name: 'ScheduledActionFilter')
    ScheduledActionFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ScheduledActionFilterList', name: 'ScheduledActionFilterList')
    ScheduledActionFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#ScheduledActionFilterName', name: 'ScheduledActionFilterName')
    ScheduledActionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ScheduledActionList', name: 'ScheduledActionList')
    ScheduledActionNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ScheduledActionNotFoundFault', name: 'ScheduledActionNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ScheduledActionNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ScheduledActionQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ScheduledActionQuotaExceededFault', name: 'ScheduledActionQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ScheduledActionQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ScheduledActionState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#ScheduledActionState', name: 'ScheduledActionState')
    ScheduledActionTimeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ScheduledActionTimeList', name: 'ScheduledActionTimeList')
    ScheduledActionType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ScheduledActionType', name: 'ScheduledActionType')
    ScheduledActionTypeUnsupportedFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ScheduledActionTypeUnsupportedFault', name: 'ScheduledActionTypeUnsupportedFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ScheduledActionTypeUnsupported", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ScheduledActionTypeValues = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#ScheduledActionTypeValues', name: 'ScheduledActionTypeValues')
    ScheduledActionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ScheduledActionsMessage', name: 'ScheduledActionsMessage')
    ScheduledSnapshotTimeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ScheduledSnapshotTimeList', name: 'ScheduledSnapshotTimeList')
    SecondaryClusterInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SecondaryClusterInfo', name: 'SecondaryClusterInfo')
    SensitiveString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshift#SensitiveString', name: 'SensitiveString', traits: {"smithy.api#sensitive" => {}})
    ServerlessIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#ServerlessIdentifier', name: 'ServerlessIdentifier')
    ServiceAuthorization = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#ServiceAuthorization', name: 'ServiceAuthorization')
    ServiceIntegrationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ServiceIntegrationList', name: 'ServiceIntegrationList')
    ServiceIntegrationsUnion = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.redshift#ServiceIntegrationsUnion', name: 'ServiceIntegrationsUnion')
    Snapshot = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#Snapshot', name: 'Snapshot')
    SnapshotAttributeToSortBy = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#SnapshotAttributeToSortBy', name: 'SnapshotAttributeToSortBy')
    SnapshotCopyAlreadyDisabledFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SnapshotCopyAlreadyDisabledFault', name: 'SnapshotCopyAlreadyDisabledFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotCopyAlreadyDisabledFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SnapshotCopyAlreadyEnabledFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SnapshotCopyAlreadyEnabledFault', name: 'SnapshotCopyAlreadyEnabledFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotCopyAlreadyEnabledFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SnapshotCopyDisabledFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SnapshotCopyDisabledFault', name: 'SnapshotCopyDisabledFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotCopyDisabledFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SnapshotCopyGrant = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SnapshotCopyGrant', name: 'SnapshotCopyGrant')
    SnapshotCopyGrantAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SnapshotCopyGrantAlreadyExistsFault', name: 'SnapshotCopyGrantAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotCopyGrantAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SnapshotCopyGrantList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#SnapshotCopyGrantList', name: 'SnapshotCopyGrantList')
    SnapshotCopyGrantMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SnapshotCopyGrantMessage', name: 'SnapshotCopyGrantMessage')
    SnapshotCopyGrantNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SnapshotCopyGrantNotFoundFault', name: 'SnapshotCopyGrantNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotCopyGrantNotFoundFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SnapshotCopyGrantQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SnapshotCopyGrantQuotaExceededFault', name: 'SnapshotCopyGrantQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotCopyGrantQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SnapshotErrorMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SnapshotErrorMessage', name: 'SnapshotErrorMessage')
    SnapshotIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#SnapshotIdentifierList', name: 'SnapshotIdentifierList')
    SnapshotList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#SnapshotList', name: 'SnapshotList')
    SnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SnapshotMessage', name: 'SnapshotMessage')
    SnapshotSchedule = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SnapshotSchedule', name: 'SnapshotSchedule')
    SnapshotScheduleAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SnapshotScheduleAlreadyExistsFault', name: 'SnapshotScheduleAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotScheduleAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SnapshotScheduleList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#SnapshotScheduleList', name: 'SnapshotScheduleList')
    SnapshotScheduleNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SnapshotScheduleNotFoundFault', name: 'SnapshotScheduleNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotScheduleNotFound", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SnapshotScheduleQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SnapshotScheduleQuotaExceededFault', name: 'SnapshotScheduleQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotScheduleQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SnapshotScheduleUpdateInProgressFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SnapshotScheduleUpdateInProgressFault', name: 'SnapshotScheduleUpdateInProgressFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotScheduleUpdateInProgress", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SnapshotSortingEntity = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SnapshotSortingEntity', name: 'SnapshotSortingEntity')
    SnapshotSortingEntityList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#SnapshotSortingEntityList', name: 'SnapshotSortingEntityList')
    SortByOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#SortByOrder', name: 'SortByOrder')
    SourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshift#SourceArn', name: 'SourceArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^arn:aws[a-z\\-]*:(s3|dynamodb):.*:.*:[a-zA-Z0-9._\\-\\/]+$"})
    SourceIdsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#SourceIdsList', name: 'SourceIdsList')
    SourceNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SourceNotFoundFault', name: 'SourceNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SourceNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#SourceType', name: 'SourceType')
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshift#String', name: 'String', traits: {"smithy.api#length" => {"min" => 0, "max" => 2147483647}})
    Subnet = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#Subnet', name: 'Subnet')
    SubnetAlreadyInUse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SubnetAlreadyInUse', name: 'SubnetAlreadyInUse', traits: {"aws.protocols#awsQueryError" => {"code" => "SubnetAlreadyInUse", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SubnetIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#SubnetIdentifierList', name: 'SubnetIdentifierList')
    SubnetList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#SubnetList', name: 'SubnetList')
    SubscriptionAlreadyExistFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SubscriptionAlreadyExistFault', name: 'SubscriptionAlreadyExistFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SubscriptionAlreadyExist", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SubscriptionCategoryNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SubscriptionCategoryNotFoundFault', name: 'SubscriptionCategoryNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SubscriptionCategoryNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SubscriptionEventIdNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SubscriptionEventIdNotFoundFault', name: 'SubscriptionEventIdNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SubscriptionEventIdNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SubscriptionNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SubscriptionNotFoundFault', name: 'SubscriptionNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SubscriptionNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SubscriptionSeverityNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SubscriptionSeverityNotFoundFault', name: 'SubscriptionSeverityNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SubscriptionSeverityNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SupportedOperation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SupportedOperation', name: 'SupportedOperation')
    SupportedOperationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#SupportedOperationList', name: 'SupportedOperationList')
    SupportedPlatform = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#SupportedPlatform', name: 'SupportedPlatform')
    SupportedPlatformsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#SupportedPlatformsList', name: 'SupportedPlatformsList')
    TStamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.redshift#TStamp', name: 'TStamp')
    TableLimitExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#TableLimitExceededFault', name: 'TableLimitExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "TableLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TableRestoreNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#TableRestoreNotFoundFault', name: 'TableRestoreNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "TableRestoreNotFoundFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TableRestoreStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#TableRestoreStatus', name: 'TableRestoreStatus')
    TableRestoreStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#TableRestoreStatusList', name: 'TableRestoreStatusList')
    TableRestoreStatusMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#TableRestoreStatusMessage', name: 'TableRestoreStatusMessage')
    TableRestoreStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#TableRestoreStatusType', name: 'TableRestoreStatusType')
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#Tag', name: 'Tag')
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#TagKeyList', name: 'TagKeyList')
    TagLimitExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#TagLimitExceededFault', name: 'TagLimitExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "TagLimitExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#TagList', name: 'TagList')
    TagValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#TagValueList', name: 'TagValueList')
    TaggedResource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#TaggedResource', name: 'TaggedResource')
    TaggedResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#TaggedResourceList', name: 'TaggedResourceList')
    TaggedResourceListMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#TaggedResourceListMessage', name: 'TaggedResourceListMessage')
    TargetArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.redshift#TargetArn', name: 'TargetArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws[a-z\\-]*:redshift(-serverless)?:[a-z0-9\\-]+:[0-9]{12}:(namespace\\/|namespace:)[a-z0-9\\-]+$"})
    TrackList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#TrackList', name: 'TrackList')
    TrackListMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#TrackListMessage', name: 'TrackListMessage')
    UnauthorizedOperation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#UnauthorizedOperation', name: 'UnauthorizedOperation', traits: {"aws.protocols#awsQueryError" => {"code" => "UnauthorizedOperation", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UnauthorizedPartnerIntegrationFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#UnauthorizedPartnerIntegrationFault', name: 'UnauthorizedPartnerIntegrationFault', traits: {"aws.protocols#awsQueryError" => {"code" => "UnauthorizedPartnerIntegration", "httpResponseCode" => 401}, "smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UnknownSnapshotCopyRegionFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#UnknownSnapshotCopyRegionFault', name: 'UnknownSnapshotCopyRegionFault', traits: {"aws.protocols#awsQueryError" => {"code" => "UnknownSnapshotCopyRegionFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    UnsupportedOperationFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#UnsupportedOperationFault', name: 'UnsupportedOperationFault', traits: {"aws.protocols#awsQueryError" => {"code" => "UnsupportedOperation", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UnsupportedOptionFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#UnsupportedOptionFault', name: 'UnsupportedOptionFault', traits: {"aws.protocols#awsQueryError" => {"code" => "UnsupportedOptionFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UpdatePartnerStatusInputMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#UpdatePartnerStatusInputMessage', name: 'UpdatePartnerStatusInputMessage')
    UpdatePartnerStatusOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#UpdatePartnerStatusOutput', name: 'UpdatePartnerStatusOutput')
    UpdateTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#UpdateTarget', name: 'UpdateTarget')
    UsageLimit = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#UsageLimit', name: 'UsageLimit')
    UsageLimitAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#UsageLimitAlreadyExistsFault', name: 'UsageLimitAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "UsageLimitAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UsageLimitBreachAction = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#UsageLimitBreachAction', name: 'UsageLimitBreachAction')
    UsageLimitFeatureType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#UsageLimitFeatureType', name: 'UsageLimitFeatureType')
    UsageLimitLimitType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#UsageLimitLimitType', name: 'UsageLimitLimitType')
    UsageLimitNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#UsageLimitNotFoundFault', name: 'UsageLimitNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "UsageLimitNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    UsageLimitPeriod = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#UsageLimitPeriod', name: 'UsageLimitPeriod')
    UsageLimits = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#UsageLimits', name: 'UsageLimits')
    ValueStringList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#ValueStringList', name: 'ValueStringList')
    VpcEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#VpcEndpoint', name: 'VpcEndpoint')
    VpcEndpointsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#VpcEndpointsList', name: 'VpcEndpointsList')
    VpcIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#VpcIdentifierList', name: 'VpcIdentifierList')
    VpcSecurityGroupIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#VpcSecurityGroupIdList', name: 'VpcSecurityGroupIdList')
    VpcSecurityGroupMembership = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.redshift#VpcSecurityGroupMembership', name: 'VpcSecurityGroupMembership')
    VpcSecurityGroupMembershipList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.redshift#VpcSecurityGroupMembershipList', name: 'VpcSecurityGroupMembershipList')
    ZeroETLIntegrationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.redshift#ZeroETLIntegrationStatus', name: 'ZeroETLIntegrationStatus')

    AcceptReservedNodeExchangeInputMessage.add_member(:reserved_node_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedNodeId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AcceptReservedNodeExchangeInputMessage.add_member(:target_reserved_node_offering_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetReservedNodeOfferingId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AcceptReservedNodeExchangeInputMessage.type = Types::AcceptReservedNodeExchangeInputMessage
    AcceptReservedNodeExchangeOutputMessage.add_member(:exchanged_reserved_node, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNode, location_name: 'ExchangedReservedNode'))
    AcceptReservedNodeExchangeOutputMessage.type = Types::AcceptReservedNodeExchangeOutputMessage
    AccessToClusterDeniedFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    AccessToClusterDeniedFault.type = Types::AccessToClusterDeniedFault
    AccessToSnapshotDeniedFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    AccessToSnapshotDeniedFault.type = Types::AccessToSnapshotDeniedFault
    AccountAttribute.add_member(:attribute_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AttributeName'))
    AccountAttribute.add_member(:attribute_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValueList, location_name: 'AttributeValues'))
    AccountAttribute.type = Types::AccountAttribute
    AccountWithRestoreAccess.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AccountId'))
    AccountWithRestoreAccess.add_member(:account_alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AccountAlias'))
    AccountWithRestoreAccess.type = Types::AccountWithRestoreAccess
    AccountsWithRestoreAccessList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountWithRestoreAccess, traits: {"smithy.api#xmlName" => "AccountWithRestoreAccess"})
    ActionType.add_member(:restore_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESTORE_CLUSTER', traits: {"smithy.api#enumValue" => "restore-cluster"}))
    ActionType.add_member(:recommend_node_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RECOMMEND_NODE_CONFIG', traits: {"smithy.api#enumValue" => "recommend-node-config"}))
    ActionType.add_member(:resize_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESIZE_CLUSTER', traits: {"smithy.api#enumValue" => "resize-cluster"}))
    AddPartnerInput.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationAccountId, location_name: 'AccountId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddPartnerInput.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationClusterIdentifier, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddPartnerInput.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationDatabaseName, location_name: 'DatabaseName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddPartnerInput.add_member(:partner_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationPartnerName, location_name: 'PartnerName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddPartnerInput.type = Types::AddPartnerInput
    AddPartnerOutput.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationDatabaseName, location_name: 'DatabaseName'))
    AddPartnerOutput.add_member(:partner_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationPartnerName, location_name: 'PartnerName'))
    AddPartnerOutput.type = Types::AddPartnerOutput
    AquaConfiguration.add_member(:aqua_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AquaStatus, location_name: 'AquaStatus'))
    AquaConfiguration.add_member(:aqua_configuration_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AquaConfigurationStatus, location_name: 'AquaConfigurationStatus'))
    AquaConfiguration.type = Types::AquaConfiguration
    AquaConfigurationStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "enabled"}))
    AquaConfigurationStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "disabled"}))
    AquaConfigurationStatus.add_member(:auto, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTO', traits: {"smithy.api#enumValue" => "auto"}))
    AquaStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "enabled"}))
    AquaStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "disabled"}))
    AquaStatus.add_member(:applying, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPLYING', traits: {"smithy.api#enumValue" => "applying"}))
    AssociateDataShareConsumerMessage.add_member(:data_share_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataShareArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AssociateDataShareConsumerMessage.add_member(:associate_entire_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AssociateEntireAccount'))
    AssociateDataShareConsumerMessage.add_member(:consumer_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConsumerArn'))
    AssociateDataShareConsumerMessage.add_member(:consumer_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConsumerRegion'))
    AssociateDataShareConsumerMessage.add_member(:allow_writes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AllowWrites'))
    AssociateDataShareConsumerMessage.type = Types::AssociateDataShareConsumerMessage
    AssociateDataShareConsumerOutput.add_member(:data_share_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataShareArn'))
    AssociateDataShareConsumerOutput.add_member(:producer_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProducerArn'))
    AssociateDataShareConsumerOutput.add_member(:allow_publicly_accessible_consumers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllowPubliclyAccessibleConsumers'))
    AssociateDataShareConsumerOutput.add_member(:data_share_associations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataShareAssociationList, location_name: 'DataShareAssociations'))
    AssociateDataShareConsumerOutput.add_member(:managed_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ManagedBy'))
    AssociateDataShareConsumerOutput.add_member(:data_share_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataShareType, location_name: 'DataShareType'))
    AssociateDataShareConsumerOutput.type = Types::AssociateDataShareConsumerOutput
    AssociatedClusterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterAssociatedToSchedule, traits: {"smithy.api#xmlName" => "ClusterAssociatedToSchedule"})
    Association.add_member(:custom_domain_certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomDomainCertificateArn'))
    Association.add_member(:custom_domain_certificate_expiry_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CustomDomainCertificateExpiryDate'))
    Association.add_member(:certificate_associations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateAssociationList, location_name: 'CertificateAssociations'))
    Association.type = Types::Association
    AssociationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Association, traits: {"smithy.api#xmlName" => "Association"})
    AttributeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountAttribute, traits: {"smithy.api#xmlName" => "AccountAttribute"})
    AttributeNameList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "AttributeName"})
    AttributeValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValueTarget, traits: {"smithy.api#xmlName" => "AttributeValueTarget"})
    AttributeValueTarget.add_member(:attribute_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AttributeValue'))
    AttributeValueTarget.type = Types::AttributeValueTarget
    AuthenticationProfile.add_member(:authentication_profile_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationProfileNameString, location_name: 'AuthenticationProfileName'))
    AuthenticationProfile.add_member(:authentication_profile_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AuthenticationProfileContent'))
    AuthenticationProfile.type = Types::AuthenticationProfile
    AuthenticationProfileAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    AuthenticationProfileAlreadyExistsFault.type = Types::AuthenticationProfileAlreadyExistsFault
    AuthenticationProfileList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationProfile)
    AuthenticationProfileNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    AuthenticationProfileNotFoundFault.type = Types::AuthenticationProfileNotFoundFault
    AuthenticationProfileQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    AuthenticationProfileQuotaExceededFault.type = Types::AuthenticationProfileQuotaExceededFault
    AuthorizationAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    AuthorizationAlreadyExistsFault.type = Types::AuthorizationAlreadyExistsFault
    AuthorizationNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    AuthorizationNotFoundFault.type = Types::AuthorizationNotFoundFault
    AuthorizationQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    AuthorizationQuotaExceededFault.type = Types::AuthorizationQuotaExceededFault
    AuthorizationStatus.add_member(:authorized, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTHORIZED', traits: {"smithy.api#enumValue" => "Authorized"}))
    AuthorizationStatus.add_member(:revoking, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REVOKING', traits: {"smithy.api#enumValue" => "Revoking"}))
    AuthorizeClusterSecurityGroupIngressMessage.add_member(:cluster_security_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterSecurityGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AuthorizeClusterSecurityGroupIngressMessage.add_member(:cidrip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CIDRIP'))
    AuthorizeClusterSecurityGroupIngressMessage.add_member(:ec2_security_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EC2SecurityGroupName'))
    AuthorizeClusterSecurityGroupIngressMessage.add_member(:ec2_security_group_owner_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EC2SecurityGroupOwnerId'))
    AuthorizeClusterSecurityGroupIngressMessage.type = Types::AuthorizeClusterSecurityGroupIngressMessage
    AuthorizeClusterSecurityGroupIngressResult.add_member(:cluster_security_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSecurityGroup, location_name: 'ClusterSecurityGroup'))
    AuthorizeClusterSecurityGroupIngressResult.type = Types::AuthorizeClusterSecurityGroupIngressResult
    AuthorizeDataShareMessage.add_member(:data_share_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataShareArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AuthorizeDataShareMessage.add_member(:consumer_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConsumerIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AuthorizeDataShareMessage.add_member(:allow_writes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AllowWrites'))
    AuthorizeDataShareMessage.type = Types::AuthorizeDataShareMessage
    AuthorizeDataShareOutput.add_member(:data_share_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataShareArn'))
    AuthorizeDataShareOutput.add_member(:producer_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProducerArn'))
    AuthorizeDataShareOutput.add_member(:allow_publicly_accessible_consumers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllowPubliclyAccessibleConsumers'))
    AuthorizeDataShareOutput.add_member(:data_share_associations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataShareAssociationList, location_name: 'DataShareAssociations'))
    AuthorizeDataShareOutput.add_member(:managed_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ManagedBy'))
    AuthorizeDataShareOutput.add_member(:data_share_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataShareType, location_name: 'DataShareType'))
    AuthorizeDataShareOutput.type = Types::AuthorizeDataShareOutput
    AuthorizeEndpointAccessMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier'))
    AuthorizeEndpointAccessMessage.add_member(:account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Account', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AuthorizeEndpointAccessMessage.add_member(:vpc_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcIdentifierList, location_name: 'VpcIds'))
    AuthorizeEndpointAccessMessage.type = Types::AuthorizeEndpointAccessMessage
    AuthorizeEndpointAccessOutput.add_member(:grantor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Grantor'))
    AuthorizeEndpointAccessOutput.add_member(:grantee, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Grantee'))
    AuthorizeEndpointAccessOutput.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier'))
    AuthorizeEndpointAccessOutput.add_member(:authorize_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'AuthorizeTime'))
    AuthorizeEndpointAccessOutput.add_member(:cluster_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterStatus'))
    AuthorizeEndpointAccessOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationStatus, location_name: 'Status'))
    AuthorizeEndpointAccessOutput.add_member(:allowed_all_vp_cs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllowedAllVPCs'))
    AuthorizeEndpointAccessOutput.add_member(:allowed_vp_cs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcIdentifierList, location_name: 'AllowedVPCs'))
    AuthorizeEndpointAccessOutput.add_member(:endpoint_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'EndpointCount'))
    AuthorizeEndpointAccessOutput.type = Types::AuthorizeEndpointAccessOutput
    AuthorizeSnapshotAccessMessage.add_member(:snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotIdentifier'))
    AuthorizeSnapshotAccessMessage.add_member(:snapshot_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotArn'))
    AuthorizeSnapshotAccessMessage.add_member(:snapshot_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotClusterIdentifier'))
    AuthorizeSnapshotAccessMessage.add_member(:account_with_restore_access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AccountWithRestoreAccess', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AuthorizeSnapshotAccessMessage.type = Types::AuthorizeSnapshotAccessMessage
    AuthorizeSnapshotAccessResult.add_member(:snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Snapshot, location_name: 'Snapshot'))
    AuthorizeSnapshotAccessResult.type = Types::AuthorizeSnapshotAccessResult
    AuthorizedAudienceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    AuthorizedTokenIssuer.add_member(:trusted_token_issuer_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TrustedTokenIssuerArn'))
    AuthorizedTokenIssuer.add_member(:authorized_audiences_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizedAudienceList, location_name: 'AuthorizedAudiencesList'))
    AuthorizedTokenIssuer.type = Types::AuthorizedTokenIssuer
    AuthorizedTokenIssuerList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizedTokenIssuer)
    AvailabilityZone.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    AvailabilityZone.add_member(:supported_platforms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedPlatformsList, location_name: 'SupportedPlatforms'))
    AvailabilityZone.type = Types::AvailabilityZone
    AvailabilityZoneList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZone, traits: {"smithy.api#xmlName" => "AvailabilityZone"})
    BatchDeleteClusterSnapshotsRequest.add_member(:identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterSnapshotMessageList, location_name: 'Identifiers', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchDeleteClusterSnapshotsRequest.type = Types::BatchDeleteClusterSnapshotsRequest
    BatchDeleteClusterSnapshotsResult.add_member(:resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotIdentifierList, location_name: 'Resources'))
    BatchDeleteClusterSnapshotsResult.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchSnapshotOperationErrorList, location_name: 'Errors'))
    BatchDeleteClusterSnapshotsResult.type = Types::BatchDeleteClusterSnapshotsResult
    BatchDeleteRequestSizeExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    BatchDeleteRequestSizeExceededFault.type = Types::BatchDeleteRequestSizeExceededFault
    BatchModifyClusterSnapshotsLimitExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    BatchModifyClusterSnapshotsLimitExceededFault.type = Types::BatchModifyClusterSnapshotsLimitExceededFault
    BatchModifyClusterSnapshotsMessage.add_member(:snapshot_identifier_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotIdentifierList, location_name: 'SnapshotIdentifierList', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchModifyClusterSnapshotsMessage.add_member(:manual_snapshot_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'ManualSnapshotRetentionPeriod'))
    BatchModifyClusterSnapshotsMessage.add_member(:force, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Force'))
    BatchModifyClusterSnapshotsMessage.type = Types::BatchModifyClusterSnapshotsMessage
    BatchModifyClusterSnapshotsOutputMessage.add_member(:resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotIdentifierList, location_name: 'Resources'))
    BatchModifyClusterSnapshotsOutputMessage.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchSnapshotOperationErrors, location_name: 'Errors'))
    BatchModifyClusterSnapshotsOutputMessage.type = Types::BatchModifyClusterSnapshotsOutputMessage
    BatchSnapshotOperationErrorList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotErrorMessage, traits: {"smithy.api#xmlName" => "SnapshotErrorMessage"})
    BatchSnapshotOperationErrors.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotErrorMessage, traits: {"smithy.api#xmlName" => "SnapshotErrorMessage"})
    BucketNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    BucketNotFoundFault.type = Types::BucketNotFoundFault
    CancelResizeMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CancelResizeMessage.type = Types::CancelResizeMessage
    CancelResizeOutput.add_member(:target_node_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetNodeType'))
    CancelResizeOutput.add_member(:target_number_of_nodes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'TargetNumberOfNodes'))
    CancelResizeOutput.add_member(:target_cluster_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetClusterType'))
    CancelResizeOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    CancelResizeOutput.add_member(:import_tables_completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTablesCompleted, location_name: 'ImportTablesCompleted'))
    CancelResizeOutput.add_member(:import_tables_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTablesInProgress, location_name: 'ImportTablesInProgress'))
    CancelResizeOutput.add_member(:import_tables_not_started, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTablesNotStarted, location_name: 'ImportTablesNotStarted'))
    CancelResizeOutput.add_member(:avg_resize_rate_in_mega_bytes_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'AvgResizeRateInMegaBytesPerSecond'))
    CancelResizeOutput.add_member(:total_resize_data_in_mega_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: 'TotalResizeDataInMegaBytes'))
    CancelResizeOutput.add_member(:progress_in_mega_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: 'ProgressInMegaBytes'))
    CancelResizeOutput.add_member(:elapsed_time_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: 'ElapsedTimeInSeconds'))
    CancelResizeOutput.add_member(:estimated_time_to_completion_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: 'EstimatedTimeToCompletionInSeconds'))
    CancelResizeOutput.add_member(:resize_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResizeType'))
    CancelResizeOutput.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    CancelResizeOutput.add_member(:target_encryption_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetEncryptionType'))
    CancelResizeOutput.add_member(:data_transfer_progress_percent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'DataTransferProgressPercent'))
    CancelResizeOutput.type = Types::CancelResizeOutput
    CertificateAssociation.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomDomainName'))
    CertificateAssociation.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier'))
    CertificateAssociation.type = Types::CertificateAssociation
    CertificateAssociationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateAssociation, traits: {"smithy.api#xmlName" => "CertificateAssociation"})
    Cluster.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier'))
    Cluster.add_member(:node_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeType'))
    Cluster.add_member(:cluster_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterStatus'))
    Cluster.add_member(:cluster_availability_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterAvailabilityStatus'))
    Cluster.add_member(:modify_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ModifyStatus'))
    Cluster.add_member(:master_username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterUsername'))
    Cluster.add_member(:db_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBName'))
    Cluster.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoint, location_name: 'Endpoint'))
    Cluster.add_member(:cluster_create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'ClusterCreateTime'))
    Cluster.add_member(:automated_snapshot_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'AutomatedSnapshotRetentionPeriod'))
    Cluster.add_member(:manual_snapshot_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ManualSnapshotRetentionPeriod'))
    Cluster.add_member(:cluster_security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSecurityGroupMembershipList, location_name: 'ClusterSecurityGroups'))
    Cluster.add_member(:vpc_security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupMembershipList, location_name: 'VpcSecurityGroups'))
    Cluster.add_member(:cluster_parameter_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterParameterGroupStatusList, location_name: 'ClusterParameterGroups'))
    Cluster.add_member(:cluster_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterSubnetGroupName'))
    Cluster.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcId'))
    Cluster.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AvailabilityZone'))
    Cluster.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredMaintenanceWindow'))
    Cluster.add_member(:pending_modified_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingModifiedValues, location_name: 'PendingModifiedValues'))
    Cluster.add_member(:cluster_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterVersion'))
    Cluster.add_member(:allow_version_upgrade, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllowVersionUpgrade'))
    Cluster.add_member(:number_of_nodes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumberOfNodes'))
    Cluster.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'PubliclyAccessible'))
    Cluster.add_member(:encrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Encrypted'))
    Cluster.add_member(:restore_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreStatus, location_name: 'RestoreStatus'))
    Cluster.add_member(:data_transfer_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataTransferProgress, location_name: 'DataTransferProgress'))
    Cluster.add_member(:hsm_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HsmStatus, location_name: 'HsmStatus'))
    Cluster.add_member(:cluster_snapshot_copy_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshotCopyStatus, location_name: 'ClusterSnapshotCopyStatus'))
    Cluster.add_member(:cluster_public_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterPublicKey'))
    Cluster.add_member(:cluster_nodes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNodesList, location_name: 'ClusterNodes'))
    Cluster.add_member(:elastic_ip_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticIpStatus, location_name: 'ElasticIpStatus'))
    Cluster.add_member(:cluster_revision_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterRevisionNumber'))
    Cluster.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    Cluster.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    Cluster.add_member(:enhanced_vpc_routing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnhancedVpcRouting'))
    Cluster.add_member(:iam_roles, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIamRoleList, location_name: 'IamRoles'))
    Cluster.add_member(:pending_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingActionsList, location_name: 'PendingActions'))
    Cluster.add_member(:maintenance_track_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MaintenanceTrackName'))
    Cluster.add_member(:elastic_resize_number_of_node_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ElasticResizeNumberOfNodeOptions'))
    Cluster.add_member(:deferred_maintenance_windows, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeferredMaintenanceWindowsList, location_name: 'DeferredMaintenanceWindows'))
    Cluster.add_member(:snapshot_schedule_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotScheduleIdentifier'))
    Cluster.add_member(:snapshot_schedule_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleState, location_name: 'SnapshotScheduleState'))
    Cluster.add_member(:expected_next_snapshot_schedule_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'ExpectedNextSnapshotScheduleTime'))
    Cluster.add_member(:expected_next_snapshot_schedule_time_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ExpectedNextSnapshotScheduleTimeStatus'))
    Cluster.add_member(:next_maintenance_window_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'NextMaintenanceWindowStartTime'))
    Cluster.add_member(:resize_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResizeInfo, location_name: 'ResizeInfo'))
    Cluster.add_member(:availability_zone_relocation_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AvailabilityZoneRelocationStatus'))
    Cluster.add_member(:cluster_namespace_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterNamespaceArn'))
    Cluster.add_member(:total_storage_capacity_in_mega_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: 'TotalStorageCapacityInMegaBytes'))
    Cluster.add_member(:aqua_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AquaConfiguration, location_name: 'AquaConfiguration'))
    Cluster.add_member(:default_iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultIamRoleArn'))
    Cluster.add_member(:reserved_node_exchange_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeExchangeStatus, location_name: 'ReservedNodeExchangeStatus'))
    Cluster.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomDomainName'))
    Cluster.add_member(:custom_domain_certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomDomainCertificateArn'))
    Cluster.add_member(:custom_domain_certificate_expiry_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CustomDomainCertificateExpiryDate'))
    Cluster.add_member(:master_password_secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterPasswordSecretArn'))
    Cluster.add_member(:master_password_secret_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterPasswordSecretKmsKeyId'))
    Cluster.add_member(:ip_address_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IpAddressType'))
    Cluster.add_member(:multi_az, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MultiAZ'))
    Cluster.add_member(:multi_az_secondary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecondaryClusterInfo, location_name: 'MultiAZSecondary'))
    Cluster.type = Types::Cluster
    ClusterAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ClusterAlreadyExistsFault.type = Types::ClusterAlreadyExistsFault
    ClusterAssociatedToSchedule.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier'))
    ClusterAssociatedToSchedule.add_member(:schedule_association_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleState, location_name: 'ScheduleAssociationState'))
    ClusterAssociatedToSchedule.type = Types::ClusterAssociatedToSchedule
    ClusterDbRevision.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier'))
    ClusterDbRevision.add_member(:current_database_revision, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CurrentDatabaseRevision'))
    ClusterDbRevision.add_member(:database_revision_release_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'DatabaseRevisionReleaseDate'))
    ClusterDbRevision.add_member(:revision_targets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionTargetsList, location_name: 'RevisionTargets'))
    ClusterDbRevision.type = Types::ClusterDbRevision
    ClusterDbRevisionsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterDbRevision, traits: {"smithy.api#xmlName" => "ClusterDbRevision"})
    ClusterDbRevisionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    ClusterDbRevisionsMessage.add_member(:cluster_db_revisions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterDbRevisionsList, location_name: 'ClusterDbRevisions'))
    ClusterDbRevisionsMessage.type = Types::ClusterDbRevisionsMessage
    ClusterIamRole.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IamRoleArn'))
    ClusterIamRole.add_member(:apply_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplyStatus'))
    ClusterIamRole.type = Types::ClusterIamRole
    ClusterIamRoleList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterIamRole, traits: {"smithy.api#xmlName" => "ClusterIamRole"})
    ClusterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, traits: {"smithy.api#xmlName" => "Cluster"})
    ClusterNode.add_member(:node_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeRole'))
    ClusterNode.add_member(:private_ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PrivateIPAddress'))
    ClusterNode.add_member(:public_ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PublicIPAddress'))
    ClusterNode.type = Types::ClusterNode
    ClusterNodesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNode)
    ClusterNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ClusterNotFoundFault.type = Types::ClusterNotFoundFault
    ClusterOnLatestRevisionFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ClusterOnLatestRevisionFault.type = Types::ClusterOnLatestRevisionFault
    ClusterParameterGroup.add_member(:parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupName'))
    ClusterParameterGroup.add_member(:parameter_group_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupFamily'))
    ClusterParameterGroup.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    ClusterParameterGroup.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    ClusterParameterGroup.type = Types::ClusterParameterGroup
    ClusterParameterGroupAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ClusterParameterGroupAlreadyExistsFault.type = Types::ClusterParameterGroupAlreadyExistsFault
    ClusterParameterGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ClusterParameterGroupNotFoundFault.type = Types::ClusterParameterGroupNotFoundFault
    ClusterParameterGroupQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ClusterParameterGroupQuotaExceededFault.type = Types::ClusterParameterGroupQuotaExceededFault
    ClusterParameterGroupStatus.add_member(:parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupName'))
    ClusterParameterGroupStatus.add_member(:parameter_apply_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterApplyStatus'))
    ClusterParameterGroupStatus.add_member(:cluster_parameter_status_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterParameterStatusList, location_name: 'ClusterParameterStatusList'))
    ClusterParameterGroupStatus.type = Types::ClusterParameterGroupStatus
    ClusterParameterGroupStatusList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterParameterGroupStatus, traits: {"smithy.api#xmlName" => "ClusterParameterGroup"})
    ClusterParameterGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    ClusterParameterGroupsMessage.add_member(:parameter_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterGroupList, location_name: 'ParameterGroups'))
    ClusterParameterGroupsMessage.type = Types::ClusterParameterGroupsMessage
    ClusterParameterStatus.add_member(:parameter_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterName'))
    ClusterParameterStatus.add_member(:parameter_apply_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterApplyStatus'))
    ClusterParameterStatus.add_member(:parameter_apply_error_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterApplyErrorDescription'))
    ClusterParameterStatus.type = Types::ClusterParameterStatus
    ClusterParameterStatusList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterParameterStatus)
    ClusterQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ClusterQuotaExceededFault.type = Types::ClusterQuotaExceededFault
    ClusterSecurityGroup.add_member(:cluster_security_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterSecurityGroupName'))
    ClusterSecurityGroup.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    ClusterSecurityGroup.add_member(:ec2_security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EC2SecurityGroupList, location_name: 'EC2SecurityGroups'))
    ClusterSecurityGroup.add_member(:ip_ranges, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IPRangeList, location_name: 'IPRanges'))
    ClusterSecurityGroup.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    ClusterSecurityGroup.type = Types::ClusterSecurityGroup
    ClusterSecurityGroupAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ClusterSecurityGroupAlreadyExistsFault.type = Types::ClusterSecurityGroupAlreadyExistsFault
    ClusterSecurityGroupMembership.add_member(:cluster_security_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterSecurityGroupName'))
    ClusterSecurityGroupMembership.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    ClusterSecurityGroupMembership.type = Types::ClusterSecurityGroupMembership
    ClusterSecurityGroupMembershipList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSecurityGroupMembership, traits: {"smithy.api#xmlName" => "ClusterSecurityGroup"})
    ClusterSecurityGroupMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    ClusterSecurityGroupMessage.add_member(:cluster_security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSecurityGroups, location_name: 'ClusterSecurityGroups'))
    ClusterSecurityGroupMessage.type = Types::ClusterSecurityGroupMessage
    ClusterSecurityGroupNameList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "ClusterSecurityGroupName"})
    ClusterSecurityGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ClusterSecurityGroupNotFoundFault.type = Types::ClusterSecurityGroupNotFoundFault
    ClusterSecurityGroupQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ClusterSecurityGroupQuotaExceededFault.type = Types::ClusterSecurityGroupQuotaExceededFault
    ClusterSecurityGroups.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSecurityGroup, traits: {"smithy.api#xmlName" => "ClusterSecurityGroup"})
    ClusterSnapshotAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ClusterSnapshotAlreadyExistsFault.type = Types::ClusterSnapshotAlreadyExistsFault
    ClusterSnapshotCopyStatus.add_member(:destination_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DestinationRegion'))
    ClusterSnapshotCopyStatus.add_member(:retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'RetentionPeriod'))
    ClusterSnapshotCopyStatus.add_member(:manual_snapshot_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ManualSnapshotRetentionPeriod'))
    ClusterSnapshotCopyStatus.add_member(:snapshot_copy_grant_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotCopyGrantName'))
    ClusterSnapshotCopyStatus.type = Types::ClusterSnapshotCopyStatus
    ClusterSnapshotNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ClusterSnapshotNotFoundFault.type = Types::ClusterSnapshotNotFoundFault
    ClusterSnapshotQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ClusterSnapshotQuotaExceededFault.type = Types::ClusterSnapshotQuotaExceededFault
    ClusterSubnetGroup.add_member(:cluster_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterSubnetGroupName'))
    ClusterSubnetGroup.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    ClusterSubnetGroup.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcId'))
    ClusterSubnetGroup.add_member(:subnet_group_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubnetGroupStatus'))
    ClusterSubnetGroup.add_member(:subnets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetList, location_name: 'Subnets'))
    ClusterSubnetGroup.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    ClusterSubnetGroup.add_member(:supported_cluster_ip_address_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValueStringList, location_name: 'SupportedClusterIpAddressTypes'))
    ClusterSubnetGroup.type = Types::ClusterSubnetGroup
    ClusterSubnetGroupAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ClusterSubnetGroupAlreadyExistsFault.type = Types::ClusterSubnetGroupAlreadyExistsFault
    ClusterSubnetGroupMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    ClusterSubnetGroupMessage.add_member(:cluster_subnet_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSubnetGroups, location_name: 'ClusterSubnetGroups'))
    ClusterSubnetGroupMessage.type = Types::ClusterSubnetGroupMessage
    ClusterSubnetGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ClusterSubnetGroupNotFoundFault.type = Types::ClusterSubnetGroupNotFoundFault
    ClusterSubnetGroupQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ClusterSubnetGroupQuotaExceededFault.type = Types::ClusterSubnetGroupQuotaExceededFault
    ClusterSubnetGroups.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSubnetGroup, traits: {"smithy.api#xmlName" => "ClusterSubnetGroup"})
    ClusterSubnetQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ClusterSubnetQuotaExceededFault.type = Types::ClusterSubnetQuotaExceededFault
    ClusterVersion.add_member(:cluster_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterVersion'))
    ClusterVersion.add_member(:cluster_parameter_group_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterParameterGroupFamily'))
    ClusterVersion.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    ClusterVersion.type = Types::ClusterVersion
    ClusterVersionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterVersion, traits: {"smithy.api#xmlName" => "ClusterVersion"})
    ClusterVersionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    ClusterVersionsMessage.add_member(:cluster_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterVersionList, location_name: 'ClusterVersions'))
    ClusterVersionsMessage.type = Types::ClusterVersionsMessage
    ClustersMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    ClustersMessage.add_member(:clusters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterList, location_name: 'Clusters'))
    ClustersMessage.type = Types::ClustersMessage
    ConflictPolicyUpdateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ConflictPolicyUpdateFault.type = Types::ConflictPolicyUpdateFault
    ConsumerIdentifierList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    CopyClusterSnapshotMessage.add_member(:source_snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceSnapshotIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyClusterSnapshotMessage.add_member(:source_snapshot_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceSnapshotClusterIdentifier'))
    CopyClusterSnapshotMessage.add_member(:target_snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetSnapshotIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyClusterSnapshotMessage.add_member(:manual_snapshot_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'ManualSnapshotRetentionPeriod'))
    CopyClusterSnapshotMessage.type = Types::CopyClusterSnapshotMessage
    CopyClusterSnapshotResult.add_member(:snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Snapshot, location_name: 'Snapshot'))
    CopyClusterSnapshotResult.type = Types::CopyClusterSnapshotResult
    CopyToRegionDisabledFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    CopyToRegionDisabledFault.type = Types::CopyToRegionDisabledFault
    CreateAuthenticationProfileMessage.add_member(:authentication_profile_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationProfileNameString, location_name: 'AuthenticationProfileName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateAuthenticationProfileMessage.add_member(:authentication_profile_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AuthenticationProfileContent', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateAuthenticationProfileMessage.type = Types::CreateAuthenticationProfileMessage
    CreateAuthenticationProfileResult.add_member(:authentication_profile_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationProfileNameString, location_name: 'AuthenticationProfileName'))
    CreateAuthenticationProfileResult.add_member(:authentication_profile_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AuthenticationProfileContent'))
    CreateAuthenticationProfileResult.type = Types::CreateAuthenticationProfileResult
    CreateClusterMessage.add_member(:db_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBName'))
    CreateClusterMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateClusterMessage.add_member(:cluster_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterType'))
    CreateClusterMessage.add_member(:node_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateClusterMessage.add_member(:master_username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterUsername', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateClusterMessage.add_member(:master_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'MasterUserPassword'))
    CreateClusterMessage.add_member(:cluster_security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSecurityGroupNameList, location_name: 'ClusterSecurityGroups'))
    CreateClusterMessage.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: 'VpcSecurityGroupIds'))
    CreateClusterMessage.add_member(:cluster_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterSubnetGroupName'))
    CreateClusterMessage.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AvailabilityZone'))
    CreateClusterMessage.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredMaintenanceWindow'))
    CreateClusterMessage.add_member(:cluster_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterParameterGroupName'))
    CreateClusterMessage.add_member(:automated_snapshot_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'AutomatedSnapshotRetentionPeriod'))
    CreateClusterMessage.add_member(:manual_snapshot_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'ManualSnapshotRetentionPeriod'))
    CreateClusterMessage.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Port'))
    CreateClusterMessage.add_member(:cluster_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterVersion'))
    CreateClusterMessage.add_member(:allow_version_upgrade, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AllowVersionUpgrade'))
    CreateClusterMessage.add_member(:number_of_nodes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'NumberOfNodes'))
    CreateClusterMessage.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'PubliclyAccessible'))
    CreateClusterMessage.add_member(:encrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'Encrypted'))
    CreateClusterMessage.add_member(:hsm_client_certificate_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmClientCertificateIdentifier'))
    CreateClusterMessage.add_member(:hsm_configuration_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmConfigurationIdentifier'))
    CreateClusterMessage.add_member(:elastic_ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ElasticIp'))
    CreateClusterMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateClusterMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    CreateClusterMessage.add_member(:enhanced_vpc_routing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnhancedVpcRouting'))
    CreateClusterMessage.add_member(:additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AdditionalInfo'))
    CreateClusterMessage.add_member(:iam_roles, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArnList, location_name: 'IamRoles'))
    CreateClusterMessage.add_member(:maintenance_track_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MaintenanceTrackName'))
    CreateClusterMessage.add_member(:snapshot_schedule_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotScheduleIdentifier'))
    CreateClusterMessage.add_member(:availability_zone_relocation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AvailabilityZoneRelocation'))
    CreateClusterMessage.add_member(:aqua_configuration_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AquaConfigurationStatus, location_name: 'AquaConfigurationStatus'))
    CreateClusterMessage.add_member(:default_iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultIamRoleArn'))
    CreateClusterMessage.add_member(:load_sample_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LoadSampleData'))
    CreateClusterMessage.add_member(:manage_master_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'ManageMasterPassword'))
    CreateClusterMessage.add_member(:master_password_secret_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterPasswordSecretKmsKeyId'))
    CreateClusterMessage.add_member(:ip_address_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IpAddressType'))
    CreateClusterMessage.add_member(:multi_az, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'MultiAZ'))
    CreateClusterMessage.add_member(:redshift_idc_application_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RedshiftIdcApplicationArn'))
    CreateClusterMessage.type = Types::CreateClusterMessage
    CreateClusterParameterGroupMessage.add_member(:parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateClusterParameterGroupMessage.add_member(:parameter_group_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupFamily', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateClusterParameterGroupMessage.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateClusterParameterGroupMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateClusterParameterGroupMessage.type = Types::CreateClusterParameterGroupMessage
    CreateClusterParameterGroupResult.add_member(:cluster_parameter_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterParameterGroup, location_name: 'ClusterParameterGroup'))
    CreateClusterParameterGroupResult.type = Types::CreateClusterParameterGroupResult
    CreateClusterResult.add_member(:cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster'))
    CreateClusterResult.type = Types::CreateClusterResult
    CreateClusterSecurityGroupMessage.add_member(:cluster_security_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterSecurityGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateClusterSecurityGroupMessage.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateClusterSecurityGroupMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateClusterSecurityGroupMessage.type = Types::CreateClusterSecurityGroupMessage
    CreateClusterSecurityGroupResult.add_member(:cluster_security_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSecurityGroup, location_name: 'ClusterSecurityGroup'))
    CreateClusterSecurityGroupResult.type = Types::CreateClusterSecurityGroupResult
    CreateClusterSnapshotMessage.add_member(:snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateClusterSnapshotMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateClusterSnapshotMessage.add_member(:manual_snapshot_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'ManualSnapshotRetentionPeriod'))
    CreateClusterSnapshotMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateClusterSnapshotMessage.type = Types::CreateClusterSnapshotMessage
    CreateClusterSnapshotResult.add_member(:snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Snapshot, location_name: 'Snapshot'))
    CreateClusterSnapshotResult.type = Types::CreateClusterSnapshotResult
    CreateClusterSubnetGroupMessage.add_member(:cluster_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterSubnetGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateClusterSubnetGroupMessage.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateClusterSubnetGroupMessage.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIdentifierList, location_name: 'SubnetIds', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateClusterSubnetGroupMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateClusterSubnetGroupMessage.type = Types::CreateClusterSubnetGroupMessage
    CreateClusterSubnetGroupResult.add_member(:cluster_subnet_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSubnetGroup, location_name: 'ClusterSubnetGroup'))
    CreateClusterSubnetGroupResult.type = Types::CreateClusterSubnetGroupResult
    CreateCustomDomainAssociationMessage.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainNameString, location_name: 'CustomDomainName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateCustomDomainAssociationMessage.add_member(:custom_domain_certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainCertificateArnString, location_name: 'CustomDomainCertificateArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateCustomDomainAssociationMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateCustomDomainAssociationMessage.type = Types::CreateCustomDomainAssociationMessage
    CreateCustomDomainAssociationResult.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainNameString, location_name: 'CustomDomainName'))
    CreateCustomDomainAssociationResult.add_member(:custom_domain_certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainCertificateArnString, location_name: 'CustomDomainCertificateArn'))
    CreateCustomDomainAssociationResult.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier'))
    CreateCustomDomainAssociationResult.add_member(:custom_domain_cert_expiry_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomDomainCertExpiryTime'))
    CreateCustomDomainAssociationResult.type = Types::CreateCustomDomainAssociationResult
    CreateEndpointAccessMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier'))
    CreateEndpointAccessMessage.add_member(:resource_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceOwner'))
    CreateEndpointAccessMessage.add_member(:endpoint_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateEndpointAccessMessage.add_member(:subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubnetGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateEndpointAccessMessage.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: 'VpcSecurityGroupIds'))
    CreateEndpointAccessMessage.type = Types::CreateEndpointAccessMessage
    CreateEndpointAccessOutput.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier'))
    CreateEndpointAccessOutput.add_member(:resource_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceOwner'))
    CreateEndpointAccessOutput.add_member(:subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubnetGroupName'))
    CreateEndpointAccessOutput.add_member(:endpoint_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointStatus'))
    CreateEndpointAccessOutput.add_member(:endpoint_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointName'))
    CreateEndpointAccessOutput.add_member(:endpoint_create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'EndpointCreateTime'))
    CreateEndpointAccessOutput.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Port'))
    CreateEndpointAccessOutput.add_member(:address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Address'))
    CreateEndpointAccessOutput.add_member(:vpc_security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupMembershipList, location_name: 'VpcSecurityGroups'))
    CreateEndpointAccessOutput.add_member(:vpc_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpoint, location_name: 'VpcEndpoint'))
    CreateEndpointAccessOutput.type = Types::CreateEndpointAccessOutput
    CreateEventSubscriptionMessage.add_member(:subscription_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubscriptionName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateEventSubscriptionMessage.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnsTopicArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateEventSubscriptionMessage.add_member(:source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceType'))
    CreateEventSubscriptionMessage.add_member(:source_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceIdsList, location_name: 'SourceIds'))
    CreateEventSubscriptionMessage.add_member(:event_categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: 'EventCategories'))
    CreateEventSubscriptionMessage.add_member(:severity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Severity'))
    CreateEventSubscriptionMessage.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'Enabled'))
    CreateEventSubscriptionMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateEventSubscriptionMessage.type = Types::CreateEventSubscriptionMessage
    CreateEventSubscriptionResult.add_member(:event_subscription, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventSubscription, location_name: 'EventSubscription'))
    CreateEventSubscriptionResult.type = Types::CreateEventSubscriptionResult
    CreateHsmClientCertificateMessage.add_member(:hsm_client_certificate_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmClientCertificateIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateHsmClientCertificateMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateHsmClientCertificateMessage.type = Types::CreateHsmClientCertificateMessage
    CreateHsmClientCertificateResult.add_member(:hsm_client_certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HsmClientCertificate, location_name: 'HsmClientCertificate'))
    CreateHsmClientCertificateResult.type = Types::CreateHsmClientCertificateResult
    CreateHsmConfigurationMessage.add_member(:hsm_configuration_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmConfigurationIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateHsmConfigurationMessage.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateHsmConfigurationMessage.add_member(:hsm_ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmIpAddress', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateHsmConfigurationMessage.add_member(:hsm_partition_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmPartitionName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateHsmConfigurationMessage.add_member(:hsm_partition_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmPartitionPassword', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateHsmConfigurationMessage.add_member(:hsm_server_public_certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmServerPublicCertificate', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateHsmConfigurationMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateHsmConfigurationMessage.type = Types::CreateHsmConfigurationMessage
    CreateHsmConfigurationResult.add_member(:hsm_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HsmConfiguration, location_name: 'HsmConfiguration'))
    CreateHsmConfigurationResult.type = Types::CreateHsmConfigurationResult
    CreateIntegrationMessage.add_member(:source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceArn, location_name: 'SourceArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateIntegrationMessage.add_member(:target_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetArn, location_name: 'TargetArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateIntegrationMessage.add_member(:integration_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationName, location_name: 'IntegrationName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateIntegrationMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KMSKeyId'))
    CreateIntegrationMessage.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList'))
    CreateIntegrationMessage.add_member(:additional_encryption_context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionContextMap, location_name: 'AdditionalEncryptionContext'))
    CreateIntegrationMessage.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationDescription, location_name: 'Description'))
    CreateIntegrationMessage.type = Types::CreateIntegrationMessage
    CreateIntegrationOutput.add_member(:integration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationArn, location_name: 'IntegrationArn'))
    CreateIntegrationOutput.add_member(:integration_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationName, location_name: 'IntegrationName'))
    CreateIntegrationOutput.add_member(:source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceArn, location_name: 'SourceArn'))
    CreateIntegrationOutput.add_member(:target_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetArn, location_name: 'TargetArn'))
    CreateIntegrationOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZeroETLIntegrationStatus, location_name: 'Status'))
    CreateIntegrationOutput.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationErrorList, location_name: 'Errors'))
    CreateIntegrationOutput.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CreateTime'))
    CreateIntegrationOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    CreateIntegrationOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KMSKeyId'))
    CreateIntegrationOutput.add_member(:additional_encryption_context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionContextMap, location_name: 'AdditionalEncryptionContext'))
    CreateIntegrationOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateIntegrationOutput.type = Types::CreateIntegrationOutput
    CreateRedshiftIdcApplicationMessage.add_member(:idc_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IdcInstanceArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateRedshiftIdcApplicationMessage.add_member(:redshift_idc_application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftIdcApplicationName, location_name: 'RedshiftIdcApplicationName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateRedshiftIdcApplicationMessage.add_member(:identity_namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityNamespaceString, location_name: 'IdentityNamespace'))
    CreateRedshiftIdcApplicationMessage.add_member(:idc_display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdcDisplayNameString, location_name: 'IdcDisplayName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateRedshiftIdcApplicationMessage.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IamRoleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateRedshiftIdcApplicationMessage.add_member(:authorized_token_issuer_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizedTokenIssuerList, location_name: 'AuthorizedTokenIssuerList'))
    CreateRedshiftIdcApplicationMessage.add_member(:service_integrations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceIntegrationList, location_name: 'ServiceIntegrations'))
    CreateRedshiftIdcApplicationMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateRedshiftIdcApplicationMessage.add_member(:sso_tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'SsoTagKeys'))
    CreateRedshiftIdcApplicationMessage.type = Types::CreateRedshiftIdcApplicationMessage
    CreateRedshiftIdcApplicationResult.add_member(:redshift_idc_application, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftIdcApplication, location_name: 'RedshiftIdcApplication'))
    CreateRedshiftIdcApplicationResult.type = Types::CreateRedshiftIdcApplicationResult
    CreateScheduledActionMessage.add_member(:scheduled_action_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduledActionName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateScheduledActionMessage.add_member(:target_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionType, location_name: 'TargetAction', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateScheduledActionMessage.add_member(:schedule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Schedule', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateScheduledActionMessage.add_member(:iam_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IamRole', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateScheduledActionMessage.add_member(:scheduled_action_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduledActionDescription'))
    CreateScheduledActionMessage.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'StartTime'))
    CreateScheduledActionMessage.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'EndTime'))
    CreateScheduledActionMessage.add_member(:enable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'Enable'))
    CreateScheduledActionMessage.type = Types::CreateScheduledActionMessage
    CreateScheduledActionOutput.add_member(:scheduled_action_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduledActionName'))
    CreateScheduledActionOutput.add_member(:target_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionType, location_name: 'TargetAction'))
    CreateScheduledActionOutput.add_member(:schedule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Schedule'))
    CreateScheduledActionOutput.add_member(:iam_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IamRole'))
    CreateScheduledActionOutput.add_member(:scheduled_action_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduledActionDescription'))
    CreateScheduledActionOutput.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionState, location_name: 'State'))
    CreateScheduledActionOutput.add_member(:next_invocations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionTimeList, location_name: 'NextInvocations'))
    CreateScheduledActionOutput.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'StartTime'))
    CreateScheduledActionOutput.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'EndTime'))
    CreateScheduledActionOutput.type = Types::CreateScheduledActionOutput
    CreateSnapshotCopyGrantMessage.add_member(:snapshot_copy_grant_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotCopyGrantName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateSnapshotCopyGrantMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    CreateSnapshotCopyGrantMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateSnapshotCopyGrantMessage.type = Types::CreateSnapshotCopyGrantMessage
    CreateSnapshotCopyGrantResult.add_member(:snapshot_copy_grant, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotCopyGrant, location_name: 'SnapshotCopyGrant'))
    CreateSnapshotCopyGrantResult.type = Types::CreateSnapshotCopyGrantResult
    CreateSnapshotScheduleMessage.add_member(:schedule_definitions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleDefinitionList, location_name: 'ScheduleDefinitions'))
    CreateSnapshotScheduleMessage.add_member(:schedule_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduleIdentifier'))
    CreateSnapshotScheduleMessage.add_member(:schedule_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduleDescription'))
    CreateSnapshotScheduleMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateSnapshotScheduleMessage.add_member(:dry_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DryRun'))
    CreateSnapshotScheduleMessage.add_member(:next_invocations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'NextInvocations'))
    CreateSnapshotScheduleMessage.type = Types::CreateSnapshotScheduleMessage
    CreateSnapshotScheduleOutput.add_member(:schedule_definitions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleDefinitionList, location_name: 'ScheduleDefinitions'))
    CreateSnapshotScheduleOutput.add_member(:schedule_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduleIdentifier'))
    CreateSnapshotScheduleOutput.add_member(:schedule_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduleDescription'))
    CreateSnapshotScheduleOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateSnapshotScheduleOutput.add_member(:next_invocations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledSnapshotTimeList, location_name: 'NextInvocations'))
    CreateSnapshotScheduleOutput.add_member(:associated_cluster_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'AssociatedClusterCount'))
    CreateSnapshotScheduleOutput.add_member(:associated_clusters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedClusterList, location_name: 'AssociatedClusters'))
    CreateSnapshotScheduleOutput.type = Types::CreateSnapshotScheduleOutput
    CreateTagsMessage.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateTagsMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateTagsMessage.type = Types::CreateTagsMessage
    CreateUsageLimitMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateUsageLimitMessage.add_member(:feature_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitFeatureType, location_name: 'FeatureType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateUsageLimitMessage.add_member(:limit_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitLimitType, location_name: 'LimitType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateUsageLimitMessage.add_member(:amount, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'Amount', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateUsageLimitMessage.add_member(:period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitPeriod, location_name: 'Period'))
    CreateUsageLimitMessage.add_member(:breach_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitBreachAction, location_name: 'BreachAction'))
    CreateUsageLimitMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateUsageLimitMessage.type = Types::CreateUsageLimitMessage
    CreateUsageLimitOutput.add_member(:usage_limit_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UsageLimitId'))
    CreateUsageLimitOutput.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier'))
    CreateUsageLimitOutput.add_member(:feature_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitFeatureType, location_name: 'FeatureType'))
    CreateUsageLimitOutput.add_member(:limit_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitLimitType, location_name: 'LimitType'))
    CreateUsageLimitOutput.add_member(:amount, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'Amount'))
    CreateUsageLimitOutput.add_member(:period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitPeriod, location_name: 'Period'))
    CreateUsageLimitOutput.add_member(:breach_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitBreachAction, location_name: 'BreachAction'))
    CreateUsageLimitOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateUsageLimitOutput.type = Types::CreateUsageLimitOutput
    CustomCnameAssociationFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    CustomCnameAssociationFault.type = Types::CustomCnameAssociationFault
    CustomDomainAssociationNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    CustomDomainAssociationNotFoundFault.type = Types::CustomDomainAssociationNotFoundFault
    CustomDomainAssociationsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    CustomDomainAssociationsMessage.add_member(:associations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociationList, location_name: 'Associations'))
    CustomDomainAssociationsMessage.type = Types::CustomDomainAssociationsMessage
    CustomerStorageMessage.add_member(:total_backup_size_in_mega_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'TotalBackupSizeInMegaBytes'))
    CustomerStorageMessage.add_member(:total_provisioned_storage_in_mega_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'TotalProvisionedStorageInMegaBytes'))
    CustomerStorageMessage.type = Types::CustomerStorageMessage
    DataShare.add_member(:data_share_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataShareArn'))
    DataShare.add_member(:producer_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProducerArn'))
    DataShare.add_member(:allow_publicly_accessible_consumers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllowPubliclyAccessibleConsumers'))
    DataShare.add_member(:data_share_associations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataShareAssociationList, location_name: 'DataShareAssociations'))
    DataShare.add_member(:managed_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ManagedBy'))
    DataShare.add_member(:data_share_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataShareType, location_name: 'DataShareType'))
    DataShare.type = Types::DataShare
    DataShareAssociation.add_member(:consumer_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConsumerIdentifier'))
    DataShareAssociation.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataShareStatus, location_name: 'Status'))
    DataShareAssociation.add_member(:consumer_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConsumerRegion'))
    DataShareAssociation.add_member(:created_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CreatedDate'))
    DataShareAssociation.add_member(:status_change_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'StatusChangeDate'))
    DataShareAssociation.add_member(:producer_allowed_writes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'ProducerAllowedWrites'))
    DataShareAssociation.add_member(:consumer_accepted_writes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'ConsumerAcceptedWrites'))
    DataShareAssociation.type = Types::DataShareAssociation
    DataShareAssociationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataShareAssociation)
    DataShareList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataShare)
    DataShareStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DataShareStatus.add_member(:pending_authorization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_AUTHORIZATION', traits: {"smithy.api#enumValue" => "PENDING_AUTHORIZATION"}))
    DataShareStatus.add_member(:authorized, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTHORIZED', traits: {"smithy.api#enumValue" => "AUTHORIZED"}))
    DataShareStatus.add_member(:deauthorized, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEAUTHORIZED', traits: {"smithy.api#enumValue" => "DEAUTHORIZED"}))
    DataShareStatus.add_member(:rejected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECTED', traits: {"smithy.api#enumValue" => "REJECTED"}))
    DataShareStatus.add_member(:available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    DataShareStatusForConsumer.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DataShareStatusForConsumer.add_member(:available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    DataShareStatusForProducer.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DataShareStatusForProducer.add_member(:authorized, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTHORIZED', traits: {"smithy.api#enumValue" => "AUTHORIZED"}))
    DataShareStatusForProducer.add_member(:pending_authorization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_AUTHORIZATION', traits: {"smithy.api#enumValue" => "PENDING_AUTHORIZATION"}))
    DataShareStatusForProducer.add_member(:deauthorized, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEAUTHORIZED', traits: {"smithy.api#enumValue" => "DEAUTHORIZED"}))
    DataShareStatusForProducer.add_member(:rejected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECTED', traits: {"smithy.api#enumValue" => "REJECTED"}))
    DataShareType.add_member(:internal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL', traits: {"smithy.api#enumValue" => "INTERNAL"}))
    DataTransferProgress.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    DataTransferProgress.add_member(:current_rate_in_mega_bytes_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'CurrentRateInMegaBytesPerSecond'))
    DataTransferProgress.add_member(:total_data_in_mega_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'TotalDataInMegaBytes'))
    DataTransferProgress.add_member(:data_transferred_in_mega_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'DataTransferredInMegaBytes'))
    DataTransferProgress.add_member(:estimated_time_to_completion_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: 'EstimatedTimeToCompletionInSeconds'))
    DataTransferProgress.add_member(:elapsed_time_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: 'ElapsedTimeInSeconds'))
    DataTransferProgress.type = Types::DataTransferProgress
    DbGroupList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "DbGroup"})
    DeauthorizeDataShareMessage.add_member(:data_share_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataShareArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeauthorizeDataShareMessage.add_member(:consumer_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConsumerIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeauthorizeDataShareMessage.type = Types::DeauthorizeDataShareMessage
    DeauthorizeDataShareOutput.add_member(:data_share_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataShareArn'))
    DeauthorizeDataShareOutput.add_member(:producer_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProducerArn'))
    DeauthorizeDataShareOutput.add_member(:allow_publicly_accessible_consumers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllowPubliclyAccessibleConsumers'))
    DeauthorizeDataShareOutput.add_member(:data_share_associations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataShareAssociationList, location_name: 'DataShareAssociations'))
    DeauthorizeDataShareOutput.add_member(:managed_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ManagedBy'))
    DeauthorizeDataShareOutput.add_member(:data_share_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataShareType, location_name: 'DataShareType'))
    DeauthorizeDataShareOutput.type = Types::DeauthorizeDataShareOutput
    DefaultClusterParameters.add_member(:parameter_group_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupFamily'))
    DefaultClusterParameters.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DefaultClusterParameters.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersList, location_name: 'Parameters'))
    DefaultClusterParameters.type = Types::DefaultClusterParameters
    DeferredMaintenanceWindow.add_member(:defer_maintenance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeferMaintenanceIdentifier'))
    DeferredMaintenanceWindow.add_member(:defer_maintenance_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'DeferMaintenanceStartTime'))
    DeferredMaintenanceWindow.add_member(:defer_maintenance_end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'DeferMaintenanceEndTime'))
    DeferredMaintenanceWindow.type = Types::DeferredMaintenanceWindow
    DeferredMaintenanceWindowsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeferredMaintenanceWindow, traits: {"smithy.api#xmlName" => "DeferredMaintenanceWindow"})
    DeleteAuthenticationProfileMessage.add_member(:authentication_profile_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationProfileNameString, location_name: 'AuthenticationProfileName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteAuthenticationProfileMessage.type = Types::DeleteAuthenticationProfileMessage
    DeleteAuthenticationProfileResult.add_member(:authentication_profile_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationProfileNameString, location_name: 'AuthenticationProfileName'))
    DeleteAuthenticationProfileResult.type = Types::DeleteAuthenticationProfileResult
    DeleteClusterMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteClusterMessage.add_member(:skip_final_cluster_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SkipFinalClusterSnapshot'))
    DeleteClusterMessage.add_member(:final_cluster_snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FinalClusterSnapshotIdentifier'))
    DeleteClusterMessage.add_member(:final_cluster_snapshot_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'FinalClusterSnapshotRetentionPeriod'))
    DeleteClusterMessage.type = Types::DeleteClusterMessage
    DeleteClusterParameterGroupMessage.add_member(:parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteClusterParameterGroupMessage.type = Types::DeleteClusterParameterGroupMessage
    DeleteClusterResult.add_member(:cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster'))
    DeleteClusterResult.type = Types::DeleteClusterResult
    DeleteClusterSecurityGroupMessage.add_member(:cluster_security_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterSecurityGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteClusterSecurityGroupMessage.type = Types::DeleteClusterSecurityGroupMessage
    DeleteClusterSnapshotInput.add_member(:snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteClusterSnapshotInput.add_member(:snapshot_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotClusterIdentifier'))
    DeleteClusterSnapshotInput.type = Types::DeleteClusterSnapshotInput
    DeleteClusterSnapshotMessage.add_member(:snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteClusterSnapshotMessage.add_member(:snapshot_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotClusterIdentifier'))
    DeleteClusterSnapshotMessage.type = Types::DeleteClusterSnapshotMessage
    DeleteClusterSnapshotMessageList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterSnapshotMessage, traits: {"smithy.api#xmlName" => "DeleteClusterSnapshotMessage"})
    DeleteClusterSnapshotResult.add_member(:snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Snapshot, location_name: 'Snapshot'))
    DeleteClusterSnapshotResult.type = Types::DeleteClusterSnapshotResult
    DeleteClusterSubnetGroupMessage.add_member(:cluster_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterSubnetGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteClusterSubnetGroupMessage.type = Types::DeleteClusterSubnetGroupMessage
    DeleteCustomDomainAssociationMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteCustomDomainAssociationMessage.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainNameString, location_name: 'CustomDomainName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteCustomDomainAssociationMessage.type = Types::DeleteCustomDomainAssociationMessage
    DeleteEndpointAccessMessage.add_member(:endpoint_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteEndpointAccessMessage.type = Types::DeleteEndpointAccessMessage
    DeleteEndpointAccessOutput.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier'))
    DeleteEndpointAccessOutput.add_member(:resource_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceOwner'))
    DeleteEndpointAccessOutput.add_member(:subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubnetGroupName'))
    DeleteEndpointAccessOutput.add_member(:endpoint_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointStatus'))
    DeleteEndpointAccessOutput.add_member(:endpoint_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointName'))
    DeleteEndpointAccessOutput.add_member(:endpoint_create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'EndpointCreateTime'))
    DeleteEndpointAccessOutput.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Port'))
    DeleteEndpointAccessOutput.add_member(:address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Address'))
    DeleteEndpointAccessOutput.add_member(:vpc_security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupMembershipList, location_name: 'VpcSecurityGroups'))
    DeleteEndpointAccessOutput.add_member(:vpc_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpoint, location_name: 'VpcEndpoint'))
    DeleteEndpointAccessOutput.type = Types::DeleteEndpointAccessOutput
    DeleteEventSubscriptionMessage.add_member(:subscription_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubscriptionName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteEventSubscriptionMessage.type = Types::DeleteEventSubscriptionMessage
    DeleteHsmClientCertificateMessage.add_member(:hsm_client_certificate_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmClientCertificateIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteHsmClientCertificateMessage.type = Types::DeleteHsmClientCertificateMessage
    DeleteHsmConfigurationMessage.add_member(:hsm_configuration_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmConfigurationIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteHsmConfigurationMessage.type = Types::DeleteHsmConfigurationMessage
    DeleteIntegrationMessage.add_member(:integration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationArn, location_name: 'IntegrationArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteIntegrationMessage.type = Types::DeleteIntegrationMessage
    DeleteIntegrationOutput.add_member(:integration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationArn, location_name: 'IntegrationArn'))
    DeleteIntegrationOutput.add_member(:integration_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationName, location_name: 'IntegrationName'))
    DeleteIntegrationOutput.add_member(:source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceArn, location_name: 'SourceArn'))
    DeleteIntegrationOutput.add_member(:target_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetArn, location_name: 'TargetArn'))
    DeleteIntegrationOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZeroETLIntegrationStatus, location_name: 'Status'))
    DeleteIntegrationOutput.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationErrorList, location_name: 'Errors'))
    DeleteIntegrationOutput.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CreateTime'))
    DeleteIntegrationOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    DeleteIntegrationOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KMSKeyId'))
    DeleteIntegrationOutput.add_member(:additional_encryption_context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionContextMap, location_name: 'AdditionalEncryptionContext'))
    DeleteIntegrationOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    DeleteIntegrationOutput.type = Types::DeleteIntegrationOutput
    DeletePartnerInput.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationAccountId, location_name: 'AccountId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeletePartnerInput.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationClusterIdentifier, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeletePartnerInput.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationDatabaseName, location_name: 'DatabaseName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeletePartnerInput.add_member(:partner_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationPartnerName, location_name: 'PartnerName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeletePartnerInput.type = Types::DeletePartnerInput
    DeletePartnerOutput.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationDatabaseName, location_name: 'DatabaseName'))
    DeletePartnerOutput.add_member(:partner_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationPartnerName, location_name: 'PartnerName'))
    DeletePartnerOutput.type = Types::DeletePartnerOutput
    DeleteRedshiftIdcApplicationMessage.add_member(:redshift_idc_application_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RedshiftIdcApplicationArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteRedshiftIdcApplicationMessage.type = Types::DeleteRedshiftIdcApplicationMessage
    DeleteResourcePolicyMessage.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteResourcePolicyMessage.type = Types::DeleteResourcePolicyMessage
    DeleteScheduledActionMessage.add_member(:scheduled_action_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduledActionName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteScheduledActionMessage.type = Types::DeleteScheduledActionMessage
    DeleteSnapshotCopyGrantMessage.add_member(:snapshot_copy_grant_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotCopyGrantName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteSnapshotCopyGrantMessage.type = Types::DeleteSnapshotCopyGrantMessage
    DeleteSnapshotScheduleMessage.add_member(:schedule_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduleIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteSnapshotScheduleMessage.type = Types::DeleteSnapshotScheduleMessage
    DeleteTagsMessage.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteTagsMessage.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteTagsMessage.type = Types::DeleteTagsMessage
    DeleteUsageLimitMessage.add_member(:usage_limit_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UsageLimitId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteUsageLimitMessage.type = Types::DeleteUsageLimitMessage
    DependentServiceAccessDeniedFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DependentServiceAccessDeniedFault.type = Types::DependentServiceAccessDeniedFault
    DependentServiceRequestThrottlingFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DependentServiceRequestThrottlingFault.type = Types::DependentServiceRequestThrottlingFault
    DependentServiceUnavailableFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DependentServiceUnavailableFault.type = Types::DependentServiceUnavailableFault
    DeregisterNamespaceInputMessage.add_member(:namespace_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceIdentifierUnion, location_name: 'NamespaceIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeregisterNamespaceInputMessage.add_member(:consumer_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumerIdentifierList, location_name: 'ConsumerIdentifiers', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeregisterNamespaceInputMessage.type = Types::DeregisterNamespaceInputMessage
    DeregisterNamespaceOutputMessage.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceRegistrationStatus, location_name: 'Status'))
    DeregisterNamespaceOutputMessage.type = Types::DeregisterNamespaceOutputMessage
    DescribeAccountAttributesMessage.add_member(:attribute_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeNameList, location_name: 'AttributeNames'))
    DescribeAccountAttributesMessage.type = Types::DescribeAccountAttributesMessage
    DescribeAccountAttributesOutput.add_member(:account_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeList, location_name: 'AccountAttributes'))
    DescribeAccountAttributesOutput.type = Types::DescribeAccountAttributesOutput
    DescribeAuthenticationProfilesMessage.add_member(:authentication_profile_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationProfileNameString, location_name: 'AuthenticationProfileName'))
    DescribeAuthenticationProfilesMessage.type = Types::DescribeAuthenticationProfilesMessage
    DescribeAuthenticationProfilesResult.add_member(:authentication_profiles, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationProfileList, location_name: 'AuthenticationProfiles'))
    DescribeAuthenticationProfilesResult.type = Types::DescribeAuthenticationProfilesResult
    DescribeClusterDbRevisionsMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier'))
    DescribeClusterDbRevisionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeClusterDbRevisionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeClusterDbRevisionsMessage.type = Types::DescribeClusterDbRevisionsMessage
    DescribeClusterParameterGroupsMessage.add_member(:parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupName'))
    DescribeClusterParameterGroupsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeClusterParameterGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeClusterParameterGroupsMessage.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys'))
    DescribeClusterParameterGroupsMessage.add_member(:tag_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValueList, location_name: 'TagValues'))
    DescribeClusterParameterGroupsMessage.type = Types::DescribeClusterParameterGroupsMessage
    DescribeClusterParametersMessage.add_member(:parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeClusterParametersMessage.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Source'))
    DescribeClusterParametersMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeClusterParametersMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeClusterParametersMessage.type = Types::DescribeClusterParametersMessage
    DescribeClusterParametersOutput.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersList, location_name: 'Parameters'))
    DescribeClusterParametersOutput.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeClusterParametersOutput.type = Types::DescribeClusterParametersOutput
    DescribeClusterSecurityGroupsMessage.add_member(:cluster_security_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterSecurityGroupName'))
    DescribeClusterSecurityGroupsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeClusterSecurityGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeClusterSecurityGroupsMessage.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys'))
    DescribeClusterSecurityGroupsMessage.add_member(:tag_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValueList, location_name: 'TagValues'))
    DescribeClusterSecurityGroupsMessage.type = Types::DescribeClusterSecurityGroupsMessage
    DescribeClusterSnapshotsMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier'))
    DescribeClusterSnapshotsMessage.add_member(:snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotIdentifier'))
    DescribeClusterSnapshotsMessage.add_member(:snapshot_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotArn'))
    DescribeClusterSnapshotsMessage.add_member(:snapshot_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotType'))
    DescribeClusterSnapshotsMessage.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'StartTime'))
    DescribeClusterSnapshotsMessage.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'EndTime'))
    DescribeClusterSnapshotsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeClusterSnapshotsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeClusterSnapshotsMessage.add_member(:owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OwnerAccount'))
    DescribeClusterSnapshotsMessage.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys'))
    DescribeClusterSnapshotsMessage.add_member(:tag_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValueList, location_name: 'TagValues'))
    DescribeClusterSnapshotsMessage.add_member(:cluster_exists, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'ClusterExists'))
    DescribeClusterSnapshotsMessage.add_member(:sorting_entities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotSortingEntityList, location_name: 'SortingEntities'))
    DescribeClusterSnapshotsMessage.type = Types::DescribeClusterSnapshotsMessage
    DescribeClusterSubnetGroupsMessage.add_member(:cluster_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterSubnetGroupName'))
    DescribeClusterSubnetGroupsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeClusterSubnetGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeClusterSubnetGroupsMessage.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys'))
    DescribeClusterSubnetGroupsMessage.add_member(:tag_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValueList, location_name: 'TagValues'))
    DescribeClusterSubnetGroupsMessage.type = Types::DescribeClusterSubnetGroupsMessage
    DescribeClusterTracksMessage.add_member(:maintenance_track_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MaintenanceTrackName'))
    DescribeClusterTracksMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeClusterTracksMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeClusterTracksMessage.type = Types::DescribeClusterTracksMessage
    DescribeClusterVersionsMessage.add_member(:cluster_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterVersion'))
    DescribeClusterVersionsMessage.add_member(:cluster_parameter_group_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterParameterGroupFamily'))
    DescribeClusterVersionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeClusterVersionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeClusterVersionsMessage.type = Types::DescribeClusterVersionsMessage
    DescribeClustersMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier'))
    DescribeClustersMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeClustersMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeClustersMessage.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys'))
    DescribeClustersMessage.add_member(:tag_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValueList, location_name: 'TagValues'))
    DescribeClustersMessage.type = Types::DescribeClustersMessage
    DescribeCustomDomainAssociationsMessage.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainNameString, location_name: 'CustomDomainName'))
    DescribeCustomDomainAssociationsMessage.add_member(:custom_domain_certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainCertificateArnString, location_name: 'CustomDomainCertificateArn'))
    DescribeCustomDomainAssociationsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeCustomDomainAssociationsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeCustomDomainAssociationsMessage.type = Types::DescribeCustomDomainAssociationsMessage
    DescribeDataSharesForConsumerMessage.add_member(:consumer_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConsumerArn'))
    DescribeDataSharesForConsumerMessage.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataShareStatusForConsumer, location_name: 'Status'))
    DescribeDataSharesForConsumerMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeDataSharesForConsumerMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDataSharesForConsumerMessage.type = Types::DescribeDataSharesForConsumerMessage
    DescribeDataSharesForConsumerResult.add_member(:data_shares, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataShareList, location_name: 'DataShares'))
    DescribeDataSharesForConsumerResult.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDataSharesForConsumerResult.type = Types::DescribeDataSharesForConsumerResult
    DescribeDataSharesForProducerMessage.add_member(:producer_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProducerArn'))
    DescribeDataSharesForProducerMessage.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataShareStatusForProducer, location_name: 'Status'))
    DescribeDataSharesForProducerMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeDataSharesForProducerMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDataSharesForProducerMessage.type = Types::DescribeDataSharesForProducerMessage
    DescribeDataSharesForProducerResult.add_member(:data_shares, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataShareList, location_name: 'DataShares'))
    DescribeDataSharesForProducerResult.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDataSharesForProducerResult.type = Types::DescribeDataSharesForProducerResult
    DescribeDataSharesMessage.add_member(:data_share_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataShareArn'))
    DescribeDataSharesMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeDataSharesMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDataSharesMessage.type = Types::DescribeDataSharesMessage
    DescribeDataSharesResult.add_member(:data_shares, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataShareList, location_name: 'DataShares'))
    DescribeDataSharesResult.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDataSharesResult.type = Types::DescribeDataSharesResult
    DescribeDefaultClusterParametersMessage.add_member(:parameter_group_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupFamily', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeDefaultClusterParametersMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeDefaultClusterParametersMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDefaultClusterParametersMessage.type = Types::DescribeDefaultClusterParametersMessage
    DescribeDefaultClusterParametersResult.add_member(:default_cluster_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultClusterParameters, location_name: 'DefaultClusterParameters'))
    DescribeDefaultClusterParametersResult.type = Types::DescribeDefaultClusterParametersResult
    DescribeEndpointAccessMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier'))
    DescribeEndpointAccessMessage.add_member(:resource_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceOwner'))
    DescribeEndpointAccessMessage.add_member(:endpoint_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointName'))
    DescribeEndpointAccessMessage.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcId'))
    DescribeEndpointAccessMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeEndpointAccessMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeEndpointAccessMessage.type = Types::DescribeEndpointAccessMessage
    DescribeEndpointAccessOutput.add_member(:endpoint_access_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointAccesses, location_name: 'EndpointAccessList'))
    DescribeEndpointAccessOutput.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeEndpointAccessOutput.type = Types::DescribeEndpointAccessOutput
    DescribeEndpointAuthorizationMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier'))
    DescribeEndpointAuthorizationMessage.add_member(:account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Account'))
    DescribeEndpointAuthorizationMessage.add_member(:grantee, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'Grantee'))
    DescribeEndpointAuthorizationMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeEndpointAuthorizationMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeEndpointAuthorizationMessage.type = Types::DescribeEndpointAuthorizationMessage
    DescribeEndpointAuthorizationOutput.add_member(:endpoint_authorization_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointAuthorizations, location_name: 'EndpointAuthorizationList'))
    DescribeEndpointAuthorizationOutput.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeEndpointAuthorizationOutput.type = Types::DescribeEndpointAuthorizationOutput
    DescribeEventCategoriesMessage.add_member(:source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceType'))
    DescribeEventCategoriesMessage.type = Types::DescribeEventCategoriesMessage
    DescribeEventSubscriptionsMessage.add_member(:subscription_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubscriptionName'))
    DescribeEventSubscriptionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeEventSubscriptionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeEventSubscriptionsMessage.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys'))
    DescribeEventSubscriptionsMessage.add_member(:tag_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValueList, location_name: 'TagValues'))
    DescribeEventSubscriptionsMessage.type = Types::DescribeEventSubscriptionsMessage
    DescribeEventsMessage.add_member(:source_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceIdentifier'))
    DescribeEventsMessage.add_member(:source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceType, location_name: 'SourceType'))
    DescribeEventsMessage.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'StartTime'))
    DescribeEventsMessage.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'EndTime'))
    DescribeEventsMessage.add_member(:duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Duration'))
    DescribeEventsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeEventsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeEventsMessage.type = Types::DescribeEventsMessage
    DescribeHsmClientCertificatesMessage.add_member(:hsm_client_certificate_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmClientCertificateIdentifier'))
    DescribeHsmClientCertificatesMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeHsmClientCertificatesMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeHsmClientCertificatesMessage.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys'))
    DescribeHsmClientCertificatesMessage.add_member(:tag_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValueList, location_name: 'TagValues'))
    DescribeHsmClientCertificatesMessage.type = Types::DescribeHsmClientCertificatesMessage
    DescribeHsmConfigurationsMessage.add_member(:hsm_configuration_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmConfigurationIdentifier'))
    DescribeHsmConfigurationsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeHsmConfigurationsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeHsmConfigurationsMessage.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys'))
    DescribeHsmConfigurationsMessage.add_member(:tag_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValueList, location_name: 'TagValues'))
    DescribeHsmConfigurationsMessage.type = Types::DescribeHsmConfigurationsMessage
    DescribeInboundIntegrationsMessage.add_member(:integration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InboundIntegrationArn, location_name: 'IntegrationArn'))
    DescribeInboundIntegrationsMessage.add_member(:target_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetArn, location_name: 'TargetArn'))
    DescribeInboundIntegrationsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeInboundIntegrationsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeInboundIntegrationsMessage.type = Types::DescribeInboundIntegrationsMessage
    DescribeIntegrationsFilter.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeIntegrationsFilterName, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeIntegrationsFilter.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeIntegrationsFilterValueList, location_name: 'Values', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeIntegrationsFilter.type = Types::DescribeIntegrationsFilter
    DescribeIntegrationsFilterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeIntegrationsFilter, traits: {"smithy.api#xmlName" => "DescribeIntegrationsFilter"})
    DescribeIntegrationsFilterName.add_member(:integration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTEGRATION_ARN', traits: {"smithy.api#enumValue" => "integration-arn"}))
    DescribeIntegrationsFilterName.add_member(:source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SOURCE_ARN', traits: {"smithy.api#enumValue" => "source-arn"}))
    DescribeIntegrationsFilterName.add_member(:source_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SOURCE_TYPES', traits: {"smithy.api#enumValue" => "source-types"}))
    DescribeIntegrationsFilterName.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STATUS', traits: {"smithy.api#enumValue" => "status"}))
    DescribeIntegrationsFilterValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "Value"})
    DescribeIntegrationsMessage.add_member(:integration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationArn, location_name: 'IntegrationArn'))
    DescribeIntegrationsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeIntegrationsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeIntegrationsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeIntegrationsFilterList, location_name: 'Filters'))
    DescribeIntegrationsMessage.type = Types::DescribeIntegrationsMessage
    DescribeLoggingStatusMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeLoggingStatusMessage.type = Types::DescribeLoggingStatusMessage
    DescribeLoggingStatusOutput.add_member(:logging_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'LoggingEnabled'))
    DescribeLoggingStatusOutput.add_member(:bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BucketName'))
    DescribeLoggingStatusOutput.add_member(:s3_key_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3KeyPrefixValue, location_name: 'S3KeyPrefix'))
    DescribeLoggingStatusOutput.add_member(:last_successful_delivery_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'LastSuccessfulDeliveryTime'))
    DescribeLoggingStatusOutput.add_member(:last_failure_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'LastFailureTime'))
    DescribeLoggingStatusOutput.add_member(:last_failure_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastFailureMessage'))
    DescribeLoggingStatusOutput.add_member(:log_destination_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogDestinationType, location_name: 'LogDestinationType'))
    DescribeLoggingStatusOutput.add_member(:log_exports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'LogExports'))
    DescribeLoggingStatusOutput.type = Types::DescribeLoggingStatusOutput
    DescribeNodeConfigurationOptionsMessage.add_member(:action_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionType, location_name: 'ActionType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeNodeConfigurationOptionsMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier'))
    DescribeNodeConfigurationOptionsMessage.add_member(:snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotIdentifier'))
    DescribeNodeConfigurationOptionsMessage.add_member(:snapshot_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotArn'))
    DescribeNodeConfigurationOptionsMessage.add_member(:owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OwnerAccount'))
    DescribeNodeConfigurationOptionsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeConfigurationOptionsFilterList, location_name: 'Filters', traits: {"smithy.api#xmlName" => "Filter"}))
    DescribeNodeConfigurationOptionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeNodeConfigurationOptionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeNodeConfigurationOptionsMessage.type = Types::DescribeNodeConfigurationOptionsMessage
    DescribeOrderableClusterOptionsMessage.add_member(:cluster_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterVersion'))
    DescribeOrderableClusterOptionsMessage.add_member(:node_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeType'))
    DescribeOrderableClusterOptionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeOrderableClusterOptionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeOrderableClusterOptionsMessage.type = Types::DescribeOrderableClusterOptionsMessage
    DescribePartnersInputMessage.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationAccountId, location_name: 'AccountId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribePartnersInputMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationClusterIdentifier, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribePartnersInputMessage.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationDatabaseName, location_name: 'DatabaseName'))
    DescribePartnersInputMessage.add_member(:partner_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationPartnerName, location_name: 'PartnerName'))
    DescribePartnersInputMessage.type = Types::DescribePartnersInputMessage
    DescribePartnersOutputMessage.add_member(:partner_integration_info_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationInfoList, location_name: 'PartnerIntegrationInfoList'))
    DescribePartnersOutputMessage.type = Types::DescribePartnersOutputMessage
    DescribeRedshiftIdcApplicationsMessage.add_member(:redshift_idc_application_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RedshiftIdcApplicationArn'))
    DescribeRedshiftIdcApplicationsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeRedshiftIdcApplicationsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeRedshiftIdcApplicationsMessage.type = Types::DescribeRedshiftIdcApplicationsMessage
    DescribeRedshiftIdcApplicationsResult.add_member(:redshift_idc_applications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftIdcApplicationList, location_name: 'RedshiftIdcApplications'))
    DescribeRedshiftIdcApplicationsResult.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeRedshiftIdcApplicationsResult.type = Types::DescribeRedshiftIdcApplicationsResult
    DescribeReservedNodeExchangeStatusInputMessage.add_member(:reserved_node_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedNodeId'))
    DescribeReservedNodeExchangeStatusInputMessage.add_member(:reserved_node_exchange_request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedNodeExchangeRequestId'))
    DescribeReservedNodeExchangeStatusInputMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeReservedNodeExchangeStatusInputMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeReservedNodeExchangeStatusInputMessage.type = Types::DescribeReservedNodeExchangeStatusInputMessage
    DescribeReservedNodeExchangeStatusOutputMessage.add_member(:reserved_node_exchange_status_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeExchangeStatusList, location_name: 'ReservedNodeExchangeStatusDetails'))
    DescribeReservedNodeExchangeStatusOutputMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeReservedNodeExchangeStatusOutputMessage.type = Types::DescribeReservedNodeExchangeStatusOutputMessage
    DescribeReservedNodeOfferingsMessage.add_member(:reserved_node_offering_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedNodeOfferingId'))
    DescribeReservedNodeOfferingsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeReservedNodeOfferingsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeReservedNodeOfferingsMessage.type = Types::DescribeReservedNodeOfferingsMessage
    DescribeReservedNodesMessage.add_member(:reserved_node_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedNodeId'))
    DescribeReservedNodesMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeReservedNodesMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeReservedNodesMessage.type = Types::DescribeReservedNodesMessage
    DescribeResizeMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeResizeMessage.type = Types::DescribeResizeMessage
    DescribeResizeOutput.add_member(:target_node_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetNodeType'))
    DescribeResizeOutput.add_member(:target_number_of_nodes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'TargetNumberOfNodes'))
    DescribeResizeOutput.add_member(:target_cluster_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetClusterType'))
    DescribeResizeOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    DescribeResizeOutput.add_member(:import_tables_completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTablesCompleted, location_name: 'ImportTablesCompleted'))
    DescribeResizeOutput.add_member(:import_tables_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTablesInProgress, location_name: 'ImportTablesInProgress'))
    DescribeResizeOutput.add_member(:import_tables_not_started, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportTablesNotStarted, location_name: 'ImportTablesNotStarted'))
    DescribeResizeOutput.add_member(:avg_resize_rate_in_mega_bytes_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'AvgResizeRateInMegaBytesPerSecond'))
    DescribeResizeOutput.add_member(:total_resize_data_in_mega_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: 'TotalResizeDataInMegaBytes'))
    DescribeResizeOutput.add_member(:progress_in_mega_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: 'ProgressInMegaBytes'))
    DescribeResizeOutput.add_member(:elapsed_time_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: 'ElapsedTimeInSeconds'))
    DescribeResizeOutput.add_member(:estimated_time_to_completion_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: 'EstimatedTimeToCompletionInSeconds'))
    DescribeResizeOutput.add_member(:resize_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResizeType'))
    DescribeResizeOutput.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    DescribeResizeOutput.add_member(:target_encryption_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetEncryptionType'))
    DescribeResizeOutput.add_member(:data_transfer_progress_percent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'DataTransferProgressPercent'))
    DescribeResizeOutput.type = Types::DescribeResizeOutput
    DescribeScheduledActionsMessage.add_member(:scheduled_action_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduledActionName'))
    DescribeScheduledActionsMessage.add_member(:target_action_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionTypeValues, location_name: 'TargetActionType'))
    DescribeScheduledActionsMessage.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'StartTime'))
    DescribeScheduledActionsMessage.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'EndTime'))
    DescribeScheduledActionsMessage.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'Active'))
    DescribeScheduledActionsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionFilterList, location_name: 'Filters'))
    DescribeScheduledActionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeScheduledActionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeScheduledActionsMessage.type = Types::DescribeScheduledActionsMessage
    DescribeSnapshotCopyGrantsMessage.add_member(:snapshot_copy_grant_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotCopyGrantName'))
    DescribeSnapshotCopyGrantsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeSnapshotCopyGrantsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeSnapshotCopyGrantsMessage.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys'))
    DescribeSnapshotCopyGrantsMessage.add_member(:tag_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValueList, location_name: 'TagValues'))
    DescribeSnapshotCopyGrantsMessage.type = Types::DescribeSnapshotCopyGrantsMessage
    DescribeSnapshotSchedulesMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier'))
    DescribeSnapshotSchedulesMessage.add_member(:schedule_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduleIdentifier'))
    DescribeSnapshotSchedulesMessage.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys'))
    DescribeSnapshotSchedulesMessage.add_member(:tag_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValueList, location_name: 'TagValues'))
    DescribeSnapshotSchedulesMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeSnapshotSchedulesMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeSnapshotSchedulesMessage.type = Types::DescribeSnapshotSchedulesMessage
    DescribeSnapshotSchedulesOutputMessage.add_member(:snapshot_schedules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotScheduleList, location_name: 'SnapshotSchedules'))
    DescribeSnapshotSchedulesOutputMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeSnapshotSchedulesOutputMessage.type = Types::DescribeSnapshotSchedulesOutputMessage
    DescribeTableRestoreStatusMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier'))
    DescribeTableRestoreStatusMessage.add_member(:table_restore_request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TableRestoreRequestId'))
    DescribeTableRestoreStatusMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeTableRestoreStatusMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeTableRestoreStatusMessage.type = Types::DescribeTableRestoreStatusMessage
    DescribeTagsMessage.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName'))
    DescribeTagsMessage.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceType'))
    DescribeTagsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeTagsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeTagsMessage.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys'))
    DescribeTagsMessage.add_member(:tag_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValueList, location_name: 'TagValues'))
    DescribeTagsMessage.type = Types::DescribeTagsMessage
    DescribeUsageLimitsMessage.add_member(:usage_limit_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UsageLimitId'))
    DescribeUsageLimitsMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier'))
    DescribeUsageLimitsMessage.add_member(:feature_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitFeatureType, location_name: 'FeatureType'))
    DescribeUsageLimitsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeUsageLimitsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeUsageLimitsMessage.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys'))
    DescribeUsageLimitsMessage.add_member(:tag_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValueList, location_name: 'TagValues'))
    DescribeUsageLimitsMessage.type = Types::DescribeUsageLimitsMessage
    DescribeUsageLimitsOutput.add_member(:usage_limits, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimits, location_name: 'UsageLimits'))
    DescribeUsageLimitsOutput.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeUsageLimitsOutput.type = Types::DescribeUsageLimitsOutput
    DisableLoggingMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DisableLoggingMessage.type = Types::DisableLoggingMessage
    DisableLoggingOutput.add_member(:logging_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'LoggingEnabled'))
    DisableLoggingOutput.add_member(:bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BucketName'))
    DisableLoggingOutput.add_member(:s3_key_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3KeyPrefixValue, location_name: 'S3KeyPrefix'))
    DisableLoggingOutput.add_member(:last_successful_delivery_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'LastSuccessfulDeliveryTime'))
    DisableLoggingOutput.add_member(:last_failure_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'LastFailureTime'))
    DisableLoggingOutput.add_member(:last_failure_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastFailureMessage'))
    DisableLoggingOutput.add_member(:log_destination_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogDestinationType, location_name: 'LogDestinationType'))
    DisableLoggingOutput.add_member(:log_exports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'LogExports'))
    DisableLoggingOutput.type = Types::DisableLoggingOutput
    DisableSnapshotCopyMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DisableSnapshotCopyMessage.type = Types::DisableSnapshotCopyMessage
    DisableSnapshotCopyResult.add_member(:cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster'))
    DisableSnapshotCopyResult.type = Types::DisableSnapshotCopyResult
    DisassociateDataShareConsumerMessage.add_member(:data_share_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataShareArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DisassociateDataShareConsumerMessage.add_member(:disassociate_entire_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DisassociateEntireAccount'))
    DisassociateDataShareConsumerMessage.add_member(:consumer_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConsumerArn'))
    DisassociateDataShareConsumerMessage.add_member(:consumer_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ConsumerRegion'))
    DisassociateDataShareConsumerMessage.type = Types::DisassociateDataShareConsumerMessage
    DisassociateDataShareConsumerOutput.add_member(:data_share_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataShareArn'))
    DisassociateDataShareConsumerOutput.add_member(:producer_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProducerArn'))
    DisassociateDataShareConsumerOutput.add_member(:allow_publicly_accessible_consumers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllowPubliclyAccessibleConsumers'))
    DisassociateDataShareConsumerOutput.add_member(:data_share_associations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataShareAssociationList, location_name: 'DataShareAssociations'))
    DisassociateDataShareConsumerOutput.add_member(:managed_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ManagedBy'))
    DisassociateDataShareConsumerOutput.add_member(:data_share_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataShareType, location_name: 'DataShareType'))
    DisassociateDataShareConsumerOutput.type = Types::DisassociateDataShareConsumerOutput
    EC2SecurityGroup.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    EC2SecurityGroup.add_member(:ec2_security_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EC2SecurityGroupName'))
    EC2SecurityGroup.add_member(:ec2_security_group_owner_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EC2SecurityGroupOwnerId'))
    EC2SecurityGroup.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    EC2SecurityGroup.type = Types::EC2SecurityGroup
    EC2SecurityGroupList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EC2SecurityGroup, traits: {"smithy.api#xmlName" => "EC2SecurityGroup"})
    ElasticIpStatus.add_member(:elastic_ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ElasticIp'))
    ElasticIpStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    ElasticIpStatus.type = Types::ElasticIpStatus
    EligibleTracksToUpdateList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTarget, traits: {"smithy.api#xmlName" => "UpdateTarget"})
    EnableLoggingMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EnableLoggingMessage.add_member(:bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BucketName'))
    EnableLoggingMessage.add_member(:s3_key_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3KeyPrefixValue, location_name: 'S3KeyPrefix'))
    EnableLoggingMessage.add_member(:log_destination_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogDestinationType, location_name: 'LogDestinationType'))
    EnableLoggingMessage.add_member(:log_exports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'LogExports'))
    EnableLoggingMessage.type = Types::EnableLoggingMessage
    EnableLoggingOutput.add_member(:logging_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'LoggingEnabled'))
    EnableLoggingOutput.add_member(:bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BucketName'))
    EnableLoggingOutput.add_member(:s3_key_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3KeyPrefixValue, location_name: 'S3KeyPrefix'))
    EnableLoggingOutput.add_member(:last_successful_delivery_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'LastSuccessfulDeliveryTime'))
    EnableLoggingOutput.add_member(:last_failure_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'LastFailureTime'))
    EnableLoggingOutput.add_member(:last_failure_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastFailureMessage'))
    EnableLoggingOutput.add_member(:log_destination_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogDestinationType, location_name: 'LogDestinationType'))
    EnableLoggingOutput.add_member(:log_exports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'LogExports'))
    EnableLoggingOutput.type = Types::EnableLoggingOutput
    EnableSnapshotCopyMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EnableSnapshotCopyMessage.add_member(:destination_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DestinationRegion', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EnableSnapshotCopyMessage.add_member(:retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'RetentionPeriod'))
    EnableSnapshotCopyMessage.add_member(:snapshot_copy_grant_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotCopyGrantName'))
    EnableSnapshotCopyMessage.add_member(:manual_snapshot_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'ManualSnapshotRetentionPeriod'))
    EnableSnapshotCopyMessage.type = Types::EnableSnapshotCopyMessage
    EnableSnapshotCopyResult.add_member(:cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster'))
    EnableSnapshotCopyResult.type = Types::EnableSnapshotCopyResult
    EncryptionContextMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    EncryptionContextMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Endpoint.add_member(:address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Address'))
    Endpoint.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Port'))
    Endpoint.add_member(:vpc_endpoints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpointsList, location_name: 'VpcEndpoints'))
    Endpoint.type = Types::Endpoint
    EndpointAccess.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier'))
    EndpointAccess.add_member(:resource_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceOwner'))
    EndpointAccess.add_member(:subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubnetGroupName'))
    EndpointAccess.add_member(:endpoint_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointStatus'))
    EndpointAccess.add_member(:endpoint_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointName'))
    EndpointAccess.add_member(:endpoint_create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'EndpointCreateTime'))
    EndpointAccess.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Port'))
    EndpointAccess.add_member(:address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Address'))
    EndpointAccess.add_member(:vpc_security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupMembershipList, location_name: 'VpcSecurityGroups'))
    EndpointAccess.add_member(:vpc_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpoint, location_name: 'VpcEndpoint'))
    EndpointAccess.type = Types::EndpointAccess
    EndpointAccesses.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointAccess)
    EndpointAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    EndpointAlreadyExistsFault.type = Types::EndpointAlreadyExistsFault
    EndpointAuthorization.add_member(:grantor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Grantor'))
    EndpointAuthorization.add_member(:grantee, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Grantee'))
    EndpointAuthorization.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier'))
    EndpointAuthorization.add_member(:authorize_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'AuthorizeTime'))
    EndpointAuthorization.add_member(:cluster_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterStatus'))
    EndpointAuthorization.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationStatus, location_name: 'Status'))
    EndpointAuthorization.add_member(:allowed_all_vp_cs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllowedAllVPCs'))
    EndpointAuthorization.add_member(:allowed_vp_cs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcIdentifierList, location_name: 'AllowedVPCs'))
    EndpointAuthorization.add_member(:endpoint_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'EndpointCount'))
    EndpointAuthorization.type = Types::EndpointAuthorization
    EndpointAuthorizationAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    EndpointAuthorizationAlreadyExistsFault.type = Types::EndpointAuthorizationAlreadyExistsFault
    EndpointAuthorizationNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    EndpointAuthorizationNotFoundFault.type = Types::EndpointAuthorizationNotFoundFault
    EndpointAuthorizations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointAuthorization)
    EndpointAuthorizationsPerClusterLimitExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    EndpointAuthorizationsPerClusterLimitExceededFault.type = Types::EndpointAuthorizationsPerClusterLimitExceededFault
    EndpointNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    EndpointNotFoundFault.type = Types::EndpointNotFoundFault
    EndpointsPerAuthorizationLimitExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    EndpointsPerAuthorizationLimitExceededFault.type = Types::EndpointsPerAuthorizationLimitExceededFault
    EndpointsPerClusterLimitExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    EndpointsPerClusterLimitExceededFault.type = Types::EndpointsPerClusterLimitExceededFault
    Event.add_member(:source_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceIdentifier'))
    Event.add_member(:source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceType, location_name: 'SourceType'))
    Event.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    Event.add_member(:event_categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: 'EventCategories'))
    Event.add_member(:severity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Severity'))
    Event.add_member(:date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'Date'))
    Event.add_member(:event_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EventId'))
    Event.type = Types::Event
    EventCategoriesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "EventCategory"})
    EventCategoriesMap.add_member(:source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceType'))
    EventCategoriesMap.add_member(:events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventInfoMapList, location_name: 'Events'))
    EventCategoriesMap.type = Types::EventCategoriesMap
    EventCategoriesMapList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventCategoriesMap, traits: {"smithy.api#xmlName" => "EventCategoriesMap"})
    EventCategoriesMessage.add_member(:event_categories_map_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventCategoriesMapList, location_name: 'EventCategoriesMapList'))
    EventCategoriesMessage.type = Types::EventCategoriesMessage
    EventInfoMap.add_member(:event_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EventId'))
    EventInfoMap.add_member(:event_categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: 'EventCategories'))
    EventInfoMap.add_member(:event_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EventDescription'))
    EventInfoMap.add_member(:severity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Severity'))
    EventInfoMap.type = Types::EventInfoMap
    EventInfoMapList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventInfoMap, traits: {"smithy.api#xmlName" => "EventInfoMap"})
    EventList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Event, traits: {"smithy.api#xmlName" => "Event"})
    EventSubscription.add_member(:customer_aws_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomerAwsId'))
    EventSubscription.add_member(:cust_subscription_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustSubscriptionId'))
    EventSubscription.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnsTopicArn'))
    EventSubscription.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    EventSubscription.add_member(:subscription_creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'SubscriptionCreationTime'))
    EventSubscription.add_member(:source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceType'))
    EventSubscription.add_member(:source_ids_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceIdsList, location_name: 'SourceIdsList'))
    EventSubscription.add_member(:event_categories_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: 'EventCategoriesList'))
    EventSubscription.add_member(:severity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Severity'))
    EventSubscription.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled'))
    EventSubscription.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    EventSubscription.type = Types::EventSubscription
    EventSubscriptionQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    EventSubscriptionQuotaExceededFault.type = Types::EventSubscriptionQuotaExceededFault
    EventSubscriptionsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventSubscription, traits: {"smithy.api#xmlName" => "EventSubscription"})
    EventSubscriptionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    EventSubscriptionsMessage.add_member(:event_subscriptions_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventSubscriptionsList, location_name: 'EventSubscriptionsList'))
    EventSubscriptionsMessage.type = Types::EventSubscriptionsMessage
    EventsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    EventsMessage.add_member(:events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventList, location_name: 'Events'))
    EventsMessage.type = Types::EventsMessage
    FailoverPrimaryComputeInputMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    FailoverPrimaryComputeInputMessage.type = Types::FailoverPrimaryComputeInputMessage
    FailoverPrimaryComputeResult.add_member(:cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster'))
    FailoverPrimaryComputeResult.type = Types::FailoverPrimaryComputeResult
    GetClusterCredentialsMessage.add_member(:db_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbUser', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetClusterCredentialsMessage.add_member(:db_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbName'))
    GetClusterCredentialsMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier'))
    GetClusterCredentialsMessage.add_member(:duration_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'DurationSeconds'))
    GetClusterCredentialsMessage.add_member(:auto_create, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AutoCreate'))
    GetClusterCredentialsMessage.add_member(:db_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DbGroupList, location_name: 'DbGroups'))
    GetClusterCredentialsMessage.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomDomainName'))
    GetClusterCredentialsMessage.type = Types::GetClusterCredentialsMessage
    GetClusterCredentialsOutput.add_member(:db_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbUser'))
    GetClusterCredentialsOutput.add_member(:db_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'DbPassword'))
    GetClusterCredentialsOutput.add_member(:expiration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'Expiration'))
    GetClusterCredentialsOutput.type = Types::GetClusterCredentialsOutput
    GetClusterCredentialsWithIAMMessage.add_member(:db_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbName'))
    GetClusterCredentialsWithIAMMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier'))
    GetClusterCredentialsWithIAMMessage.add_member(:duration_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'DurationSeconds'))
    GetClusterCredentialsWithIAMMessage.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomDomainName'))
    GetClusterCredentialsWithIAMMessage.type = Types::GetClusterCredentialsWithIAMMessage
    GetClusterCredentialsWithIAMOutput.add_member(:db_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbUser'))
    GetClusterCredentialsWithIAMOutput.add_member(:db_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'DbPassword'))
    GetClusterCredentialsWithIAMOutput.add_member(:expiration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'Expiration'))
    GetClusterCredentialsWithIAMOutput.add_member(:next_refresh_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'NextRefreshTime'))
    GetClusterCredentialsWithIAMOutput.type = Types::GetClusterCredentialsWithIAMOutput
    GetReservedNodeExchangeConfigurationOptionsInputMessage.add_member(:action_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeExchangeActionType, location_name: 'ActionType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetReservedNodeExchangeConfigurationOptionsInputMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier'))
    GetReservedNodeExchangeConfigurationOptionsInputMessage.add_member(:snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotIdentifier'))
    GetReservedNodeExchangeConfigurationOptionsInputMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    GetReservedNodeExchangeConfigurationOptionsInputMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    GetReservedNodeExchangeConfigurationOptionsInputMessage.type = Types::GetReservedNodeExchangeConfigurationOptionsInputMessage
    GetReservedNodeExchangeConfigurationOptionsOutputMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    GetReservedNodeExchangeConfigurationOptionsOutputMessage.add_member(:reserved_node_configuration_option_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeConfigurationOptionList, location_name: 'ReservedNodeConfigurationOptionList'))
    GetReservedNodeExchangeConfigurationOptionsOutputMessage.type = Types::GetReservedNodeExchangeConfigurationOptionsOutputMessage
    GetReservedNodeExchangeOfferingsInputMessage.add_member(:reserved_node_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedNodeId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetReservedNodeExchangeOfferingsInputMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    GetReservedNodeExchangeOfferingsInputMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    GetReservedNodeExchangeOfferingsInputMessage.type = Types::GetReservedNodeExchangeOfferingsInputMessage
    GetReservedNodeExchangeOfferingsOutputMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    GetReservedNodeExchangeOfferingsOutputMessage.add_member(:reserved_node_offerings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeOfferingList, location_name: 'ReservedNodeOfferings'))
    GetReservedNodeExchangeOfferingsOutputMessage.type = Types::GetReservedNodeExchangeOfferingsOutputMessage
    GetResourcePolicyMessage.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetResourcePolicyMessage.type = Types::GetResourcePolicyMessage
    GetResourcePolicyResult.add_member(:resource_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: 'ResourcePolicy'))
    GetResourcePolicyResult.type = Types::GetResourcePolicyResult
    HsmClientCertificate.add_member(:hsm_client_certificate_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmClientCertificateIdentifier'))
    HsmClientCertificate.add_member(:hsm_client_certificate_public_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmClientCertificatePublicKey'))
    HsmClientCertificate.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    HsmClientCertificate.type = Types::HsmClientCertificate
    HsmClientCertificateAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    HsmClientCertificateAlreadyExistsFault.type = Types::HsmClientCertificateAlreadyExistsFault
    HsmClientCertificateList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: HsmClientCertificate, traits: {"smithy.api#xmlName" => "HsmClientCertificate"})
    HsmClientCertificateMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    HsmClientCertificateMessage.add_member(:hsm_client_certificates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HsmClientCertificateList, location_name: 'HsmClientCertificates'))
    HsmClientCertificateMessage.type = Types::HsmClientCertificateMessage
    HsmClientCertificateNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    HsmClientCertificateNotFoundFault.type = Types::HsmClientCertificateNotFoundFault
    HsmClientCertificateQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    HsmClientCertificateQuotaExceededFault.type = Types::HsmClientCertificateQuotaExceededFault
    HsmConfiguration.add_member(:hsm_configuration_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmConfigurationIdentifier'))
    HsmConfiguration.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    HsmConfiguration.add_member(:hsm_ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmIpAddress'))
    HsmConfiguration.add_member(:hsm_partition_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmPartitionName'))
    HsmConfiguration.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    HsmConfiguration.type = Types::HsmConfiguration
    HsmConfigurationAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    HsmConfigurationAlreadyExistsFault.type = Types::HsmConfigurationAlreadyExistsFault
    HsmConfigurationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: HsmConfiguration, traits: {"smithy.api#xmlName" => "HsmConfiguration"})
    HsmConfigurationMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    HsmConfigurationMessage.add_member(:hsm_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HsmConfigurationList, location_name: 'HsmConfigurations'))
    HsmConfigurationMessage.type = Types::HsmConfigurationMessage
    HsmConfigurationNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    HsmConfigurationNotFoundFault.type = Types::HsmConfigurationNotFoundFault
    HsmConfigurationQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    HsmConfigurationQuotaExceededFault.type = Types::HsmConfigurationQuotaExceededFault
    HsmStatus.add_member(:hsm_client_certificate_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmClientCertificateIdentifier'))
    HsmStatus.add_member(:hsm_configuration_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmConfigurationIdentifier'))
    HsmStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    HsmStatus.type = Types::HsmStatus
    IPRange.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    IPRange.add_member(:cidrip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CIDRIP'))
    IPRange.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    IPRange.type = Types::IPRange
    IPRangeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IPRange, traits: {"smithy.api#xmlName" => "IPRange"})
    IamRoleArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "IamRoleArn"})
    ImpactRankingType.add_member(:high, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HIGH', traits: {"smithy.api#enumValue" => "HIGH"}))
    ImpactRankingType.add_member(:medium, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEDIUM', traits: {"smithy.api#enumValue" => "MEDIUM"}))
    ImpactRankingType.add_member(:low, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOW', traits: {"smithy.api#enumValue" => "LOW"}))
    ImportTablesCompleted.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ImportTablesInProgress.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ImportTablesNotStarted.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    InProgressTableRestoreQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InProgressTableRestoreQuotaExceededFault.type = Types::InProgressTableRestoreQuotaExceededFault
    InboundIntegration.add_member(:integration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InboundIntegrationArn, location_name: 'IntegrationArn'))
    InboundIntegration.add_member(:source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceArn'))
    InboundIntegration.add_member(:target_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetArn, location_name: 'TargetArn'))
    InboundIntegration.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZeroETLIntegrationStatus, location_name: 'Status'))
    InboundIntegration.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationErrorList, location_name: 'Errors'))
    InboundIntegration.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CreateTime'))
    InboundIntegration.type = Types::InboundIntegration
    InboundIntegrationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InboundIntegration, traits: {"smithy.api#xmlName" => "InboundIntegration"})
    InboundIntegrationsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    InboundIntegrationsMessage.add_member(:inbound_integrations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InboundIntegrationList, location_name: 'InboundIntegrations'))
    InboundIntegrationsMessage.type = Types::InboundIntegrationsMessage
    IncompatibleOrderableOptions.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    IncompatibleOrderableOptions.type = Types::IncompatibleOrderableOptions
    InsufficientClusterCapacityFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InsufficientClusterCapacityFault.type = Types::InsufficientClusterCapacityFault
    InsufficientS3BucketPolicyFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InsufficientS3BucketPolicyFault.type = Types::InsufficientS3BucketPolicyFault
    Integration.add_member(:integration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationArn, location_name: 'IntegrationArn'))
    Integration.add_member(:integration_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationName, location_name: 'IntegrationName'))
    Integration.add_member(:source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceArn, location_name: 'SourceArn'))
    Integration.add_member(:target_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetArn, location_name: 'TargetArn'))
    Integration.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZeroETLIntegrationStatus, location_name: 'Status'))
    Integration.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationErrorList, location_name: 'Errors'))
    Integration.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CreateTime'))
    Integration.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    Integration.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KMSKeyId'))
    Integration.add_member(:additional_encryption_context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionContextMap, location_name: 'AdditionalEncryptionContext'))
    Integration.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    Integration.type = Types::Integration
    IntegrationAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    IntegrationAlreadyExistsFault.type = Types::IntegrationAlreadyExistsFault
    IntegrationConflictOperationFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    IntegrationConflictOperationFault.type = Types::IntegrationConflictOperationFault
    IntegrationConflictStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    IntegrationConflictStateFault.type = Types::IntegrationConflictStateFault
    IntegrationError.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorCode', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    IntegrationError.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorMessage'))
    IntegrationError.type = Types::IntegrationError
    IntegrationErrorList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationError, traits: {"smithy.api#xmlName" => "IntegrationError"})
    IntegrationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integration, traits: {"smithy.api#xmlName" => "Integration"})
    IntegrationNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    IntegrationNotFoundFault.type = Types::IntegrationNotFoundFault
    IntegrationQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    IntegrationQuotaExceededFault.type = Types::IntegrationQuotaExceededFault
    IntegrationSourceNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    IntegrationSourceNotFoundFault.type = Types::IntegrationSourceNotFoundFault
    IntegrationTargetNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    IntegrationTargetNotFoundFault.type = Types::IntegrationTargetNotFoundFault
    IntegrationsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    IntegrationsMessage.add_member(:integrations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationList, location_name: 'Integrations'))
    IntegrationsMessage.type = Types::IntegrationsMessage
    InvalidAuthenticationProfileRequestFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidAuthenticationProfileRequestFault.type = Types::InvalidAuthenticationProfileRequestFault
    InvalidAuthorizationStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidAuthorizationStateFault.type = Types::InvalidAuthorizationStateFault
    InvalidClusterParameterGroupStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidClusterParameterGroupStateFault.type = Types::InvalidClusterParameterGroupStateFault
    InvalidClusterSecurityGroupStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidClusterSecurityGroupStateFault.type = Types::InvalidClusterSecurityGroupStateFault
    InvalidClusterSnapshotScheduleStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidClusterSnapshotScheduleStateFault.type = Types::InvalidClusterSnapshotScheduleStateFault
    InvalidClusterSnapshotStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidClusterSnapshotStateFault.type = Types::InvalidClusterSnapshotStateFault
    InvalidClusterStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidClusterStateFault.type = Types::InvalidClusterStateFault
    InvalidClusterSubnetGroupStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidClusterSubnetGroupStateFault.type = Types::InvalidClusterSubnetGroupStateFault
    InvalidClusterSubnetStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidClusterSubnetStateFault.type = Types::InvalidClusterSubnetStateFault
    InvalidClusterTrackFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidClusterTrackFault.type = Types::InvalidClusterTrackFault
    InvalidDataShareFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidDataShareFault.type = Types::InvalidDataShareFault
    InvalidElasticIpFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidElasticIpFault.type = Types::InvalidElasticIpFault
    InvalidEndpointStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidEndpointStateFault.type = Types::InvalidEndpointStateFault
    InvalidHsmClientCertificateStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidHsmClientCertificateStateFault.type = Types::InvalidHsmClientCertificateStateFault
    InvalidHsmConfigurationStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidHsmConfigurationStateFault.type = Types::InvalidHsmConfigurationStateFault
    InvalidNamespaceFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidNamespaceFault.type = Types::InvalidNamespaceFault
    InvalidPolicyFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidPolicyFault.type = Types::InvalidPolicyFault
    InvalidReservedNodeStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidReservedNodeStateFault.type = Types::InvalidReservedNodeStateFault
    InvalidRestoreFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidRestoreFault.type = Types::InvalidRestoreFault
    InvalidRetentionPeriodFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidRetentionPeriodFault.type = Types::InvalidRetentionPeriodFault
    InvalidS3BucketNameFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidS3BucketNameFault.type = Types::InvalidS3BucketNameFault
    InvalidS3KeyPrefixFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidS3KeyPrefixFault.type = Types::InvalidS3KeyPrefixFault
    InvalidScheduleFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidScheduleFault.type = Types::InvalidScheduleFault
    InvalidScheduledActionFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidScheduledActionFault.type = Types::InvalidScheduledActionFault
    InvalidSnapshotCopyGrantStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidSnapshotCopyGrantStateFault.type = Types::InvalidSnapshotCopyGrantStateFault
    InvalidSubnet.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidSubnet.type = Types::InvalidSubnet
    InvalidSubscriptionStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidSubscriptionStateFault.type = Types::InvalidSubscriptionStateFault
    InvalidTableRestoreArgumentFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidTableRestoreArgumentFault.type = Types::InvalidTableRestoreArgumentFault
    InvalidTagFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidTagFault.type = Types::InvalidTagFault
    InvalidUsageLimitFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidUsageLimitFault.type = Types::InvalidUsageLimitFault
    InvalidVPCNetworkStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidVPCNetworkStateFault.type = Types::InvalidVPCNetworkStateFault
    Ipv6CidrBlockNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    Ipv6CidrBlockNotFoundFault.type = Types::Ipv6CidrBlockNotFoundFault
    LakeFormationQuery.add_member(:authorization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAuthorization, location_name: 'Authorization', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    LakeFormationQuery.type = Types::LakeFormationQuery
    LakeFormationScopeUnion.add_member(:lake_formation_query, Types::LakeFormationScopeUnion::LakeFormationQuery, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LakeFormationQuery, location_name: 'LakeFormationQuery'))
    LakeFormationScopeUnion.add_member(:unknown, Types::LakeFormationScopeUnion::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    LakeFormationScopeUnion.type = Types::LakeFormationScopeUnion
    LakeFormationServiceIntegrations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LakeFormationScopeUnion)
    LimitExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    LimitExceededFault.type = Types::LimitExceededFault
    ListRecommendationsMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier'))
    ListRecommendationsMessage.add_member(:namespace_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NamespaceArn'))
    ListRecommendationsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    ListRecommendationsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    ListRecommendationsMessage.type = Types::ListRecommendationsMessage
    ListRecommendationsResult.add_member(:recommendations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationList, location_name: 'Recommendations'))
    ListRecommendationsResult.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    ListRecommendationsResult.type = Types::ListRecommendationsResult
    LogDestinationType.add_member(:s3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3', traits: {"smithy.api#enumValue" => "s3"}))
    LogDestinationType.add_member(:cloudwatch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOUDWATCH', traits: {"smithy.api#enumValue" => "cloudwatch"}))
    LogTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MaintenanceTrack.add_member(:maintenance_track_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MaintenanceTrackName'))
    MaintenanceTrack.add_member(:database_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DatabaseVersion'))
    MaintenanceTrack.add_member(:update_targets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EligibleTracksToUpdateList, location_name: 'UpdateTargets'))
    MaintenanceTrack.type = Types::MaintenanceTrack
    Mode.add_member(:standard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STANDARD', traits: {"smithy.api#enumValue" => "standard"}))
    Mode.add_member(:high_performance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HIGH_PERFORMANCE', traits: {"smithy.api#enumValue" => "high-performance"}))
    ModifyAquaInputMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyAquaInputMessage.add_member(:aqua_configuration_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AquaConfigurationStatus, location_name: 'AquaConfigurationStatus'))
    ModifyAquaInputMessage.type = Types::ModifyAquaInputMessage
    ModifyAquaOutputMessage.add_member(:aqua_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AquaConfiguration, location_name: 'AquaConfiguration'))
    ModifyAquaOutputMessage.type = Types::ModifyAquaOutputMessage
    ModifyAuthenticationProfileMessage.add_member(:authentication_profile_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationProfileNameString, location_name: 'AuthenticationProfileName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyAuthenticationProfileMessage.add_member(:authentication_profile_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AuthenticationProfileContent', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyAuthenticationProfileMessage.type = Types::ModifyAuthenticationProfileMessage
    ModifyAuthenticationProfileResult.add_member(:authentication_profile_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationProfileNameString, location_name: 'AuthenticationProfileName'))
    ModifyAuthenticationProfileResult.add_member(:authentication_profile_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AuthenticationProfileContent'))
    ModifyAuthenticationProfileResult.type = Types::ModifyAuthenticationProfileResult
    ModifyClusterDbRevisionMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyClusterDbRevisionMessage.add_member(:revision_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RevisionTarget', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyClusterDbRevisionMessage.type = Types::ModifyClusterDbRevisionMessage
    ModifyClusterDbRevisionResult.add_member(:cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster'))
    ModifyClusterDbRevisionResult.type = Types::ModifyClusterDbRevisionResult
    ModifyClusterIamRolesMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyClusterIamRolesMessage.add_member(:add_iam_roles, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArnList, location_name: 'AddIamRoles'))
    ModifyClusterIamRolesMessage.add_member(:remove_iam_roles, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArnList, location_name: 'RemoveIamRoles'))
    ModifyClusterIamRolesMessage.add_member(:default_iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultIamRoleArn'))
    ModifyClusterIamRolesMessage.type = Types::ModifyClusterIamRolesMessage
    ModifyClusterIamRolesResult.add_member(:cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster'))
    ModifyClusterIamRolesResult.type = Types::ModifyClusterIamRolesResult
    ModifyClusterMaintenanceMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyClusterMaintenanceMessage.add_member(:defer_maintenance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DeferMaintenance'))
    ModifyClusterMaintenanceMessage.add_member(:defer_maintenance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeferMaintenanceIdentifier'))
    ModifyClusterMaintenanceMessage.add_member(:defer_maintenance_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'DeferMaintenanceStartTime'))
    ModifyClusterMaintenanceMessage.add_member(:defer_maintenance_end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'DeferMaintenanceEndTime'))
    ModifyClusterMaintenanceMessage.add_member(:defer_maintenance_duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'DeferMaintenanceDuration'))
    ModifyClusterMaintenanceMessage.type = Types::ModifyClusterMaintenanceMessage
    ModifyClusterMaintenanceResult.add_member(:cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster'))
    ModifyClusterMaintenanceResult.type = Types::ModifyClusterMaintenanceResult
    ModifyClusterMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyClusterMessage.add_member(:cluster_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterType'))
    ModifyClusterMessage.add_member(:node_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeType'))
    ModifyClusterMessage.add_member(:number_of_nodes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'NumberOfNodes'))
    ModifyClusterMessage.add_member(:cluster_security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSecurityGroupNameList, location_name: 'ClusterSecurityGroups'))
    ModifyClusterMessage.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: 'VpcSecurityGroupIds'))
    ModifyClusterMessage.add_member(:master_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'MasterUserPassword'))
    ModifyClusterMessage.add_member(:cluster_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterParameterGroupName'))
    ModifyClusterMessage.add_member(:automated_snapshot_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'AutomatedSnapshotRetentionPeriod'))
    ModifyClusterMessage.add_member(:manual_snapshot_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'ManualSnapshotRetentionPeriod'))
    ModifyClusterMessage.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredMaintenanceWindow'))
    ModifyClusterMessage.add_member(:cluster_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterVersion'))
    ModifyClusterMessage.add_member(:allow_version_upgrade, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AllowVersionUpgrade'))
    ModifyClusterMessage.add_member(:hsm_client_certificate_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmClientCertificateIdentifier'))
    ModifyClusterMessage.add_member(:hsm_configuration_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmConfigurationIdentifier'))
    ModifyClusterMessage.add_member(:new_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NewClusterIdentifier'))
    ModifyClusterMessage.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'PubliclyAccessible'))
    ModifyClusterMessage.add_member(:elastic_ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ElasticIp'))
    ModifyClusterMessage.add_member(:enhanced_vpc_routing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnhancedVpcRouting'))
    ModifyClusterMessage.add_member(:maintenance_track_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MaintenanceTrackName'))
    ModifyClusterMessage.add_member(:encrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'Encrypted'))
    ModifyClusterMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    ModifyClusterMessage.add_member(:availability_zone_relocation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AvailabilityZoneRelocation'))
    ModifyClusterMessage.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AvailabilityZone'))
    ModifyClusterMessage.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Port'))
    ModifyClusterMessage.add_member(:manage_master_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'ManageMasterPassword'))
    ModifyClusterMessage.add_member(:master_password_secret_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterPasswordSecretKmsKeyId'))
    ModifyClusterMessage.add_member(:ip_address_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IpAddressType'))
    ModifyClusterMessage.add_member(:multi_az, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'MultiAZ'))
    ModifyClusterMessage.type = Types::ModifyClusterMessage
    ModifyClusterParameterGroupMessage.add_member(:parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyClusterParameterGroupMessage.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersList, location_name: 'Parameters', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyClusterParameterGroupMessage.type = Types::ModifyClusterParameterGroupMessage
    ModifyClusterParameterGroupOutput.add_member(:parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupName'))
    ModifyClusterParameterGroupOutput.add_member(:parameter_group_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupStatus'))
    ModifyClusterParameterGroupOutput.type = Types::ModifyClusterParameterGroupOutput
    ModifyClusterResult.add_member(:cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster'))
    ModifyClusterResult.type = Types::ModifyClusterResult
    ModifyClusterSnapshotMessage.add_member(:snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyClusterSnapshotMessage.add_member(:manual_snapshot_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'ManualSnapshotRetentionPeriod'))
    ModifyClusterSnapshotMessage.add_member(:force, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Force'))
    ModifyClusterSnapshotMessage.type = Types::ModifyClusterSnapshotMessage
    ModifyClusterSnapshotResult.add_member(:snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Snapshot, location_name: 'Snapshot'))
    ModifyClusterSnapshotResult.type = Types::ModifyClusterSnapshotResult
    ModifyClusterSnapshotScheduleMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyClusterSnapshotScheduleMessage.add_member(:schedule_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduleIdentifier'))
    ModifyClusterSnapshotScheduleMessage.add_member(:disassociate_schedule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DisassociateSchedule'))
    ModifyClusterSnapshotScheduleMessage.type = Types::ModifyClusterSnapshotScheduleMessage
    ModifyClusterSubnetGroupMessage.add_member(:cluster_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterSubnetGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyClusterSubnetGroupMessage.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    ModifyClusterSubnetGroupMessage.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIdentifierList, location_name: 'SubnetIds', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyClusterSubnetGroupMessage.type = Types::ModifyClusterSubnetGroupMessage
    ModifyClusterSubnetGroupResult.add_member(:cluster_subnet_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSubnetGroup, location_name: 'ClusterSubnetGroup'))
    ModifyClusterSubnetGroupResult.type = Types::ModifyClusterSubnetGroupResult
    ModifyCustomDomainAssociationMessage.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainNameString, location_name: 'CustomDomainName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyCustomDomainAssociationMessage.add_member(:custom_domain_certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainCertificateArnString, location_name: 'CustomDomainCertificateArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyCustomDomainAssociationMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyCustomDomainAssociationMessage.type = Types::ModifyCustomDomainAssociationMessage
    ModifyCustomDomainAssociationResult.add_member(:custom_domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainNameString, location_name: 'CustomDomainName'))
    ModifyCustomDomainAssociationResult.add_member(:custom_domain_certificate_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainCertificateArnString, location_name: 'CustomDomainCertificateArn'))
    ModifyCustomDomainAssociationResult.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier'))
    ModifyCustomDomainAssociationResult.add_member(:custom_domain_cert_expiry_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomDomainCertExpiryTime'))
    ModifyCustomDomainAssociationResult.type = Types::ModifyCustomDomainAssociationResult
    ModifyEndpointAccessMessage.add_member(:endpoint_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyEndpointAccessMessage.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: 'VpcSecurityGroupIds'))
    ModifyEndpointAccessMessage.type = Types::ModifyEndpointAccessMessage
    ModifyEndpointAccessOutput.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier'))
    ModifyEndpointAccessOutput.add_member(:resource_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceOwner'))
    ModifyEndpointAccessOutput.add_member(:subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubnetGroupName'))
    ModifyEndpointAccessOutput.add_member(:endpoint_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointStatus'))
    ModifyEndpointAccessOutput.add_member(:endpoint_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointName'))
    ModifyEndpointAccessOutput.add_member(:endpoint_create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'EndpointCreateTime'))
    ModifyEndpointAccessOutput.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Port'))
    ModifyEndpointAccessOutput.add_member(:address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Address'))
    ModifyEndpointAccessOutput.add_member(:vpc_security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupMembershipList, location_name: 'VpcSecurityGroups'))
    ModifyEndpointAccessOutput.add_member(:vpc_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpoint, location_name: 'VpcEndpoint'))
    ModifyEndpointAccessOutput.type = Types::ModifyEndpointAccessOutput
    ModifyEventSubscriptionMessage.add_member(:subscription_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubscriptionName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyEventSubscriptionMessage.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnsTopicArn'))
    ModifyEventSubscriptionMessage.add_member(:source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceType'))
    ModifyEventSubscriptionMessage.add_member(:source_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceIdsList, location_name: 'SourceIds'))
    ModifyEventSubscriptionMessage.add_member(:event_categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: 'EventCategories'))
    ModifyEventSubscriptionMessage.add_member(:severity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Severity'))
    ModifyEventSubscriptionMessage.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'Enabled'))
    ModifyEventSubscriptionMessage.type = Types::ModifyEventSubscriptionMessage
    ModifyEventSubscriptionResult.add_member(:event_subscription, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventSubscription, location_name: 'EventSubscription'))
    ModifyEventSubscriptionResult.type = Types::ModifyEventSubscriptionResult
    ModifyIntegrationMessage.add_member(:integration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationArn, location_name: 'IntegrationArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyIntegrationMessage.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationDescription, location_name: 'Description'))
    ModifyIntegrationMessage.add_member(:integration_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationName, location_name: 'IntegrationName'))
    ModifyIntegrationMessage.type = Types::ModifyIntegrationMessage
    ModifyIntegrationOutput.add_member(:integration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationArn, location_name: 'IntegrationArn'))
    ModifyIntegrationOutput.add_member(:integration_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationName, location_name: 'IntegrationName'))
    ModifyIntegrationOutput.add_member(:source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceArn, location_name: 'SourceArn'))
    ModifyIntegrationOutput.add_member(:target_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetArn, location_name: 'TargetArn'))
    ModifyIntegrationOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ZeroETLIntegrationStatus, location_name: 'Status'))
    ModifyIntegrationOutput.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationErrorList, location_name: 'Errors'))
    ModifyIntegrationOutput.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CreateTime'))
    ModifyIntegrationOutput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    ModifyIntegrationOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KMSKeyId'))
    ModifyIntegrationOutput.add_member(:additional_encryption_context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionContextMap, location_name: 'AdditionalEncryptionContext'))
    ModifyIntegrationOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    ModifyIntegrationOutput.type = Types::ModifyIntegrationOutput
    ModifyRedshiftIdcApplicationMessage.add_member(:redshift_idc_application_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RedshiftIdcApplicationArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyRedshiftIdcApplicationMessage.add_member(:identity_namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityNamespaceString, location_name: 'IdentityNamespace'))
    ModifyRedshiftIdcApplicationMessage.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IamRoleArn'))
    ModifyRedshiftIdcApplicationMessage.add_member(:idc_display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdcDisplayNameString, location_name: 'IdcDisplayName'))
    ModifyRedshiftIdcApplicationMessage.add_member(:authorized_token_issuer_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizedTokenIssuerList, location_name: 'AuthorizedTokenIssuerList'))
    ModifyRedshiftIdcApplicationMessage.add_member(:service_integrations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceIntegrationList, location_name: 'ServiceIntegrations'))
    ModifyRedshiftIdcApplicationMessage.type = Types::ModifyRedshiftIdcApplicationMessage
    ModifyRedshiftIdcApplicationResult.add_member(:redshift_idc_application, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftIdcApplication, location_name: 'RedshiftIdcApplication'))
    ModifyRedshiftIdcApplicationResult.type = Types::ModifyRedshiftIdcApplicationResult
    ModifyScheduledActionMessage.add_member(:scheduled_action_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduledActionName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyScheduledActionMessage.add_member(:target_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionType, location_name: 'TargetAction'))
    ModifyScheduledActionMessage.add_member(:schedule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Schedule'))
    ModifyScheduledActionMessage.add_member(:iam_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IamRole'))
    ModifyScheduledActionMessage.add_member(:scheduled_action_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduledActionDescription'))
    ModifyScheduledActionMessage.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'StartTime'))
    ModifyScheduledActionMessage.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'EndTime'))
    ModifyScheduledActionMessage.add_member(:enable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'Enable'))
    ModifyScheduledActionMessage.type = Types::ModifyScheduledActionMessage
    ModifyScheduledActionOutput.add_member(:scheduled_action_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduledActionName'))
    ModifyScheduledActionOutput.add_member(:target_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionType, location_name: 'TargetAction'))
    ModifyScheduledActionOutput.add_member(:schedule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Schedule'))
    ModifyScheduledActionOutput.add_member(:iam_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IamRole'))
    ModifyScheduledActionOutput.add_member(:scheduled_action_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduledActionDescription'))
    ModifyScheduledActionOutput.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionState, location_name: 'State'))
    ModifyScheduledActionOutput.add_member(:next_invocations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionTimeList, location_name: 'NextInvocations'))
    ModifyScheduledActionOutput.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'StartTime'))
    ModifyScheduledActionOutput.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'EndTime'))
    ModifyScheduledActionOutput.type = Types::ModifyScheduledActionOutput
    ModifySnapshotCopyRetentionPeriodMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifySnapshotCopyRetentionPeriodMessage.add_member(:retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'RetentionPeriod', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifySnapshotCopyRetentionPeriodMessage.add_member(:manual, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Manual'))
    ModifySnapshotCopyRetentionPeriodMessage.type = Types::ModifySnapshotCopyRetentionPeriodMessage
    ModifySnapshotCopyRetentionPeriodResult.add_member(:cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster'))
    ModifySnapshotCopyRetentionPeriodResult.type = Types::ModifySnapshotCopyRetentionPeriodResult
    ModifySnapshotScheduleMessage.add_member(:schedule_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduleIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifySnapshotScheduleMessage.add_member(:schedule_definitions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleDefinitionList, location_name: 'ScheduleDefinitions', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifySnapshotScheduleMessage.type = Types::ModifySnapshotScheduleMessage
    ModifySnapshotScheduleOutput.add_member(:schedule_definitions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleDefinitionList, location_name: 'ScheduleDefinitions'))
    ModifySnapshotScheduleOutput.add_member(:schedule_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduleIdentifier'))
    ModifySnapshotScheduleOutput.add_member(:schedule_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduleDescription'))
    ModifySnapshotScheduleOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    ModifySnapshotScheduleOutput.add_member(:next_invocations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledSnapshotTimeList, location_name: 'NextInvocations'))
    ModifySnapshotScheduleOutput.add_member(:associated_cluster_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'AssociatedClusterCount'))
    ModifySnapshotScheduleOutput.add_member(:associated_clusters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedClusterList, location_name: 'AssociatedClusters'))
    ModifySnapshotScheduleOutput.type = Types::ModifySnapshotScheduleOutput
    ModifyUsageLimitMessage.add_member(:usage_limit_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UsageLimitId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyUsageLimitMessage.add_member(:amount, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: 'Amount'))
    ModifyUsageLimitMessage.add_member(:breach_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitBreachAction, location_name: 'BreachAction'))
    ModifyUsageLimitMessage.type = Types::ModifyUsageLimitMessage
    ModifyUsageLimitOutput.add_member(:usage_limit_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UsageLimitId'))
    ModifyUsageLimitOutput.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier'))
    ModifyUsageLimitOutput.add_member(:feature_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitFeatureType, location_name: 'FeatureType'))
    ModifyUsageLimitOutput.add_member(:limit_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitLimitType, location_name: 'LimitType'))
    ModifyUsageLimitOutput.add_member(:amount, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'Amount'))
    ModifyUsageLimitOutput.add_member(:period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitPeriod, location_name: 'Period'))
    ModifyUsageLimitOutput.add_member(:breach_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitBreachAction, location_name: 'BreachAction'))
    ModifyUsageLimitOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    ModifyUsageLimitOutput.type = Types::ModifyUsageLimitOutput
    NamespaceIdentifierUnion.add_member(:serverless_identifier, Types::NamespaceIdentifierUnion::ServerlessIdentifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessIdentifier, location_name: 'ServerlessIdentifier'))
    NamespaceIdentifierUnion.add_member(:provisioned_identifier, Types::NamespaceIdentifierUnion::ProvisionedIdentifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedIdentifier, location_name: 'ProvisionedIdentifier'))
    NamespaceIdentifierUnion.add_member(:unknown, Types::NamespaceIdentifierUnion::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    NamespaceIdentifierUnion.type = Types::NamespaceIdentifierUnion
    NamespaceRegistrationStatus.add_member(:registering, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REGISTERING', traits: {"smithy.api#enumValue" => "Registering"}))
    NamespaceRegistrationStatus.add_member(:deregistering, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEREGISTERING', traits: {"smithy.api#enumValue" => "Deregistering"}))
    NetworkInterface.add_member(:network_interface_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NetworkInterfaceId'))
    NetworkInterface.add_member(:subnet_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubnetId'))
    NetworkInterface.add_member(:private_ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PrivateIpAddress'))
    NetworkInterface.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AvailabilityZone'))
    NetworkInterface.add_member(:ipv6_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Ipv6Address'))
    NetworkInterface.type = Types::NetworkInterface
    NetworkInterfaceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterface, traits: {"smithy.api#xmlName" => "NetworkInterface"})
    NodeConfigurationOption.add_member(:node_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeType'))
    NodeConfigurationOption.add_member(:number_of_nodes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumberOfNodes'))
    NodeConfigurationOption.add_member(:estimated_disk_utilization_percent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'EstimatedDiskUtilizationPercent'))
    NodeConfigurationOption.add_member(:mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Mode, location_name: 'Mode'))
    NodeConfigurationOption.type = Types::NodeConfigurationOption
    NodeConfigurationOptionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeConfigurationOption, traits: {"smithy.api#xmlName" => "NodeConfigurationOption"})
    NodeConfigurationOptionsFilter.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeConfigurationOptionsFilterName, location_name: 'Name'))
    NodeConfigurationOptionsFilter.add_member(:operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperatorType, location_name: 'Operator'))
    NodeConfigurationOptionsFilter.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValueStringList, location_name: 'Values', traits: {"smithy.api#xmlName" => "Value"}))
    NodeConfigurationOptionsFilter.type = Types::NodeConfigurationOptionsFilter
    NodeConfigurationOptionsFilterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeConfigurationOptionsFilter, traits: {"smithy.api#xmlName" => "NodeConfigurationOptionsFilter"})
    NodeConfigurationOptionsFilterName.add_member(:node_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NODE_TYPE', traits: {"smithy.api#enumValue" => "NodeType"}))
    NodeConfigurationOptionsFilterName.add_member(:num_nodes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NUM_NODES', traits: {"smithy.api#enumValue" => "NumberOfNodes"}))
    NodeConfigurationOptionsFilterName.add_member(:estimated_disk_utilization_percent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ESTIMATED_DISK_UTILIZATION_PERCENT', traits: {"smithy.api#enumValue" => "EstimatedDiskUtilizationPercent"}))
    NodeConfigurationOptionsFilterName.add_member(:mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MODE', traits: {"smithy.api#enumValue" => "Mode"}))
    NodeConfigurationOptionsMessage.add_member(:node_configuration_option_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeConfigurationOptionList, location_name: 'NodeConfigurationOptionList'))
    NodeConfigurationOptionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    NodeConfigurationOptionsMessage.type = Types::NodeConfigurationOptionsMessage
    NumberOfNodesPerClusterLimitExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    NumberOfNodesPerClusterLimitExceededFault.type = Types::NumberOfNodesPerClusterLimitExceededFault
    NumberOfNodesQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    NumberOfNodesQuotaExceededFault.type = Types::NumberOfNodesQuotaExceededFault
    OperatorType.add_member(:eq, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQ', traits: {"smithy.api#enumValue" => "eq"}))
    OperatorType.add_member(:lt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LT', traits: {"smithy.api#enumValue" => "lt"}))
    OperatorType.add_member(:gt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GT', traits: {"smithy.api#enumValue" => "gt"}))
    OperatorType.add_member(:le, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LE', traits: {"smithy.api#enumValue" => "le"}))
    OperatorType.add_member(:ge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GE', traits: {"smithy.api#enumValue" => "ge"}))
    OperatorType.add_member(:in, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN', traits: {"smithy.api#enumValue" => "in"}))
    OperatorType.add_member(:between, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BETWEEN', traits: {"smithy.api#enumValue" => "between"}))
    OrderableClusterOption.add_member(:cluster_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterVersion'))
    OrderableClusterOption.add_member(:cluster_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterType'))
    OrderableClusterOption.add_member(:node_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeType'))
    OrderableClusterOption.add_member(:availability_zones, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneList, location_name: 'AvailabilityZones'))
    OrderableClusterOption.type = Types::OrderableClusterOption
    OrderableClusterOptionsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrderableClusterOption, traits: {"smithy.api#xmlName" => "OrderableClusterOption"})
    OrderableClusterOptionsMessage.add_member(:orderable_cluster_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrderableClusterOptionsList, location_name: 'OrderableClusterOptions'))
    OrderableClusterOptionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    OrderableClusterOptionsMessage.type = Types::OrderableClusterOptionsMessage
    Parameter.add_member(:parameter_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterName'))
    Parameter.add_member(:parameter_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterValue'))
    Parameter.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    Parameter.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Source'))
    Parameter.add_member(:data_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataType'))
    Parameter.add_member(:allowed_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AllowedValues'))
    Parameter.add_member(:apply_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterApplyType, location_name: 'ApplyType'))
    Parameter.add_member(:is_modifiable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsModifiable'))
    Parameter.add_member(:minimum_engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MinimumEngineVersion'))
    Parameter.type = Types::Parameter
    ParameterApplyType.add_member(:static, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'static', traits: {"smithy.api#enumValue" => "static"}))
    ParameterApplyType.add_member(:dynamic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'dynamic', traits: {"smithy.api#enumValue" => "dynamic"}))
    ParameterGroupList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterParameterGroup, traits: {"smithy.api#xmlName" => "ClusterParameterGroup"})
    ParametersList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Parameter, traits: {"smithy.api#xmlName" => "Parameter"})
    PartnerIntegrationInfo.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationDatabaseName, location_name: 'DatabaseName'))
    PartnerIntegrationInfo.add_member(:partner_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationPartnerName, location_name: 'PartnerName'))
    PartnerIntegrationInfo.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationStatus, location_name: 'Status'))
    PartnerIntegrationInfo.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationStatusMessage, location_name: 'StatusMessage'))
    PartnerIntegrationInfo.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CreatedAt'))
    PartnerIntegrationInfo.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'UpdatedAt'))
    PartnerIntegrationInfo.type = Types::PartnerIntegrationInfo
    PartnerIntegrationInfoList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationInfo, traits: {"smithy.api#xmlName" => "PartnerIntegrationInfo"})
    PartnerIntegrationStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Active', traits: {"smithy.api#enumValue" => "Active"}))
    PartnerIntegrationStatus.add_member(:inactive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Inactive', traits: {"smithy.api#enumValue" => "Inactive"}))
    PartnerIntegrationStatus.add_member(:runtime_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RuntimeFailure', traits: {"smithy.api#enumValue" => "RuntimeFailure"}))
    PartnerIntegrationStatus.add_member(:connection_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ConnectionFailure', traits: {"smithy.api#enumValue" => "ConnectionFailure"}))
    PartnerNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    PartnerNotFoundFault.type = Types::PartnerNotFoundFault
    PauseClusterInput.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PauseClusterInput.type = Types::PauseClusterInput
    PauseClusterMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PauseClusterMessage.type = Types::PauseClusterMessage
    PauseClusterResult.add_member(:cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster'))
    PauseClusterResult.type = Types::PauseClusterResult
    PendingActionsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    PendingModifiedValues.add_member(:master_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'MasterUserPassword'))
    PendingModifiedValues.add_member(:node_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeType'))
    PendingModifiedValues.add_member(:number_of_nodes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'NumberOfNodes'))
    PendingModifiedValues.add_member(:cluster_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterType'))
    PendingModifiedValues.add_member(:cluster_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterVersion'))
    PendingModifiedValues.add_member(:automated_snapshot_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'AutomatedSnapshotRetentionPeriod'))
    PendingModifiedValues.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier'))
    PendingModifiedValues.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'PubliclyAccessible'))
    PendingModifiedValues.add_member(:enhanced_vpc_routing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnhancedVpcRouting'))
    PendingModifiedValues.add_member(:maintenance_track_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MaintenanceTrackName'))
    PendingModifiedValues.add_member(:encryption_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EncryptionType'))
    PendingModifiedValues.type = Types::PendingModifiedValues
    ProvisionedIdentifier.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ProvisionedIdentifier.type = Types::ProvisionedIdentifier
    PurchaseReservedNodeOfferingMessage.add_member(:reserved_node_offering_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedNodeOfferingId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PurchaseReservedNodeOfferingMessage.add_member(:node_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'NodeCount'))
    PurchaseReservedNodeOfferingMessage.type = Types::PurchaseReservedNodeOfferingMessage
    PurchaseReservedNodeOfferingResult.add_member(:reserved_node, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNode, location_name: 'ReservedNode'))
    PurchaseReservedNodeOfferingResult.type = Types::PurchaseReservedNodeOfferingResult
    PutResourcePolicyMessage.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutResourcePolicyMessage.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Policy', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutResourcePolicyMessage.type = Types::PutResourcePolicyMessage
    PutResourcePolicyResult.add_member(:resource_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: 'ResourcePolicy'))
    PutResourcePolicyResult.type = Types::PutResourcePolicyResult
    ReadWriteAccess.add_member(:authorization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAuthorization, location_name: 'Authorization', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ReadWriteAccess.type = Types::ReadWriteAccess
    RebootClusterMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RebootClusterMessage.type = Types::RebootClusterMessage
    RebootClusterResult.add_member(:cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster'))
    RebootClusterResult.type = Types::RebootClusterResult
    Recommendation.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id'))
    Recommendation.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier'))
    Recommendation.add_member(:namespace_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NamespaceArn'))
    Recommendation.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CreatedAt'))
    Recommendation.add_member(:recommendation_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommendationType'))
    Recommendation.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Title'))
    Recommendation.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    Recommendation.add_member(:observation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Observation'))
    Recommendation.add_member(:impact_ranking, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImpactRankingType, location_name: 'ImpactRanking'))
    Recommendation.add_member(:recommendation_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecommendationText'))
    Recommendation.add_member(:recommended_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendedActionList, location_name: 'RecommendedActions'))
    Recommendation.add_member(:reference_links, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceLinkList, location_name: 'ReferenceLinks'))
    Recommendation.type = Types::Recommendation
    RecommendationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Recommendation, traits: {"smithy.api#xmlName" => "Recommendation"})
    RecommendedAction.add_member(:text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Text'))
    RecommendedAction.add_member(:database, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Database'))
    RecommendedAction.add_member(:command, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Command'))
    RecommendedAction.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendedActionType, location_name: 'Type'))
    RecommendedAction.type = Types::RecommendedAction
    RecommendedActionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendedAction, traits: {"smithy.api#xmlName" => "RecommendedAction"})
    RecommendedActionType.add_member(:sql, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SQL', traits: {"smithy.api#enumValue" => "SQL"}))
    RecommendedActionType.add_member(:cli, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLI', traits: {"smithy.api#enumValue" => "CLI"}))
    RecurringCharge.add_member(:recurring_charge_amount, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'RecurringChargeAmount'))
    RecurringCharge.add_member(:recurring_charge_frequency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecurringChargeFrequency'))
    RecurringCharge.type = Types::RecurringCharge
    RecurringChargeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecurringCharge, traits: {"smithy.api#xmlName" => "RecurringCharge"})
    RedshiftIdcApplication.add_member(:idc_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IdcInstanceArn'))
    RedshiftIdcApplication.add_member(:redshift_idc_application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftIdcApplicationName, location_name: 'RedshiftIdcApplicationName'))
    RedshiftIdcApplication.add_member(:redshift_idc_application_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RedshiftIdcApplicationArn'))
    RedshiftIdcApplication.add_member(:identity_namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityNamespaceString, location_name: 'IdentityNamespace'))
    RedshiftIdcApplication.add_member(:idc_display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdcDisplayNameString, location_name: 'IdcDisplayName'))
    RedshiftIdcApplication.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IamRoleArn'))
    RedshiftIdcApplication.add_member(:idc_managed_application_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IdcManagedApplicationArn'))
    RedshiftIdcApplication.add_member(:idc_onboard_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IdcOnboardStatus'))
    RedshiftIdcApplication.add_member(:authorized_token_issuer_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizedTokenIssuerList, location_name: 'AuthorizedTokenIssuerList'))
    RedshiftIdcApplication.add_member(:service_integrations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceIntegrationList, location_name: 'ServiceIntegrations'))
    RedshiftIdcApplication.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    RedshiftIdcApplication.add_member(:sso_tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'SsoTagKeys'))
    RedshiftIdcApplication.type = Types::RedshiftIdcApplication
    RedshiftIdcApplicationAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    RedshiftIdcApplicationAlreadyExistsFault.type = Types::RedshiftIdcApplicationAlreadyExistsFault
    RedshiftIdcApplicationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftIdcApplication)
    RedshiftIdcApplicationNotExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    RedshiftIdcApplicationNotExistsFault.type = Types::RedshiftIdcApplicationNotExistsFault
    RedshiftIdcApplicationQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    RedshiftIdcApplicationQuotaExceededFault.type = Types::RedshiftIdcApplicationQuotaExceededFault
    ReferenceLink.add_member(:text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Text'))
    ReferenceLink.add_member(:link, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Link'))
    ReferenceLink.type = Types::ReferenceLink
    ReferenceLinkList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceLink, traits: {"smithy.api#xmlName" => "ReferenceLink"})
    RegisterNamespaceInputMessage.add_member(:namespace_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceIdentifierUnion, location_name: 'NamespaceIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RegisterNamespaceInputMessage.add_member(:consumer_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConsumerIdentifierList, location_name: 'ConsumerIdentifiers', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RegisterNamespaceInputMessage.type = Types::RegisterNamespaceInputMessage
    RegisterNamespaceOutputMessage.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NamespaceRegistrationStatus, location_name: 'Status'))
    RegisterNamespaceOutputMessage.type = Types::RegisterNamespaceOutputMessage
    RejectDataShareMessage.add_member(:data_share_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataShareArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RejectDataShareMessage.type = Types::RejectDataShareMessage
    RejectDataShareOutput.add_member(:data_share_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataShareArn'))
    RejectDataShareOutput.add_member(:producer_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProducerArn'))
    RejectDataShareOutput.add_member(:allow_publicly_accessible_consumers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllowPubliclyAccessibleConsumers'))
    RejectDataShareOutput.add_member(:data_share_associations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataShareAssociationList, location_name: 'DataShareAssociations'))
    RejectDataShareOutput.add_member(:managed_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ManagedBy'))
    RejectDataShareOutput.add_member(:data_share_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataShareType, location_name: 'DataShareType'))
    RejectDataShareOutput.type = Types::RejectDataShareOutput
    ReservedNode.add_member(:reserved_node_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedNodeId'))
    ReservedNode.add_member(:reserved_node_offering_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedNodeOfferingId'))
    ReservedNode.add_member(:node_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeType'))
    ReservedNode.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'StartTime'))
    ReservedNode.add_member(:duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Duration'))
    ReservedNode.add_member(:fixed_price, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'FixedPrice'))
    ReservedNode.add_member(:usage_price, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'UsagePrice'))
    ReservedNode.add_member(:currency_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CurrencyCode'))
    ReservedNode.add_member(:node_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NodeCount'))
    ReservedNode.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'State'))
    ReservedNode.add_member(:offering_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OfferingType'))
    ReservedNode.add_member(:recurring_charges, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecurringChargeList, location_name: 'RecurringCharges'))
    ReservedNode.add_member(:reserved_node_offering_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeOfferingType, location_name: 'ReservedNodeOfferingType'))
    ReservedNode.type = Types::ReservedNode
    ReservedNodeAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ReservedNodeAlreadyExistsFault.type = Types::ReservedNodeAlreadyExistsFault
    ReservedNodeAlreadyMigratedFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ReservedNodeAlreadyMigratedFault.type = Types::ReservedNodeAlreadyMigratedFault
    ReservedNodeConfigurationOption.add_member(:source_reserved_node, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNode, location_name: 'SourceReservedNode'))
    ReservedNodeConfigurationOption.add_member(:target_reserved_node_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TargetReservedNodeCount'))
    ReservedNodeConfigurationOption.add_member(:target_reserved_node_offering, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeOffering, location_name: 'TargetReservedNodeOffering'))
    ReservedNodeConfigurationOption.type = Types::ReservedNodeConfigurationOption
    ReservedNodeConfigurationOptionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeConfigurationOption, traits: {"smithy.api#xmlName" => "ReservedNodeConfigurationOption"})
    ReservedNodeExchangeActionType.add_member(:restore_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESTORE_CLUSTER', traits: {"smithy.api#enumValue" => "restore-cluster"}))
    ReservedNodeExchangeActionType.add_member(:resize_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESIZE_CLUSTER', traits: {"smithy.api#enumValue" => "resize-cluster"}))
    ReservedNodeExchangeNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ReservedNodeExchangeNotFoundFault.type = Types::ReservedNodeExchangeNotFoundFault
    ReservedNodeExchangeStatus.add_member(:reserved_node_exchange_request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedNodeExchangeRequestId'))
    ReservedNodeExchangeStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeExchangeStatusType, location_name: 'Status'))
    ReservedNodeExchangeStatus.add_member(:request_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'RequestTime'))
    ReservedNodeExchangeStatus.add_member(:source_reserved_node_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceReservedNodeId'))
    ReservedNodeExchangeStatus.add_member(:source_reserved_node_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceReservedNodeType'))
    ReservedNodeExchangeStatus.add_member(:source_reserved_node_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'SourceReservedNodeCount'))
    ReservedNodeExchangeStatus.add_member(:target_reserved_node_offering_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetReservedNodeOfferingId'))
    ReservedNodeExchangeStatus.add_member(:target_reserved_node_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetReservedNodeType'))
    ReservedNodeExchangeStatus.add_member(:target_reserved_node_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TargetReservedNodeCount'))
    ReservedNodeExchangeStatus.type = Types::ReservedNodeExchangeStatus
    ReservedNodeExchangeStatusList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeExchangeStatus, traits: {"smithy.api#xmlName" => "ReservedNodeExchangeStatus"})
    ReservedNodeExchangeStatusType.add_member(:requested, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REQUESTED', traits: {"smithy.api#enumValue" => "REQUESTED"}))
    ReservedNodeExchangeStatusType.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    ReservedNodeExchangeStatusType.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ReservedNodeExchangeStatusType.add_member(:retrying, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RETRYING', traits: {"smithy.api#enumValue" => "RETRYING"}))
    ReservedNodeExchangeStatusType.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    ReservedNodeExchangeStatusType.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ReservedNodeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNode, traits: {"smithy.api#xmlName" => "ReservedNode"})
    ReservedNodeNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ReservedNodeNotFoundFault.type = Types::ReservedNodeNotFoundFault
    ReservedNodeOffering.add_member(:reserved_node_offering_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedNodeOfferingId'))
    ReservedNodeOffering.add_member(:node_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeType'))
    ReservedNodeOffering.add_member(:duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Duration'))
    ReservedNodeOffering.add_member(:fixed_price, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'FixedPrice'))
    ReservedNodeOffering.add_member(:usage_price, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'UsagePrice'))
    ReservedNodeOffering.add_member(:currency_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CurrencyCode'))
    ReservedNodeOffering.add_member(:offering_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OfferingType'))
    ReservedNodeOffering.add_member(:recurring_charges, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecurringChargeList, location_name: 'RecurringCharges'))
    ReservedNodeOffering.add_member(:reserved_node_offering_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeOfferingType, location_name: 'ReservedNodeOfferingType'))
    ReservedNodeOffering.type = Types::ReservedNodeOffering
    ReservedNodeOfferingList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeOffering, traits: {"smithy.api#xmlName" => "ReservedNodeOffering"})
    ReservedNodeOfferingNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ReservedNodeOfferingNotFoundFault.type = Types::ReservedNodeOfferingNotFoundFault
    ReservedNodeOfferingType.add_member(:regular, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Regular', traits: {"smithy.api#enumValue" => "Regular"}))
    ReservedNodeOfferingType.add_member(:upgradable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Upgradable', traits: {"smithy.api#enumValue" => "Upgradable"}))
    ReservedNodeOfferingsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    ReservedNodeOfferingsMessage.add_member(:reserved_node_offerings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeOfferingList, location_name: 'ReservedNodeOfferings'))
    ReservedNodeOfferingsMessage.type = Types::ReservedNodeOfferingsMessage
    ReservedNodeQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ReservedNodeQuotaExceededFault.type = Types::ReservedNodeQuotaExceededFault
    ReservedNodesMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    ReservedNodesMessage.add_member(:reserved_nodes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeList, location_name: 'ReservedNodes'))
    ReservedNodesMessage.type = Types::ReservedNodesMessage
    ResetClusterParameterGroupMessage.add_member(:parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResetClusterParameterGroupMessage.add_member(:reset_all_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ResetAllParameters'))
    ResetClusterParameterGroupMessage.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersList, location_name: 'Parameters'))
    ResetClusterParameterGroupMessage.type = Types::ResetClusterParameterGroupMessage
    ResetClusterParameterGroupOutput.add_member(:parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupName'))
    ResetClusterParameterGroupOutput.add_member(:parameter_group_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterGroupStatus'))
    ResetClusterParameterGroupOutput.type = Types::ResetClusterParameterGroupOutput
    ResizeClusterInput.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResizeClusterInput.add_member(:cluster_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterType'))
    ResizeClusterInput.add_member(:node_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeType'))
    ResizeClusterInput.add_member(:number_of_nodes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'NumberOfNodes'))
    ResizeClusterInput.add_member(:classic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'Classic'))
    ResizeClusterInput.add_member(:reserved_node_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedNodeId'))
    ResizeClusterInput.add_member(:target_reserved_node_offering_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetReservedNodeOfferingId'))
    ResizeClusterInput.type = Types::ResizeClusterInput
    ResizeClusterMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResizeClusterMessage.add_member(:cluster_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterType'))
    ResizeClusterMessage.add_member(:node_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeType'))
    ResizeClusterMessage.add_member(:number_of_nodes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'NumberOfNodes'))
    ResizeClusterMessage.add_member(:classic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'Classic'))
    ResizeClusterMessage.add_member(:reserved_node_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedNodeId'))
    ResizeClusterMessage.add_member(:target_reserved_node_offering_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetReservedNodeOfferingId'))
    ResizeClusterMessage.type = Types::ResizeClusterMessage
    ResizeClusterResult.add_member(:cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster'))
    ResizeClusterResult.type = Types::ResizeClusterResult
    ResizeInfo.add_member(:resize_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResizeType'))
    ResizeInfo.add_member(:allow_cancel_resize, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllowCancelResize'))
    ResizeInfo.type = Types::ResizeInfo
    ResizeNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ResizeNotFoundFault.type = Types::ResizeNotFoundFault
    ResourceNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ResourceNotFoundFault.type = Types::ResourceNotFoundFault
    ResourcePolicy.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn'))
    ResourcePolicy.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Policy'))
    ResourcePolicy.type = Types::ResourcePolicy
    RestorableNodeTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "NodeType"})
    RestoreFromClusterSnapshotMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreFromClusterSnapshotMessage.add_member(:snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotIdentifier'))
    RestoreFromClusterSnapshotMessage.add_member(:snapshot_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotArn'))
    RestoreFromClusterSnapshotMessage.add_member(:snapshot_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotClusterIdentifier'))
    RestoreFromClusterSnapshotMessage.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Port'))
    RestoreFromClusterSnapshotMessage.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AvailabilityZone'))
    RestoreFromClusterSnapshotMessage.add_member(:allow_version_upgrade, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AllowVersionUpgrade'))
    RestoreFromClusterSnapshotMessage.add_member(:cluster_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterSubnetGroupName'))
    RestoreFromClusterSnapshotMessage.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'PubliclyAccessible'))
    RestoreFromClusterSnapshotMessage.add_member(:owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OwnerAccount'))
    RestoreFromClusterSnapshotMessage.add_member(:hsm_client_certificate_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmClientCertificateIdentifier'))
    RestoreFromClusterSnapshotMessage.add_member(:hsm_configuration_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HsmConfigurationIdentifier'))
    RestoreFromClusterSnapshotMessage.add_member(:elastic_ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ElasticIp'))
    RestoreFromClusterSnapshotMessage.add_member(:cluster_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterParameterGroupName'))
    RestoreFromClusterSnapshotMessage.add_member(:cluster_security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSecurityGroupNameList, location_name: 'ClusterSecurityGroups'))
    RestoreFromClusterSnapshotMessage.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: 'VpcSecurityGroupIds'))
    RestoreFromClusterSnapshotMessage.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredMaintenanceWindow'))
    RestoreFromClusterSnapshotMessage.add_member(:automated_snapshot_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'AutomatedSnapshotRetentionPeriod'))
    RestoreFromClusterSnapshotMessage.add_member(:manual_snapshot_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'ManualSnapshotRetentionPeriod'))
    RestoreFromClusterSnapshotMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    RestoreFromClusterSnapshotMessage.add_member(:node_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeType'))
    RestoreFromClusterSnapshotMessage.add_member(:enhanced_vpc_routing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnhancedVpcRouting'))
    RestoreFromClusterSnapshotMessage.add_member(:additional_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AdditionalInfo'))
    RestoreFromClusterSnapshotMessage.add_member(:iam_roles, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArnList, location_name: 'IamRoles'))
    RestoreFromClusterSnapshotMessage.add_member(:maintenance_track_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MaintenanceTrackName'))
    RestoreFromClusterSnapshotMessage.add_member(:snapshot_schedule_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotScheduleIdentifier'))
    RestoreFromClusterSnapshotMessage.add_member(:number_of_nodes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'NumberOfNodes'))
    RestoreFromClusterSnapshotMessage.add_member(:availability_zone_relocation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AvailabilityZoneRelocation'))
    RestoreFromClusterSnapshotMessage.add_member(:aqua_configuration_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AquaConfigurationStatus, location_name: 'AquaConfigurationStatus'))
    RestoreFromClusterSnapshotMessage.add_member(:default_iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultIamRoleArn'))
    RestoreFromClusterSnapshotMessage.add_member(:reserved_node_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReservedNodeId'))
    RestoreFromClusterSnapshotMessage.add_member(:target_reserved_node_offering_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetReservedNodeOfferingId'))
    RestoreFromClusterSnapshotMessage.add_member(:encrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'Encrypted'))
    RestoreFromClusterSnapshotMessage.add_member(:manage_master_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'ManageMasterPassword'))
    RestoreFromClusterSnapshotMessage.add_member(:master_password_secret_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterPasswordSecretKmsKeyId'))
    RestoreFromClusterSnapshotMessage.add_member(:ip_address_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IpAddressType'))
    RestoreFromClusterSnapshotMessage.add_member(:multi_az, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'MultiAZ'))
    RestoreFromClusterSnapshotMessage.type = Types::RestoreFromClusterSnapshotMessage
    RestoreFromClusterSnapshotResult.add_member(:cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster'))
    RestoreFromClusterSnapshotResult.type = Types::RestoreFromClusterSnapshotResult
    RestoreStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    RestoreStatus.add_member(:current_restore_rate_in_mega_bytes_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'CurrentRestoreRateInMegaBytesPerSecond'))
    RestoreStatus.add_member(:snapshot_size_in_mega_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'SnapshotSizeInMegaBytes'))
    RestoreStatus.add_member(:progress_in_mega_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ProgressInMegaBytes'))
    RestoreStatus.add_member(:elapsed_time_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ElapsedTimeInSeconds'))
    RestoreStatus.add_member(:estimated_time_to_completion_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'EstimatedTimeToCompletionInSeconds'))
    RestoreStatus.type = Types::RestoreStatus
    RestoreTableFromClusterSnapshotMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreTableFromClusterSnapshotMessage.add_member(:snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreTableFromClusterSnapshotMessage.add_member(:source_database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceDatabaseName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreTableFromClusterSnapshotMessage.add_member(:source_schema_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceSchemaName'))
    RestoreTableFromClusterSnapshotMessage.add_member(:source_table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceTableName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreTableFromClusterSnapshotMessage.add_member(:target_database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetDatabaseName'))
    RestoreTableFromClusterSnapshotMessage.add_member(:target_schema_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetSchemaName'))
    RestoreTableFromClusterSnapshotMessage.add_member(:new_table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NewTableName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreTableFromClusterSnapshotMessage.add_member(:enable_case_sensitive_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnableCaseSensitiveIdentifier'))
    RestoreTableFromClusterSnapshotMessage.type = Types::RestoreTableFromClusterSnapshotMessage
    RestoreTableFromClusterSnapshotResult.add_member(:table_restore_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableRestoreStatus, location_name: 'TableRestoreStatus'))
    RestoreTableFromClusterSnapshotResult.type = Types::RestoreTableFromClusterSnapshotResult
    ResumeClusterInput.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResumeClusterInput.type = Types::ResumeClusterInput
    ResumeClusterMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResumeClusterMessage.type = Types::ResumeClusterMessage
    ResumeClusterResult.add_member(:cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster'))
    ResumeClusterResult.type = Types::ResumeClusterResult
    RevisionTarget.add_member(:database_revision, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DatabaseRevision'))
    RevisionTarget.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    RevisionTarget.add_member(:database_revision_release_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'DatabaseRevisionReleaseDate'))
    RevisionTarget.type = Types::RevisionTarget
    RevisionTargetsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionTarget, traits: {"smithy.api#xmlName" => "RevisionTarget"})
    RevokeClusterSecurityGroupIngressMessage.add_member(:cluster_security_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterSecurityGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RevokeClusterSecurityGroupIngressMessage.add_member(:cidrip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CIDRIP'))
    RevokeClusterSecurityGroupIngressMessage.add_member(:ec2_security_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EC2SecurityGroupName'))
    RevokeClusterSecurityGroupIngressMessage.add_member(:ec2_security_group_owner_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EC2SecurityGroupOwnerId'))
    RevokeClusterSecurityGroupIngressMessage.type = Types::RevokeClusterSecurityGroupIngressMessage
    RevokeClusterSecurityGroupIngressResult.add_member(:cluster_security_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSecurityGroup, location_name: 'ClusterSecurityGroup'))
    RevokeClusterSecurityGroupIngressResult.type = Types::RevokeClusterSecurityGroupIngressResult
    RevokeEndpointAccessMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier'))
    RevokeEndpointAccessMessage.add_member(:account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Account'))
    RevokeEndpointAccessMessage.add_member(:vpc_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcIdentifierList, location_name: 'VpcIds'))
    RevokeEndpointAccessMessage.add_member(:force, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Force'))
    RevokeEndpointAccessMessage.type = Types::RevokeEndpointAccessMessage
    RevokeEndpointAccessOutput.add_member(:grantor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Grantor'))
    RevokeEndpointAccessOutput.add_member(:grantee, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Grantee'))
    RevokeEndpointAccessOutput.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier'))
    RevokeEndpointAccessOutput.add_member(:authorize_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'AuthorizeTime'))
    RevokeEndpointAccessOutput.add_member(:cluster_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterStatus'))
    RevokeEndpointAccessOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationStatus, location_name: 'Status'))
    RevokeEndpointAccessOutput.add_member(:allowed_all_vp_cs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllowedAllVPCs'))
    RevokeEndpointAccessOutput.add_member(:allowed_vp_cs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcIdentifierList, location_name: 'AllowedVPCs'))
    RevokeEndpointAccessOutput.add_member(:endpoint_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'EndpointCount'))
    RevokeEndpointAccessOutput.type = Types::RevokeEndpointAccessOutput
    RevokeSnapshotAccessMessage.add_member(:snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotIdentifier'))
    RevokeSnapshotAccessMessage.add_member(:snapshot_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotArn'))
    RevokeSnapshotAccessMessage.add_member(:snapshot_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotClusterIdentifier'))
    RevokeSnapshotAccessMessage.add_member(:account_with_restore_access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AccountWithRestoreAccess', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RevokeSnapshotAccessMessage.type = Types::RevokeSnapshotAccessMessage
    RevokeSnapshotAccessResult.add_member(:snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Snapshot, location_name: 'Snapshot'))
    RevokeSnapshotAccessResult.type = Types::RevokeSnapshotAccessResult
    RotateEncryptionKeyMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RotateEncryptionKeyMessage.type = Types::RotateEncryptionKeyMessage
    RotateEncryptionKeyResult.add_member(:cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cluster, location_name: 'Cluster'))
    RotateEncryptionKeyResult.type = Types::RotateEncryptionKeyResult
    S3AccessGrantsScopeUnion.add_member(:read_write_access, Types::S3AccessGrantsScopeUnion::ReadWriteAccess, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReadWriteAccess, location_name: 'ReadWriteAccess'))
    S3AccessGrantsScopeUnion.add_member(:unknown, Types::S3AccessGrantsScopeUnion::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    S3AccessGrantsScopeUnion.type = Types::S3AccessGrantsScopeUnion
    S3AccessGrantsServiceIntegrations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3AccessGrantsScopeUnion)
    SNSInvalidTopicFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SNSInvalidTopicFault.type = Types::SNSInvalidTopicFault
    SNSNoAuthorizationFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SNSNoAuthorizationFault.type = Types::SNSNoAuthorizationFault
    SNSTopicArnNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SNSTopicArnNotFoundFault.type = Types::SNSTopicArnNotFoundFault
    ScheduleDefinitionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "ScheduleDefinition"})
    ScheduleDefinitionTypeUnsupportedFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ScheduleDefinitionTypeUnsupportedFault.type = Types::ScheduleDefinitionTypeUnsupportedFault
    ScheduleState.add_member(:modifying, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MODIFYING', traits: {"smithy.api#enumValue" => "MODIFYING"}))
    ScheduleState.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ScheduleState.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ScheduledAction.add_member(:scheduled_action_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduledActionName'))
    ScheduledAction.add_member(:target_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionType, location_name: 'TargetAction'))
    ScheduledAction.add_member(:schedule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Schedule'))
    ScheduledAction.add_member(:iam_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IamRole'))
    ScheduledAction.add_member(:scheduled_action_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduledActionDescription'))
    ScheduledAction.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionState, location_name: 'State'))
    ScheduledAction.add_member(:next_invocations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionTimeList, location_name: 'NextInvocations'))
    ScheduledAction.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'StartTime'))
    ScheduledAction.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'EndTime'))
    ScheduledAction.type = Types::ScheduledAction
    ScheduledActionAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ScheduledActionAlreadyExistsFault.type = Types::ScheduledActionAlreadyExistsFault
    ScheduledActionFilter.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionFilterName, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ScheduledActionFilter.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValueStringList, location_name: 'Values', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ScheduledActionFilter.type = Types::ScheduledActionFilter
    ScheduledActionFilterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionFilter, traits: {"smithy.api#xmlName" => "ScheduledActionFilter"})
    ScheduledActionFilterName.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLUSTER_IDENTIFIER', traits: {"smithy.api#enumValue" => "cluster-identifier"}))
    ScheduledActionFilterName.add_member(:iam_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM_ROLE', traits: {"smithy.api#enumValue" => "iam-role"}))
    ScheduledActionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledAction, traits: {"smithy.api#xmlName" => "ScheduledAction"})
    ScheduledActionNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ScheduledActionNotFoundFault.type = Types::ScheduledActionNotFoundFault
    ScheduledActionQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ScheduledActionQuotaExceededFault.type = Types::ScheduledActionQuotaExceededFault
    ScheduledActionState.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ScheduledActionState.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    ScheduledActionTimeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, traits: {"smithy.api#xmlName" => "ScheduledActionTime"})
    ScheduledActionType.add_member(:resize_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResizeClusterMessage, location_name: 'ResizeCluster'))
    ScheduledActionType.add_member(:pause_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PauseClusterMessage, location_name: 'PauseCluster'))
    ScheduledActionType.add_member(:resume_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResumeClusterMessage, location_name: 'ResumeCluster'))
    ScheduledActionType.type = Types::ScheduledActionType
    ScheduledActionTypeUnsupportedFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ScheduledActionTypeUnsupportedFault.type = Types::ScheduledActionTypeUnsupportedFault
    ScheduledActionTypeValues.add_member(:resize_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESIZE_CLUSTER', traits: {"smithy.api#enumValue" => "ResizeCluster"}))
    ScheduledActionTypeValues.add_member(:pause_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAUSE_CLUSTER', traits: {"smithy.api#enumValue" => "PauseCluster"}))
    ScheduledActionTypeValues.add_member(:resume_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESUME_CLUSTER', traits: {"smithy.api#enumValue" => "ResumeCluster"}))
    ScheduledActionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    ScheduledActionsMessage.add_member(:scheduled_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionList, location_name: 'ScheduledActions'))
    ScheduledActionsMessage.type = Types::ScheduledActionsMessage
    ScheduledSnapshotTimeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, traits: {"smithy.api#xmlName" => "SnapshotTime"})
    SecondaryClusterInfo.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AvailabilityZone'))
    SecondaryClusterInfo.add_member(:cluster_nodes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNodesList, location_name: 'ClusterNodes'))
    SecondaryClusterInfo.type = Types::SecondaryClusterInfo
    ServerlessIdentifier.add_member(:namespace_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NamespaceIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ServerlessIdentifier.add_member(:workgroup_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'WorkgroupIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ServerlessIdentifier.type = Types::ServerlessIdentifier
    ServiceAuthorization.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "Enabled"}))
    ServiceAuthorization.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "Disabled"}))
    ServiceIntegrationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceIntegrationsUnion)
    ServiceIntegrationsUnion.add_member(:lake_formation, Types::ServiceIntegrationsUnion::LakeFormation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LakeFormationServiceIntegrations, location_name: 'LakeFormation'))
    ServiceIntegrationsUnion.add_member(:s3_access_grants, Types::ServiceIntegrationsUnion::S3AccessGrants, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3AccessGrantsServiceIntegrations, location_name: 'S3AccessGrants'))
    ServiceIntegrationsUnion.add_member(:unknown, Types::ServiceIntegrationsUnion::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    ServiceIntegrationsUnion.type = Types::ServiceIntegrationsUnion
    Snapshot.add_member(:snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotIdentifier'))
    Snapshot.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier'))
    Snapshot.add_member(:snapshot_create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'SnapshotCreateTime'))
    Snapshot.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    Snapshot.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Port'))
    Snapshot.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AvailabilityZone'))
    Snapshot.add_member(:cluster_create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'ClusterCreateTime'))
    Snapshot.add_member(:master_username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterUsername'))
    Snapshot.add_member(:cluster_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterVersion'))
    Snapshot.add_member(:engine_full_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineFullVersion'))
    Snapshot.add_member(:snapshot_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotType'))
    Snapshot.add_member(:node_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NodeType'))
    Snapshot.add_member(:number_of_nodes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumberOfNodes'))
    Snapshot.add_member(:db_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBName'))
    Snapshot.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcId'))
    Snapshot.add_member(:encrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Encrypted'))
    Snapshot.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    Snapshot.add_member(:encrypted_with_hsm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EncryptedWithHSM'))
    Snapshot.add_member(:accounts_with_restore_access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountsWithRestoreAccessList, location_name: 'AccountsWithRestoreAccess'))
    Snapshot.add_member(:owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OwnerAccount'))
    Snapshot.add_member(:total_backup_size_in_mega_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'TotalBackupSizeInMegaBytes'))
    Snapshot.add_member(:actual_incremental_backup_size_in_mega_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'ActualIncrementalBackupSizeInMegaBytes'))
    Snapshot.add_member(:backup_progress_in_mega_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'BackupProgressInMegaBytes'))
    Snapshot.add_member(:current_backup_rate_in_mega_bytes_per_second, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'CurrentBackupRateInMegaBytesPerSecond'))
    Snapshot.add_member(:estimated_seconds_to_completion, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'EstimatedSecondsToCompletion'))
    Snapshot.add_member(:elapsed_time_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'ElapsedTimeInSeconds'))
    Snapshot.add_member(:source_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceRegion'))
    Snapshot.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    Snapshot.add_member(:restorable_node_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestorableNodeTypeList, location_name: 'RestorableNodeTypes'))
    Snapshot.add_member(:enhanced_vpc_routing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnhancedVpcRouting'))
    Snapshot.add_member(:maintenance_track_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MaintenanceTrackName'))
    Snapshot.add_member(:manual_snapshot_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'ManualSnapshotRetentionPeriod'))
    Snapshot.add_member(:manual_snapshot_remaining_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'ManualSnapshotRemainingDays'))
    Snapshot.add_member(:snapshot_retention_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'SnapshotRetentionStartTime'))
    Snapshot.add_member(:master_password_secret_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterPasswordSecretArn'))
    Snapshot.add_member(:master_password_secret_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterPasswordSecretKmsKeyId'))
    Snapshot.add_member(:snapshot_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotArn'))
    Snapshot.type = Types::Snapshot
    SnapshotAttributeToSortBy.add_member(:source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SOURCE_TYPE', traits: {"smithy.api#enumValue" => "SOURCE_TYPE"}))
    SnapshotAttributeToSortBy.add_member(:total_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TOTAL_SIZE', traits: {"smithy.api#enumValue" => "TOTAL_SIZE"}))
    SnapshotAttributeToSortBy.add_member(:create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_TIME', traits: {"smithy.api#enumValue" => "CREATE_TIME"}))
    SnapshotCopyAlreadyDisabledFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SnapshotCopyAlreadyDisabledFault.type = Types::SnapshotCopyAlreadyDisabledFault
    SnapshotCopyAlreadyEnabledFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SnapshotCopyAlreadyEnabledFault.type = Types::SnapshotCopyAlreadyEnabledFault
    SnapshotCopyDisabledFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SnapshotCopyDisabledFault.type = Types::SnapshotCopyDisabledFault
    SnapshotCopyGrant.add_member(:snapshot_copy_grant_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotCopyGrantName'))
    SnapshotCopyGrant.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    SnapshotCopyGrant.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    SnapshotCopyGrant.type = Types::SnapshotCopyGrant
    SnapshotCopyGrantAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SnapshotCopyGrantAlreadyExistsFault.type = Types::SnapshotCopyGrantAlreadyExistsFault
    SnapshotCopyGrantList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotCopyGrant, traits: {"smithy.api#xmlName" => "SnapshotCopyGrant"})
    SnapshotCopyGrantMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    SnapshotCopyGrantMessage.add_member(:snapshot_copy_grants, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotCopyGrantList, location_name: 'SnapshotCopyGrants'))
    SnapshotCopyGrantMessage.type = Types::SnapshotCopyGrantMessage
    SnapshotCopyGrantNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SnapshotCopyGrantNotFoundFault.type = Types::SnapshotCopyGrantNotFoundFault
    SnapshotCopyGrantQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SnapshotCopyGrantQuotaExceededFault.type = Types::SnapshotCopyGrantQuotaExceededFault
    SnapshotErrorMessage.add_member(:snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotIdentifier'))
    SnapshotErrorMessage.add_member(:snapshot_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotClusterIdentifier'))
    SnapshotErrorMessage.add_member(:failure_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FailureCode'))
    SnapshotErrorMessage.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FailureReason'))
    SnapshotErrorMessage.type = Types::SnapshotErrorMessage
    SnapshotIdentifierList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "String"})
    SnapshotList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Snapshot, traits: {"smithy.api#xmlName" => "Snapshot"})
    SnapshotMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    SnapshotMessage.add_member(:snapshots, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotList, location_name: 'Snapshots'))
    SnapshotMessage.type = Types::SnapshotMessage
    SnapshotSchedule.add_member(:schedule_definitions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleDefinitionList, location_name: 'ScheduleDefinitions'))
    SnapshotSchedule.add_member(:schedule_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduleIdentifier'))
    SnapshotSchedule.add_member(:schedule_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScheduleDescription'))
    SnapshotSchedule.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    SnapshotSchedule.add_member(:next_invocations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledSnapshotTimeList, location_name: 'NextInvocations'))
    SnapshotSchedule.add_member(:associated_cluster_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'AssociatedClusterCount'))
    SnapshotSchedule.add_member(:associated_clusters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedClusterList, location_name: 'AssociatedClusters'))
    SnapshotSchedule.type = Types::SnapshotSchedule
    SnapshotScheduleAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SnapshotScheduleAlreadyExistsFault.type = Types::SnapshotScheduleAlreadyExistsFault
    SnapshotScheduleList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotSchedule, traits: {"smithy.api#xmlName" => "SnapshotSchedule"})
    SnapshotScheduleNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SnapshotScheduleNotFoundFault.type = Types::SnapshotScheduleNotFoundFault
    SnapshotScheduleQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SnapshotScheduleQuotaExceededFault.type = Types::SnapshotScheduleQuotaExceededFault
    SnapshotScheduleUpdateInProgressFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SnapshotScheduleUpdateInProgressFault.type = Types::SnapshotScheduleUpdateInProgressFault
    SnapshotSortingEntity.add_member(:attribute, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotAttributeToSortBy, location_name: 'Attribute', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SnapshotSortingEntity.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortByOrder, location_name: 'SortOrder'))
    SnapshotSortingEntity.type = Types::SnapshotSortingEntity
    SnapshotSortingEntityList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotSortingEntity, traits: {"smithy.api#xmlName" => "SnapshotSortingEntity"})
    SortByOrder.add_member(:ascending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASCENDING', traits: {"smithy.api#enumValue" => "ASC"}))
    SortByOrder.add_member(:descending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DESCENDING', traits: {"smithy.api#enumValue" => "DESC"}))
    SourceIdsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "SourceId"})
    SourceNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SourceNotFoundFault.type = Types::SourceNotFoundFault
    SourceType.add_member(:cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cluster', traits: {"smithy.api#enumValue" => "cluster"}))
    SourceType.add_member(:cluster_parameter_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cluster_parameter_group', traits: {"smithy.api#enumValue" => "cluster-parameter-group"}))
    SourceType.add_member(:cluster_security_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cluster_security_group', traits: {"smithy.api#enumValue" => "cluster-security-group"}))
    SourceType.add_member(:cluster_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cluster_snapshot', traits: {"smithy.api#enumValue" => "cluster-snapshot"}))
    SourceType.add_member(:scheduled_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'scheduled_action', traits: {"smithy.api#enumValue" => "scheduled-action"}))
    Subnet.add_member(:subnet_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubnetIdentifier'))
    Subnet.add_member(:subnet_availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: 'SubnetAvailabilityZone'))
    Subnet.add_member(:subnet_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubnetStatus'))
    Subnet.type = Types::Subnet
    SubnetAlreadyInUse.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SubnetAlreadyInUse.type = Types::SubnetAlreadyInUse
    SubnetIdentifierList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "SubnetIdentifier"})
    SubnetList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Subnet, traits: {"smithy.api#xmlName" => "Subnet"})
    SubscriptionAlreadyExistFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SubscriptionAlreadyExistFault.type = Types::SubscriptionAlreadyExistFault
    SubscriptionCategoryNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SubscriptionCategoryNotFoundFault.type = Types::SubscriptionCategoryNotFoundFault
    SubscriptionEventIdNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SubscriptionEventIdNotFoundFault.type = Types::SubscriptionEventIdNotFoundFault
    SubscriptionNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SubscriptionNotFoundFault.type = Types::SubscriptionNotFoundFault
    SubscriptionSeverityNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SubscriptionSeverityNotFoundFault.type = Types::SubscriptionSeverityNotFoundFault
    SupportedOperation.add_member(:operation_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OperationName'))
    SupportedOperation.type = Types::SupportedOperation
    SupportedOperationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedOperation, traits: {"smithy.api#xmlName" => "SupportedOperation"})
    SupportedPlatform.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    SupportedPlatform.type = Types::SupportedPlatform
    SupportedPlatformsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedPlatform, traits: {"smithy.api#xmlName" => "SupportedPlatform"})
    TableLimitExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    TableLimitExceededFault.type = Types::TableLimitExceededFault
    TableRestoreNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    TableRestoreNotFoundFault.type = Types::TableRestoreNotFoundFault
    TableRestoreStatus.add_member(:table_restore_request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TableRestoreRequestId'))
    TableRestoreStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableRestoreStatusType, location_name: 'Status'))
    TableRestoreStatus.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TableRestoreStatus.add_member(:request_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'RequestTime'))
    TableRestoreStatus.add_member(:progress_in_mega_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: 'ProgressInMegaBytes'))
    TableRestoreStatus.add_member(:total_data_in_mega_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: 'TotalDataInMegaBytes'))
    TableRestoreStatus.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier'))
    TableRestoreStatus.add_member(:snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotIdentifier'))
    TableRestoreStatus.add_member(:source_database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceDatabaseName'))
    TableRestoreStatus.add_member(:source_schema_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceSchemaName'))
    TableRestoreStatus.add_member(:source_table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceTableName'))
    TableRestoreStatus.add_member(:target_database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetDatabaseName'))
    TableRestoreStatus.add_member(:target_schema_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetSchemaName'))
    TableRestoreStatus.add_member(:new_table_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NewTableName'))
    TableRestoreStatus.type = Types::TableRestoreStatus
    TableRestoreStatusList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableRestoreStatus, traits: {"smithy.api#xmlName" => "TableRestoreStatus"})
    TableRestoreStatusMessage.add_member(:table_restore_status_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableRestoreStatusList, location_name: 'TableRestoreStatusDetails'))
    TableRestoreStatusMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    TableRestoreStatusMessage.type = Types::TableRestoreStatusMessage
    TableRestoreStatusType.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    TableRestoreStatusType.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    TableRestoreStatusType.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    TableRestoreStatusType.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    TableRestoreStatusType.add_member(:canceled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELED', traits: {"smithy.api#enumValue" => "CANCELED"}))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Key'))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value'))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "TagKey"})
    TagLimitExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    TagLimitExceededFault.type = Types::TagLimitExceededFault
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag, traits: {"smithy.api#xmlName" => "Tag"})
    TagValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "TagValue"})
    TaggedResource.add_member(:tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag, location_name: 'Tag'))
    TaggedResource.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName'))
    TaggedResource.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceType'))
    TaggedResource.type = Types::TaggedResource
    TaggedResourceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaggedResource, traits: {"smithy.api#xmlName" => "TaggedResource"})
    TaggedResourceListMessage.add_member(:tagged_resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaggedResourceList, location_name: 'TaggedResources'))
    TaggedResourceListMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    TaggedResourceListMessage.type = Types::TaggedResourceListMessage
    TrackList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaintenanceTrack, traits: {"smithy.api#xmlName" => "MaintenanceTrack"})
    TrackListMessage.add_member(:maintenance_tracks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrackList, location_name: 'MaintenanceTracks'))
    TrackListMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    TrackListMessage.type = Types::TrackListMessage
    UnauthorizedOperation.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    UnauthorizedOperation.type = Types::UnauthorizedOperation
    UnauthorizedPartnerIntegrationFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    UnauthorizedPartnerIntegrationFault.type = Types::UnauthorizedPartnerIntegrationFault
    UnknownSnapshotCopyRegionFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    UnknownSnapshotCopyRegionFault.type = Types::UnknownSnapshotCopyRegionFault
    UnsupportedOperationFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    UnsupportedOperationFault.type = Types::UnsupportedOperationFault
    UnsupportedOptionFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    UnsupportedOptionFault.type = Types::UnsupportedOptionFault
    UpdatePartnerStatusInputMessage.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationAccountId, location_name: 'AccountId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdatePartnerStatusInputMessage.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationClusterIdentifier, location_name: 'ClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdatePartnerStatusInputMessage.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationDatabaseName, location_name: 'DatabaseName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdatePartnerStatusInputMessage.add_member(:partner_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationPartnerName, location_name: 'PartnerName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdatePartnerStatusInputMessage.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationStatus, location_name: 'Status', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdatePartnerStatusInputMessage.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationStatusMessage, location_name: 'StatusMessage'))
    UpdatePartnerStatusInputMessage.type = Types::UpdatePartnerStatusInputMessage
    UpdatePartnerStatusOutput.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationDatabaseName, location_name: 'DatabaseName'))
    UpdatePartnerStatusOutput.add_member(:partner_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerIntegrationPartnerName, location_name: 'PartnerName'))
    UpdatePartnerStatusOutput.type = Types::UpdatePartnerStatusOutput
    UpdateTarget.add_member(:maintenance_track_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MaintenanceTrackName'))
    UpdateTarget.add_member(:database_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DatabaseVersion'))
    UpdateTarget.add_member(:supported_operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedOperationList, location_name: 'SupportedOperations'))
    UpdateTarget.type = Types::UpdateTarget
    UsageLimit.add_member(:usage_limit_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UsageLimitId'))
    UsageLimit.add_member(:cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ClusterIdentifier'))
    UsageLimit.add_member(:feature_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitFeatureType, location_name: 'FeatureType'))
    UsageLimit.add_member(:limit_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitLimitType, location_name: 'LimitType'))
    UsageLimit.add_member(:amount, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'Amount'))
    UsageLimit.add_member(:period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitPeriod, location_name: 'Period'))
    UsageLimit.add_member(:breach_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitBreachAction, location_name: 'BreachAction'))
    UsageLimit.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    UsageLimit.type = Types::UsageLimit
    UsageLimitAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    UsageLimitAlreadyExistsFault.type = Types::UsageLimitAlreadyExistsFault
    UsageLimitBreachAction.add_member(:log, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOG', traits: {"smithy.api#enumValue" => "log"}))
    UsageLimitBreachAction.add_member(:emit_metric, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMIT_METRIC', traits: {"smithy.api#enumValue" => "emit-metric"}))
    UsageLimitBreachAction.add_member(:disable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLE', traits: {"smithy.api#enumValue" => "disable"}))
    UsageLimitFeatureType.add_member(:spectrum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SPECTRUM', traits: {"smithy.api#enumValue" => "spectrum"}))
    UsageLimitFeatureType.add_member(:concurrency_scaling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONCURRENCY_SCALING', traits: {"smithy.api#enumValue" => "concurrency-scaling"}))
    UsageLimitFeatureType.add_member(:cross_region_datasharing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CROSS_REGION_DATASHARING', traits: {"smithy.api#enumValue" => "cross-region-datasharing"}))
    UsageLimitLimitType.add_member(:time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIME', traits: {"smithy.api#enumValue" => "time"}))
    UsageLimitLimitType.add_member(:data_scanned, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATA_SCANNED', traits: {"smithy.api#enumValue" => "data-scanned"}))
    UsageLimitNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    UsageLimitNotFoundFault.type = Types::UsageLimitNotFoundFault
    UsageLimitPeriod.add_member(:daily, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DAILY', traits: {"smithy.api#enumValue" => "daily"}))
    UsageLimitPeriod.add_member(:weekly, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WEEKLY', traits: {"smithy.api#enumValue" => "weekly"}))
    UsageLimitPeriod.add_member(:monthly, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MONTHLY', traits: {"smithy.api#enumValue" => "monthly"}))
    UsageLimits.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimit)
    ValueStringList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "item"})
    VpcEndpoint.add_member(:vpc_endpoint_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcEndpointId'))
    VpcEndpoint.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcId'))
    VpcEndpoint.add_member(:network_interfaces, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterfaceList, location_name: 'NetworkInterfaces'))
    VpcEndpoint.type = Types::VpcEndpoint
    VpcEndpointsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcEndpoint, traits: {"smithy.api#xmlName" => "VpcEndpoint"})
    VpcIdentifierList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "VpcIdentifier"})
    VpcSecurityGroupIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "VpcSecurityGroupId"})
    VpcSecurityGroupMembership.add_member(:vpc_security_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcSecurityGroupId'))
    VpcSecurityGroupMembership.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    VpcSecurityGroupMembership.type = Types::VpcSecurityGroupMembership
    VpcSecurityGroupMembershipList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupMembership, traits: {"smithy.api#xmlName" => "VpcSecurityGroup"})
    ZeroETLIntegrationStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "creating"}))
    ZeroETLIntegrationStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "active"}))
    ZeroETLIntegrationStatus.add_member(:modifying, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MODIFYING', traits: {"smithy.api#enumValue" => "modifying"}))
    ZeroETLIntegrationStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "failed"}))
    ZeroETLIntegrationStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "deleting"}))
    ZeroETLIntegrationStatus.add_member(:syncing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYNCING', traits: {"smithy.api#enumValue" => "syncing"}))
    ZeroETLIntegrationStatus.add_member(:needs_attention, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEEDS_ATTENTION', traits: {"smithy.api#enumValue" => "needs_attention"}))

    RedshiftServiceVersion20121201 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.redshift#RedshiftServiceVersion20121201"
      service.name = "RedshiftServiceVersion20121201"
      service.version = "2012-12-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Redshift", "arnNamespace" => "redshift", "cloudFormationName" => "Redshift", "cloudTrailEventSource" => "redshift.amazonaws.com", "endpointPrefix" => "redshift"}, "aws.auth#sigv4" => {"name" => "redshift"}, "aws.protocols#awsQuery" => {}, "smithy.api#title" => "Amazon Redshift", "smithy.api#xmlNamespace" => {"uri" => "http://redshift.amazonaws.com/doc/2012-12-01/"}}
      service.add_operation(:accept_reserved_node_exchange, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#AcceptReservedNodeExchange"
        operation.name = "AcceptReservedNodeExchange"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptReservedNodeExchangeInputMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptReservedNodeExchangeOutputMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceUnavailableFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidReservedNodeStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeAlreadyMigratedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeOfferingNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:add_partner, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#AddPartner"
        operation.name = "AddPartner"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddPartnerInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddPartnerOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedPartnerIntegrationFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:associate_data_share_consumer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#AssociateDataShareConsumer"
        operation.name = "AssociateDataShareConsumer"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateDataShareConsumerMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateDataShareConsumerOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDataShareFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNamespaceFault)
        operation.traits = {}
      end)
      service.add_operation(:authorize_cluster_security_group_ingress, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#AuthorizeClusterSecurityGroupIngress"
        operation.name = "AuthorizeClusterSecurityGroupIngress"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizeClusterSecurityGroupIngressMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizeClusterSecurityGroupIngressResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSecurityGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterSecurityGroupStateFault)
        operation.traits = {}
      end)
      service.add_operation(:authorize_data_share, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#AuthorizeDataShare"
        operation.name = "AuthorizeDataShare"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizeDataShareMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizeDataShareOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDataShareFault)
        operation.traits = {}
      end)
      service.add_operation(:authorize_endpoint_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#AuthorizeEndpointAccess"
        operation.name = "AuthorizeEndpointAccess"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizeEndpointAccessMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizeEndpointAccessOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointAuthorizationAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointAuthorizationsPerClusterLimitExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAuthorizationStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:authorize_snapshot_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#AuthorizeSnapshotAccess"
        operation.name = "AuthorizeSnapshotAccess"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizeSnapshotAccessMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizeSnapshotAccessResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceRequestThrottlingFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterSnapshotStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:batch_delete_cluster_snapshots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#BatchDeleteClusterSnapshots"
        operation.name = "BatchDeleteClusterSnapshots"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteClusterSnapshotsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteClusterSnapshotsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteRequestSizeExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:batch_modify_cluster_snapshots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#BatchModifyClusterSnapshots"
        operation.name = "BatchModifyClusterSnapshots"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchModifyClusterSnapshotsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchModifyClusterSnapshotsOutputMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchModifyClusterSnapshotsLimitExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRetentionPeriodFault)
        operation.traits = {}
      end)
      service.add_operation(:cancel_resize, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CancelResize"
        operation.name = "CancelResize"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelResizeMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelResizeOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResizeNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:copy_cluster_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CopyClusterSnapshot"
        operation.name = "CopyClusterSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopyClusterSnapshotMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopyClusterSnapshotResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshotAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshotQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterSnapshotStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRetentionPeriodFault)
        operation.traits = {}
      end)
      service.add_operation(:create_authentication_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateAuthenticationProfile"
        operation.name = "CreateAuthenticationProfile"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAuthenticationProfileMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAuthenticationProfileResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationProfileAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationProfileQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAuthenticationProfileRequestFault)
        operation.traits = {}
      end)
      service.add_operation(:create_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateCluster"
        operation.name = "CreateCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSecurityGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSubnetGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceRequestThrottlingFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: HsmClientCertificateNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: HsmConfigurationNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientClusterCapacityFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterSubnetGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterTrackFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidElasticIpFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRetentionPeriodFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv6CidrBlockNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfNodesPerClusterLimitExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfNodesQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftIdcApplicationNotExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotScheduleNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagLimitExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:create_cluster_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateClusterParameterGroup"
        operation.name = "CreateClusterParameterGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterParameterGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterParameterGroupResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterParameterGroupAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterParameterGroupQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagLimitExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:create_cluster_security_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateClusterSecurityGroup"
        operation.name = "CreateClusterSecurityGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterSecurityGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterSecurityGroupResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSecurityGroupAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSecurityGroupQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagLimitExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:create_cluster_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateClusterSnapshot"
        operation.name = "CreateClusterSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterSnapshotMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterSnapshotResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshotAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshotQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRetentionPeriodFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagLimitExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:create_cluster_subnet_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateClusterSubnetGroup"
        operation.name = "CreateClusterSubnetGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterSubnetGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClusterSubnetGroupResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSubnetGroupAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSubnetGroupQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSubnetQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceRequestThrottlingFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagLimitExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        operation.traits = {}
      end)
      service.add_operation(:create_custom_domain_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateCustomDomainAssociation"
        operation.name = "CreateCustomDomainAssociation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomDomainAssociationMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomDomainAssociationResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomCnameAssociationFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:create_endpoint_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateEndpointAccess"
        operation.name = "CreateEndpointAccess"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEndpointAccessMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEndpointAccessOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessToClusterDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSubnetGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointsPerAuthorizationLimitExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointsPerClusterLimitExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterSecurityGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:create_event_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateEventSubscription"
        operation.name = "CreateEventSubscription"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEventSubscriptionMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEventSubscriptionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventSubscriptionQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SNSInvalidTopicFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SNSNoAuthorizationFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SNSTopicArnNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionAlreadyExistFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionCategoryNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionEventIdNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionSeverityNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagLimitExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:create_hsm_client_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateHsmClientCertificate"
        operation.name = "CreateHsmClientCertificate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateHsmClientCertificateMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateHsmClientCertificateResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: HsmClientCertificateAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: HsmClientCertificateQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagLimitExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:create_hsm_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateHsmConfiguration"
        operation.name = "CreateHsmConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateHsmConfigurationMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateHsmConfigurationResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: HsmConfigurationAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: HsmConfigurationQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagLimitExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:create_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateIntegration"
        operation.name = "CreateIntegration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIntegrationMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIntegrationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationConflictOperationFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationSourceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationTargetNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagLimitExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:create_redshift_idc_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateRedshiftIdcApplication"
        operation.name = "CreateRedshiftIdcApplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRedshiftIdcApplicationMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRedshiftIdcApplicationResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceAccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceUnavailableFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftIdcApplicationAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftIdcApplicationQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagLimitExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:create_scheduled_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateScheduledAction"
        operation.name = "CreateScheduledAction"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateScheduledActionMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateScheduledActionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidScheduledActionFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidScheduleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionTypeUnsupportedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:create_snapshot_copy_grant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateSnapshotCopyGrant"
        operation.name = "CreateSnapshotCopyGrant"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSnapshotCopyGrantMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSnapshotCopyGrantResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceRequestThrottlingFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotCopyGrantAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotCopyGrantQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagLimitExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:create_snapshot_schedule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateSnapshotSchedule"
        operation.name = "CreateSnapshotSchedule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSnapshotScheduleMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSnapshotScheduleOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidScheduleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduleDefinitionTypeUnsupportedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotScheduleAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotScheduleQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagLimitExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:create_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateTags"
        operation.name = "CreateTags"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTagsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagLimitExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:create_usage_limit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#CreateUsageLimit"
        operation.name = "CreateUsageLimit"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUsageLimitMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUsageLimitOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidUsageLimitFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagLimitExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitAlreadyExistsFault)
        operation.traits = {}
      end)
      service.add_operation(:deauthorize_data_share, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeauthorizeDataShare"
        operation.name = "DeauthorizeDataShare"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeauthorizeDataShareMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeauthorizeDataShareOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDataShareFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_authentication_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteAuthenticationProfile"
        operation.name = "DeleteAuthenticationProfile"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAuthenticationProfileMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAuthenticationProfileResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationProfileNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAuthenticationProfileRequestFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteCluster"
        operation.name = "DeleteCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshotAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshotQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRetentionPeriodFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_cluster_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteClusterParameterGroup"
        operation.name = "DeleteClusterParameterGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterParameterGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterParameterGroupStateFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_cluster_security_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteClusterSecurityGroup"
        operation.name = "DeleteClusterSecurityGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterSecurityGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSecurityGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterSecurityGroupStateFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_cluster_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteClusterSnapshot"
        operation.name = "DeleteClusterSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterSnapshotInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterSnapshotResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterSnapshotStateFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_cluster_subnet_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteClusterSubnetGroup"
        operation.name = "DeleteClusterSubnetGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteClusterSubnetGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSubnetGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterSubnetGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterSubnetStateFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_custom_domain_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteCustomDomainAssociation"
        operation.name = "DeleteCustomDomainAssociation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCustomDomainAssociationMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomCnameAssociationFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainAssociationNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_endpoint_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteEndpointAccess"
        operation.name = "DeleteEndpointAccess"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEndpointAccessMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEndpointAccessOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterSecurityGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointStateFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_event_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteEventSubscription"
        operation.name = "DeleteEventSubscription"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEventSubscriptionMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubscriptionStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_hsm_client_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteHsmClientCertificate"
        operation.name = "DeleteHsmClientCertificate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteHsmClientCertificateMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: HsmClientCertificateNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidHsmClientCertificateStateFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_hsm_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteHsmConfiguration"
        operation.name = "DeleteHsmConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteHsmConfigurationMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: HsmConfigurationNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidHsmConfigurationStateFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteIntegration"
        operation.name = "DeleteIntegration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIntegrationMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIntegrationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationConflictOperationFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationConflictStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_partner, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeletePartner"
        operation.name = "DeletePartner"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePartnerInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePartnerOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedPartnerIntegrationFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_redshift_idc_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteRedshiftIdcApplication"
        operation.name = "DeleteRedshiftIdcApplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRedshiftIdcApplicationMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceAccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceUnavailableFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftIdcApplicationNotExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourcePolicyMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_scheduled_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteScheduledAction"
        operation.name = "DeleteScheduledAction"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteScheduledActionMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        operation.traits = {}
      end)
      service.add_operation(:delete_snapshot_copy_grant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteSnapshotCopyGrant"
        operation.name = "DeleteSnapshotCopyGrant"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSnapshotCopyGrantMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSnapshotCopyGrantStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotCopyGrantNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_snapshot_schedule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteSnapshotSchedule"
        operation.name = "DeleteSnapshotSchedule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSnapshotScheduleMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterSnapshotScheduleStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotScheduleNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteTags"
        operation.name = "DeleteTags"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTagsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_usage_limit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeleteUsageLimit"
        operation.name = "DeleteUsageLimit"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUsageLimitMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:deregister_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DeregisterNamespace"
        operation.name = "DeregisterNamespace"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterNamespaceInputMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterNamespaceOutputMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNamespaceFault)
        operation.traits = {}
      end)
      service.add_operation(:describe_account_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeAccountAttributes"
        operation.name = "DescribeAccountAttributes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccountAttributesMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccountAttributesOutput)
        operation.traits = {}
      end)
      service.add_operation(:describe_authentication_profiles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeAuthenticationProfiles"
        operation.name = "DescribeAuthenticationProfiles"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAuthenticationProfilesMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAuthenticationProfilesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationProfileNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAuthenticationProfileRequestFault)
        operation.traits = {}
      end)
      service.add_operation(:describe_cluster_db_revisions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeClusterDbRevisions"
        operation.name = "DescribeClusterDbRevisions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClusterDbRevisionsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterDbRevisionsMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeClusterDbRevisions.new
      end)
      service.add_operation(:describe_cluster_parameter_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeClusterParameterGroups"
        operation.name = "DescribeClusterParameterGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClusterParameterGroupsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterParameterGroupsMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeClusterParameterGroups.new
      end)
      service.add_operation(:describe_cluster_parameters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeClusterParameters"
        operation.name = "DescribeClusterParameters"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClusterParametersMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClusterParametersOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterParameterGroupNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeClusterParameters.new
      end)
      service.add_operation(:describe_cluster_security_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeClusterSecurityGroups"
        operation.name = "DescribeClusterSecurityGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClusterSecurityGroupsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSecurityGroupMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSecurityGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeClusterSecurityGroups.new
      end)
      service.add_operation(:describe_cluster_snapshots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeClusterSnapshots"
        operation.name = "DescribeClusterSnapshots"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClusterSnapshotsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeClusterSnapshots.new
      end)
      service.add_operation(:describe_cluster_subnet_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeClusterSubnetGroups"
        operation.name = "DescribeClusterSubnetGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClusterSubnetGroupsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSubnetGroupMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSubnetGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeClusterSubnetGroups.new
      end)
      service.add_operation(:describe_cluster_tracks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeClusterTracks"
        operation.name = "DescribeClusterTracks"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClusterTracksMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrackListMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterTrackFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeClusterTracks.new
      end)
      service.add_operation(:describe_cluster_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeClusterVersions"
        operation.name = "DescribeClusterVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClusterVersionsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterVersionsMessage)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeClusterVersions.new
      end)
      service.add_operation(:describe_clusters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeClusters"
        operation.name = "DescribeClusters"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClustersMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClustersMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.traits = {"smithy.api#suppress" => ["WaitableTraitInvalidErrorType"]}
        operation[:paginator] = Paginators::DescribeClusters.new
      end)
      service.add_operation(:describe_custom_domain_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeCustomDomainAssociations"
        operation.name = "DescribeCustomDomainAssociations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCustomDomainAssociationsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainAssociationsMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainAssociationNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeCustomDomainAssociations.new
      end)
      service.add_operation(:describe_data_shares, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeDataShares"
        operation.name = "DescribeDataShares"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDataSharesMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDataSharesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDataShareFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDataShares.new
      end)
      service.add_operation(:describe_data_shares_for_consumer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeDataSharesForConsumer"
        operation.name = "DescribeDataSharesForConsumer"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDataSharesForConsumerMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDataSharesForConsumerResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNamespaceFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDataSharesForConsumer.new
      end)
      service.add_operation(:describe_data_shares_for_producer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeDataSharesForProducer"
        operation.name = "DescribeDataSharesForProducer"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDataSharesForProducerMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDataSharesForProducerResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNamespaceFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDataSharesForProducer.new
      end)
      service.add_operation(:describe_default_cluster_parameters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeDefaultClusterParameters"
        operation.name = "DescribeDefaultClusterParameters"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDefaultClusterParametersMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDefaultClusterParametersResult)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDefaultClusterParameters.new
      end)
      service.add_operation(:describe_endpoint_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeEndpointAccess"
        operation.name = "DescribeEndpointAccess"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEndpointAccessMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEndpointAccessOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEndpointAccess.new
      end)
      service.add_operation(:describe_endpoint_authorization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeEndpointAuthorization"
        operation.name = "DescribeEndpointAuthorization"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEndpointAuthorizationMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEndpointAuthorizationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEndpointAuthorization.new
      end)
      service.add_operation(:describe_event_categories, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeEventCategories"
        operation.name = "DescribeEventCategories"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventCategoriesMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventCategoriesMessage)
        operation.traits = {}
      end)
      service.add_operation(:describe_event_subscriptions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeEventSubscriptions"
        operation.name = "DescribeEventSubscriptions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventSubscriptionsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventSubscriptionsMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEventSubscriptions.new
      end)
      service.add_operation(:describe_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeEvents"
        operation.name = "DescribeEvents"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventsMessage)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEvents.new
      end)
      service.add_operation(:describe_hsm_client_certificates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeHsmClientCertificates"
        operation.name = "DescribeHsmClientCertificates"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeHsmClientCertificatesMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: HsmClientCertificateMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: HsmClientCertificateNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeHsmClientCertificates.new
      end)
      service.add_operation(:describe_hsm_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeHsmConfigurations"
        operation.name = "DescribeHsmConfigurations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeHsmConfigurationsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: HsmConfigurationMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: HsmConfigurationNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeHsmConfigurations.new
      end)
      service.add_operation(:describe_inbound_integrations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeInboundIntegrations"
        operation.name = "DescribeInboundIntegrations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeInboundIntegrationsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InboundIntegrationsMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNamespaceFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeInboundIntegrations.new
      end)
      service.add_operation(:describe_integrations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeIntegrations"
        operation.name = "DescribeIntegrations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeIntegrationsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationsMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeIntegrations.new
      end)
      service.add_operation(:describe_logging_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeLoggingStatus"
        operation.name = "DescribeLoggingStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLoggingStatusMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLoggingStatusOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:describe_node_configuration_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeNodeConfigurationOptions"
        operation.name = "DescribeNodeConfigurationOptions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeNodeConfigurationOptionsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeConfigurationOptionsMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessToSnapshotDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterSnapshotStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeNodeConfigurationOptions.new
      end)
      service.add_operation(:describe_orderable_cluster_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeOrderableClusterOptions"
        operation.name = "DescribeOrderableClusterOptions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOrderableClusterOptionsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrderableClusterOptionsMessage)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeOrderableClusterOptions.new
      end)
      service.add_operation(:describe_partners, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribePartners"
        operation.name = "DescribePartners"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePartnersInputMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePartnersOutputMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedPartnerIntegrationFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:describe_redshift_idc_applications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeRedshiftIdcApplications"
        operation.name = "DescribeRedshiftIdcApplications"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRedshiftIdcApplicationsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRedshiftIdcApplicationsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceAccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceUnavailableFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftIdcApplicationNotExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeRedshiftIdcApplications.new
      end)
      service.add_operation(:describe_reserved_node_exchange_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeReservedNodeExchangeStatus"
        operation.name = "DescribeReservedNodeExchangeStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReservedNodeExchangeStatusInputMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReservedNodeExchangeStatusOutputMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeExchangeNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeReservedNodeExchangeStatus.new
      end)
      service.add_operation(:describe_reserved_node_offerings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeReservedNodeOfferings"
        operation.name = "DescribeReservedNodeOfferings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReservedNodeOfferingsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeOfferingsMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceUnavailableFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeOfferingNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeReservedNodeOfferings.new
      end)
      service.add_operation(:describe_reserved_nodes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeReservedNodes"
        operation.name = "DescribeReservedNodes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReservedNodesMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodesMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceUnavailableFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeReservedNodes.new
      end)
      service.add_operation(:describe_resize, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeResize"
        operation.name = "DescribeResize"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeResizeMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeResizeOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResizeNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:describe_scheduled_actions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeScheduledActions"
        operation.name = "DescribeScheduledActions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeScheduledActionsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionsMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeScheduledActions.new
      end)
      service.add_operation(:describe_snapshot_copy_grants, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeSnapshotCopyGrants"
        operation.name = "DescribeSnapshotCopyGrants"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSnapshotCopyGrantsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotCopyGrantMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotCopyGrantNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeSnapshotCopyGrants.new
      end)
      service.add_operation(:describe_snapshot_schedules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeSnapshotSchedules"
        operation.name = "DescribeSnapshotSchedules"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSnapshotSchedulesMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSnapshotSchedulesOutputMessage)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeSnapshotSchedules.new
      end)
      service.add_operation(:describe_storage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeStorage"
        operation.name = "DescribeStorage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerStorageMessage)
        operation.traits = {}
      end)
      service.add_operation(:describe_table_restore_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeTableRestoreStatus"
        operation.name = "DescribeTableRestoreStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTableRestoreStatusMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableRestoreStatusMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableRestoreNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeTableRestoreStatus.new
      end)
      service.add_operation(:describe_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeTags"
        operation.name = "DescribeTags"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTagsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaggedResourceListMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeTags.new
      end)
      service.add_operation(:describe_usage_limits, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DescribeUsageLimits"
        operation.name = "DescribeUsageLimits"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUsageLimitsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUsageLimitsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeUsageLimits.new
      end)
      service.add_operation(:disable_logging, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DisableLogging"
        operation.name = "DisableLogging"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisableLoggingMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisableLoggingOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:disable_snapshot_copy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DisableSnapshotCopy"
        operation.name = "DisableSnapshotCopy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisableSnapshotCopyMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisableSnapshotCopyResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotCopyAlreadyDisabledFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_data_share_consumer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#DisassociateDataShareConsumer"
        operation.name = "DisassociateDataShareConsumer"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateDataShareConsumerMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateDataShareConsumerOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDataShareFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNamespaceFault)
        operation.traits = {}
      end)
      service.add_operation(:enable_logging, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#EnableLogging"
        operation.name = "EnableLogging"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableLoggingMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableLoggingOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientS3BucketPolicyFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3BucketNameFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3KeyPrefixFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:enable_snapshot_copy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#EnableSnapshotCopy"
        operation.name = "EnableSnapshotCopy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableSnapshotCopyMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableSnapshotCopyResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopyToRegionDisabledFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceRequestThrottlingFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncompatibleOrderableOptions)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRetentionPeriodFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotCopyAlreadyEnabledFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotCopyGrantNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnknownSnapshotCopyRegionFault)
        operation.traits = {}
      end)
      service.add_operation(:failover_primary_compute, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#FailoverPrimaryCompute"
        operation.name = "FailoverPrimaryCompute"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailoverPrimaryComputeInputMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailoverPrimaryComputeResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:get_cluster_credentials, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#GetClusterCredentials"
        operation.name = "GetClusterCredentials"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetClusterCredentialsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetClusterCredentialsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:get_cluster_credentials_with_iam, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#GetClusterCredentialsWithIAM"
        operation.name = "GetClusterCredentialsWithIAM"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetClusterCredentialsWithIAMMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetClusterCredentialsWithIAMOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:get_reserved_node_exchange_configuration_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#GetReservedNodeExchangeConfigurationOptions"
        operation.name = "GetReservedNodeExchangeConfigurationOptions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetReservedNodeExchangeConfigurationOptionsInputMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetReservedNodeExchangeConfigurationOptionsOutputMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceUnavailableFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidReservedNodeStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeAlreadyMigratedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeOfferingNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
        operation[:paginator] = Paginators::GetReservedNodeExchangeConfigurationOptions.new
      end)
      service.add_operation(:get_reserved_node_exchange_offerings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#GetReservedNodeExchangeOfferings"
        operation.name = "GetReservedNodeExchangeOfferings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetReservedNodeExchangeOfferingsInputMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetReservedNodeExchangeOfferingsOutputMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceUnavailableFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidReservedNodeStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeAlreadyMigratedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeOfferingNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
        operation[:paginator] = Paginators::GetReservedNodeExchangeOfferings.new
      end)
      service.add_operation(:get_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#GetResourcePolicy"
        operation.name = "GetResourcePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcePolicyMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcePolicyResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPolicyFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:list_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ListRecommendations"
        operation.name = "ListRecommendations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRecommendationsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRecommendationsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
        operation[:paginator] = Paginators::ListRecommendations.new
      end)
      service.add_operation(:modify_aqua_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyAquaConfiguration"
        operation.name = "ModifyAquaConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyAquaInputMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyAquaOutputMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_authentication_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyAuthenticationProfile"
        operation.name = "ModifyAuthenticationProfile"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyAuthenticationProfileMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyAuthenticationProfileResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationProfileNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationProfileQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAuthenticationProfileRequestFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyCluster"
        operation.name = "ModifyCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSecurityGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomCnameAssociationFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceRequestThrottlingFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: HsmClientCertificateNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: HsmConfigurationNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientClusterCapacityFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterSecurityGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterTrackFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidElasticIpFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRetentionPeriodFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv6CidrBlockNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfNodesPerClusterLimitExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfNodesQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TableLimitExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOptionFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_cluster_db_revision, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyClusterDbRevision"
        operation.name = "ModifyClusterDbRevision"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyClusterDbRevisionMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyClusterDbRevisionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterOnLatestRevisionFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_cluster_iam_roles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyClusterIamRoles"
        operation.name = "ModifyClusterIamRoles"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyClusterIamRolesMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyClusterIamRolesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_cluster_maintenance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyClusterMaintenance"
        operation.name = "ModifyClusterMaintenance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyClusterMaintenanceMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyClusterMaintenanceResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_cluster_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyClusterParameterGroup"
        operation.name = "ModifyClusterParameterGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyClusterParameterGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyClusterParameterGroupOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterParameterGroupStateFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_cluster_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyClusterSnapshot"
        operation.name = "ModifyClusterSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyClusterSnapshotMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyClusterSnapshotResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterSnapshotStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRetentionPeriodFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_cluster_snapshot_schedule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyClusterSnapshotSchedule"
        operation.name = "ModifyClusterSnapshotSchedule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyClusterSnapshotScheduleMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterSnapshotScheduleStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotScheduleNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_cluster_subnet_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyClusterSubnetGroup"
        operation.name = "ModifyClusterSubnetGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyClusterSubnetGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyClusterSubnetGroupResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSubnetGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSubnetQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceRequestThrottlingFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetAlreadyInUse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        operation.traits = {}
      end)
      service.add_operation(:modify_custom_domain_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyCustomDomainAssociation"
        operation.name = "ModifyCustomDomainAssociation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyCustomDomainAssociationMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyCustomDomainAssociationResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomCnameAssociationFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomainAssociationNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_endpoint_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyEndpointAccess"
        operation.name = "ModifyEndpointAccess"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyEndpointAccessMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyEndpointAccessOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterSecurityGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        operation.traits = {}
      end)
      service.add_operation(:modify_event_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyEventSubscription"
        operation.name = "ModifyEventSubscription"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyEventSubscriptionMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyEventSubscriptionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubscriptionStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SNSInvalidTopicFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SNSNoAuthorizationFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SNSTopicArnNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionCategoryNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionEventIdNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionSeverityNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyIntegration"
        operation.name = "ModifyIntegration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyIntegrationMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyIntegrationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationConflictOperationFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationConflictStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegrationNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_redshift_idc_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyRedshiftIdcApplication"
        operation.name = "ModifyRedshiftIdcApplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyRedshiftIdcApplicationMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyRedshiftIdcApplicationResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceAccessDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceUnavailableFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftIdcApplicationNotExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_scheduled_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyScheduledAction"
        operation.name = "ModifyScheduledAction"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyScheduledActionMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyScheduledActionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidScheduledActionFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidScheduleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionTypeUnsupportedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_snapshot_copy_retention_period, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifySnapshotCopyRetentionPeriod"
        operation.name = "ModifySnapshotCopyRetentionPeriod"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifySnapshotCopyRetentionPeriodMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifySnapshotCopyRetentionPeriodResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRetentionPeriodFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotCopyDisabledFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        operation.traits = {}
      end)
      service.add_operation(:modify_snapshot_schedule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifySnapshotSchedule"
        operation.name = "ModifySnapshotSchedule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifySnapshotScheduleMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifySnapshotScheduleOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidScheduleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotScheduleNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotScheduleUpdateInProgressFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_usage_limit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ModifyUsageLimit"
        operation.name = "ModifyUsageLimit"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyUsageLimitMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyUsageLimitOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidUsageLimitFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageLimitNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:pause_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#PauseCluster"
        operation.name = "PauseCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PauseClusterInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PauseClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:purchase_reserved_node_offering, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#PurchaseReservedNodeOffering"
        operation.name = "PurchaseReservedNodeOffering"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PurchaseReservedNodeOfferingMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PurchaseReservedNodeOfferingResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeOfferingNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:put_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictPolicyUpdateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPolicyFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:reboot_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#RebootCluster"
        operation.name = "RebootCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RebootClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RebootClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.traits = {}
      end)
      service.add_operation(:register_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#RegisterNamespace"
        operation.name = "RegisterNamespace"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterNamespaceInputMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterNamespaceOutputMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNamespaceFault)
        operation.traits = {}
      end)
      service.add_operation(:reject_data_share, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#RejectDataShare"
        operation.name = "RejectDataShare"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RejectDataShareMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RejectDataShareOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDataShareFault)
        operation.traits = {}
      end)
      service.add_operation(:reset_cluster_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ResetClusterParameterGroup"
        operation.name = "ResetClusterParameterGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResetClusterParameterGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResetClusterParameterGroupOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterParameterGroupStateFault)
        operation.traits = {}
      end)
      service.add_operation(:resize_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ResizeCluster"
        operation.name = "ResizeCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResizeClusterInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResizeClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceUnavailableFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientClusterCapacityFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidReservedNodeStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfNodesPerClusterLimitExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfNodesQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeAlreadyMigratedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeOfferingNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOptionFault)
        operation.traits = {}
      end)
      service.add_operation(:restore_from_cluster_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#RestoreFromClusterSnapshot"
        operation.name = "RestoreFromClusterSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreFromClusterSnapshotMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreFromClusterSnapshotResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessToSnapshotDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSecurityGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSubnetGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceRequestThrottlingFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceUnavailableFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: HsmClientCertificateNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: HsmConfigurationNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientClusterCapacityFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterSnapshotStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterSubnetGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterTrackFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidElasticIpFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidReservedNodeStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRestoreFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ipv6CidrBlockNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfNodesPerClusterLimitExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfNodesQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeAlreadyMigratedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReservedNodeOfferingNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotScheduleNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagLimitExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:restore_table_from_cluster_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#RestoreTableFromClusterSnapshot"
        operation.name = "RestoreTableFromClusterSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreTableFromClusterSnapshotMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreTableFromClusterSnapshotResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InProgressTableRestoreQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterSnapshotStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTableRestoreArgumentFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:resume_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#ResumeCluster"
        operation.name = "ResumeCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResumeClusterInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResumeClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientClusterCapacityFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:revoke_cluster_security_group_ingress, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#RevokeClusterSecurityGroupIngress"
        operation.name = "RevokeClusterSecurityGroupIngress"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevokeClusterSecurityGroupIngressMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevokeClusterSecurityGroupIngressResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSecurityGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterSecurityGroupStateFault)
        operation.traits = {}
      end)
      service.add_operation(:revoke_endpoint_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#RevokeEndpointAccess"
        operation.name = "RevokeEndpointAccess"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevokeEndpointAccessMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevokeEndpointAccessOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointAuthorizationNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAuthorizationStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterSecurityGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEndpointStateFault)
        operation.traits = {}
      end)
      service.add_operation(:revoke_snapshot_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#RevokeSnapshotAccess"
        operation.name = "RevokeSnapshotAccess"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevokeSnapshotAccessMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevokeSnapshotAccessResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessToSnapshotDeniedFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterSnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:rotate_encryption_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#RotateEncryptionKey"
        operation.name = "RotateEncryptionKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RotateEncryptionKeyMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RotateEncryptionKeyResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceRequestThrottlingFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
        operation.traits = {}
      end)
      service.add_operation(:update_partner_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.redshift#UpdatePartnerStatus"
        operation.name = "UpdatePartnerStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePartnerStatusInputMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePartnerStatusOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: PartnerNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedPartnerIntegrationFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedOperationFault)
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
