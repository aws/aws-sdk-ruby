# frozen_string_literal: true

# This is generated code!

module Aws::Neptune
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AddRoleToDBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#AddRoleToDBClusterMessage', name: 'AddRoleToDBClusterMessage')
    AddSourceIdentifierToSubscriptionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#AddSourceIdentifierToSubscriptionMessage', name: 'AddSourceIdentifierToSubscriptionMessage')
    AddSourceIdentifierToSubscriptionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#AddSourceIdentifierToSubscriptionResult', name: 'AddSourceIdentifierToSubscriptionResult')
    AddTagsToResourceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#AddTagsToResourceMessage', name: 'AddTagsToResourceMessage')
    ApplyMethod = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.neptune#ApplyMethod', name: 'ApplyMethod')
    ApplyPendingMaintenanceActionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#ApplyPendingMaintenanceActionMessage', name: 'ApplyPendingMaintenanceActionMessage')
    ApplyPendingMaintenanceActionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#ApplyPendingMaintenanceActionResult', name: 'ApplyPendingMaintenanceActionResult')
    AttributeValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#AttributeValueList', name: 'AttributeValueList')
    AuthorizationNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#AuthorizationNotFoundFault', name: 'AuthorizationNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "AuthorizationNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    AvailabilityZone = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#AvailabilityZone', name: 'AvailabilityZone')
    AvailabilityZoneList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#AvailabilityZoneList', name: 'AvailabilityZoneList')
    AvailabilityZones = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#AvailabilityZones', name: 'AvailabilityZones')
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.neptune#Boolean', name: 'Boolean')
    BooleanOptional = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.neptune#BooleanOptional', name: 'BooleanOptional')
    CertificateNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#CertificateNotFoundFault', name: 'CertificateNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "CertificateNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    CharacterSet = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#CharacterSet', name: 'CharacterSet')
    CloudwatchLogsExportConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#CloudwatchLogsExportConfiguration', name: 'CloudwatchLogsExportConfiguration')
    ClusterPendingModifiedValues = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#ClusterPendingModifiedValues', name: 'ClusterPendingModifiedValues')
    CopyDBClusterParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#CopyDBClusterParameterGroupMessage', name: 'CopyDBClusterParameterGroupMessage')
    CopyDBClusterParameterGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#CopyDBClusterParameterGroupResult', name: 'CopyDBClusterParameterGroupResult')
    CopyDBClusterSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#CopyDBClusterSnapshotMessage', name: 'CopyDBClusterSnapshotMessage')
    CopyDBClusterSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#CopyDBClusterSnapshotResult', name: 'CopyDBClusterSnapshotResult')
    CopyDBParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#CopyDBParameterGroupMessage', name: 'CopyDBParameterGroupMessage')
    CopyDBParameterGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#CopyDBParameterGroupResult', name: 'CopyDBParameterGroupResult')
    CreateDBClusterEndpointMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#CreateDBClusterEndpointMessage', name: 'CreateDBClusterEndpointMessage')
    CreateDBClusterEndpointOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#CreateDBClusterEndpointOutput', name: 'CreateDBClusterEndpointOutput')
    CreateDBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#CreateDBClusterMessage', name: 'CreateDBClusterMessage')
    CreateDBClusterParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#CreateDBClusterParameterGroupMessage', name: 'CreateDBClusterParameterGroupMessage')
    CreateDBClusterParameterGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#CreateDBClusterParameterGroupResult', name: 'CreateDBClusterParameterGroupResult')
    CreateDBClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#CreateDBClusterResult', name: 'CreateDBClusterResult')
    CreateDBClusterSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#CreateDBClusterSnapshotMessage', name: 'CreateDBClusterSnapshotMessage')
    CreateDBClusterSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#CreateDBClusterSnapshotResult', name: 'CreateDBClusterSnapshotResult')
    CreateDBInstanceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#CreateDBInstanceMessage', name: 'CreateDBInstanceMessage')
    CreateDBInstanceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#CreateDBInstanceResult', name: 'CreateDBInstanceResult')
    CreateDBParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#CreateDBParameterGroupMessage', name: 'CreateDBParameterGroupMessage')
    CreateDBParameterGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#CreateDBParameterGroupResult', name: 'CreateDBParameterGroupResult')
    CreateDBSubnetGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#CreateDBSubnetGroupMessage', name: 'CreateDBSubnetGroupMessage')
    CreateDBSubnetGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#CreateDBSubnetGroupResult', name: 'CreateDBSubnetGroupResult')
    CreateEventSubscriptionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#CreateEventSubscriptionMessage', name: 'CreateEventSubscriptionMessage')
    CreateEventSubscriptionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#CreateEventSubscriptionResult', name: 'CreateEventSubscriptionResult')
    CreateGlobalClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#CreateGlobalClusterMessage', name: 'CreateGlobalClusterMessage')
    CreateGlobalClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#CreateGlobalClusterResult', name: 'CreateGlobalClusterResult')
    DBCluster = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBCluster', name: 'DBCluster')
    DBClusterAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBClusterAlreadyExistsFault', name: 'DBClusterAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBClusterEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBClusterEndpoint', name: 'DBClusterEndpoint')
    DBClusterEndpointAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBClusterEndpointAlreadyExistsFault', name: 'DBClusterEndpointAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterEndpointAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBClusterEndpointList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#DBClusterEndpointList', name: 'DBClusterEndpointList')
    DBClusterEndpointMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBClusterEndpointMessage', name: 'DBClusterEndpointMessage')
    DBClusterEndpointNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBClusterEndpointNotFoundFault', name: 'DBClusterEndpointNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterEndpointNotFoundFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBClusterEndpointQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBClusterEndpointQuotaExceededFault', name: 'DBClusterEndpointQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterEndpointQuotaExceededFault", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    DBClusterList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#DBClusterList', name: 'DBClusterList')
    DBClusterMember = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBClusterMember', name: 'DBClusterMember')
    DBClusterMemberList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#DBClusterMemberList', name: 'DBClusterMemberList')
    DBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBClusterMessage', name: 'DBClusterMessage')
    DBClusterNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBClusterNotFoundFault', name: 'DBClusterNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBClusterOptionGroupMemberships = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#DBClusterOptionGroupMemberships', name: 'DBClusterOptionGroupMemberships')
    DBClusterOptionGroupStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBClusterOptionGroupStatus', name: 'DBClusterOptionGroupStatus')
    DBClusterParameterGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBClusterParameterGroup', name: 'DBClusterParameterGroup')
    DBClusterParameterGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#DBClusterParameterGroupList', name: 'DBClusterParameterGroupList')
    DBClusterParameterGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBClusterParameterGroupNotFoundFault', name: 'DBClusterParameterGroupNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterParameterGroupNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBClusterParameterGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBClusterParameterGroupsMessage', name: 'DBClusterParameterGroupsMessage')
    DBClusterQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBClusterQuotaExceededFault', name: 'DBClusterQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterQuotaExceededFault", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    DBClusterRole = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBClusterRole', name: 'DBClusterRole')
    DBClusterRoleAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBClusterRoleAlreadyExistsFault', name: 'DBClusterRoleAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterRoleAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBClusterRoleNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBClusterRoleNotFoundFault', name: 'DBClusterRoleNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterRoleNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBClusterRoleQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBClusterRoleQuotaExceededFault', name: 'DBClusterRoleQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterRoleQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBClusterRoles = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#DBClusterRoles', name: 'DBClusterRoles')
    DBClusterSnapshot = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBClusterSnapshot', name: 'DBClusterSnapshot')
    DBClusterSnapshotAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBClusterSnapshotAlreadyExistsFault', name: 'DBClusterSnapshotAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterSnapshotAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBClusterSnapshotAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBClusterSnapshotAttribute', name: 'DBClusterSnapshotAttribute')
    DBClusterSnapshotAttributeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#DBClusterSnapshotAttributeList', name: 'DBClusterSnapshotAttributeList')
    DBClusterSnapshotAttributesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBClusterSnapshotAttributesResult', name: 'DBClusterSnapshotAttributesResult')
    DBClusterSnapshotList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#DBClusterSnapshotList', name: 'DBClusterSnapshotList')
    DBClusterSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBClusterSnapshotMessage', name: 'DBClusterSnapshotMessage')
    DBClusterSnapshotNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBClusterSnapshotNotFoundFault', name: 'DBClusterSnapshotNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBClusterSnapshotNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBEngineVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBEngineVersion', name: 'DBEngineVersion')
    DBEngineVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#DBEngineVersionList', name: 'DBEngineVersionList')
    DBEngineVersionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBEngineVersionMessage', name: 'DBEngineVersionMessage')
    DBInstance = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBInstance', name: 'DBInstance')
    DBInstanceAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBInstanceAlreadyExistsFault', name: 'DBInstanceAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBInstanceAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBInstanceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#DBInstanceList', name: 'DBInstanceList')
    DBInstanceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBInstanceMessage', name: 'DBInstanceMessage')
    DBInstanceNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBInstanceNotFoundFault', name: 'DBInstanceNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBInstanceNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBInstanceStatusInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBInstanceStatusInfo', name: 'DBInstanceStatusInfo')
    DBInstanceStatusInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#DBInstanceStatusInfoList', name: 'DBInstanceStatusInfoList')
    DBParameterGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBParameterGroup', name: 'DBParameterGroup')
    DBParameterGroupAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBParameterGroupAlreadyExistsFault', name: 'DBParameterGroupAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBParameterGroupAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBParameterGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#DBParameterGroupList', name: 'DBParameterGroupList')
    DBParameterGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBParameterGroupNotFoundFault', name: 'DBParameterGroupNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBParameterGroupNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBParameterGroupQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBParameterGroupQuotaExceededFault', name: 'DBParameterGroupQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBParameterGroupQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBParameterGroupStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBParameterGroupStatus', name: 'DBParameterGroupStatus')
    DBParameterGroupStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#DBParameterGroupStatusList', name: 'DBParameterGroupStatusList')
    DBParameterGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBParameterGroupsMessage', name: 'DBParameterGroupsMessage')
    DBSecurityGroupMembership = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBSecurityGroupMembership', name: 'DBSecurityGroupMembership')
    DBSecurityGroupMembershipList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#DBSecurityGroupMembershipList', name: 'DBSecurityGroupMembershipList')
    DBSecurityGroupNameList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#DBSecurityGroupNameList', name: 'DBSecurityGroupNameList')
    DBSecurityGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBSecurityGroupNotFoundFault', name: 'DBSecurityGroupNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBSecurityGroupNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBSnapshotAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBSnapshotAlreadyExistsFault', name: 'DBSnapshotAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBSnapshotAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBSnapshotNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBSnapshotNotFoundFault', name: 'DBSnapshotNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBSnapshotNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBSubnetGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBSubnetGroup', name: 'DBSubnetGroup')
    DBSubnetGroupAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBSubnetGroupAlreadyExistsFault', name: 'DBSubnetGroupAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBSubnetGroupAlreadyExists", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBSubnetGroupDoesNotCoverEnoughAZs = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBSubnetGroupDoesNotCoverEnoughAZs', name: 'DBSubnetGroupDoesNotCoverEnoughAZs', traits: {"aws.protocols#awsQueryError" => {"code" => "DBSubnetGroupDoesNotCoverEnoughAZs", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBSubnetGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBSubnetGroupMessage', name: 'DBSubnetGroupMessage')
    DBSubnetGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBSubnetGroupNotFoundFault', name: 'DBSubnetGroupNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBSubnetGroupNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    DBSubnetGroupQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBSubnetGroupQuotaExceededFault', name: 'DBSubnetGroupQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBSubnetGroupQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBSubnetGroups = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#DBSubnetGroups', name: 'DBSubnetGroups')
    DBSubnetQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBSubnetQuotaExceededFault', name: 'DBSubnetQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBSubnetQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DBUpgradeDependencyFailureFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DBUpgradeDependencyFailureFault', name: 'DBUpgradeDependencyFailureFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DBUpgradeDependencyFailure", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    DeleteDBClusterEndpointMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DeleteDBClusterEndpointMessage', name: 'DeleteDBClusterEndpointMessage')
    DeleteDBClusterEndpointOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DeleteDBClusterEndpointOutput', name: 'DeleteDBClusterEndpointOutput')
    DeleteDBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DeleteDBClusterMessage', name: 'DeleteDBClusterMessage')
    DeleteDBClusterParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DeleteDBClusterParameterGroupMessage', name: 'DeleteDBClusterParameterGroupMessage')
    DeleteDBClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DeleteDBClusterResult', name: 'DeleteDBClusterResult')
    DeleteDBClusterSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DeleteDBClusterSnapshotMessage', name: 'DeleteDBClusterSnapshotMessage')
    DeleteDBClusterSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DeleteDBClusterSnapshotResult', name: 'DeleteDBClusterSnapshotResult')
    DeleteDBInstanceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DeleteDBInstanceMessage', name: 'DeleteDBInstanceMessage')
    DeleteDBInstanceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DeleteDBInstanceResult', name: 'DeleteDBInstanceResult')
    DeleteDBParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DeleteDBParameterGroupMessage', name: 'DeleteDBParameterGroupMessage')
    DeleteDBSubnetGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DeleteDBSubnetGroupMessage', name: 'DeleteDBSubnetGroupMessage')
    DeleteEventSubscriptionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DeleteEventSubscriptionMessage', name: 'DeleteEventSubscriptionMessage')
    DeleteEventSubscriptionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DeleteEventSubscriptionResult', name: 'DeleteEventSubscriptionResult')
    DeleteGlobalClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DeleteGlobalClusterMessage', name: 'DeleteGlobalClusterMessage')
    DeleteGlobalClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DeleteGlobalClusterResult', name: 'DeleteGlobalClusterResult')
    DescribeDBClusterEndpointsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DescribeDBClusterEndpointsMessage', name: 'DescribeDBClusterEndpointsMessage')
    DescribeDBClusterParameterGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DescribeDBClusterParameterGroupsMessage', name: 'DescribeDBClusterParameterGroupsMessage')
    DescribeDBClusterParametersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DescribeDBClusterParametersMessage', name: 'DescribeDBClusterParametersMessage')
    DescribeDBClusterParametersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DescribeDBClusterParametersOutput', name: 'DescribeDBClusterParametersOutput')
    DescribeDBClusterSnapshotAttributesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DescribeDBClusterSnapshotAttributesMessage', name: 'DescribeDBClusterSnapshotAttributesMessage')
    DescribeDBClusterSnapshotAttributesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DescribeDBClusterSnapshotAttributesResult', name: 'DescribeDBClusterSnapshotAttributesResult')
    DescribeDBClusterSnapshotsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DescribeDBClusterSnapshotsMessage', name: 'DescribeDBClusterSnapshotsMessage')
    DescribeDBClustersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DescribeDBClustersMessage', name: 'DescribeDBClustersMessage')
    DescribeDBEngineVersionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DescribeDBEngineVersionsMessage', name: 'DescribeDBEngineVersionsMessage')
    DescribeDBInstancesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DescribeDBInstancesMessage', name: 'DescribeDBInstancesMessage')
    DescribeDBParameterGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DescribeDBParameterGroupsMessage', name: 'DescribeDBParameterGroupsMessage')
    DescribeDBParametersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DescribeDBParametersMessage', name: 'DescribeDBParametersMessage')
    DescribeDBParametersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DescribeDBParametersOutput', name: 'DescribeDBParametersOutput')
    DescribeDBSubnetGroupsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DescribeDBSubnetGroupsMessage', name: 'DescribeDBSubnetGroupsMessage')
    DescribeEngineDefaultClusterParametersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DescribeEngineDefaultClusterParametersMessage', name: 'DescribeEngineDefaultClusterParametersMessage')
    DescribeEngineDefaultClusterParametersResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DescribeEngineDefaultClusterParametersResult', name: 'DescribeEngineDefaultClusterParametersResult')
    DescribeEngineDefaultParametersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DescribeEngineDefaultParametersMessage', name: 'DescribeEngineDefaultParametersMessage')
    DescribeEngineDefaultParametersResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DescribeEngineDefaultParametersResult', name: 'DescribeEngineDefaultParametersResult')
    DescribeEventCategoriesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DescribeEventCategoriesMessage', name: 'DescribeEventCategoriesMessage')
    DescribeEventSubscriptionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DescribeEventSubscriptionsMessage', name: 'DescribeEventSubscriptionsMessage')
    DescribeEventsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DescribeEventsMessage', name: 'DescribeEventsMessage')
    DescribeGlobalClustersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DescribeGlobalClustersMessage', name: 'DescribeGlobalClustersMessage')
    DescribeOrderableDBInstanceOptionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DescribeOrderableDBInstanceOptionsMessage', name: 'DescribeOrderableDBInstanceOptionsMessage')
    DescribePendingMaintenanceActionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DescribePendingMaintenanceActionsMessage', name: 'DescribePendingMaintenanceActionsMessage')
    DescribeValidDBInstanceModificationsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DescribeValidDBInstanceModificationsMessage', name: 'DescribeValidDBInstanceModificationsMessage')
    DescribeValidDBInstanceModificationsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DescribeValidDBInstanceModificationsResult', name: 'DescribeValidDBInstanceModificationsResult')
    DomainMembership = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DomainMembership', name: 'DomainMembership')
    DomainMembershipList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#DomainMembershipList', name: 'DomainMembershipList')
    DomainNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DomainNotFoundFault', name: 'DomainNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "DomainNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.neptune#Double', name: 'Double')
    DoubleOptional = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.neptune#DoubleOptional', name: 'DoubleOptional')
    DoubleRange = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#DoubleRange', name: 'DoubleRange')
    DoubleRangeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#DoubleRangeList', name: 'DoubleRangeList')
    Endpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#Endpoint', name: 'Endpoint')
    EngineDefaults = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#EngineDefaults', name: 'EngineDefaults')
    Event = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#Event', name: 'Event')
    EventCategoriesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#EventCategoriesList', name: 'EventCategoriesList')
    EventCategoriesMap = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#EventCategoriesMap', name: 'EventCategoriesMap')
    EventCategoriesMapList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#EventCategoriesMapList', name: 'EventCategoriesMapList')
    EventCategoriesMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#EventCategoriesMessage', name: 'EventCategoriesMessage')
    EventList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#EventList', name: 'EventList')
    EventSubscription = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#EventSubscription', name: 'EventSubscription')
    EventSubscriptionQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#EventSubscriptionQuotaExceededFault', name: 'EventSubscriptionQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "EventSubscriptionQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EventSubscriptionsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#EventSubscriptionsList', name: 'EventSubscriptionsList')
    EventSubscriptionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#EventSubscriptionsMessage', name: 'EventSubscriptionsMessage')
    EventsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#EventsMessage', name: 'EventsMessage')
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptune#ExceptionMessage', name: 'ExceptionMessage')
    FailoverDBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#FailoverDBClusterMessage', name: 'FailoverDBClusterMessage')
    FailoverDBClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#FailoverDBClusterResult', name: 'FailoverDBClusterResult')
    FailoverGlobalClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#FailoverGlobalClusterMessage', name: 'FailoverGlobalClusterMessage')
    FailoverGlobalClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#FailoverGlobalClusterResult', name: 'FailoverGlobalClusterResult')
    FailoverState = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#FailoverState', name: 'FailoverState')
    FailoverStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.neptune#FailoverStatus', name: 'FailoverStatus')
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#Filter', name: 'Filter')
    FilterList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#FilterList', name: 'FilterList')
    FilterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#FilterValueList', name: 'FilterValueList')
    GlobalCluster = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#GlobalCluster', name: 'GlobalCluster')
    GlobalClusterAlreadyExistsFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#GlobalClusterAlreadyExistsFault', name: 'GlobalClusterAlreadyExistsFault', traits: {"aws.protocols#awsQueryError" => {"code" => "GlobalClusterAlreadyExistsFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    GlobalClusterIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptune#GlobalClusterIdentifier', name: 'GlobalClusterIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z][0-9A-Za-z-:._]*$"})
    GlobalClusterList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#GlobalClusterList', name: 'GlobalClusterList')
    GlobalClusterMember = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#GlobalClusterMember', name: 'GlobalClusterMember')
    GlobalClusterMemberList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#GlobalClusterMemberList', name: 'GlobalClusterMemberList')
    GlobalClusterNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#GlobalClusterNotFoundFault', name: 'GlobalClusterNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "GlobalClusterNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    GlobalClusterQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#GlobalClusterQuotaExceededFault', name: 'GlobalClusterQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "GlobalClusterQuotaExceededFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    GlobalClustersMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#GlobalClustersMessage', name: 'GlobalClustersMessage')
    InstanceQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#InstanceQuotaExceededFault', name: 'InstanceQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InstanceQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InsufficientDBClusterCapacityFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#InsufficientDBClusterCapacityFault', name: 'InsufficientDBClusterCapacityFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InsufficientDBClusterCapacityFault", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    InsufficientDBInstanceCapacityFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#InsufficientDBInstanceCapacityFault', name: 'InsufficientDBInstanceCapacityFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InsufficientDBInstanceCapacity", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InsufficientStorageClusterCapacityFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#InsufficientStorageClusterCapacityFault', name: 'InsufficientStorageClusterCapacityFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InsufficientStorageClusterCapacity", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.neptune#Integer', name: 'Integer')
    IntegerOptional = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.neptune#IntegerOptional', name: 'IntegerOptional')
    InvalidDBClusterEndpointStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#InvalidDBClusterEndpointStateFault', name: 'InvalidDBClusterEndpointStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBClusterEndpointStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBClusterSnapshotStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#InvalidDBClusterSnapshotStateFault', name: 'InvalidDBClusterSnapshotStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBClusterSnapshotStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBClusterStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#InvalidDBClusterStateFault', name: 'InvalidDBClusterStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBClusterStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBInstanceStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#InvalidDBInstanceStateFault', name: 'InvalidDBInstanceStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBInstanceState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBParameterGroupStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#InvalidDBParameterGroupStateFault', name: 'InvalidDBParameterGroupStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBParameterGroupState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBSecurityGroupStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#InvalidDBSecurityGroupStateFault', name: 'InvalidDBSecurityGroupStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBSecurityGroupState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBSnapshotStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#InvalidDBSnapshotStateFault', name: 'InvalidDBSnapshotStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBSnapshotState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBSubnetGroupStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#InvalidDBSubnetGroupStateFault', name: 'InvalidDBSubnetGroupStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBSubnetGroupStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidDBSubnetStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#InvalidDBSubnetStateFault', name: 'InvalidDBSubnetStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidDBSubnetStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidEventSubscriptionStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#InvalidEventSubscriptionStateFault', name: 'InvalidEventSubscriptionStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidEventSubscriptionState", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidGlobalClusterStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#InvalidGlobalClusterStateFault', name: 'InvalidGlobalClusterStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidGlobalClusterStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRestoreFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#InvalidRestoreFault', name: 'InvalidRestoreFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidRestoreFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidSubnet = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#InvalidSubnet', name: 'InvalidSubnet', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidSubnet", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidVPCNetworkStateFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#InvalidVPCNetworkStateFault', name: 'InvalidVPCNetworkStateFault', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidVPCNetworkStateFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KMSKeyNotAccessibleFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#KMSKeyNotAccessibleFault', name: 'KMSKeyNotAccessibleFault', traits: {"aws.protocols#awsQueryError" => {"code" => "KMSKeyNotAccessibleFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    KeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#KeyList', name: 'KeyList')
    ListTagsForResourceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#ListTagsForResourceMessage', name: 'ListTagsForResourceMessage')
    LogTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#LogTypeList', name: 'LogTypeList')
    ModifyDBClusterEndpointMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#ModifyDBClusterEndpointMessage', name: 'ModifyDBClusterEndpointMessage')
    ModifyDBClusterEndpointOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#ModifyDBClusterEndpointOutput', name: 'ModifyDBClusterEndpointOutput')
    ModifyDBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#ModifyDBClusterMessage', name: 'ModifyDBClusterMessage')
    ModifyDBClusterParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#ModifyDBClusterParameterGroupMessage', name: 'ModifyDBClusterParameterGroupMessage')
    ModifyDBClusterParameterGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#ModifyDBClusterParameterGroupOutput', name: 'ModifyDBClusterParameterGroupOutput')
    ModifyDBClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#ModifyDBClusterResult', name: 'ModifyDBClusterResult')
    ModifyDBClusterSnapshotAttributeMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#ModifyDBClusterSnapshotAttributeMessage', name: 'ModifyDBClusterSnapshotAttributeMessage')
    ModifyDBClusterSnapshotAttributeResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#ModifyDBClusterSnapshotAttributeResult', name: 'ModifyDBClusterSnapshotAttributeResult')
    ModifyDBInstanceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#ModifyDBInstanceMessage', name: 'ModifyDBInstanceMessage')
    ModifyDBInstanceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#ModifyDBInstanceResult', name: 'ModifyDBInstanceResult')
    ModifyDBParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#ModifyDBParameterGroupMessage', name: 'ModifyDBParameterGroupMessage')
    ModifyDBParameterGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#ModifyDBParameterGroupOutput', name: 'ModifyDBParameterGroupOutput')
    ModifyDBSubnetGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#ModifyDBSubnetGroupMessage', name: 'ModifyDBSubnetGroupMessage')
    ModifyDBSubnetGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#ModifyDBSubnetGroupResult', name: 'ModifyDBSubnetGroupResult')
    ModifyEventSubscriptionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#ModifyEventSubscriptionMessage', name: 'ModifyEventSubscriptionMessage')
    ModifyEventSubscriptionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#ModifyEventSubscriptionResult', name: 'ModifyEventSubscriptionResult')
    ModifyGlobalClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#ModifyGlobalClusterMessage', name: 'ModifyGlobalClusterMessage')
    ModifyGlobalClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#ModifyGlobalClusterResult', name: 'ModifyGlobalClusterResult')
    OptionGroupMembership = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#OptionGroupMembership', name: 'OptionGroupMembership')
    OptionGroupMembershipList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#OptionGroupMembershipList', name: 'OptionGroupMembershipList')
    OptionGroupNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#OptionGroupNotFoundFault', name: 'OptionGroupNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "OptionGroupNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    OrderableDBInstanceOption = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#OrderableDBInstanceOption', name: 'OrderableDBInstanceOption')
    OrderableDBInstanceOptionsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#OrderableDBInstanceOptionsList', name: 'OrderableDBInstanceOptionsList')
    OrderableDBInstanceOptionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#OrderableDBInstanceOptionsMessage', name: 'OrderableDBInstanceOptionsMessage')
    Parameter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#Parameter', name: 'Parameter')
    ParametersList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#ParametersList', name: 'ParametersList')
    PendingCloudwatchLogsExports = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#PendingCloudwatchLogsExports', name: 'PendingCloudwatchLogsExports')
    PendingMaintenanceAction = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#PendingMaintenanceAction', name: 'PendingMaintenanceAction')
    PendingMaintenanceActionDetails = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#PendingMaintenanceActionDetails', name: 'PendingMaintenanceActionDetails')
    PendingMaintenanceActions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#PendingMaintenanceActions', name: 'PendingMaintenanceActions')
    PendingMaintenanceActionsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#PendingMaintenanceActionsMessage', name: 'PendingMaintenanceActionsMessage')
    PendingModifiedValues = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#PendingModifiedValues', name: 'PendingModifiedValues')
    PromoteReadReplicaDBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#PromoteReadReplicaDBClusterMessage', name: 'PromoteReadReplicaDBClusterMessage')
    PromoteReadReplicaDBClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#PromoteReadReplicaDBClusterResult', name: 'PromoteReadReplicaDBClusterResult')
    ProvisionedIopsNotAvailableInAZFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#ProvisionedIopsNotAvailableInAZFault', name: 'ProvisionedIopsNotAvailableInAZFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ProvisionedIopsNotAvailableInAZFault", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Range = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#Range', name: 'Range')
    RangeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#RangeList', name: 'RangeList')
    ReadReplicaDBClusterIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#ReadReplicaDBClusterIdentifierList', name: 'ReadReplicaDBClusterIdentifierList')
    ReadReplicaDBInstanceIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#ReadReplicaDBInstanceIdentifierList', name: 'ReadReplicaDBInstanceIdentifierList')
    ReadReplicaIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#ReadReplicaIdentifierList', name: 'ReadReplicaIdentifierList')
    ReadersArnList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#ReadersArnList', name: 'ReadersArnList')
    RebootDBInstanceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#RebootDBInstanceMessage', name: 'RebootDBInstanceMessage')
    RebootDBInstanceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#RebootDBInstanceResult', name: 'RebootDBInstanceResult')
    RemoveFromGlobalClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#RemoveFromGlobalClusterMessage', name: 'RemoveFromGlobalClusterMessage')
    RemoveFromGlobalClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#RemoveFromGlobalClusterResult', name: 'RemoveFromGlobalClusterResult')
    RemoveRoleFromDBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#RemoveRoleFromDBClusterMessage', name: 'RemoveRoleFromDBClusterMessage')
    RemoveSourceIdentifierFromSubscriptionMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#RemoveSourceIdentifierFromSubscriptionMessage', name: 'RemoveSourceIdentifierFromSubscriptionMessage')
    RemoveSourceIdentifierFromSubscriptionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#RemoveSourceIdentifierFromSubscriptionResult', name: 'RemoveSourceIdentifierFromSubscriptionResult')
    RemoveTagsFromResourceMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#RemoveTagsFromResourceMessage', name: 'RemoveTagsFromResourceMessage')
    ResetDBClusterParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#ResetDBClusterParameterGroupMessage', name: 'ResetDBClusterParameterGroupMessage')
    ResetDBClusterParameterGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#ResetDBClusterParameterGroupOutput', name: 'ResetDBClusterParameterGroupOutput')
    ResetDBParameterGroupMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#ResetDBParameterGroupMessage', name: 'ResetDBParameterGroupMessage')
    ResetDBParameterGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#ResetDBParameterGroupOutput', name: 'ResetDBParameterGroupOutput')
    ResourceNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#ResourceNotFoundFault', name: 'ResourceNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceNotFoundFault", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourcePendingMaintenanceActions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#ResourcePendingMaintenanceActions', name: 'ResourcePendingMaintenanceActions')
    RestoreDBClusterFromSnapshotMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#RestoreDBClusterFromSnapshotMessage', name: 'RestoreDBClusterFromSnapshotMessage')
    RestoreDBClusterFromSnapshotResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#RestoreDBClusterFromSnapshotResult', name: 'RestoreDBClusterFromSnapshotResult')
    RestoreDBClusterToPointInTimeMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#RestoreDBClusterToPointInTimeMessage', name: 'RestoreDBClusterToPointInTimeMessage')
    RestoreDBClusterToPointInTimeResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#RestoreDBClusterToPointInTimeResult', name: 'RestoreDBClusterToPointInTimeResult')
    SNSInvalidTopicFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#SNSInvalidTopicFault', name: 'SNSInvalidTopicFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SNSInvalidTopic", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SNSNoAuthorizationFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#SNSNoAuthorizationFault', name: 'SNSNoAuthorizationFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SNSNoAuthorization", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SNSTopicArnNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#SNSTopicArnNotFoundFault', name: 'SNSTopicArnNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SNSTopicArnNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SensitiveString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptune#SensitiveString', name: 'SensitiveString', traits: {"smithy.api#sensitive" => {}})
    ServerlessV2ScalingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#ServerlessV2ScalingConfiguration', name: 'ServerlessV2ScalingConfiguration')
    ServerlessV2ScalingConfigurationInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#ServerlessV2ScalingConfigurationInfo', name: 'ServerlessV2ScalingConfigurationInfo')
    SharedSnapshotQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#SharedSnapshotQuotaExceededFault', name: 'SharedSnapshotQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SharedSnapshotQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SnapshotQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#SnapshotQuotaExceededFault', name: 'SnapshotQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SnapshotQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SourceIdsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#SourceIdsList', name: 'SourceIdsList')
    SourceNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#SourceNotFoundFault', name: 'SourceNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SourceNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.neptune#SourceType', name: 'SourceType')
    StartDBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#StartDBClusterMessage', name: 'StartDBClusterMessage')
    StartDBClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#StartDBClusterResult', name: 'StartDBClusterResult')
    StopDBClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#StopDBClusterMessage', name: 'StopDBClusterMessage')
    StopDBClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#StopDBClusterResult', name: 'StopDBClusterResult')
    StorageQuotaExceededFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#StorageQuotaExceededFault', name: 'StorageQuotaExceededFault', traits: {"aws.protocols#awsQueryError" => {"code" => "StorageQuotaExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    StorageTypeNotSupportedFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#StorageTypeNotSupportedFault', name: 'StorageTypeNotSupportedFault', traits: {"aws.protocols#awsQueryError" => {"code" => "StorageTypeNotSupported", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.neptune#String', name: 'String')
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#StringList', name: 'StringList')
    Subnet = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#Subnet', name: 'Subnet')
    SubnetAlreadyInUse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#SubnetAlreadyInUse', name: 'SubnetAlreadyInUse', traits: {"aws.protocols#awsQueryError" => {"code" => "SubnetAlreadyInUse", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SubnetIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#SubnetIdentifierList', name: 'SubnetIdentifierList')
    SubnetList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#SubnetList', name: 'SubnetList')
    SubscriptionAlreadyExistFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#SubscriptionAlreadyExistFault', name: 'SubscriptionAlreadyExistFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SubscriptionAlreadyExist", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SubscriptionCategoryNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#SubscriptionCategoryNotFoundFault', name: 'SubscriptionCategoryNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SubscriptionCategoryNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SubscriptionNotFoundFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#SubscriptionNotFoundFault', name: 'SubscriptionNotFoundFault', traits: {"aws.protocols#awsQueryError" => {"code" => "SubscriptionNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SupportedCharacterSetsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#SupportedCharacterSetsList', name: 'SupportedCharacterSetsList')
    SupportedTimezonesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#SupportedTimezonesList', name: 'SupportedTimezonesList')
    SwitchoverGlobalClusterMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#SwitchoverGlobalClusterMessage', name: 'SwitchoverGlobalClusterMessage')
    SwitchoverGlobalClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#SwitchoverGlobalClusterResult', name: 'SwitchoverGlobalClusterResult')
    TStamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.neptune#TStamp', name: 'TStamp')
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#Tag', name: 'Tag')
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#TagList', name: 'TagList')
    TagListMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#TagListMessage', name: 'TagListMessage')
    Timezone = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#Timezone', name: 'Timezone')
    UpgradeTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#UpgradeTarget', name: 'UpgradeTarget')
    ValidDBInstanceModificationsMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#ValidDBInstanceModificationsMessage', name: 'ValidDBInstanceModificationsMessage')
    ValidStorageOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#ValidStorageOptions', name: 'ValidStorageOptions')
    ValidStorageOptionsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#ValidStorageOptionsList', name: 'ValidStorageOptionsList')
    ValidUpgradeTargetList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#ValidUpgradeTargetList', name: 'ValidUpgradeTargetList')
    VpcSecurityGroupIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#VpcSecurityGroupIdList', name: 'VpcSecurityGroupIdList')
    VpcSecurityGroupMembership = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.neptune#VpcSecurityGroupMembership', name: 'VpcSecurityGroupMembership')
    VpcSecurityGroupMembershipList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.neptune#VpcSecurityGroupMembershipList', name: 'VpcSecurityGroupMembershipList')

    AddRoleToDBClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddRoleToDBClusterMessage.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddRoleToDBClusterMessage.add_member(:feature_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FeatureName'))
    AddRoleToDBClusterMessage.type = Types::AddRoleToDBClusterMessage
    AddSourceIdentifierToSubscriptionMessage.add_member(:subscription_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubscriptionName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddSourceIdentifierToSubscriptionMessage.add_member(:source_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddSourceIdentifierToSubscriptionMessage.type = Types::AddSourceIdentifierToSubscriptionMessage
    AddSourceIdentifierToSubscriptionResult.add_member(:event_subscription, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventSubscription, location_name: 'EventSubscription'))
    AddSourceIdentifierToSubscriptionResult.type = Types::AddSourceIdentifierToSubscriptionResult
    AddTagsToResourceMessage.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddTagsToResourceMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AddTagsToResourceMessage.type = Types::AddTagsToResourceMessage
    ApplyMethod.add_member(:immediate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'immediate', traits: {"smithy.api#enumValue" => "immediate"}))
    ApplyMethod.add_member(:pending_reboot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'pending_reboot', traits: {"smithy.api#enumValue" => "pending-reboot"}))
    ApplyPendingMaintenanceActionMessage.add_member(:resource_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ApplyPendingMaintenanceActionMessage.add_member(:apply_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplyAction', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ApplyPendingMaintenanceActionMessage.add_member(:opt_in_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptInType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ApplyPendingMaintenanceActionMessage.type = Types::ApplyPendingMaintenanceActionMessage
    ApplyPendingMaintenanceActionResult.add_member(:resource_pending_maintenance_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePendingMaintenanceActions, location_name: 'ResourcePendingMaintenanceActions'))
    ApplyPendingMaintenanceActionResult.type = Types::ApplyPendingMaintenanceActionResult
    AttributeValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "AttributeValue"})
    AuthorizationNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    AuthorizationNotFoundFault.type = Types::AuthorizationNotFoundFault
    AvailabilityZone.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    AvailabilityZone.type = Types::AvailabilityZone
    AvailabilityZoneList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZone, traits: {"smithy.api#xmlName" => "AvailabilityZone"})
    AvailabilityZones.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "AvailabilityZone"})
    CertificateNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    CertificateNotFoundFault.type = Types::CertificateNotFoundFault
    CharacterSet.add_member(:character_set_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CharacterSetName'))
    CharacterSet.add_member(:character_set_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CharacterSetDescription'))
    CharacterSet.type = Types::CharacterSet
    CloudwatchLogsExportConfiguration.add_member(:enable_log_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'EnableLogTypes'))
    CloudwatchLogsExportConfiguration.add_member(:disable_log_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'DisableLogTypes'))
    CloudwatchLogsExportConfiguration.type = Types::CloudwatchLogsExportConfiguration
    ClusterPendingModifiedValues.add_member(:pending_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingCloudwatchLogsExports, location_name: 'PendingCloudwatchLogsExports'))
    ClusterPendingModifiedValues.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier'))
    ClusterPendingModifiedValues.add_member(:iam_database_authentication_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'IAMDatabaseAuthenticationEnabled'))
    ClusterPendingModifiedValues.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    ClusterPendingModifiedValues.add_member(:backup_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'BackupRetentionPeriod'))
    ClusterPendingModifiedValues.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StorageType'))
    ClusterPendingModifiedValues.add_member(:allocated_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'AllocatedStorage'))
    ClusterPendingModifiedValues.add_member(:iops, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Iops'))
    ClusterPendingModifiedValues.type = Types::ClusterPendingModifiedValues
    CopyDBClusterParameterGroupMessage.add_member(:source_db_cluster_parameter_group_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceDBClusterParameterGroupIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyDBClusterParameterGroupMessage.add_member(:target_db_cluster_parameter_group_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetDBClusterParameterGroupIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyDBClusterParameterGroupMessage.add_member(:target_db_cluster_parameter_group_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetDBClusterParameterGroupDescription', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyDBClusterParameterGroupMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CopyDBClusterParameterGroupMessage.type = Types::CopyDBClusterParameterGroupMessage
    CopyDBClusterParameterGroupResult.add_member(:db_cluster_parameter_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterParameterGroup, location_name: 'DBClusterParameterGroup'))
    CopyDBClusterParameterGroupResult.type = Types::CopyDBClusterParameterGroupResult
    CopyDBClusterSnapshotMessage.add_member(:source_db_cluster_snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceDBClusterSnapshotIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyDBClusterSnapshotMessage.add_member(:target_db_cluster_snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetDBClusterSnapshotIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyDBClusterSnapshotMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    CopyDBClusterSnapshotMessage.add_member(:pre_signed_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreSignedUrl'))
    CopyDBClusterSnapshotMessage.add_member(:copy_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'CopyTags'))
    CopyDBClusterSnapshotMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CopyDBClusterSnapshotMessage.type = Types::CopyDBClusterSnapshotMessage
    CopyDBClusterSnapshotResult.add_member(:db_cluster_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshot, location_name: 'DBClusterSnapshot'))
    CopyDBClusterSnapshotResult.type = Types::CopyDBClusterSnapshotResult
    CopyDBParameterGroupMessage.add_member(:source_db_parameter_group_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceDBParameterGroupIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyDBParameterGroupMessage.add_member(:target_db_parameter_group_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetDBParameterGroupIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyDBParameterGroupMessage.add_member(:target_db_parameter_group_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetDBParameterGroupDescription', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyDBParameterGroupMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CopyDBParameterGroupMessage.type = Types::CopyDBParameterGroupMessage
    CopyDBParameterGroupResult.add_member(:db_parameter_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroup, location_name: 'DBParameterGroup'))
    CopyDBParameterGroupResult.type = Types::CopyDBParameterGroupResult
    CreateDBClusterEndpointMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBClusterEndpointMessage.add_member(:db_cluster_endpoint_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterEndpointIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBClusterEndpointMessage.add_member(:endpoint_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBClusterEndpointMessage.add_member(:static_members, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'StaticMembers'))
    CreateDBClusterEndpointMessage.add_member(:excluded_members, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'ExcludedMembers'))
    CreateDBClusterEndpointMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateDBClusterEndpointMessage.type = Types::CreateDBClusterEndpointMessage
    CreateDBClusterEndpointOutput.add_member(:db_cluster_endpoint_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterEndpointIdentifier'))
    CreateDBClusterEndpointOutput.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier'))
    CreateDBClusterEndpointOutput.add_member(:db_cluster_endpoint_resource_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterEndpointResourceIdentifier'))
    CreateDBClusterEndpointOutput.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Endpoint'))
    CreateDBClusterEndpointOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    CreateDBClusterEndpointOutput.add_member(:endpoint_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointType'))
    CreateDBClusterEndpointOutput.add_member(:custom_endpoint_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomEndpointType'))
    CreateDBClusterEndpointOutput.add_member(:static_members, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'StaticMembers'))
    CreateDBClusterEndpointOutput.add_member(:excluded_members, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'ExcludedMembers'))
    CreateDBClusterEndpointOutput.add_member(:db_cluster_endpoint_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterEndpointArn'))
    CreateDBClusterEndpointOutput.type = Types::CreateDBClusterEndpointOutput
    CreateDBClusterMessage.add_member(:availability_zones, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZones, location_name: 'AvailabilityZones'))
    CreateDBClusterMessage.add_member(:backup_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'BackupRetentionPeriod'))
    CreateDBClusterMessage.add_member(:character_set_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CharacterSetName'))
    CreateDBClusterMessage.add_member(:copy_tags_to_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'CopyTagsToSnapshot'))
    CreateDBClusterMessage.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DatabaseName'))
    CreateDBClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBClusterMessage.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterParameterGroupName'))
    CreateDBClusterMessage.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: 'VpcSecurityGroupIds'))
    CreateDBClusterMessage.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSubnetGroupName'))
    CreateDBClusterMessage.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBClusterMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    CreateDBClusterMessage.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Port'))
    CreateDBClusterMessage.add_member(:master_username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterUsername'))
    CreateDBClusterMessage.add_member(:master_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterUserPassword'))
    CreateDBClusterMessage.add_member(:option_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptionGroupName'))
    CreateDBClusterMessage.add_member(:preferred_backup_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredBackupWindow'))
    CreateDBClusterMessage.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredMaintenanceWindow'))
    CreateDBClusterMessage.add_member(:replication_source_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicationSourceIdentifier'))
    CreateDBClusterMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateDBClusterMessage.add_member(:storage_encrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'StorageEncrypted'))
    CreateDBClusterMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    CreateDBClusterMessage.add_member(:pre_signed_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreSignedUrl'))
    CreateDBClusterMessage.add_member(:enable_iam_database_authentication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnableIAMDatabaseAuthentication'))
    CreateDBClusterMessage.add_member(:enable_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'EnableCloudwatchLogsExports'))
    CreateDBClusterMessage.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DeletionProtection'))
    CreateDBClusterMessage.add_member(:serverless_v2_scaling_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessV2ScalingConfiguration, location_name: 'ServerlessV2ScalingConfiguration'))
    CreateDBClusterMessage.add_member(:global_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, location_name: 'GlobalClusterIdentifier'))
    CreateDBClusterMessage.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StorageType'))
    CreateDBClusterMessage.type = Types::CreateDBClusterMessage
    CreateDBClusterParameterGroupMessage.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterParameterGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBClusterParameterGroupMessage.add_member(:db_parameter_group_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBParameterGroupFamily', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBClusterParameterGroupMessage.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBClusterParameterGroupMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateDBClusterParameterGroupMessage.type = Types::CreateDBClusterParameterGroupMessage
    CreateDBClusterParameterGroupResult.add_member(:db_cluster_parameter_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterParameterGroup, location_name: 'DBClusterParameterGroup'))
    CreateDBClusterParameterGroupResult.type = Types::CreateDBClusterParameterGroupResult
    CreateDBClusterResult.add_member(:db_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBCluster, location_name: 'DBCluster'))
    CreateDBClusterResult.type = Types::CreateDBClusterResult
    CreateDBClusterSnapshotMessage.add_member(:db_cluster_snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterSnapshotIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBClusterSnapshotMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBClusterSnapshotMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateDBClusterSnapshotMessage.type = Types::CreateDBClusterSnapshotMessage
    CreateDBClusterSnapshotResult.add_member(:db_cluster_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshot, location_name: 'DBClusterSnapshot'))
    CreateDBClusterSnapshotResult.type = Types::CreateDBClusterSnapshotResult
    CreateDBInstanceMessage.add_member(:db_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBName'))
    CreateDBInstanceMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBInstanceMessage.add_member(:allocated_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'AllocatedStorage'))
    CreateDBInstanceMessage.add_member(:db_instance_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceClass', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBInstanceMessage.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBInstanceMessage.add_member(:master_username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterUsername'))
    CreateDBInstanceMessage.add_member(:master_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterUserPassword'))
    CreateDBInstanceMessage.add_member(:db_security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSecurityGroupNameList, location_name: 'DBSecurityGroups'))
    CreateDBInstanceMessage.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: 'VpcSecurityGroupIds'))
    CreateDBInstanceMessage.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AvailabilityZone'))
    CreateDBInstanceMessage.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSubnetGroupName'))
    CreateDBInstanceMessage.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredMaintenanceWindow'))
    CreateDBInstanceMessage.add_member(:db_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBParameterGroupName'))
    CreateDBInstanceMessage.add_member(:backup_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'BackupRetentionPeriod'))
    CreateDBInstanceMessage.add_member(:preferred_backup_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredBackupWindow'))
    CreateDBInstanceMessage.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Port'))
    CreateDBInstanceMessage.add_member(:multi_az, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'MultiAZ'))
    CreateDBInstanceMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    CreateDBInstanceMessage.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AutoMinorVersionUpgrade'))
    CreateDBInstanceMessage.add_member(:license_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseModel'))
    CreateDBInstanceMessage.add_member(:iops, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Iops'))
    CreateDBInstanceMessage.add_member(:option_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptionGroupName'))
    CreateDBInstanceMessage.add_member(:character_set_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CharacterSetName'))
    CreateDBInstanceMessage.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'PubliclyAccessible'))
    CreateDBInstanceMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateDBInstanceMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBInstanceMessage.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StorageType'))
    CreateDBInstanceMessage.add_member(:tde_credential_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TdeCredentialArn'))
    CreateDBInstanceMessage.add_member(:tde_credential_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'TdeCredentialPassword'))
    CreateDBInstanceMessage.add_member(:storage_encrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'StorageEncrypted'))
    CreateDBInstanceMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    CreateDBInstanceMessage.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Domain'))
    CreateDBInstanceMessage.add_member(:copy_tags_to_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'CopyTagsToSnapshot'))
    CreateDBInstanceMessage.add_member(:monitoring_interval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MonitoringInterval'))
    CreateDBInstanceMessage.add_member(:monitoring_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MonitoringRoleArn'))
    CreateDBInstanceMessage.add_member(:domain_iam_role_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DomainIAMRoleName'))
    CreateDBInstanceMessage.add_member(:promotion_tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'PromotionTier'))
    CreateDBInstanceMessage.add_member(:timezone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Timezone'))
    CreateDBInstanceMessage.add_member(:enable_iam_database_authentication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnableIAMDatabaseAuthentication'))
    CreateDBInstanceMessage.add_member(:enable_performance_insights, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnablePerformanceInsights'))
    CreateDBInstanceMessage.add_member(:performance_insights_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PerformanceInsightsKMSKeyId'))
    CreateDBInstanceMessage.add_member(:enable_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'EnableCloudwatchLogsExports'))
    CreateDBInstanceMessage.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DeletionProtection'))
    CreateDBInstanceMessage.type = Types::CreateDBInstanceMessage
    CreateDBInstanceResult.add_member(:db_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstance, location_name: 'DBInstance'))
    CreateDBInstanceResult.type = Types::CreateDBInstanceResult
    CreateDBParameterGroupMessage.add_member(:db_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBParameterGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBParameterGroupMessage.add_member(:db_parameter_group_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBParameterGroupFamily', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBParameterGroupMessage.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBParameterGroupMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateDBParameterGroupMessage.type = Types::CreateDBParameterGroupMessage
    CreateDBParameterGroupResult.add_member(:db_parameter_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroup, location_name: 'DBParameterGroup'))
    CreateDBParameterGroupResult.type = Types::CreateDBParameterGroupResult
    CreateDBSubnetGroupMessage.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSubnetGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBSubnetGroupMessage.add_member(:db_subnet_group_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSubnetGroupDescription', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBSubnetGroupMessage.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIdentifierList, location_name: 'SubnetIds', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDBSubnetGroupMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateDBSubnetGroupMessage.type = Types::CreateDBSubnetGroupMessage
    CreateDBSubnetGroupResult.add_member(:db_subnet_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroup, location_name: 'DBSubnetGroup'))
    CreateDBSubnetGroupResult.type = Types::CreateDBSubnetGroupResult
    CreateEventSubscriptionMessage.add_member(:subscription_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubscriptionName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateEventSubscriptionMessage.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnsTopicArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateEventSubscriptionMessage.add_member(:source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceType'))
    CreateEventSubscriptionMessage.add_member(:event_categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: 'EventCategories'))
    CreateEventSubscriptionMessage.add_member(:source_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceIdsList, location_name: 'SourceIds'))
    CreateEventSubscriptionMessage.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'Enabled'))
    CreateEventSubscriptionMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateEventSubscriptionMessage.type = Types::CreateEventSubscriptionMessage
    CreateEventSubscriptionResult.add_member(:event_subscription, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventSubscription, location_name: 'EventSubscription'))
    CreateEventSubscriptionResult.type = Types::CreateEventSubscriptionResult
    CreateGlobalClusterMessage.add_member(:global_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, location_name: 'GlobalClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateGlobalClusterMessage.add_member(:source_db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceDBClusterIdentifier'))
    CreateGlobalClusterMessage.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    CreateGlobalClusterMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    CreateGlobalClusterMessage.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DeletionProtection'))
    CreateGlobalClusterMessage.add_member(:storage_encrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'StorageEncrypted'))
    CreateGlobalClusterMessage.type = Types::CreateGlobalClusterMessage
    CreateGlobalClusterResult.add_member(:global_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalCluster, location_name: 'GlobalCluster'))
    CreateGlobalClusterResult.type = Types::CreateGlobalClusterResult
    DBCluster.add_member(:allocated_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'AllocatedStorage'))
    DBCluster.add_member(:availability_zones, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZones, location_name: 'AvailabilityZones'))
    DBCluster.add_member(:backup_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'BackupRetentionPeriod'))
    DBCluster.add_member(:character_set_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CharacterSetName'))
    DBCluster.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DatabaseName'))
    DBCluster.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier'))
    DBCluster.add_member(:db_cluster_parameter_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterParameterGroup'))
    DBCluster.add_member(:db_subnet_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSubnetGroup'))
    DBCluster.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    DBCluster.add_member(:percent_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PercentProgress'))
    DBCluster.add_member(:earliest_restorable_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'EarliestRestorableTime'))
    DBCluster.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Endpoint'))
    DBCluster.add_member(:reader_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReaderEndpoint'))
    DBCluster.add_member(:multi_az, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'MultiAZ'))
    DBCluster.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    DBCluster.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    DBCluster.add_member(:latest_restorable_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'LatestRestorableTime'))
    DBCluster.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Port'))
    DBCluster.add_member(:master_username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterUsername'))
    DBCluster.add_member(:db_cluster_option_group_memberships, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterOptionGroupMemberships, location_name: 'DBClusterOptionGroupMemberships'))
    DBCluster.add_member(:preferred_backup_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredBackupWindow'))
    DBCluster.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredMaintenanceWindow'))
    DBCluster.add_member(:replication_source_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReplicationSourceIdentifier'))
    DBCluster.add_member(:read_replica_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReadReplicaIdentifierList, location_name: 'ReadReplicaIdentifiers'))
    DBCluster.add_member(:db_cluster_members, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterMemberList, location_name: 'DBClusterMembers'))
    DBCluster.add_member(:vpc_security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupMembershipList, location_name: 'VpcSecurityGroups'))
    DBCluster.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HostedZoneId'))
    DBCluster.add_member(:storage_encrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'StorageEncrypted'))
    DBCluster.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    DBCluster.add_member(:db_cluster_resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbClusterResourceId'))
    DBCluster.add_member(:db_cluster_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterArn'))
    DBCluster.add_member(:associated_roles, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterRoles, location_name: 'AssociatedRoles'))
    DBCluster.add_member(:iam_database_authentication_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IAMDatabaseAuthenticationEnabled'))
    DBCluster.add_member(:clone_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CloneGroupId'))
    DBCluster.add_member(:cluster_create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'ClusterCreateTime'))
    DBCluster.add_member(:copy_tags_to_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'CopyTagsToSnapshot'))
    DBCluster.add_member(:enabled_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'EnabledCloudwatchLogsExports'))
    DBCluster.add_member(:pending_modified_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterPendingModifiedValues, location_name: 'PendingModifiedValues'))
    DBCluster.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DeletionProtection'))
    DBCluster.add_member(:cross_account_clone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'CrossAccountClone'))
    DBCluster.add_member(:automatic_restart_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'AutomaticRestartTime'))
    DBCluster.add_member(:serverless_v2_scaling_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessV2ScalingConfigurationInfo, location_name: 'ServerlessV2ScalingConfiguration'))
    DBCluster.add_member(:global_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, location_name: 'GlobalClusterIdentifier'))
    DBCluster.add_member(:io_optimized_next_allowed_modification_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'IOOptimizedNextAllowedModificationTime'))
    DBCluster.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StorageType'))
    DBCluster.type = Types::DBCluster
    DBClusterAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBClusterAlreadyExistsFault.type = Types::DBClusterAlreadyExistsFault
    DBClusterEndpoint.add_member(:db_cluster_endpoint_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterEndpointIdentifier'))
    DBClusterEndpoint.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier'))
    DBClusterEndpoint.add_member(:db_cluster_endpoint_resource_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterEndpointResourceIdentifier'))
    DBClusterEndpoint.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Endpoint'))
    DBClusterEndpoint.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    DBClusterEndpoint.add_member(:endpoint_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointType'))
    DBClusterEndpoint.add_member(:custom_endpoint_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomEndpointType'))
    DBClusterEndpoint.add_member(:static_members, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'StaticMembers'))
    DBClusterEndpoint.add_member(:excluded_members, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'ExcludedMembers'))
    DBClusterEndpoint.add_member(:db_cluster_endpoint_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterEndpointArn'))
    DBClusterEndpoint.type = Types::DBClusterEndpoint
    DBClusterEndpointAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBClusterEndpointAlreadyExistsFault.type = Types::DBClusterEndpointAlreadyExistsFault
    DBClusterEndpointList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterEndpoint, traits: {"smithy.api#xmlName" => "DBClusterEndpointList"})
    DBClusterEndpointMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DBClusterEndpointMessage.add_member(:db_cluster_endpoints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterEndpointList, location_name: 'DBClusterEndpoints'))
    DBClusterEndpointMessage.type = Types::DBClusterEndpointMessage
    DBClusterEndpointNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBClusterEndpointNotFoundFault.type = Types::DBClusterEndpointNotFoundFault
    DBClusterEndpointQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBClusterEndpointQuotaExceededFault.type = Types::DBClusterEndpointQuotaExceededFault
    DBClusterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBCluster, traits: {"smithy.api#xmlName" => "DBCluster"})
    DBClusterMember.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceIdentifier'))
    DBClusterMember.add_member(:is_cluster_writer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsClusterWriter'))
    DBClusterMember.add_member(:db_cluster_parameter_group_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterParameterGroupStatus'))
    DBClusterMember.add_member(:promotion_tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'PromotionTier'))
    DBClusterMember.type = Types::DBClusterMember
    DBClusterMemberList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterMember, traits: {"smithy.api#xmlName" => "DBClusterMember"})
    DBClusterMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DBClusterMessage.add_member(:db_clusters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterList, location_name: 'DBClusters'))
    DBClusterMessage.type = Types::DBClusterMessage
    DBClusterNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBClusterNotFoundFault.type = Types::DBClusterNotFoundFault
    DBClusterOptionGroupMemberships.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterOptionGroupStatus, traits: {"smithy.api#xmlName" => "DBClusterOptionGroup"})
    DBClusterOptionGroupStatus.add_member(:db_cluster_option_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterOptionGroupName'))
    DBClusterOptionGroupStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    DBClusterOptionGroupStatus.type = Types::DBClusterOptionGroupStatus
    DBClusterParameterGroup.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterParameterGroupName'))
    DBClusterParameterGroup.add_member(:db_parameter_group_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBParameterGroupFamily'))
    DBClusterParameterGroup.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    DBClusterParameterGroup.add_member(:db_cluster_parameter_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterParameterGroupArn'))
    DBClusterParameterGroup.type = Types::DBClusterParameterGroup
    DBClusterParameterGroupList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterParameterGroup, traits: {"smithy.api#xmlName" => "DBClusterParameterGroup"})
    DBClusterParameterGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBClusterParameterGroupNotFoundFault.type = Types::DBClusterParameterGroupNotFoundFault
    DBClusterParameterGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DBClusterParameterGroupsMessage.add_member(:db_cluster_parameter_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterParameterGroupList, location_name: 'DBClusterParameterGroups'))
    DBClusterParameterGroupsMessage.type = Types::DBClusterParameterGroupsMessage
    DBClusterQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBClusterQuotaExceededFault.type = Types::DBClusterQuotaExceededFault
    DBClusterRole.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoleArn'))
    DBClusterRole.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    DBClusterRole.add_member(:feature_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FeatureName'))
    DBClusterRole.type = Types::DBClusterRole
    DBClusterRoleAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBClusterRoleAlreadyExistsFault.type = Types::DBClusterRoleAlreadyExistsFault
    DBClusterRoleNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBClusterRoleNotFoundFault.type = Types::DBClusterRoleNotFoundFault
    DBClusterRoleQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBClusterRoleQuotaExceededFault.type = Types::DBClusterRoleQuotaExceededFault
    DBClusterRoles.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterRole, traits: {"smithy.api#xmlName" => "DBClusterRole"})
    DBClusterSnapshot.add_member(:availability_zones, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZones, location_name: 'AvailabilityZones'))
    DBClusterSnapshot.add_member(:db_cluster_snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterSnapshotIdentifier'))
    DBClusterSnapshot.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier'))
    DBClusterSnapshot.add_member(:snapshot_create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'SnapshotCreateTime'))
    DBClusterSnapshot.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    DBClusterSnapshot.add_member(:allocated_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'AllocatedStorage'))
    DBClusterSnapshot.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    DBClusterSnapshot.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Port'))
    DBClusterSnapshot.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcId'))
    DBClusterSnapshot.add_member(:cluster_create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'ClusterCreateTime'))
    DBClusterSnapshot.add_member(:master_username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterUsername'))
    DBClusterSnapshot.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    DBClusterSnapshot.add_member(:license_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseModel'))
    DBClusterSnapshot.add_member(:snapshot_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotType'))
    DBClusterSnapshot.add_member(:percent_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'PercentProgress'))
    DBClusterSnapshot.add_member(:storage_encrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'StorageEncrypted'))
    DBClusterSnapshot.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    DBClusterSnapshot.add_member(:db_cluster_snapshot_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterSnapshotArn'))
    DBClusterSnapshot.add_member(:source_db_cluster_snapshot_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceDBClusterSnapshotArn'))
    DBClusterSnapshot.add_member(:iam_database_authentication_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IAMDatabaseAuthenticationEnabled'))
    DBClusterSnapshot.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StorageType'))
    DBClusterSnapshot.type = Types::DBClusterSnapshot
    DBClusterSnapshotAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBClusterSnapshotAlreadyExistsFault.type = Types::DBClusterSnapshotAlreadyExistsFault
    DBClusterSnapshotAttribute.add_member(:attribute_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AttributeName'))
    DBClusterSnapshotAttribute.add_member(:attribute_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValueList, location_name: 'AttributeValues'))
    DBClusterSnapshotAttribute.type = Types::DBClusterSnapshotAttribute
    DBClusterSnapshotAttributeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshotAttribute, traits: {"smithy.api#xmlName" => "DBClusterSnapshotAttribute"})
    DBClusterSnapshotAttributesResult.add_member(:db_cluster_snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterSnapshotIdentifier'))
    DBClusterSnapshotAttributesResult.add_member(:db_cluster_snapshot_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshotAttributeList, location_name: 'DBClusterSnapshotAttributes'))
    DBClusterSnapshotAttributesResult.type = Types::DBClusterSnapshotAttributesResult
    DBClusterSnapshotList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshot, traits: {"smithy.api#xmlName" => "DBClusterSnapshot"})
    DBClusterSnapshotMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DBClusterSnapshotMessage.add_member(:db_cluster_snapshots, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshotList, location_name: 'DBClusterSnapshots'))
    DBClusterSnapshotMessage.type = Types::DBClusterSnapshotMessage
    DBClusterSnapshotNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBClusterSnapshotNotFoundFault.type = Types::DBClusterSnapshotNotFoundFault
    DBEngineVersion.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    DBEngineVersion.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    DBEngineVersion.add_member(:db_parameter_group_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBParameterGroupFamily'))
    DBEngineVersion.add_member(:db_engine_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBEngineDescription'))
    DBEngineVersion.add_member(:db_engine_version_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBEngineVersionDescription'))
    DBEngineVersion.add_member(:default_character_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CharacterSet, location_name: 'DefaultCharacterSet'))
    DBEngineVersion.add_member(:supported_character_sets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedCharacterSetsList, location_name: 'SupportedCharacterSets'))
    DBEngineVersion.add_member(:valid_upgrade_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidUpgradeTargetList, location_name: 'ValidUpgradeTarget'))
    DBEngineVersion.add_member(:supported_timezones, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SupportedTimezonesList, location_name: 'SupportedTimezones'))
    DBEngineVersion.add_member(:exportable_log_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'ExportableLogTypes'))
    DBEngineVersion.add_member(:supports_log_exports_to_cloudwatch_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsLogExportsToCloudwatchLogs'))
    DBEngineVersion.add_member(:supports_read_replica, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsReadReplica'))
    DBEngineVersion.add_member(:supports_global_databases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsGlobalDatabases'))
    DBEngineVersion.type = Types::DBEngineVersion
    DBEngineVersionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBEngineVersion, traits: {"smithy.api#xmlName" => "DBEngineVersion"})
    DBEngineVersionMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DBEngineVersionMessage.add_member(:db_engine_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBEngineVersionList, location_name: 'DBEngineVersions'))
    DBEngineVersionMessage.type = Types::DBEngineVersionMessage
    DBInstance.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceIdentifier'))
    DBInstance.add_member(:db_instance_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceClass'))
    DBInstance.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    DBInstance.add_member(:db_instance_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceStatus'))
    DBInstance.add_member(:master_username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterUsername'))
    DBInstance.add_member(:db_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBName'))
    DBInstance.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoint, location_name: 'Endpoint'))
    DBInstance.add_member(:allocated_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'AllocatedStorage'))
    DBInstance.add_member(:instance_create_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'InstanceCreateTime'))
    DBInstance.add_member(:preferred_backup_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredBackupWindow'))
    DBInstance.add_member(:backup_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'BackupRetentionPeriod'))
    DBInstance.add_member(:db_security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSecurityGroupMembershipList, location_name: 'DBSecurityGroups'))
    DBInstance.add_member(:vpc_security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupMembershipList, location_name: 'VpcSecurityGroups'))
    DBInstance.add_member(:db_parameter_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupStatusList, location_name: 'DBParameterGroups'))
    DBInstance.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AvailabilityZone'))
    DBInstance.add_member(:db_subnet_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroup, location_name: 'DBSubnetGroup'))
    DBInstance.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredMaintenanceWindow'))
    DBInstance.add_member(:pending_modified_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingModifiedValues, location_name: 'PendingModifiedValues'))
    DBInstance.add_member(:latest_restorable_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'LatestRestorableTime'))
    DBInstance.add_member(:multi_az, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'MultiAZ'))
    DBInstance.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    DBInstance.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AutoMinorVersionUpgrade'))
    DBInstance.add_member(:read_replica_source_db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReadReplicaSourceDBInstanceIdentifier'))
    DBInstance.add_member(:read_replica_db_instance_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReadReplicaDBInstanceIdentifierList, location_name: 'ReadReplicaDBInstanceIdentifiers'))
    DBInstance.add_member(:read_replica_db_cluster_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReadReplicaDBClusterIdentifierList, location_name: 'ReadReplicaDBClusterIdentifiers'))
    DBInstance.add_member(:license_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseModel'))
    DBInstance.add_member(:iops, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Iops'))
    DBInstance.add_member(:option_group_memberships, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionGroupMembershipList, location_name: 'OptionGroupMemberships'))
    DBInstance.add_member(:character_set_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CharacterSetName'))
    DBInstance.add_member(:secondary_availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SecondaryAvailabilityZone'))
    DBInstance.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'PubliclyAccessible'))
    DBInstance.add_member(:status_infos, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceStatusInfoList, location_name: 'StatusInfos'))
    DBInstance.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StorageType'))
    DBInstance.add_member(:tde_credential_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TdeCredentialArn'))
    DBInstance.add_member(:db_instance_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'DbInstancePort'))
    DBInstance.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier'))
    DBInstance.add_member(:storage_encrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'StorageEncrypted'))
    DBInstance.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    DBInstance.add_member(:dbi_resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbiResourceId'))
    DBInstance.add_member(:ca_certificate_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CACertificateIdentifier'))
    DBInstance.add_member(:domain_memberships, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainMembershipList, location_name: 'DomainMemberships'))
    DBInstance.add_member(:copy_tags_to_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'CopyTagsToSnapshot'))
    DBInstance.add_member(:monitoring_interval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MonitoringInterval'))
    DBInstance.add_member(:enhanced_monitoring_resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EnhancedMonitoringResourceArn'))
    DBInstance.add_member(:monitoring_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MonitoringRoleArn'))
    DBInstance.add_member(:promotion_tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'PromotionTier'))
    DBInstance.add_member(:db_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceArn'))
    DBInstance.add_member(:timezone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Timezone'))
    DBInstance.add_member(:iam_database_authentication_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IAMDatabaseAuthenticationEnabled'))
    DBInstance.add_member(:performance_insights_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'PerformanceInsightsEnabled'))
    DBInstance.add_member(:performance_insights_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PerformanceInsightsKMSKeyId'))
    DBInstance.add_member(:enabled_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'EnabledCloudwatchLogsExports'))
    DBInstance.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DeletionProtection'))
    DBInstance.type = Types::DBInstance
    DBInstanceAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBInstanceAlreadyExistsFault.type = Types::DBInstanceAlreadyExistsFault
    DBInstanceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstance, traits: {"smithy.api#xmlName" => "DBInstance"})
    DBInstanceMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DBInstanceMessage.add_member(:db_instances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceList, location_name: 'DBInstances'))
    DBInstanceMessage.type = Types::DBInstanceMessage
    DBInstanceNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBInstanceNotFoundFault.type = Types::DBInstanceNotFoundFault
    DBInstanceStatusInfo.add_member(:status_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StatusType'))
    DBInstanceStatusInfo.add_member(:normal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Normal'))
    DBInstanceStatusInfo.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    DBInstanceStatusInfo.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    DBInstanceStatusInfo.type = Types::DBInstanceStatusInfo
    DBInstanceStatusInfoList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceStatusInfo, traits: {"smithy.api#xmlName" => "DBInstanceStatusInfo"})
    DBParameterGroup.add_member(:db_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBParameterGroupName'))
    DBParameterGroup.add_member(:db_parameter_group_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBParameterGroupFamily'))
    DBParameterGroup.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    DBParameterGroup.add_member(:db_parameter_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBParameterGroupArn'))
    DBParameterGroup.type = Types::DBParameterGroup
    DBParameterGroupAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBParameterGroupAlreadyExistsFault.type = Types::DBParameterGroupAlreadyExistsFault
    DBParameterGroupList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroup, traits: {"smithy.api#xmlName" => "DBParameterGroup"})
    DBParameterGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBParameterGroupNotFoundFault.type = Types::DBParameterGroupNotFoundFault
    DBParameterGroupQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBParameterGroupQuotaExceededFault.type = Types::DBParameterGroupQuotaExceededFault
    DBParameterGroupStatus.add_member(:db_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBParameterGroupName'))
    DBParameterGroupStatus.add_member(:parameter_apply_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterApplyStatus'))
    DBParameterGroupStatus.type = Types::DBParameterGroupStatus
    DBParameterGroupStatusList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupStatus, traits: {"smithy.api#xmlName" => "DBParameterGroup"})
    DBParameterGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DBParameterGroupsMessage.add_member(:db_parameter_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupList, location_name: 'DBParameterGroups'))
    DBParameterGroupsMessage.type = Types::DBParameterGroupsMessage
    DBSecurityGroupMembership.add_member(:db_security_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSecurityGroupName'))
    DBSecurityGroupMembership.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    DBSecurityGroupMembership.type = Types::DBSecurityGroupMembership
    DBSecurityGroupMembershipList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSecurityGroupMembership, traits: {"smithy.api#xmlName" => "DBSecurityGroup"})
    DBSecurityGroupNameList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "DBSecurityGroupName"})
    DBSecurityGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBSecurityGroupNotFoundFault.type = Types::DBSecurityGroupNotFoundFault
    DBSnapshotAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBSnapshotAlreadyExistsFault.type = Types::DBSnapshotAlreadyExistsFault
    DBSnapshotNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBSnapshotNotFoundFault.type = Types::DBSnapshotNotFoundFault
    DBSubnetGroup.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSubnetGroupName'))
    DBSubnetGroup.add_member(:db_subnet_group_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSubnetGroupDescription'))
    DBSubnetGroup.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcId'))
    DBSubnetGroup.add_member(:subnet_group_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubnetGroupStatus'))
    DBSubnetGroup.add_member(:subnets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetList, location_name: 'Subnets'))
    DBSubnetGroup.add_member(:db_subnet_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSubnetGroupArn'))
    DBSubnetGroup.type = Types::DBSubnetGroup
    DBSubnetGroupAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBSubnetGroupAlreadyExistsFault.type = Types::DBSubnetGroupAlreadyExistsFault
    DBSubnetGroupDoesNotCoverEnoughAZs.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBSubnetGroupDoesNotCoverEnoughAZs.type = Types::DBSubnetGroupDoesNotCoverEnoughAZs
    DBSubnetGroupMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DBSubnetGroupMessage.add_member(:db_subnet_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroups, location_name: 'DBSubnetGroups'))
    DBSubnetGroupMessage.type = Types::DBSubnetGroupMessage
    DBSubnetGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBSubnetGroupNotFoundFault.type = Types::DBSubnetGroupNotFoundFault
    DBSubnetGroupQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBSubnetGroupQuotaExceededFault.type = Types::DBSubnetGroupQuotaExceededFault
    DBSubnetGroups.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroup, traits: {"smithy.api#xmlName" => "DBSubnetGroup"})
    DBSubnetQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBSubnetQuotaExceededFault.type = Types::DBSubnetQuotaExceededFault
    DBUpgradeDependencyFailureFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DBUpgradeDependencyFailureFault.type = Types::DBUpgradeDependencyFailureFault
    DeleteDBClusterEndpointMessage.add_member(:db_cluster_endpoint_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterEndpointIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteDBClusterEndpointMessage.type = Types::DeleteDBClusterEndpointMessage
    DeleteDBClusterEndpointOutput.add_member(:db_cluster_endpoint_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterEndpointIdentifier'))
    DeleteDBClusterEndpointOutput.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier'))
    DeleteDBClusterEndpointOutput.add_member(:db_cluster_endpoint_resource_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterEndpointResourceIdentifier'))
    DeleteDBClusterEndpointOutput.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Endpoint'))
    DeleteDBClusterEndpointOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    DeleteDBClusterEndpointOutput.add_member(:endpoint_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointType'))
    DeleteDBClusterEndpointOutput.add_member(:custom_endpoint_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomEndpointType'))
    DeleteDBClusterEndpointOutput.add_member(:static_members, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'StaticMembers'))
    DeleteDBClusterEndpointOutput.add_member(:excluded_members, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'ExcludedMembers'))
    DeleteDBClusterEndpointOutput.add_member(:db_cluster_endpoint_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterEndpointArn'))
    DeleteDBClusterEndpointOutput.type = Types::DeleteDBClusterEndpointOutput
    DeleteDBClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteDBClusterMessage.add_member(:skip_final_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SkipFinalSnapshot'))
    DeleteDBClusterMessage.add_member(:final_db_snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FinalDBSnapshotIdentifier'))
    DeleteDBClusterMessage.type = Types::DeleteDBClusterMessage
    DeleteDBClusterParameterGroupMessage.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterParameterGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteDBClusterParameterGroupMessage.type = Types::DeleteDBClusterParameterGroupMessage
    DeleteDBClusterResult.add_member(:db_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBCluster, location_name: 'DBCluster'))
    DeleteDBClusterResult.type = Types::DeleteDBClusterResult
    DeleteDBClusterSnapshotMessage.add_member(:db_cluster_snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterSnapshotIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteDBClusterSnapshotMessage.type = Types::DeleteDBClusterSnapshotMessage
    DeleteDBClusterSnapshotResult.add_member(:db_cluster_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshot, location_name: 'DBClusterSnapshot'))
    DeleteDBClusterSnapshotResult.type = Types::DeleteDBClusterSnapshotResult
    DeleteDBInstanceMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteDBInstanceMessage.add_member(:skip_final_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SkipFinalSnapshot'))
    DeleteDBInstanceMessage.add_member(:final_db_snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FinalDBSnapshotIdentifier'))
    DeleteDBInstanceMessage.type = Types::DeleteDBInstanceMessage
    DeleteDBInstanceResult.add_member(:db_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstance, location_name: 'DBInstance'))
    DeleteDBInstanceResult.type = Types::DeleteDBInstanceResult
    DeleteDBParameterGroupMessage.add_member(:db_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBParameterGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteDBParameterGroupMessage.type = Types::DeleteDBParameterGroupMessage
    DeleteDBSubnetGroupMessage.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSubnetGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteDBSubnetGroupMessage.type = Types::DeleteDBSubnetGroupMessage
    DeleteEventSubscriptionMessage.add_member(:subscription_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubscriptionName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteEventSubscriptionMessage.type = Types::DeleteEventSubscriptionMessage
    DeleteEventSubscriptionResult.add_member(:event_subscription, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventSubscription, location_name: 'EventSubscription'))
    DeleteEventSubscriptionResult.type = Types::DeleteEventSubscriptionResult
    DeleteGlobalClusterMessage.add_member(:global_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, location_name: 'GlobalClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteGlobalClusterMessage.type = Types::DeleteGlobalClusterMessage
    DeleteGlobalClusterResult.add_member(:global_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalCluster, location_name: 'GlobalCluster'))
    DeleteGlobalClusterResult.type = Types::DeleteGlobalClusterResult
    DescribeDBClusterEndpointsMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier'))
    DescribeDBClusterEndpointsMessage.add_member(:db_cluster_endpoint_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterEndpointIdentifier'))
    DescribeDBClusterEndpointsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeDBClusterEndpointsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeDBClusterEndpointsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDBClusterEndpointsMessage.type = Types::DescribeDBClusterEndpointsMessage
    DescribeDBClusterParameterGroupsMessage.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterParameterGroupName'))
    DescribeDBClusterParameterGroupsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeDBClusterParameterGroupsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeDBClusterParameterGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDBClusterParameterGroupsMessage.type = Types::DescribeDBClusterParameterGroupsMessage
    DescribeDBClusterParametersMessage.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterParameterGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeDBClusterParametersMessage.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Source'))
    DescribeDBClusterParametersMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeDBClusterParametersMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeDBClusterParametersMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDBClusterParametersMessage.type = Types::DescribeDBClusterParametersMessage
    DescribeDBClusterParametersOutput.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersList, location_name: 'Parameters'))
    DescribeDBClusterParametersOutput.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDBClusterParametersOutput.type = Types::DescribeDBClusterParametersOutput
    DescribeDBClusterSnapshotAttributesMessage.add_member(:db_cluster_snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterSnapshotIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeDBClusterSnapshotAttributesMessage.type = Types::DescribeDBClusterSnapshotAttributesMessage
    DescribeDBClusterSnapshotAttributesResult.add_member(:db_cluster_snapshot_attributes_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshotAttributesResult, location_name: 'DBClusterSnapshotAttributesResult'))
    DescribeDBClusterSnapshotAttributesResult.type = Types::DescribeDBClusterSnapshotAttributesResult
    DescribeDBClusterSnapshotsMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier'))
    DescribeDBClusterSnapshotsMessage.add_member(:db_cluster_snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterSnapshotIdentifier'))
    DescribeDBClusterSnapshotsMessage.add_member(:snapshot_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotType'))
    DescribeDBClusterSnapshotsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeDBClusterSnapshotsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeDBClusterSnapshotsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDBClusterSnapshotsMessage.add_member(:include_shared, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IncludeShared'))
    DescribeDBClusterSnapshotsMessage.add_member(:include_public, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IncludePublic'))
    DescribeDBClusterSnapshotsMessage.type = Types::DescribeDBClusterSnapshotsMessage
    DescribeDBClustersMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier'))
    DescribeDBClustersMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeDBClustersMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeDBClustersMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDBClustersMessage.type = Types::DescribeDBClustersMessage
    DescribeDBEngineVersionsMessage.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    DescribeDBEngineVersionsMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    DescribeDBEngineVersionsMessage.add_member(:db_parameter_group_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBParameterGroupFamily'))
    DescribeDBEngineVersionsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeDBEngineVersionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeDBEngineVersionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDBEngineVersionsMessage.add_member(:default_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DefaultOnly'))
    DescribeDBEngineVersionsMessage.add_member(:list_supported_character_sets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'ListSupportedCharacterSets'))
    DescribeDBEngineVersionsMessage.add_member(:list_supported_timezones, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'ListSupportedTimezones'))
    DescribeDBEngineVersionsMessage.type = Types::DescribeDBEngineVersionsMessage
    DescribeDBInstancesMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceIdentifier'))
    DescribeDBInstancesMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeDBInstancesMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeDBInstancesMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDBInstancesMessage.type = Types::DescribeDBInstancesMessage
    DescribeDBParameterGroupsMessage.add_member(:db_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBParameterGroupName'))
    DescribeDBParameterGroupsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeDBParameterGroupsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeDBParameterGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDBParameterGroupsMessage.type = Types::DescribeDBParameterGroupsMessage
    DescribeDBParametersMessage.add_member(:db_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBParameterGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeDBParametersMessage.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Source'))
    DescribeDBParametersMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeDBParametersMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeDBParametersMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDBParametersMessage.type = Types::DescribeDBParametersMessage
    DescribeDBParametersOutput.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersList, location_name: 'Parameters'))
    DescribeDBParametersOutput.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDBParametersOutput.type = Types::DescribeDBParametersOutput
    DescribeDBSubnetGroupsMessage.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSubnetGroupName'))
    DescribeDBSubnetGroupsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeDBSubnetGroupsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeDBSubnetGroupsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeDBSubnetGroupsMessage.type = Types::DescribeDBSubnetGroupsMessage
    DescribeEngineDefaultClusterParametersMessage.add_member(:db_parameter_group_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBParameterGroupFamily', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeEngineDefaultClusterParametersMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeEngineDefaultClusterParametersMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeEngineDefaultClusterParametersMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeEngineDefaultClusterParametersMessage.type = Types::DescribeEngineDefaultClusterParametersMessage
    DescribeEngineDefaultClusterParametersResult.add_member(:engine_defaults, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineDefaults, location_name: 'EngineDefaults'))
    DescribeEngineDefaultClusterParametersResult.type = Types::DescribeEngineDefaultClusterParametersResult
    DescribeEngineDefaultParametersMessage.add_member(:db_parameter_group_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBParameterGroupFamily', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeEngineDefaultParametersMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeEngineDefaultParametersMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeEngineDefaultParametersMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeEngineDefaultParametersMessage.type = Types::DescribeEngineDefaultParametersMessage
    DescribeEngineDefaultParametersResult.add_member(:engine_defaults, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineDefaults, location_name: 'EngineDefaults'))
    DescribeEngineDefaultParametersResult.type = Types::DescribeEngineDefaultParametersResult
    DescribeEventCategoriesMessage.add_member(:source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceType'))
    DescribeEventCategoriesMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeEventCategoriesMessage.type = Types::DescribeEventCategoriesMessage
    DescribeEventSubscriptionsMessage.add_member(:subscription_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubscriptionName'))
    DescribeEventSubscriptionsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeEventSubscriptionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeEventSubscriptionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeEventSubscriptionsMessage.type = Types::DescribeEventSubscriptionsMessage
    DescribeEventsMessage.add_member(:source_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceIdentifier'))
    DescribeEventsMessage.add_member(:source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceType, location_name: 'SourceType'))
    DescribeEventsMessage.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'StartTime'))
    DescribeEventsMessage.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'EndTime'))
    DescribeEventsMessage.add_member(:duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Duration'))
    DescribeEventsMessage.add_member(:event_categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: 'EventCategories'))
    DescribeEventsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeEventsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeEventsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeEventsMessage.type = Types::DescribeEventsMessage
    DescribeGlobalClustersMessage.add_member(:global_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, location_name: 'GlobalClusterIdentifier'))
    DescribeGlobalClustersMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeGlobalClustersMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeGlobalClustersMessage.type = Types::DescribeGlobalClustersMessage
    DescribeOrderableDBInstanceOptionsMessage.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:db_instance_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceClass'))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:license_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseModel'))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:vpc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'Vpc'))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribeOrderableDBInstanceOptionsMessage.type = Types::DescribeOrderableDBInstanceOptionsMessage
    DescribePendingMaintenanceActionsMessage.add_member(:resource_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceIdentifier'))
    DescribePendingMaintenanceActionsMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    DescribePendingMaintenanceActionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    DescribePendingMaintenanceActionsMessage.add_member(:max_records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxRecords'))
    DescribePendingMaintenanceActionsMessage.type = Types::DescribePendingMaintenanceActionsMessage
    DescribeValidDBInstanceModificationsMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeValidDBInstanceModificationsMessage.type = Types::DescribeValidDBInstanceModificationsMessage
    DescribeValidDBInstanceModificationsResult.add_member(:valid_db_instance_modifications_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidDBInstanceModificationsMessage, location_name: 'ValidDBInstanceModificationsMessage'))
    DescribeValidDBInstanceModificationsResult.type = Types::DescribeValidDBInstanceModificationsResult
    DomainMembership.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Domain'))
    DomainMembership.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    DomainMembership.add_member(:fqdn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FQDN'))
    DomainMembership.add_member(:iam_role_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IAMRoleName'))
    DomainMembership.type = Types::DomainMembership
    DomainMembershipList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainMembership, traits: {"smithy.api#xmlName" => "DomainMembership"})
    DomainNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    DomainNotFoundFault.type = Types::DomainNotFoundFault
    DoubleRange.add_member(:from, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'From'))
    DoubleRange.add_member(:to, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'To'))
    DoubleRange.type = Types::DoubleRange
    DoubleRangeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleRange, traits: {"smithy.api#xmlName" => "DoubleRange"})
    Endpoint.add_member(:address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Address'))
    Endpoint.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Port'))
    Endpoint.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HostedZoneId'))
    Endpoint.type = Types::Endpoint
    EngineDefaults.add_member(:db_parameter_group_family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBParameterGroupFamily'))
    EngineDefaults.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    EngineDefaults.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersList, location_name: 'Parameters'))
    EngineDefaults.type = Types::EngineDefaults
    Event.add_member(:source_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceIdentifier'))
    Event.add_member(:source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceType, location_name: 'SourceType'))
    Event.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    Event.add_member(:event_categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: 'EventCategories'))
    Event.add_member(:date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'Date'))
    Event.add_member(:source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceArn'))
    Event.type = Types::Event
    EventCategoriesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "EventCategory"})
    EventCategoriesMap.add_member(:source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceType'))
    EventCategoriesMap.add_member(:event_categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: 'EventCategories'))
    EventCategoriesMap.type = Types::EventCategoriesMap
    EventCategoriesMapList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventCategoriesMap, traits: {"smithy.api#xmlName" => "EventCategoriesMap"})
    EventCategoriesMessage.add_member(:event_categories_map_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventCategoriesMapList, location_name: 'EventCategoriesMapList'))
    EventCategoriesMessage.type = Types::EventCategoriesMessage
    EventList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Event, traits: {"smithy.api#xmlName" => "Event"})
    EventSubscription.add_member(:customer_aws_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomerAwsId'))
    EventSubscription.add_member(:cust_subscription_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustSubscriptionId'))
    EventSubscription.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnsTopicArn'))
    EventSubscription.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    EventSubscription.add_member(:subscription_creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubscriptionCreationTime'))
    EventSubscription.add_member(:source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceType'))
    EventSubscription.add_member(:source_ids_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceIdsList, location_name: 'SourceIdsList'))
    EventSubscription.add_member(:event_categories_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: 'EventCategoriesList'))
    EventSubscription.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled'))
    EventSubscription.add_member(:event_subscription_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EventSubscriptionArn'))
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
    FailoverDBClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier'))
    FailoverDBClusterMessage.add_member(:target_db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetDBInstanceIdentifier'))
    FailoverDBClusterMessage.type = Types::FailoverDBClusterMessage
    FailoverDBClusterResult.add_member(:db_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBCluster, location_name: 'DBCluster'))
    FailoverDBClusterResult.type = Types::FailoverDBClusterResult
    FailoverGlobalClusterMessage.add_member(:global_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, location_name: 'GlobalClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    FailoverGlobalClusterMessage.add_member(:target_db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetDbClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    FailoverGlobalClusterMessage.add_member(:allow_data_loss, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AllowDataLoss'))
    FailoverGlobalClusterMessage.add_member(:switchover, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'Switchover'))
    FailoverGlobalClusterMessage.type = Types::FailoverGlobalClusterMessage
    FailoverGlobalClusterResult.add_member(:global_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalCluster, location_name: 'GlobalCluster'))
    FailoverGlobalClusterResult.type = Types::FailoverGlobalClusterResult
    FailoverState.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailoverStatus, location_name: 'Status'))
    FailoverState.add_member(:from_db_cluster_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FromDbClusterArn'))
    FailoverState.add_member(:to_db_cluster_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ToDbClusterArn'))
    FailoverState.add_member(:is_data_loss_allowed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsDataLossAllowed'))
    FailoverState.type = Types::FailoverState
    FailoverStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "pending"}))
    FailoverStatus.add_member(:failing_over, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILING_OVER', traits: {"smithy.api#enumValue" => "failing-over"}))
    FailoverStatus.add_member(:cancelling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLING', traits: {"smithy.api#enumValue" => "cancelling"}))
    Filter.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Filter.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterValueList, location_name: 'Values', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Filter.type = Types::Filter
    FilterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filter, traits: {"smithy.api#xmlName" => "Filter"})
    FilterValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "Value"})
    GlobalCluster.add_member(:global_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, location_name: 'GlobalClusterIdentifier'))
    GlobalCluster.add_member(:global_cluster_resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GlobalClusterResourceId'))
    GlobalCluster.add_member(:global_cluster_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'GlobalClusterArn'))
    GlobalCluster.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    GlobalCluster.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    GlobalCluster.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    GlobalCluster.add_member(:storage_encrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'StorageEncrypted'))
    GlobalCluster.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DeletionProtection'))
    GlobalCluster.add_member(:global_cluster_members, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterMemberList, location_name: 'GlobalClusterMembers'))
    GlobalCluster.add_member(:failover_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailoverState, location_name: 'FailoverState'))
    GlobalCluster.type = Types::GlobalCluster
    GlobalClusterAlreadyExistsFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    GlobalClusterAlreadyExistsFault.type = Types::GlobalClusterAlreadyExistsFault
    GlobalClusterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalCluster, traits: {"smithy.api#xmlName" => "GlobalClusterMember"})
    GlobalClusterMember.add_member(:db_cluster_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterArn'))
    GlobalClusterMember.add_member(:readers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReadersArnList, location_name: 'Readers'))
    GlobalClusterMember.add_member(:is_writer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsWriter'))
    GlobalClusterMember.type = Types::GlobalClusterMember
    GlobalClusterMemberList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterMember, traits: {"smithy.api#xmlName" => "GlobalClusterMember"})
    GlobalClusterNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    GlobalClusterNotFoundFault.type = Types::GlobalClusterNotFoundFault
    GlobalClusterQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    GlobalClusterQuotaExceededFault.type = Types::GlobalClusterQuotaExceededFault
    GlobalClustersMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    GlobalClustersMessage.add_member(:global_clusters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterList, location_name: 'GlobalClusters'))
    GlobalClustersMessage.type = Types::GlobalClustersMessage
    InstanceQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InstanceQuotaExceededFault.type = Types::InstanceQuotaExceededFault
    InsufficientDBClusterCapacityFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InsufficientDBClusterCapacityFault.type = Types::InsufficientDBClusterCapacityFault
    InsufficientDBInstanceCapacityFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InsufficientDBInstanceCapacityFault.type = Types::InsufficientDBInstanceCapacityFault
    InsufficientStorageClusterCapacityFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InsufficientStorageClusterCapacityFault.type = Types::InsufficientStorageClusterCapacityFault
    InvalidDBClusterEndpointStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidDBClusterEndpointStateFault.type = Types::InvalidDBClusterEndpointStateFault
    InvalidDBClusterSnapshotStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidDBClusterSnapshotStateFault.type = Types::InvalidDBClusterSnapshotStateFault
    InvalidDBClusterStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidDBClusterStateFault.type = Types::InvalidDBClusterStateFault
    InvalidDBInstanceStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidDBInstanceStateFault.type = Types::InvalidDBInstanceStateFault
    InvalidDBParameterGroupStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidDBParameterGroupStateFault.type = Types::InvalidDBParameterGroupStateFault
    InvalidDBSecurityGroupStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidDBSecurityGroupStateFault.type = Types::InvalidDBSecurityGroupStateFault
    InvalidDBSnapshotStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidDBSnapshotStateFault.type = Types::InvalidDBSnapshotStateFault
    InvalidDBSubnetGroupStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidDBSubnetGroupStateFault.type = Types::InvalidDBSubnetGroupStateFault
    InvalidDBSubnetStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidDBSubnetStateFault.type = Types::InvalidDBSubnetStateFault
    InvalidEventSubscriptionStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidEventSubscriptionStateFault.type = Types::InvalidEventSubscriptionStateFault
    InvalidGlobalClusterStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidGlobalClusterStateFault.type = Types::InvalidGlobalClusterStateFault
    InvalidRestoreFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidRestoreFault.type = Types::InvalidRestoreFault
    InvalidSubnet.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidSubnet.type = Types::InvalidSubnet
    InvalidVPCNetworkStateFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    InvalidVPCNetworkStateFault.type = Types::InvalidVPCNetworkStateFault
    KMSKeyNotAccessibleFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    KMSKeyNotAccessibleFault.type = Types::KMSKeyNotAccessibleFault
    KeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ListTagsForResourceMessage.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceMessage.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterList, location_name: 'Filters'))
    ListTagsForResourceMessage.type = Types::ListTagsForResourceMessage
    LogTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ModifyDBClusterEndpointMessage.add_member(:db_cluster_endpoint_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterEndpointIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBClusterEndpointMessage.add_member(:endpoint_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointType'))
    ModifyDBClusterEndpointMessage.add_member(:static_members, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'StaticMembers'))
    ModifyDBClusterEndpointMessage.add_member(:excluded_members, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'ExcludedMembers'))
    ModifyDBClusterEndpointMessage.type = Types::ModifyDBClusterEndpointMessage
    ModifyDBClusterEndpointOutput.add_member(:db_cluster_endpoint_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterEndpointIdentifier'))
    ModifyDBClusterEndpointOutput.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier'))
    ModifyDBClusterEndpointOutput.add_member(:db_cluster_endpoint_resource_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterEndpointResourceIdentifier'))
    ModifyDBClusterEndpointOutput.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Endpoint'))
    ModifyDBClusterEndpointOutput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    ModifyDBClusterEndpointOutput.add_member(:endpoint_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndpointType'))
    ModifyDBClusterEndpointOutput.add_member(:custom_endpoint_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomEndpointType'))
    ModifyDBClusterEndpointOutput.add_member(:static_members, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'StaticMembers'))
    ModifyDBClusterEndpointOutput.add_member(:excluded_members, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'ExcludedMembers'))
    ModifyDBClusterEndpointOutput.add_member(:db_cluster_endpoint_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterEndpointArn'))
    ModifyDBClusterEndpointOutput.type = Types::ModifyDBClusterEndpointOutput
    ModifyDBClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBClusterMessage.add_member(:new_db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NewDBClusterIdentifier'))
    ModifyDBClusterMessage.add_member(:apply_immediately, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ApplyImmediately'))
    ModifyDBClusterMessage.add_member(:backup_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'BackupRetentionPeriod'))
    ModifyDBClusterMessage.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterParameterGroupName'))
    ModifyDBClusterMessage.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: 'VpcSecurityGroupIds'))
    ModifyDBClusterMessage.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Port'))
    ModifyDBClusterMessage.add_member(:master_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterUserPassword'))
    ModifyDBClusterMessage.add_member(:option_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptionGroupName'))
    ModifyDBClusterMessage.add_member(:preferred_backup_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredBackupWindow'))
    ModifyDBClusterMessage.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredMaintenanceWindow'))
    ModifyDBClusterMessage.add_member(:enable_iam_database_authentication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnableIAMDatabaseAuthentication'))
    ModifyDBClusterMessage.add_member(:cloudwatch_logs_export_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudwatchLogsExportConfiguration, location_name: 'CloudwatchLogsExportConfiguration'))
    ModifyDBClusterMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    ModifyDBClusterMessage.add_member(:allow_major_version_upgrade, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllowMajorVersionUpgrade'))
    ModifyDBClusterMessage.add_member(:db_instance_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceParameterGroupName'))
    ModifyDBClusterMessage.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DeletionProtection'))
    ModifyDBClusterMessage.add_member(:copy_tags_to_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'CopyTagsToSnapshot'))
    ModifyDBClusterMessage.add_member(:serverless_v2_scaling_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessV2ScalingConfiguration, location_name: 'ServerlessV2ScalingConfiguration'))
    ModifyDBClusterMessage.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StorageType'))
    ModifyDBClusterMessage.type = Types::ModifyDBClusterMessage
    ModifyDBClusterParameterGroupMessage.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterParameterGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBClusterParameterGroupMessage.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersList, location_name: 'Parameters', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBClusterParameterGroupMessage.type = Types::ModifyDBClusterParameterGroupMessage
    ModifyDBClusterParameterGroupOutput.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterParameterGroupName'))
    ModifyDBClusterParameterGroupOutput.type = Types::ModifyDBClusterParameterGroupOutput
    ModifyDBClusterResult.add_member(:db_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBCluster, location_name: 'DBCluster'))
    ModifyDBClusterResult.type = Types::ModifyDBClusterResult
    ModifyDBClusterSnapshotAttributeMessage.add_member(:db_cluster_snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterSnapshotIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBClusterSnapshotAttributeMessage.add_member(:attribute_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AttributeName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBClusterSnapshotAttributeMessage.add_member(:values_to_add, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValueList, location_name: 'ValuesToAdd'))
    ModifyDBClusterSnapshotAttributeMessage.add_member(:values_to_remove, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValueList, location_name: 'ValuesToRemove'))
    ModifyDBClusterSnapshotAttributeMessage.type = Types::ModifyDBClusterSnapshotAttributeMessage
    ModifyDBClusterSnapshotAttributeResult.add_member(:db_cluster_snapshot_attributes_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshotAttributesResult, location_name: 'DBClusterSnapshotAttributesResult'))
    ModifyDBClusterSnapshotAttributeResult.type = Types::ModifyDBClusterSnapshotAttributeResult
    ModifyDBInstanceMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBInstanceMessage.add_member(:allocated_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'AllocatedStorage'))
    ModifyDBInstanceMessage.add_member(:db_instance_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceClass'))
    ModifyDBInstanceMessage.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSubnetGroupName'))
    ModifyDBInstanceMessage.add_member(:db_security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSecurityGroupNameList, location_name: 'DBSecurityGroups'))
    ModifyDBInstanceMessage.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: 'VpcSecurityGroupIds'))
    ModifyDBInstanceMessage.add_member(:apply_immediately, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ApplyImmediately'))
    ModifyDBInstanceMessage.add_member(:master_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterUserPassword'))
    ModifyDBInstanceMessage.add_member(:db_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBParameterGroupName'))
    ModifyDBInstanceMessage.add_member(:backup_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'BackupRetentionPeriod'))
    ModifyDBInstanceMessage.add_member(:preferred_backup_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredBackupWindow'))
    ModifyDBInstanceMessage.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PreferredMaintenanceWindow'))
    ModifyDBInstanceMessage.add_member(:multi_az, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'MultiAZ'))
    ModifyDBInstanceMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    ModifyDBInstanceMessage.add_member(:allow_major_version_upgrade, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllowMajorVersionUpgrade'))
    ModifyDBInstanceMessage.add_member(:auto_minor_version_upgrade, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AutoMinorVersionUpgrade'))
    ModifyDBInstanceMessage.add_member(:license_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseModel'))
    ModifyDBInstanceMessage.add_member(:iops, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Iops'))
    ModifyDBInstanceMessage.add_member(:option_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptionGroupName'))
    ModifyDBInstanceMessage.add_member(:new_db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NewDBInstanceIdentifier'))
    ModifyDBInstanceMessage.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StorageType'))
    ModifyDBInstanceMessage.add_member(:tde_credential_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TdeCredentialArn'))
    ModifyDBInstanceMessage.add_member(:tde_credential_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'TdeCredentialPassword'))
    ModifyDBInstanceMessage.add_member(:ca_certificate_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CACertificateIdentifier'))
    ModifyDBInstanceMessage.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Domain'))
    ModifyDBInstanceMessage.add_member(:copy_tags_to_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'CopyTagsToSnapshot'))
    ModifyDBInstanceMessage.add_member(:monitoring_interval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MonitoringInterval'))
    ModifyDBInstanceMessage.add_member(:db_port_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'DBPortNumber'))
    ModifyDBInstanceMessage.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'PubliclyAccessible'))
    ModifyDBInstanceMessage.add_member(:monitoring_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MonitoringRoleArn'))
    ModifyDBInstanceMessage.add_member(:domain_iam_role_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DomainIAMRoleName'))
    ModifyDBInstanceMessage.add_member(:promotion_tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'PromotionTier'))
    ModifyDBInstanceMessage.add_member(:enable_iam_database_authentication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnableIAMDatabaseAuthentication'))
    ModifyDBInstanceMessage.add_member(:enable_performance_insights, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnablePerformanceInsights'))
    ModifyDBInstanceMessage.add_member(:performance_insights_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PerformanceInsightsKMSKeyId'))
    ModifyDBInstanceMessage.add_member(:cloudwatch_logs_export_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudwatchLogsExportConfiguration, location_name: 'CloudwatchLogsExportConfiguration'))
    ModifyDBInstanceMessage.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DeletionProtection'))
    ModifyDBInstanceMessage.type = Types::ModifyDBInstanceMessage
    ModifyDBInstanceResult.add_member(:db_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstance, location_name: 'DBInstance'))
    ModifyDBInstanceResult.type = Types::ModifyDBInstanceResult
    ModifyDBParameterGroupMessage.add_member(:db_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBParameterGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBParameterGroupMessage.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersList, location_name: 'Parameters', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBParameterGroupMessage.type = Types::ModifyDBParameterGroupMessage
    ModifyDBParameterGroupOutput.add_member(:db_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBParameterGroupName'))
    ModifyDBParameterGroupOutput.type = Types::ModifyDBParameterGroupOutput
    ModifyDBSubnetGroupMessage.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSubnetGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBSubnetGroupMessage.add_member(:db_subnet_group_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSubnetGroupDescription'))
    ModifyDBSubnetGroupMessage.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIdentifierList, location_name: 'SubnetIds', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyDBSubnetGroupMessage.type = Types::ModifyDBSubnetGroupMessage
    ModifyDBSubnetGroupResult.add_member(:db_subnet_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroup, location_name: 'DBSubnetGroup'))
    ModifyDBSubnetGroupResult.type = Types::ModifyDBSubnetGroupResult
    ModifyEventSubscriptionMessage.add_member(:subscription_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubscriptionName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyEventSubscriptionMessage.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnsTopicArn'))
    ModifyEventSubscriptionMessage.add_member(:source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceType'))
    ModifyEventSubscriptionMessage.add_member(:event_categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: 'EventCategories'))
    ModifyEventSubscriptionMessage.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'Enabled'))
    ModifyEventSubscriptionMessage.type = Types::ModifyEventSubscriptionMessage
    ModifyEventSubscriptionResult.add_member(:event_subscription, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventSubscription, location_name: 'EventSubscription'))
    ModifyEventSubscriptionResult.type = Types::ModifyEventSubscriptionResult
    ModifyGlobalClusterMessage.add_member(:global_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, location_name: 'GlobalClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ModifyGlobalClusterMessage.add_member(:new_global_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, location_name: 'NewGlobalClusterIdentifier'))
    ModifyGlobalClusterMessage.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DeletionProtection'))
    ModifyGlobalClusterMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    ModifyGlobalClusterMessage.add_member(:allow_major_version_upgrade, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'AllowMajorVersionUpgrade'))
    ModifyGlobalClusterMessage.type = Types::ModifyGlobalClusterMessage
    ModifyGlobalClusterResult.add_member(:global_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalCluster, location_name: 'GlobalCluster'))
    ModifyGlobalClusterResult.type = Types::ModifyGlobalClusterResult
    OptionGroupMembership.add_member(:option_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptionGroupName'))
    OptionGroupMembership.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    OptionGroupMembership.type = Types::OptionGroupMembership
    OptionGroupMembershipList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionGroupMembership, traits: {"smithy.api#xmlName" => "OptionGroupMembership"})
    OptionGroupNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    OptionGroupNotFoundFault.type = Types::OptionGroupNotFoundFault
    OrderableDBInstanceOption.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    OrderableDBInstanceOption.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    OrderableDBInstanceOption.add_member(:db_instance_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceClass'))
    OrderableDBInstanceOption.add_member(:license_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseModel'))
    OrderableDBInstanceOption.add_member(:availability_zones, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZoneList, location_name: 'AvailabilityZones'))
    OrderableDBInstanceOption.add_member(:multi_az_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'MultiAZCapable'))
    OrderableDBInstanceOption.add_member(:read_replica_capable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ReadReplicaCapable'))
    OrderableDBInstanceOption.add_member(:vpc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Vpc'))
    OrderableDBInstanceOption.add_member(:supports_storage_encryption, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsStorageEncryption'))
    OrderableDBInstanceOption.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StorageType'))
    OrderableDBInstanceOption.add_member(:supports_iops, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsIops'))
    OrderableDBInstanceOption.add_member(:supports_enhanced_monitoring, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsEnhancedMonitoring'))
    OrderableDBInstanceOption.add_member(:supports_iam_database_authentication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsIAMDatabaseAuthentication'))
    OrderableDBInstanceOption.add_member(:supports_performance_insights, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsPerformanceInsights'))
    OrderableDBInstanceOption.add_member(:min_storage_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MinStorageSize'))
    OrderableDBInstanceOption.add_member(:max_storage_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxStorageSize'))
    OrderableDBInstanceOption.add_member(:min_iops_per_db_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MinIopsPerDbInstance'))
    OrderableDBInstanceOption.add_member(:max_iops_per_db_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'MaxIopsPerDbInstance'))
    OrderableDBInstanceOption.add_member(:min_iops_per_gib, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'MinIopsPerGib'))
    OrderableDBInstanceOption.add_member(:max_iops_per_gib, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'MaxIopsPerGib'))
    OrderableDBInstanceOption.add_member(:supports_global_databases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SupportsGlobalDatabases'))
    OrderableDBInstanceOption.type = Types::OrderableDBInstanceOption
    OrderableDBInstanceOptionsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrderableDBInstanceOption, traits: {"smithy.api#xmlName" => "OrderableDBInstanceOption"})
    OrderableDBInstanceOptionsMessage.add_member(:orderable_db_instance_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrderableDBInstanceOptionsList, location_name: 'OrderableDBInstanceOptions'))
    OrderableDBInstanceOptionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    OrderableDBInstanceOptionsMessage.type = Types::OrderableDBInstanceOptionsMessage
    Parameter.add_member(:parameter_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterName'))
    Parameter.add_member(:parameter_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ParameterValue'))
    Parameter.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    Parameter.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Source'))
    Parameter.add_member(:apply_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplyType'))
    Parameter.add_member(:data_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataType'))
    Parameter.add_member(:allowed_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AllowedValues'))
    Parameter.add_member(:is_modifiable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsModifiable'))
    Parameter.add_member(:minimum_engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MinimumEngineVersion'))
    Parameter.add_member(:apply_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplyMethod, location_name: 'ApplyMethod'))
    Parameter.type = Types::Parameter
    ParametersList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Parameter, traits: {"smithy.api#xmlName" => "Parameter"})
    PendingCloudwatchLogsExports.add_member(:log_types_to_enable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'LogTypesToEnable'))
    PendingCloudwatchLogsExports.add_member(:log_types_to_disable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'LogTypesToDisable'))
    PendingCloudwatchLogsExports.type = Types::PendingCloudwatchLogsExports
    PendingMaintenanceAction.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Action'))
    PendingMaintenanceAction.add_member(:auto_applied_after_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'AutoAppliedAfterDate'))
    PendingMaintenanceAction.add_member(:forced_apply_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'ForcedApplyDate'))
    PendingMaintenanceAction.add_member(:opt_in_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptInStatus'))
    PendingMaintenanceAction.add_member(:current_apply_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'CurrentApplyDate'))
    PendingMaintenanceAction.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    PendingMaintenanceAction.type = Types::PendingMaintenanceAction
    PendingMaintenanceActionDetails.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingMaintenanceAction, traits: {"smithy.api#xmlName" => "PendingMaintenanceAction"})
    PendingMaintenanceActions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePendingMaintenanceActions, traits: {"smithy.api#xmlName" => "ResourcePendingMaintenanceActions"})
    PendingMaintenanceActionsMessage.add_member(:pending_maintenance_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingMaintenanceActions, location_name: 'PendingMaintenanceActions'))
    PendingMaintenanceActionsMessage.add_member(:marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker'))
    PendingMaintenanceActionsMessage.type = Types::PendingMaintenanceActionsMessage
    PendingModifiedValues.add_member(:db_instance_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceClass'))
    PendingModifiedValues.add_member(:allocated_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'AllocatedStorage'))
    PendingModifiedValues.add_member(:master_user_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MasterUserPassword'))
    PendingModifiedValues.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Port'))
    PendingModifiedValues.add_member(:backup_retention_period, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'BackupRetentionPeriod'))
    PendingModifiedValues.add_member(:multi_az, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'MultiAZ'))
    PendingModifiedValues.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    PendingModifiedValues.add_member(:license_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LicenseModel'))
    PendingModifiedValues.add_member(:iops, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Iops'))
    PendingModifiedValues.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceIdentifier'))
    PendingModifiedValues.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StorageType'))
    PendingModifiedValues.add_member(:ca_certificate_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CACertificateIdentifier'))
    PendingModifiedValues.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSubnetGroupName'))
    PendingModifiedValues.add_member(:pending_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingCloudwatchLogsExports, location_name: 'PendingCloudwatchLogsExports'))
    PendingModifiedValues.type = Types::PendingModifiedValues
    PromoteReadReplicaDBClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PromoteReadReplicaDBClusterMessage.type = Types::PromoteReadReplicaDBClusterMessage
    PromoteReadReplicaDBClusterResult.add_member(:db_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBCluster, location_name: 'DBCluster'))
    PromoteReadReplicaDBClusterResult.type = Types::PromoteReadReplicaDBClusterResult
    ProvisionedIopsNotAvailableInAZFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ProvisionedIopsNotAvailableInAZFault.type = Types::ProvisionedIopsNotAvailableInAZFault
    Range.add_member(:from, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'From'))
    Range.add_member(:to, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'To'))
    Range.add_member(:step, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Step'))
    Range.type = Types::Range
    RangeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Range, traits: {"smithy.api#xmlName" => "Range"})
    ReadReplicaDBClusterIdentifierList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "ReadReplicaDBClusterIdentifier"})
    ReadReplicaDBInstanceIdentifierList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "ReadReplicaDBInstanceIdentifier"})
    ReadReplicaIdentifierList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "ReadReplicaIdentifier"})
    ReadersArnList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    RebootDBInstanceMessage.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBInstanceIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RebootDBInstanceMessage.add_member(:force_failover, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'ForceFailover'))
    RebootDBInstanceMessage.type = Types::RebootDBInstanceMessage
    RebootDBInstanceResult.add_member(:db_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstance, location_name: 'DBInstance'))
    RebootDBInstanceResult.type = Types::RebootDBInstanceResult
    RemoveFromGlobalClusterMessage.add_member(:global_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, location_name: 'GlobalClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveFromGlobalClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveFromGlobalClusterMessage.type = Types::RemoveFromGlobalClusterMessage
    RemoveFromGlobalClusterResult.add_member(:global_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalCluster, location_name: 'GlobalCluster'))
    RemoveFromGlobalClusterResult.type = Types::RemoveFromGlobalClusterResult
    RemoveRoleFromDBClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveRoleFromDBClusterMessage.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RoleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveRoleFromDBClusterMessage.add_member(:feature_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FeatureName'))
    RemoveRoleFromDBClusterMessage.type = Types::RemoveRoleFromDBClusterMessage
    RemoveSourceIdentifierFromSubscriptionMessage.add_member(:subscription_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubscriptionName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveSourceIdentifierFromSubscriptionMessage.add_member(:source_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveSourceIdentifierFromSubscriptionMessage.type = Types::RemoveSourceIdentifierFromSubscriptionMessage
    RemoveSourceIdentifierFromSubscriptionResult.add_member(:event_subscription, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventSubscription, location_name: 'EventSubscription'))
    RemoveSourceIdentifierFromSubscriptionResult.type = Types::RemoveSourceIdentifierFromSubscriptionResult
    RemoveTagsFromResourceMessage.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveTagsFromResourceMessage.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyList, location_name: 'TagKeys', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RemoveTagsFromResourceMessage.type = Types::RemoveTagsFromResourceMessage
    ResetDBClusterParameterGroupMessage.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterParameterGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResetDBClusterParameterGroupMessage.add_member(:reset_all_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ResetAllParameters'))
    ResetDBClusterParameterGroupMessage.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersList, location_name: 'Parameters'))
    ResetDBClusterParameterGroupMessage.type = Types::ResetDBClusterParameterGroupMessage
    ResetDBClusterParameterGroupOutput.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterParameterGroupName'))
    ResetDBClusterParameterGroupOutput.type = Types::ResetDBClusterParameterGroupOutput
    ResetDBParameterGroupMessage.add_member(:db_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBParameterGroupName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResetDBParameterGroupMessage.add_member(:reset_all_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ResetAllParameters'))
    ResetDBParameterGroupMessage.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParametersList, location_name: 'Parameters'))
    ResetDBParameterGroupMessage.type = Types::ResetDBParameterGroupMessage
    ResetDBParameterGroupOutput.add_member(:db_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBParameterGroupName'))
    ResetDBParameterGroupOutput.type = Types::ResetDBParameterGroupOutput
    ResourceNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    ResourceNotFoundFault.type = Types::ResourceNotFoundFault
    ResourcePendingMaintenanceActions.add_member(:resource_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceIdentifier'))
    ResourcePendingMaintenanceActions.add_member(:pending_maintenance_action_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingMaintenanceActionDetails, location_name: 'PendingMaintenanceActionDetails'))
    ResourcePendingMaintenanceActions.type = Types::ResourcePendingMaintenanceActions
    RestoreDBClusterFromSnapshotMessage.add_member(:availability_zones, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZones, location_name: 'AvailabilityZones'))
    RestoreDBClusterFromSnapshotMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBClusterFromSnapshotMessage.add_member(:snapshot_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBClusterFromSnapshotMessage.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBClusterFromSnapshotMessage.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    RestoreDBClusterFromSnapshotMessage.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Port'))
    RestoreDBClusterFromSnapshotMessage.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSubnetGroupName'))
    RestoreDBClusterFromSnapshotMessage.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DatabaseName'))
    RestoreDBClusterFromSnapshotMessage.add_member(:option_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptionGroupName'))
    RestoreDBClusterFromSnapshotMessage.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: 'VpcSecurityGroupIds'))
    RestoreDBClusterFromSnapshotMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    RestoreDBClusterFromSnapshotMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    RestoreDBClusterFromSnapshotMessage.add_member(:enable_iam_database_authentication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnableIAMDatabaseAuthentication'))
    RestoreDBClusterFromSnapshotMessage.add_member(:enable_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'EnableCloudwatchLogsExports'))
    RestoreDBClusterFromSnapshotMessage.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterParameterGroupName'))
    RestoreDBClusterFromSnapshotMessage.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DeletionProtection'))
    RestoreDBClusterFromSnapshotMessage.add_member(:copy_tags_to_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'CopyTagsToSnapshot'))
    RestoreDBClusterFromSnapshotMessage.add_member(:serverless_v2_scaling_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessV2ScalingConfiguration, location_name: 'ServerlessV2ScalingConfiguration'))
    RestoreDBClusterFromSnapshotMessage.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StorageType'))
    RestoreDBClusterFromSnapshotMessage.type = Types::RestoreDBClusterFromSnapshotMessage
    RestoreDBClusterFromSnapshotResult.add_member(:db_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBCluster, location_name: 'DBCluster'))
    RestoreDBClusterFromSnapshotResult.type = Types::RestoreDBClusterFromSnapshotResult
    RestoreDBClusterToPointInTimeMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBClusterToPointInTimeMessage.add_member(:restore_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RestoreType'))
    RestoreDBClusterToPointInTimeMessage.add_member(:source_db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceDBClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RestoreDBClusterToPointInTimeMessage.add_member(:restore_to_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TStamp, location_name: 'RestoreToTime'))
    RestoreDBClusterToPointInTimeMessage.add_member(:use_latest_restorable_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'UseLatestRestorableTime'))
    RestoreDBClusterToPointInTimeMessage.add_member(:port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerOptional, location_name: 'Port'))
    RestoreDBClusterToPointInTimeMessage.add_member(:db_subnet_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBSubnetGroupName'))
    RestoreDBClusterToPointInTimeMessage.add_member(:option_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'OptionGroupName'))
    RestoreDBClusterToPointInTimeMessage.add_member(:vpc_security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: 'VpcSecurityGroupIds'))
    RestoreDBClusterToPointInTimeMessage.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    RestoreDBClusterToPointInTimeMessage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyId'))
    RestoreDBClusterToPointInTimeMessage.add_member(:enable_iam_database_authentication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'EnableIAMDatabaseAuthentication'))
    RestoreDBClusterToPointInTimeMessage.add_member(:enable_cloudwatch_logs_exports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogTypeList, location_name: 'EnableCloudwatchLogsExports'))
    RestoreDBClusterToPointInTimeMessage.add_member(:db_cluster_parameter_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterParameterGroupName'))
    RestoreDBClusterToPointInTimeMessage.add_member(:deletion_protection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'DeletionProtection'))
    RestoreDBClusterToPointInTimeMessage.add_member(:serverless_v2_scaling_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerlessV2ScalingConfiguration, location_name: 'ServerlessV2ScalingConfiguration'))
    RestoreDBClusterToPointInTimeMessage.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StorageType'))
    RestoreDBClusterToPointInTimeMessage.type = Types::RestoreDBClusterToPointInTimeMessage
    RestoreDBClusterToPointInTimeResult.add_member(:db_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBCluster, location_name: 'DBCluster'))
    RestoreDBClusterToPointInTimeResult.type = Types::RestoreDBClusterToPointInTimeResult
    SNSInvalidTopicFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SNSInvalidTopicFault.type = Types::SNSInvalidTopicFault
    SNSNoAuthorizationFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SNSNoAuthorizationFault.type = Types::SNSNoAuthorizationFault
    SNSTopicArnNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SNSTopicArnNotFoundFault.type = Types::SNSTopicArnNotFoundFault
    ServerlessV2ScalingConfiguration.add_member(:min_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'MinCapacity'))
    ServerlessV2ScalingConfiguration.add_member(:max_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'MaxCapacity'))
    ServerlessV2ScalingConfiguration.type = Types::ServerlessV2ScalingConfiguration
    ServerlessV2ScalingConfigurationInfo.add_member(:min_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'MinCapacity'))
    ServerlessV2ScalingConfigurationInfo.add_member(:max_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptional, location_name: 'MaxCapacity'))
    ServerlessV2ScalingConfigurationInfo.type = Types::ServerlessV2ScalingConfigurationInfo
    SharedSnapshotQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SharedSnapshotQuotaExceededFault.type = Types::SharedSnapshotQuotaExceededFault
    SnapshotQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SnapshotQuotaExceededFault.type = Types::SnapshotQuotaExceededFault
    SourceIdsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "SourceId"})
    SourceNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SourceNotFoundFault.type = Types::SourceNotFoundFault
    SourceType.add_member(:db_instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'db_instance', traits: {"smithy.api#enumValue" => "db-instance"}))
    SourceType.add_member(:db_parameter_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'db_parameter_group', traits: {"smithy.api#enumValue" => "db-parameter-group"}))
    SourceType.add_member(:db_security_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'db_security_group', traits: {"smithy.api#enumValue" => "db-security-group"}))
    SourceType.add_member(:db_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'db_snapshot', traits: {"smithy.api#enumValue" => "db-snapshot"}))
    SourceType.add_member(:db_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'db_cluster', traits: {"smithy.api#enumValue" => "db-cluster"}))
    SourceType.add_member(:db_cluster_snapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'db_cluster_snapshot', traits: {"smithy.api#enumValue" => "db-cluster-snapshot"}))
    StartDBClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartDBClusterMessage.type = Types::StartDBClusterMessage
    StartDBClusterResult.add_member(:db_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBCluster, location_name: 'DBCluster'))
    StartDBClusterResult.type = Types::StartDBClusterResult
    StopDBClusterMessage.add_member(:db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DBClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StopDBClusterMessage.type = Types::StopDBClusterMessage
    StopDBClusterResult.add_member(:db_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBCluster, location_name: 'DBCluster'))
    StopDBClusterResult.type = Types::StopDBClusterResult
    StorageQuotaExceededFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    StorageQuotaExceededFault.type = Types::StorageQuotaExceededFault
    StorageTypeNotSupportedFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    StorageTypeNotSupportedFault.type = Types::StorageTypeNotSupportedFault
    StringList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
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
    SubscriptionNotFoundFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'message'))
    SubscriptionNotFoundFault.type = Types::SubscriptionNotFoundFault
    SupportedCharacterSetsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CharacterSet, traits: {"smithy.api#xmlName" => "CharacterSet"})
    SupportedTimezonesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timezone, traits: {"smithy.api#xmlName" => "Timezone"})
    SwitchoverGlobalClusterMessage.add_member(:global_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, location_name: 'GlobalClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SwitchoverGlobalClusterMessage.add_member(:target_db_cluster_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetDbClusterIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SwitchoverGlobalClusterMessage.type = Types::SwitchoverGlobalClusterMessage
    SwitchoverGlobalClusterResult.add_member(:global_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalCluster, location_name: 'GlobalCluster'))
    SwitchoverGlobalClusterResult.type = Types::SwitchoverGlobalClusterResult
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Key'))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value'))
    Tag.type = Types::Tag
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag, traits: {"smithy.api#xmlName" => "Tag"})
    TagListMessage.add_member(:tag_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'TagList'))
    TagListMessage.type = Types::TagListMessage
    Timezone.add_member(:timezone_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TimezoneName'))
    Timezone.type = Types::Timezone
    UpgradeTarget.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    UpgradeTarget.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    UpgradeTarget.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    UpgradeTarget.add_member(:auto_upgrade, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AutoUpgrade'))
    UpgradeTarget.add_member(:is_major_version_upgrade, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsMajorVersionUpgrade'))
    UpgradeTarget.add_member(:supports_global_databases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'SupportsGlobalDatabases'))
    UpgradeTarget.type = Types::UpgradeTarget
    ValidDBInstanceModificationsMessage.add_member(:storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidStorageOptionsList, location_name: 'Storage'))
    ValidDBInstanceModificationsMessage.type = Types::ValidDBInstanceModificationsMessage
    ValidStorageOptions.add_member(:storage_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StorageType'))
    ValidStorageOptions.add_member(:storage_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RangeList, location_name: 'StorageSize'))
    ValidStorageOptions.add_member(:provisioned_iops, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RangeList, location_name: 'ProvisionedIops'))
    ValidStorageOptions.add_member(:iops_to_storage_ratio, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleRangeList, location_name: 'IopsToStorageRatio'))
    ValidStorageOptions.type = Types::ValidStorageOptions
    ValidStorageOptionsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidStorageOptions, traits: {"smithy.api#xmlName" => "ValidStorageOptions"})
    ValidUpgradeTargetList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpgradeTarget, traits: {"smithy.api#xmlName" => "UpgradeTarget"})
    VpcSecurityGroupIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, traits: {"smithy.api#xmlName" => "VpcSecurityGroupId"})
    VpcSecurityGroupMembership.add_member(:vpc_security_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcSecurityGroupId'))
    VpcSecurityGroupMembership.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    VpcSecurityGroupMembership.type = Types::VpcSecurityGroupMembership
    VpcSecurityGroupMembershipList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcSecurityGroupMembership, traits: {"smithy.api#xmlName" => "VpcSecurityGroupMembership"})

    AmazonRDSv19 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.neptune#AmazonRDSv19"
      service.name = "AmazonRDSv19"
      service.version = "2014-10-31"
      service.traits = {"aws.api#service" => {"sdkId" => "Neptune", "arnNamespace" => "rds", "cloudFormationName" => "Neptune", "cloudTrailEventSource" => "neptune.amazonaws.com", "endpointPrefix" => "rds"}, "aws.auth#sigv4" => {"name" => "rds"}, "aws.protocols#awsQuery" => {}, "smithy.api#title" => "Amazon Neptune", "smithy.api#xmlNamespace" => {"uri" => "http://rds.amazonaws.com/doc/2014-10-31/"}}
      service.add_operation(:add_role_to_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#AddRoleToDBCluster"
        operation.name = "AddRoleToDBCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddRoleToDBClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterRoleAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterRoleQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.traits = {}
      end)
      service.add_operation(:add_source_identifier_to_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#AddSourceIdentifierToSubscription"
        operation.name = "AddSourceIdentifierToSubscription"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddSourceIdentifierToSubscriptionMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddSourceIdentifierToSubscriptionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:add_tags_to_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#AddTagsToResource"
        operation.name = "AddTagsToResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AddTagsToResourceMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSnapshotNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:apply_pending_maintenance_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#ApplyPendingMaintenanceAction"
        operation.name = "ApplyPendingMaintenanceAction"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplyPendingMaintenanceActionMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplyPendingMaintenanceActionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:copy_db_cluster_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#CopyDBClusterParameterGroup"
        operation.name = "CopyDBClusterParameterGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopyDBClusterParameterGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopyDBClusterParameterGroupResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:copy_db_cluster_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#CopyDBClusterSnapshot"
        operation.name = "CopyDBClusterSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopyDBClusterSnapshotMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopyDBClusterSnapshotResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshotAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterSnapshotStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:copy_db_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#CopyDBParameterGroup"
        operation.name = "CopyDBParameterGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopyDBParameterGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CopyDBParameterGroupResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:create_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#CreateDBCluster"
        operation.name = "CreateDBCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDBClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDBClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupDoesNotCoverEnoughAZs)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientStorageClusterCapacityFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBSubnetGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGlobalClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:create_db_cluster_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#CreateDBClusterEndpoint"
        operation.name = "CreateDBClusterEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDBClusterEndpointMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDBClusterEndpointOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterEndpointAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterEndpointQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.traits = {}
      end)
      service.add_operation(:create_db_cluster_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#CreateDBClusterParameterGroup"
        operation.name = "CreateDBClusterParameterGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDBClusterParameterGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDBClusterParameterGroupResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:create_db_cluster_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#CreateDBClusterSnapshot"
        operation.name = "CreateDBClusterSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDBClusterSnapshotMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDBClusterSnapshotResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshotAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterSnapshotStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:create_db_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#CreateDBInstance"
        operation.name = "CreateDBInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDBInstanceMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDBInstanceResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSecurityGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupDoesNotCoverEnoughAZs)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientDBInstanceCapacityFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedIopsNotAvailableInAZFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageTypeNotSupportedFault)
        operation.traits = {}
      end)
      service.add_operation(:create_db_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#CreateDBParameterGroup"
        operation.name = "CreateDBParameterGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDBParameterGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDBParameterGroupResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:create_db_subnet_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#CreateDBSubnetGroup"
        operation.name = "CreateDBSubnetGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDBSubnetGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDBSubnetGroupResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupDoesNotCoverEnoughAZs)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.traits = {}
      end)
      service.add_operation(:create_event_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#CreateEventSubscription"
        operation.name = "CreateEventSubscription"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEventSubscriptionMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEventSubscriptionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventSubscriptionQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SNSInvalidTopicFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SNSNoAuthorizationFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SNSTopicArnNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionAlreadyExistFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionCategoryNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:create_global_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#CreateGlobalCluster"
        operation.name = "CreateGlobalCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGlobalClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGlobalClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#DeleteDBCluster"
        operation.name = "DeleteDBCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDBClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDBClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshotAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterSnapshotStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_db_cluster_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#DeleteDBClusterEndpoint"
        operation.name = "DeleteDBClusterEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDBClusterEndpointMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDBClusterEndpointOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterEndpointNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterEndpointStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_db_cluster_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#DeleteDBClusterParameterGroup"
        operation.name = "DeleteDBClusterParameterGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDBClusterParameterGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBParameterGroupStateFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_db_cluster_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#DeleteDBClusterSnapshot"
        operation.name = "DeleteDBClusterSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDBClusterSnapshotMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDBClusterSnapshotResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterSnapshotStateFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_db_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#DeleteDBInstance"
        operation.name = "DeleteDBInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDBInstanceMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDBInstanceResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSnapshotAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnapshotQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_db_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#DeleteDBParameterGroup"
        operation.name = "DeleteDBParameterGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDBParameterGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBParameterGroupStateFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_db_subnet_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#DeleteDBSubnetGroup"
        operation.name = "DeleteDBSubnetGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDBSubnetGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBSubnetGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBSubnetStateFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_event_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#DeleteEventSubscription"
        operation.name = "DeleteEventSubscription"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEventSubscriptionMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEventSubscriptionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEventSubscriptionStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_global_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#DeleteGlobalCluster"
        operation.name = "DeleteGlobalCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGlobalClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGlobalClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGlobalClusterStateFault)
        operation.traits = {}
      end)
      service.add_operation(:describe_db_cluster_endpoints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#DescribeDBClusterEndpoints"
        operation.name = "DescribeDBClusterEndpoints"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBClusterEndpointsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterEndpointMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBClusterEndpoints.new
      end)
      service.add_operation(:describe_db_cluster_parameter_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#DescribeDBClusterParameterGroups"
        operation.name = "DescribeDBClusterParameterGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBClusterParameterGroupsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterParameterGroupsMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBClusterParameterGroups.new
      end)
      service.add_operation(:describe_db_cluster_parameters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#DescribeDBClusterParameters"
        operation.name = "DescribeDBClusterParameters"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBClusterParametersMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBClusterParametersOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBClusterParameters.new
      end)
      service.add_operation(:describe_db_cluster_snapshot_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#DescribeDBClusterSnapshotAttributes"
        operation.name = "DescribeDBClusterSnapshotAttributes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBClusterSnapshotAttributesMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBClusterSnapshotAttributesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:describe_db_cluster_snapshots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#DescribeDBClusterSnapshots"
        operation.name = "DescribeDBClusterSnapshots"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBClusterSnapshotsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshotMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBClusterSnapshots.new
      end)
      service.add_operation(:describe_db_clusters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#DescribeDBClusters"
        operation.name = "DescribeDBClusters"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBClustersMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBClusters.new
      end)
      service.add_operation(:describe_db_engine_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#DescribeDBEngineVersions"
        operation.name = "DescribeDBEngineVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBEngineVersionsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBEngineVersionMessage)
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "DescribeDBEngineVersionsSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::DescribeDBEngineVersions.new
      end)
      service.add_operation(:describe_db_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#DescribeDBInstances"
        operation.name = "DescribeDBInstances"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBInstancesMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.traits = {"smithy.api#suppress" => ["WaitableTraitInvalidErrorType"], "smithy.test#smokeTests" => [{"id" => "DescribeDBInstancesFailure", "params" => {"DBInstanceIdentifier" => "fake-id"}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"failure" => {}}}]}
        operation[:paginator] = Paginators::DescribeDBInstances.new
      end)
      service.add_operation(:describe_db_parameter_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#DescribeDBParameterGroups"
        operation.name = "DescribeDBParameterGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBParameterGroupsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupsMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBParameterGroups.new
      end)
      service.add_operation(:describe_db_parameters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#DescribeDBParameters"
        operation.name = "DescribeDBParameters"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBParametersMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBParametersOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBParameters.new
      end)
      service.add_operation(:describe_db_subnet_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#DescribeDBSubnetGroups"
        operation.name = "DescribeDBSubnetGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDBSubnetGroupsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeDBSubnetGroups.new
      end)
      service.add_operation(:describe_engine_default_cluster_parameters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#DescribeEngineDefaultClusterParameters"
        operation.name = "DescribeEngineDefaultClusterParameters"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEngineDefaultClusterParametersMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEngineDefaultClusterParametersResult)
        operation.traits = {}
      end)
      service.add_operation(:describe_engine_default_parameters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#DescribeEngineDefaultParameters"
        operation.name = "DescribeEngineDefaultParameters"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEngineDefaultParametersMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEngineDefaultParametersResult)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEngineDefaultParameters.new
      end)
      service.add_operation(:describe_event_categories, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#DescribeEventCategories"
        operation.name = "DescribeEventCategories"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventCategoriesMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventCategoriesMessage)
        operation.traits = {}
      end)
      service.add_operation(:describe_event_subscriptions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#DescribeEventSubscriptions"
        operation.name = "DescribeEventSubscriptions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventSubscriptionsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventSubscriptionsMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEventSubscriptions.new
      end)
      service.add_operation(:describe_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#DescribeEvents"
        operation.name = "DescribeEvents"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventsMessage)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEvents.new
      end)
      service.add_operation(:describe_global_clusters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#DescribeGlobalClusters"
        operation.name = "DescribeGlobalClusters"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeGlobalClustersMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClustersMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeGlobalClusters.new
      end)
      service.add_operation(:describe_orderable_db_instance_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#DescribeOrderableDBInstanceOptions"
        operation.name = "DescribeOrderableDBInstanceOptions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOrderableDBInstanceOptionsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrderableDBInstanceOptionsMessage)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeOrderableDBInstanceOptions.new
      end)
      service.add_operation(:describe_pending_maintenance_actions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#DescribePendingMaintenanceActions"
        operation.name = "DescribePendingMaintenanceActions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePendingMaintenanceActionsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingMaintenanceActionsMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribePendingMaintenanceActions.new
      end)
      service.add_operation(:describe_valid_db_instance_modifications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#DescribeValidDBInstanceModifications"
        operation.name = "DescribeValidDBInstanceModifications"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeValidDBInstanceModificationsMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeValidDBInstanceModificationsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.traits = {}
      end)
      service.add_operation(:failover_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#FailoverDBCluster"
        operation.name = "FailoverDBCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailoverDBClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailoverDBClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.traits = {}
      end)
      service.add_operation(:failover_global_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#FailoverGlobalCluster"
        operation.name = "FailoverGlobalCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailoverGlobalClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailoverGlobalClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGlobalClusterStateFault)
        operation.traits = {}
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagListMessage)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSnapshotNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#ModifyDBCluster"
        operation.name = "ModifyDBCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBSecurityGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBSubnetGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageTypeNotSupportedFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_db_cluster_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#ModifyDBClusterEndpoint"
        operation.name = "ModifyDBClusterEndpoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBClusterEndpointMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBClusterEndpointOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterEndpointNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterEndpointStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_db_cluster_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#ModifyDBClusterParameterGroup"
        operation.name = "ModifyDBClusterParameterGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBClusterParameterGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBClusterParameterGroupOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBParameterGroupStateFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_db_cluster_snapshot_attribute, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#ModifyDBClusterSnapshotAttribute"
        operation.name = "ModifyDBClusterSnapshotAttribute"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBClusterSnapshotAttributeMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBClusterSnapshotAttributeResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterSnapshotStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SharedSnapshotQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_db_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#ModifyDBInstance"
        operation.name = "ModifyDBInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBInstanceMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBInstanceResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSecurityGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBUpgradeDependencyFailureFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientDBInstanceCapacityFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBSecurityGroupStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedIopsNotAvailableInAZFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageTypeNotSupportedFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_db_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#ModifyDBParameterGroup"
        operation.name = "ModifyDBParameterGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBParameterGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBParameterGroupOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBParameterGroupStateFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_db_subnet_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#ModifyDBSubnetGroup"
        operation.name = "ModifyDBSubnetGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBSubnetGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyDBSubnetGroupResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupDoesNotCoverEnoughAZs)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetAlreadyInUse)
        operation.traits = {}
      end)
      service.add_operation(:modify_event_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#ModifyEventSubscription"
        operation.name = "ModifyEventSubscription"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyEventSubscriptionMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyEventSubscriptionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventSubscriptionQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SNSInvalidTopicFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SNSNoAuthorizationFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SNSTopicArnNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionCategoryNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:modify_global_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#ModifyGlobalCluster"
        operation.name = "ModifyGlobalCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyGlobalClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyGlobalClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGlobalClusterStateFault)
        operation.traits = {}
      end)
      service.add_operation(:promote_read_replica_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#PromoteReadReplicaDBCluster"
        operation.name = "PromoteReadReplicaDBCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PromoteReadReplicaDBClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PromoteReadReplicaDBClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.traits = {}
      end)
      service.add_operation(:reboot_db_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#RebootDBInstance"
        operation.name = "RebootDBInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RebootDBInstanceMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RebootDBInstanceResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.traits = {}
      end)
      service.add_operation(:remove_from_global_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#RemoveFromGlobalCluster"
        operation.name = "RemoveFromGlobalCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveFromGlobalClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveFromGlobalClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGlobalClusterStateFault)
        operation.traits = {}
      end)
      service.add_operation(:remove_role_from_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#RemoveRoleFromDBCluster"
        operation.name = "RemoveRoleFromDBCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveRoleFromDBClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterRoleNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.traits = {}
      end)
      service.add_operation(:remove_source_identifier_from_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#RemoveSourceIdentifierFromSubscription"
        operation.name = "RemoveSourceIdentifierFromSubscription"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveSourceIdentifierFromSubscriptionMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveSourceIdentifierFromSubscriptionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:remove_tags_from_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#RemoveTagsFromResource"
        operation.name = "RemoveTagsFromResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveTagsFromResourceMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSnapshotNotFoundFault)
        operation.traits = {}
      end)
      service.add_operation(:reset_db_cluster_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#ResetDBClusterParameterGroup"
        operation.name = "ResetDBClusterParameterGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResetDBClusterParameterGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResetDBClusterParameterGroupOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBParameterGroupStateFault)
        operation.traits = {}
      end)
      service.add_operation(:reset_db_parameter_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#ResetDBParameterGroup"
        operation.name = "ResetDBParameterGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResetDBParameterGroupMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResetDBParameterGroupOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBParameterGroupStateFault)
        operation.traits = {}
      end)
      service.add_operation(:restore_db_cluster_from_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#RestoreDBClusterFromSnapshot"
        operation.name = "RestoreDBClusterFromSnapshot"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreDBClusterFromSnapshotMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreDBClusterFromSnapshotResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientDBClusterCapacityFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientStorageClusterCapacityFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterSnapshotStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBSnapshotStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRestoreFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:restore_db_cluster_to_point_in_time, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#RestoreDBClusterToPointInTime"
        operation.name = "RestoreDBClusterToPointInTime"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreDBClusterToPointInTimeMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreDBClusterToPointInTimeResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterAlreadyExistsFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterParameterGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterQuotaExceededFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientDBClusterCapacityFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientStorageClusterCapacityFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterSnapshotStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBSnapshotStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRestoreFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSubnet)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptionGroupNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        operation.traits = {}
      end)
      service.add_operation(:start_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#StartDBCluster"
        operation.name = "StartDBCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartDBClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartDBClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.traits = {}
      end)
      service.add_operation(:stop_db_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#StopDBCluster"
        operation.name = "StopDBCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopDBClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopDBClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        operation.traits = {}
      end)
      service.add_operation(:switchover_global_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.neptune#SwitchoverGlobalCluster"
        operation.name = "SwitchoverGlobalCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SwitchoverGlobalClusterMessage)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SwitchoverGlobalClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: GlobalClusterNotFoundFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidGlobalClusterStateFault)
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
