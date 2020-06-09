# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RDS
  # @api private
  module ClientApi

    include Seahorse::Model

    AccountAttributesMessage = Shapes::StructureShape.new(name: 'AccountAttributesMessage')
    AccountQuota = Shapes::StructureShape.new(name: 'AccountQuota')
    AccountQuotaList = Shapes::ListShape.new(name: 'AccountQuotaList')
    ActivityStreamMode = Shapes::StringShape.new(name: 'ActivityStreamMode')
    ActivityStreamStatus = Shapes::StringShape.new(name: 'ActivityStreamStatus')
    AddRoleToDBClusterMessage = Shapes::StructureShape.new(name: 'AddRoleToDBClusterMessage')
    AddRoleToDBInstanceMessage = Shapes::StructureShape.new(name: 'AddRoleToDBInstanceMessage')
    AddSourceIdentifierToSubscriptionMessage = Shapes::StructureShape.new(name: 'AddSourceIdentifierToSubscriptionMessage')
    AddSourceIdentifierToSubscriptionResult = Shapes::StructureShape.new(name: 'AddSourceIdentifierToSubscriptionResult')
    AddTagsToResourceMessage = Shapes::StructureShape.new(name: 'AddTagsToResourceMessage')
    ApplyMethod = Shapes::StringShape.new(name: 'ApplyMethod')
    ApplyPendingMaintenanceActionMessage = Shapes::StructureShape.new(name: 'ApplyPendingMaintenanceActionMessage')
    ApplyPendingMaintenanceActionResult = Shapes::StructureShape.new(name: 'ApplyPendingMaintenanceActionResult')
    AttributeValueList = Shapes::ListShape.new(name: 'AttributeValueList')
    AuthScheme = Shapes::StringShape.new(name: 'AuthScheme')
    AuthorizationAlreadyExistsFault = Shapes::StructureShape.new(name: 'AuthorizationAlreadyExistsFault')
    AuthorizationNotFoundFault = Shapes::StructureShape.new(name: 'AuthorizationNotFoundFault')
    AuthorizationQuotaExceededFault = Shapes::StructureShape.new(name: 'AuthorizationQuotaExceededFault')
    AuthorizeDBSecurityGroupIngressMessage = Shapes::StructureShape.new(name: 'AuthorizeDBSecurityGroupIngressMessage')
    AuthorizeDBSecurityGroupIngressResult = Shapes::StructureShape.new(name: 'AuthorizeDBSecurityGroupIngressResult')
    AvailabilityZone = Shapes::StructureShape.new(name: 'AvailabilityZone')
    AvailabilityZoneList = Shapes::ListShape.new(name: 'AvailabilityZoneList')
    AvailabilityZones = Shapes::ListShape.new(name: 'AvailabilityZones')
    AvailableProcessorFeature = Shapes::StructureShape.new(name: 'AvailableProcessorFeature')
    AvailableProcessorFeatureList = Shapes::ListShape.new(name: 'AvailableProcessorFeatureList')
    BacktrackDBClusterMessage = Shapes::StructureShape.new(name: 'BacktrackDBClusterMessage')
    BackupPolicyNotFoundFault = Shapes::StructureShape.new(name: 'BackupPolicyNotFoundFault')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BooleanOptional = Shapes::BooleanShape.new(name: 'BooleanOptional')
    CancelExportTaskMessage = Shapes::StructureShape.new(name: 'CancelExportTaskMessage')
    Certificate = Shapes::StructureShape.new(name: 'Certificate')
    CertificateList = Shapes::ListShape.new(name: 'CertificateList')
    CertificateMessage = Shapes::StructureShape.new(name: 'CertificateMessage')
    CertificateNotFoundFault = Shapes::StructureShape.new(name: 'CertificateNotFoundFault')
    CharacterSet = Shapes::StructureShape.new(name: 'CharacterSet')
    CloudwatchLogsExportConfiguration = Shapes::StructureShape.new(name: 'CloudwatchLogsExportConfiguration')
    ConnectionPoolConfiguration = Shapes::StructureShape.new(name: 'ConnectionPoolConfiguration')
    ConnectionPoolConfigurationInfo = Shapes::StructureShape.new(name: 'ConnectionPoolConfigurationInfo')
    CopyDBClusterParameterGroupMessage = Shapes::StructureShape.new(name: 'CopyDBClusterParameterGroupMessage')
    CopyDBClusterParameterGroupResult = Shapes::StructureShape.new(name: 'CopyDBClusterParameterGroupResult')
    CopyDBClusterSnapshotMessage = Shapes::StructureShape.new(name: 'CopyDBClusterSnapshotMessage')
    CopyDBClusterSnapshotResult = Shapes::StructureShape.new(name: 'CopyDBClusterSnapshotResult')
    CopyDBParameterGroupMessage = Shapes::StructureShape.new(name: 'CopyDBParameterGroupMessage')
    CopyDBParameterGroupResult = Shapes::StructureShape.new(name: 'CopyDBParameterGroupResult')
    CopyDBSnapshotMessage = Shapes::StructureShape.new(name: 'CopyDBSnapshotMessage')
    CopyDBSnapshotResult = Shapes::StructureShape.new(name: 'CopyDBSnapshotResult')
    CopyOptionGroupMessage = Shapes::StructureShape.new(name: 'CopyOptionGroupMessage')
    CopyOptionGroupResult = Shapes::StructureShape.new(name: 'CopyOptionGroupResult')
    CreateCustomAvailabilityZoneMessage = Shapes::StructureShape.new(name: 'CreateCustomAvailabilityZoneMessage')
    CreateCustomAvailabilityZoneResult = Shapes::StructureShape.new(name: 'CreateCustomAvailabilityZoneResult')
    CreateDBClusterEndpointMessage = Shapes::StructureShape.new(name: 'CreateDBClusterEndpointMessage')
    CreateDBClusterMessage = Shapes::StructureShape.new(name: 'CreateDBClusterMessage')
    CreateDBClusterParameterGroupMessage = Shapes::StructureShape.new(name: 'CreateDBClusterParameterGroupMessage')
    CreateDBClusterParameterGroupResult = Shapes::StructureShape.new(name: 'CreateDBClusterParameterGroupResult')
    CreateDBClusterResult = Shapes::StructureShape.new(name: 'CreateDBClusterResult')
    CreateDBClusterSnapshotMessage = Shapes::StructureShape.new(name: 'CreateDBClusterSnapshotMessage')
    CreateDBClusterSnapshotResult = Shapes::StructureShape.new(name: 'CreateDBClusterSnapshotResult')
    CreateDBInstanceMessage = Shapes::StructureShape.new(name: 'CreateDBInstanceMessage')
    CreateDBInstanceReadReplicaMessage = Shapes::StructureShape.new(name: 'CreateDBInstanceReadReplicaMessage')
    CreateDBInstanceReadReplicaResult = Shapes::StructureShape.new(name: 'CreateDBInstanceReadReplicaResult')
    CreateDBInstanceResult = Shapes::StructureShape.new(name: 'CreateDBInstanceResult')
    CreateDBParameterGroupMessage = Shapes::StructureShape.new(name: 'CreateDBParameterGroupMessage')
    CreateDBParameterGroupResult = Shapes::StructureShape.new(name: 'CreateDBParameterGroupResult')
    CreateDBProxyRequest = Shapes::StructureShape.new(name: 'CreateDBProxyRequest')
    CreateDBProxyResponse = Shapes::StructureShape.new(name: 'CreateDBProxyResponse')
    CreateDBSecurityGroupMessage = Shapes::StructureShape.new(name: 'CreateDBSecurityGroupMessage')
    CreateDBSecurityGroupResult = Shapes::StructureShape.new(name: 'CreateDBSecurityGroupResult')
    CreateDBSnapshotMessage = Shapes::StructureShape.new(name: 'CreateDBSnapshotMessage')
    CreateDBSnapshotResult = Shapes::StructureShape.new(name: 'CreateDBSnapshotResult')
    CreateDBSubnetGroupMessage = Shapes::StructureShape.new(name: 'CreateDBSubnetGroupMessage')
    CreateDBSubnetGroupResult = Shapes::StructureShape.new(name: 'CreateDBSubnetGroupResult')
    CreateEventSubscriptionMessage = Shapes::StructureShape.new(name: 'CreateEventSubscriptionMessage')
    CreateEventSubscriptionResult = Shapes::StructureShape.new(name: 'CreateEventSubscriptionResult')
    CreateGlobalClusterMessage = Shapes::StructureShape.new(name: 'CreateGlobalClusterMessage')
    CreateGlobalClusterResult = Shapes::StructureShape.new(name: 'CreateGlobalClusterResult')
    CreateOptionGroupMessage = Shapes::StructureShape.new(name: 'CreateOptionGroupMessage')
    CreateOptionGroupResult = Shapes::StructureShape.new(name: 'CreateOptionGroupResult')
    CustomAvailabilityZone = Shapes::StructureShape.new(name: 'CustomAvailabilityZone')
    CustomAvailabilityZoneAlreadyExistsFault = Shapes::StructureShape.new(name: 'CustomAvailabilityZoneAlreadyExistsFault')
    CustomAvailabilityZoneList = Shapes::ListShape.new(name: 'CustomAvailabilityZoneList')
    CustomAvailabilityZoneMessage = Shapes::StructureShape.new(name: 'CustomAvailabilityZoneMessage')
    CustomAvailabilityZoneNotFoundFault = Shapes::StructureShape.new(name: 'CustomAvailabilityZoneNotFoundFault')
    CustomAvailabilityZoneQuotaExceededFault = Shapes::StructureShape.new(name: 'CustomAvailabilityZoneQuotaExceededFault')
    DBCluster = Shapes::StructureShape.new(name: 'DBCluster')
    DBClusterAlreadyExistsFault = Shapes::StructureShape.new(name: 'DBClusterAlreadyExistsFault')
    DBClusterBacktrack = Shapes::StructureShape.new(name: 'DBClusterBacktrack')
    DBClusterBacktrackList = Shapes::ListShape.new(name: 'DBClusterBacktrackList')
    DBClusterBacktrackMessage = Shapes::StructureShape.new(name: 'DBClusterBacktrackMessage')
    DBClusterBacktrackNotFoundFault = Shapes::StructureShape.new(name: 'DBClusterBacktrackNotFoundFault')
    DBClusterCapacityInfo = Shapes::StructureShape.new(name: 'DBClusterCapacityInfo')
    DBClusterEndpoint = Shapes::StructureShape.new(name: 'DBClusterEndpoint')
    DBClusterEndpointAlreadyExistsFault = Shapes::StructureShape.new(name: 'DBClusterEndpointAlreadyExistsFault')
    DBClusterEndpointList = Shapes::ListShape.new(name: 'DBClusterEndpointList')
    DBClusterEndpointMessage = Shapes::StructureShape.new(name: 'DBClusterEndpointMessage')
    DBClusterEndpointNotFoundFault = Shapes::StructureShape.new(name: 'DBClusterEndpointNotFoundFault')
    DBClusterEndpointQuotaExceededFault = Shapes::StructureShape.new(name: 'DBClusterEndpointQuotaExceededFault')
    DBClusterList = Shapes::ListShape.new(name: 'DBClusterList')
    DBClusterMember = Shapes::StructureShape.new(name: 'DBClusterMember')
    DBClusterMemberList = Shapes::ListShape.new(name: 'DBClusterMemberList')
    DBClusterMessage = Shapes::StructureShape.new(name: 'DBClusterMessage')
    DBClusterNotFoundFault = Shapes::StructureShape.new(name: 'DBClusterNotFoundFault')
    DBClusterOptionGroupMemberships = Shapes::ListShape.new(name: 'DBClusterOptionGroupMemberships')
    DBClusterOptionGroupStatus = Shapes::StructureShape.new(name: 'DBClusterOptionGroupStatus')
    DBClusterParameterGroup = Shapes::StructureShape.new(name: 'DBClusterParameterGroup')
    DBClusterParameterGroupDetails = Shapes::StructureShape.new(name: 'DBClusterParameterGroupDetails')
    DBClusterParameterGroupList = Shapes::ListShape.new(name: 'DBClusterParameterGroupList')
    DBClusterParameterGroupNameMessage = Shapes::StructureShape.new(name: 'DBClusterParameterGroupNameMessage')
    DBClusterParameterGroupNotFoundFault = Shapes::StructureShape.new(name: 'DBClusterParameterGroupNotFoundFault')
    DBClusterParameterGroupsMessage = Shapes::StructureShape.new(name: 'DBClusterParameterGroupsMessage')
    DBClusterQuotaExceededFault = Shapes::StructureShape.new(name: 'DBClusterQuotaExceededFault')
    DBClusterRole = Shapes::StructureShape.new(name: 'DBClusterRole')
    DBClusterRoleAlreadyExistsFault = Shapes::StructureShape.new(name: 'DBClusterRoleAlreadyExistsFault')
    DBClusterRoleNotFoundFault = Shapes::StructureShape.new(name: 'DBClusterRoleNotFoundFault')
    DBClusterRoleQuotaExceededFault = Shapes::StructureShape.new(name: 'DBClusterRoleQuotaExceededFault')
    DBClusterRoles = Shapes::ListShape.new(name: 'DBClusterRoles')
    DBClusterSnapshot = Shapes::StructureShape.new(name: 'DBClusterSnapshot')
    DBClusterSnapshotAlreadyExistsFault = Shapes::StructureShape.new(name: 'DBClusterSnapshotAlreadyExistsFault')
    DBClusterSnapshotAttribute = Shapes::StructureShape.new(name: 'DBClusterSnapshotAttribute')
    DBClusterSnapshotAttributeList = Shapes::ListShape.new(name: 'DBClusterSnapshotAttributeList')
    DBClusterSnapshotAttributesResult = Shapes::StructureShape.new(name: 'DBClusterSnapshotAttributesResult')
    DBClusterSnapshotList = Shapes::ListShape.new(name: 'DBClusterSnapshotList')
    DBClusterSnapshotMessage = Shapes::StructureShape.new(name: 'DBClusterSnapshotMessage')
    DBClusterSnapshotNotFoundFault = Shapes::StructureShape.new(name: 'DBClusterSnapshotNotFoundFault')
    DBEngineVersion = Shapes::StructureShape.new(name: 'DBEngineVersion')
    DBEngineVersionList = Shapes::ListShape.new(name: 'DBEngineVersionList')
    DBEngineVersionMessage = Shapes::StructureShape.new(name: 'DBEngineVersionMessage')
    DBInstance = Shapes::StructureShape.new(name: 'DBInstance')
    DBInstanceAlreadyExistsFault = Shapes::StructureShape.new(name: 'DBInstanceAlreadyExistsFault')
    DBInstanceAutomatedBackup = Shapes::StructureShape.new(name: 'DBInstanceAutomatedBackup')
    DBInstanceAutomatedBackupList = Shapes::ListShape.new(name: 'DBInstanceAutomatedBackupList')
    DBInstanceAutomatedBackupMessage = Shapes::StructureShape.new(name: 'DBInstanceAutomatedBackupMessage')
    DBInstanceAutomatedBackupNotFoundFault = Shapes::StructureShape.new(name: 'DBInstanceAutomatedBackupNotFoundFault')
    DBInstanceAutomatedBackupQuotaExceededFault = Shapes::StructureShape.new(name: 'DBInstanceAutomatedBackupQuotaExceededFault')
    DBInstanceList = Shapes::ListShape.new(name: 'DBInstanceList')
    DBInstanceMessage = Shapes::StructureShape.new(name: 'DBInstanceMessage')
    DBInstanceNotFoundFault = Shapes::StructureShape.new(name: 'DBInstanceNotFoundFault')
    DBInstanceRole = Shapes::StructureShape.new(name: 'DBInstanceRole')
    DBInstanceRoleAlreadyExistsFault = Shapes::StructureShape.new(name: 'DBInstanceRoleAlreadyExistsFault')
    DBInstanceRoleNotFoundFault = Shapes::StructureShape.new(name: 'DBInstanceRoleNotFoundFault')
    DBInstanceRoleQuotaExceededFault = Shapes::StructureShape.new(name: 'DBInstanceRoleQuotaExceededFault')
    DBInstanceRoles = Shapes::ListShape.new(name: 'DBInstanceRoles')
    DBInstanceStatusInfo = Shapes::StructureShape.new(name: 'DBInstanceStatusInfo')
    DBInstanceStatusInfoList = Shapes::ListShape.new(name: 'DBInstanceStatusInfoList')
    DBLogFileNotFoundFault = Shapes::StructureShape.new(name: 'DBLogFileNotFoundFault')
    DBParameterGroup = Shapes::StructureShape.new(name: 'DBParameterGroup')
    DBParameterGroupAlreadyExistsFault = Shapes::StructureShape.new(name: 'DBParameterGroupAlreadyExistsFault')
    DBParameterGroupDetails = Shapes::StructureShape.new(name: 'DBParameterGroupDetails')
    DBParameterGroupList = Shapes::ListShape.new(name: 'DBParameterGroupList')
    DBParameterGroupNameMessage = Shapes::StructureShape.new(name: 'DBParameterGroupNameMessage')
    DBParameterGroupNotFoundFault = Shapes::StructureShape.new(name: 'DBParameterGroupNotFoundFault')
    DBParameterGroupQuotaExceededFault = Shapes::StructureShape.new(name: 'DBParameterGroupQuotaExceededFault')
    DBParameterGroupStatus = Shapes::StructureShape.new(name: 'DBParameterGroupStatus')
    DBParameterGroupStatusList = Shapes::ListShape.new(name: 'DBParameterGroupStatusList')
    DBParameterGroupsMessage = Shapes::StructureShape.new(name: 'DBParameterGroupsMessage')
    DBProxy = Shapes::StructureShape.new(name: 'DBProxy')
    DBProxyAlreadyExistsFault = Shapes::StructureShape.new(name: 'DBProxyAlreadyExistsFault')
    DBProxyList = Shapes::ListShape.new(name: 'DBProxyList')
    DBProxyNotFoundFault = Shapes::StructureShape.new(name: 'DBProxyNotFoundFault')
    DBProxyQuotaExceededFault = Shapes::StructureShape.new(name: 'DBProxyQuotaExceededFault')
    DBProxyStatus = Shapes::StringShape.new(name: 'DBProxyStatus')
    DBProxyTarget = Shapes::StructureShape.new(name: 'DBProxyTarget')
    DBProxyTargetAlreadyRegisteredFault = Shapes::StructureShape.new(name: 'DBProxyTargetAlreadyRegisteredFault')
    DBProxyTargetGroup = Shapes::StructureShape.new(name: 'DBProxyTargetGroup')
    DBProxyTargetGroupNotFoundFault = Shapes::StructureShape.new(name: 'DBProxyTargetGroupNotFoundFault')
    DBProxyTargetNotFoundFault = Shapes::StructureShape.new(name: 'DBProxyTargetNotFoundFault')
    DBSecurityGroup = Shapes::StructureShape.new(name: 'DBSecurityGroup')
    DBSecurityGroupAlreadyExistsFault = Shapes::StructureShape.new(name: 'DBSecurityGroupAlreadyExistsFault')
    DBSecurityGroupMembership = Shapes::StructureShape.new(name: 'DBSecurityGroupMembership')
    DBSecurityGroupMembershipList = Shapes::ListShape.new(name: 'DBSecurityGroupMembershipList')
    DBSecurityGroupMessage = Shapes::StructureShape.new(name: 'DBSecurityGroupMessage')
    DBSecurityGroupNameList = Shapes::ListShape.new(name: 'DBSecurityGroupNameList')
    DBSecurityGroupNotFoundFault = Shapes::StructureShape.new(name: 'DBSecurityGroupNotFoundFault')
    DBSecurityGroupNotSupportedFault = Shapes::StructureShape.new(name: 'DBSecurityGroupNotSupportedFault')
    DBSecurityGroupQuotaExceededFault = Shapes::StructureShape.new(name: 'DBSecurityGroupQuotaExceededFault')
    DBSecurityGroups = Shapes::ListShape.new(name: 'DBSecurityGroups')
    DBSnapshot = Shapes::StructureShape.new(name: 'DBSnapshot')
    DBSnapshotAlreadyExistsFault = Shapes::StructureShape.new(name: 'DBSnapshotAlreadyExistsFault')
    DBSnapshotAttribute = Shapes::StructureShape.new(name: 'DBSnapshotAttribute')
    DBSnapshotAttributeList = Shapes::ListShape.new(name: 'DBSnapshotAttributeList')
    DBSnapshotAttributesResult = Shapes::StructureShape.new(name: 'DBSnapshotAttributesResult')
    DBSnapshotList = Shapes::ListShape.new(name: 'DBSnapshotList')
    DBSnapshotMessage = Shapes::StructureShape.new(name: 'DBSnapshotMessage')
    DBSnapshotNotFoundFault = Shapes::StructureShape.new(name: 'DBSnapshotNotFoundFault')
    DBSubnetGroup = Shapes::StructureShape.new(name: 'DBSubnetGroup')
    DBSubnetGroupAlreadyExistsFault = Shapes::StructureShape.new(name: 'DBSubnetGroupAlreadyExistsFault')
    DBSubnetGroupDoesNotCoverEnoughAZs = Shapes::StructureShape.new(name: 'DBSubnetGroupDoesNotCoverEnoughAZs')
    DBSubnetGroupMessage = Shapes::StructureShape.new(name: 'DBSubnetGroupMessage')
    DBSubnetGroupNotAllowedFault = Shapes::StructureShape.new(name: 'DBSubnetGroupNotAllowedFault')
    DBSubnetGroupNotFoundFault = Shapes::StructureShape.new(name: 'DBSubnetGroupNotFoundFault')
    DBSubnetGroupQuotaExceededFault = Shapes::StructureShape.new(name: 'DBSubnetGroupQuotaExceededFault')
    DBSubnetGroups = Shapes::ListShape.new(name: 'DBSubnetGroups')
    DBSubnetQuotaExceededFault = Shapes::StructureShape.new(name: 'DBSubnetQuotaExceededFault')
    DBUpgradeDependencyFailureFault = Shapes::StructureShape.new(name: 'DBUpgradeDependencyFailureFault')
    DeleteCustomAvailabilityZoneMessage = Shapes::StructureShape.new(name: 'DeleteCustomAvailabilityZoneMessage')
    DeleteCustomAvailabilityZoneResult = Shapes::StructureShape.new(name: 'DeleteCustomAvailabilityZoneResult')
    DeleteDBClusterEndpointMessage = Shapes::StructureShape.new(name: 'DeleteDBClusterEndpointMessage')
    DeleteDBClusterMessage = Shapes::StructureShape.new(name: 'DeleteDBClusterMessage')
    DeleteDBClusterParameterGroupMessage = Shapes::StructureShape.new(name: 'DeleteDBClusterParameterGroupMessage')
    DeleteDBClusterResult = Shapes::StructureShape.new(name: 'DeleteDBClusterResult')
    DeleteDBClusterSnapshotMessage = Shapes::StructureShape.new(name: 'DeleteDBClusterSnapshotMessage')
    DeleteDBClusterSnapshotResult = Shapes::StructureShape.new(name: 'DeleteDBClusterSnapshotResult')
    DeleteDBInstanceAutomatedBackupMessage = Shapes::StructureShape.new(name: 'DeleteDBInstanceAutomatedBackupMessage')
    DeleteDBInstanceAutomatedBackupResult = Shapes::StructureShape.new(name: 'DeleteDBInstanceAutomatedBackupResult')
    DeleteDBInstanceMessage = Shapes::StructureShape.new(name: 'DeleteDBInstanceMessage')
    DeleteDBInstanceResult = Shapes::StructureShape.new(name: 'DeleteDBInstanceResult')
    DeleteDBParameterGroupMessage = Shapes::StructureShape.new(name: 'DeleteDBParameterGroupMessage')
    DeleteDBProxyRequest = Shapes::StructureShape.new(name: 'DeleteDBProxyRequest')
    DeleteDBProxyResponse = Shapes::StructureShape.new(name: 'DeleteDBProxyResponse')
    DeleteDBSecurityGroupMessage = Shapes::StructureShape.new(name: 'DeleteDBSecurityGroupMessage')
    DeleteDBSnapshotMessage = Shapes::StructureShape.new(name: 'DeleteDBSnapshotMessage')
    DeleteDBSnapshotResult = Shapes::StructureShape.new(name: 'DeleteDBSnapshotResult')
    DeleteDBSubnetGroupMessage = Shapes::StructureShape.new(name: 'DeleteDBSubnetGroupMessage')
    DeleteEventSubscriptionMessage = Shapes::StructureShape.new(name: 'DeleteEventSubscriptionMessage')
    DeleteEventSubscriptionResult = Shapes::StructureShape.new(name: 'DeleteEventSubscriptionResult')
    DeleteGlobalClusterMessage = Shapes::StructureShape.new(name: 'DeleteGlobalClusterMessage')
    DeleteGlobalClusterResult = Shapes::StructureShape.new(name: 'DeleteGlobalClusterResult')
    DeleteInstallationMediaMessage = Shapes::StructureShape.new(name: 'DeleteInstallationMediaMessage')
    DeleteOptionGroupMessage = Shapes::StructureShape.new(name: 'DeleteOptionGroupMessage')
    DeregisterDBProxyTargetsRequest = Shapes::StructureShape.new(name: 'DeregisterDBProxyTargetsRequest')
    DeregisterDBProxyTargetsResponse = Shapes::StructureShape.new(name: 'DeregisterDBProxyTargetsResponse')
    DescribeAccountAttributesMessage = Shapes::StructureShape.new(name: 'DescribeAccountAttributesMessage')
    DescribeCertificatesMessage = Shapes::StructureShape.new(name: 'DescribeCertificatesMessage')
    DescribeCustomAvailabilityZonesMessage = Shapes::StructureShape.new(name: 'DescribeCustomAvailabilityZonesMessage')
    DescribeDBClusterBacktracksMessage = Shapes::StructureShape.new(name: 'DescribeDBClusterBacktracksMessage')
    DescribeDBClusterEndpointsMessage = Shapes::StructureShape.new(name: 'DescribeDBClusterEndpointsMessage')
    DescribeDBClusterParameterGroupsMessage = Shapes::StructureShape.new(name: 'DescribeDBClusterParameterGroupsMessage')
    DescribeDBClusterParametersMessage = Shapes::StructureShape.new(name: 'DescribeDBClusterParametersMessage')
    DescribeDBClusterSnapshotAttributesMessage = Shapes::StructureShape.new(name: 'DescribeDBClusterSnapshotAttributesMessage')
    DescribeDBClusterSnapshotAttributesResult = Shapes::StructureShape.new(name: 'DescribeDBClusterSnapshotAttributesResult')
    DescribeDBClusterSnapshotsMessage = Shapes::StructureShape.new(name: 'DescribeDBClusterSnapshotsMessage')
    DescribeDBClustersMessage = Shapes::StructureShape.new(name: 'DescribeDBClustersMessage')
    DescribeDBEngineVersionsMessage = Shapes::StructureShape.new(name: 'DescribeDBEngineVersionsMessage')
    DescribeDBInstanceAutomatedBackupsMessage = Shapes::StructureShape.new(name: 'DescribeDBInstanceAutomatedBackupsMessage')
    DescribeDBInstancesMessage = Shapes::StructureShape.new(name: 'DescribeDBInstancesMessage')
    DescribeDBLogFilesDetails = Shapes::StructureShape.new(name: 'DescribeDBLogFilesDetails')
    DescribeDBLogFilesList = Shapes::ListShape.new(name: 'DescribeDBLogFilesList')
    DescribeDBLogFilesMessage = Shapes::StructureShape.new(name: 'DescribeDBLogFilesMessage')
    DescribeDBLogFilesResponse = Shapes::StructureShape.new(name: 'DescribeDBLogFilesResponse')
    DescribeDBParameterGroupsMessage = Shapes::StructureShape.new(name: 'DescribeDBParameterGroupsMessage')
    DescribeDBParametersMessage = Shapes::StructureShape.new(name: 'DescribeDBParametersMessage')
    DescribeDBProxiesRequest = Shapes::StructureShape.new(name: 'DescribeDBProxiesRequest')
    DescribeDBProxiesResponse = Shapes::StructureShape.new(name: 'DescribeDBProxiesResponse')
    DescribeDBProxyTargetGroupsRequest = Shapes::StructureShape.new(name: 'DescribeDBProxyTargetGroupsRequest')
    DescribeDBProxyTargetGroupsResponse = Shapes::StructureShape.new(name: 'DescribeDBProxyTargetGroupsResponse')
    DescribeDBProxyTargetsRequest = Shapes::StructureShape.new(name: 'DescribeDBProxyTargetsRequest')
    DescribeDBProxyTargetsResponse = Shapes::StructureShape.new(name: 'DescribeDBProxyTargetsResponse')
    DescribeDBSecurityGroupsMessage = Shapes::StructureShape.new(name: 'DescribeDBSecurityGroupsMessage')
    DescribeDBSnapshotAttributesMessage = Shapes::StructureShape.new(name: 'DescribeDBSnapshotAttributesMessage')
    DescribeDBSnapshotAttributesResult = Shapes::StructureShape.new(name: 'DescribeDBSnapshotAttributesResult')
    DescribeDBSnapshotsMessage = Shapes::StructureShape.new(name: 'DescribeDBSnapshotsMessage')
    DescribeDBSubnetGroupsMessage = Shapes::StructureShape.new(name: 'DescribeDBSubnetGroupsMessage')
    DescribeEngineDefaultClusterParametersMessage = Shapes::StructureShape.new(name: 'DescribeEngineDefaultClusterParametersMessage')
    DescribeEngineDefaultClusterParametersResult = Shapes::StructureShape.new(name: 'DescribeEngineDefaultClusterParametersResult')
    DescribeEngineDefaultParametersMessage = Shapes::StructureShape.new(name: 'DescribeEngineDefaultParametersMessage')
    DescribeEngineDefaultParametersResult = Shapes::StructureShape.new(name: 'DescribeEngineDefaultParametersResult')
    DescribeEventCategoriesMessage = Shapes::StructureShape.new(name: 'DescribeEventCategoriesMessage')
    DescribeEventSubscriptionsMessage = Shapes::StructureShape.new(name: 'DescribeEventSubscriptionsMessage')
    DescribeEventsMessage = Shapes::StructureShape.new(name: 'DescribeEventsMessage')
    DescribeExportTasksMessage = Shapes::StructureShape.new(name: 'DescribeExportTasksMessage')
    DescribeGlobalClustersMessage = Shapes::StructureShape.new(name: 'DescribeGlobalClustersMessage')
    DescribeInstallationMediaMessage = Shapes::StructureShape.new(name: 'DescribeInstallationMediaMessage')
    DescribeOptionGroupOptionsMessage = Shapes::StructureShape.new(name: 'DescribeOptionGroupOptionsMessage')
    DescribeOptionGroupsMessage = Shapes::StructureShape.new(name: 'DescribeOptionGroupsMessage')
    DescribeOrderableDBInstanceOptionsMessage = Shapes::StructureShape.new(name: 'DescribeOrderableDBInstanceOptionsMessage')
    DescribePendingMaintenanceActionsMessage = Shapes::StructureShape.new(name: 'DescribePendingMaintenanceActionsMessage')
    DescribeReservedDBInstancesMessage = Shapes::StructureShape.new(name: 'DescribeReservedDBInstancesMessage')
    DescribeReservedDBInstancesOfferingsMessage = Shapes::StructureShape.new(name: 'DescribeReservedDBInstancesOfferingsMessage')
    DescribeSourceRegionsMessage = Shapes::StructureShape.new(name: 'DescribeSourceRegionsMessage')
    DescribeValidDBInstanceModificationsMessage = Shapes::StructureShape.new(name: 'DescribeValidDBInstanceModificationsMessage')
    DescribeValidDBInstanceModificationsResult = Shapes::StructureShape.new(name: 'DescribeValidDBInstanceModificationsResult')
    DomainMembership = Shapes::StructureShape.new(name: 'DomainMembership')
    DomainMembershipList = Shapes::ListShape.new(name: 'DomainMembershipList')
    DomainNotFoundFault = Shapes::StructureShape.new(name: 'DomainNotFoundFault')
    Double = Shapes::FloatShape.new(name: 'Double')
    DoubleOptional = Shapes::FloatShape.new(name: 'DoubleOptional')
    DoubleRange = Shapes::StructureShape.new(name: 'DoubleRange')
    DoubleRangeList = Shapes::ListShape.new(name: 'DoubleRangeList')
    DownloadDBLogFilePortionDetails = Shapes::StructureShape.new(name: 'DownloadDBLogFilePortionDetails')
    DownloadDBLogFilePortionMessage = Shapes::StructureShape.new(name: 'DownloadDBLogFilePortionMessage')
    EC2SecurityGroup = Shapes::StructureShape.new(name: 'EC2SecurityGroup')
    EC2SecurityGroupList = Shapes::ListShape.new(name: 'EC2SecurityGroupList')
    Endpoint = Shapes::StructureShape.new(name: 'Endpoint')
    EngineDefaults = Shapes::StructureShape.new(name: 'EngineDefaults')
    EngineFamily = Shapes::StringShape.new(name: 'EngineFamily')
    EngineModeList = Shapes::ListShape.new(name: 'EngineModeList')
    Event = Shapes::StructureShape.new(name: 'Event')
    EventCategoriesList = Shapes::ListShape.new(name: 'EventCategoriesList')
    EventCategoriesMap = Shapes::StructureShape.new(name: 'EventCategoriesMap')
    EventCategoriesMapList = Shapes::ListShape.new(name: 'EventCategoriesMapList')
    EventCategoriesMessage = Shapes::StructureShape.new(name: 'EventCategoriesMessage')
    EventList = Shapes::ListShape.new(name: 'EventList')
    EventSubscription = Shapes::StructureShape.new(name: 'EventSubscription')
    EventSubscriptionQuotaExceededFault = Shapes::StructureShape.new(name: 'EventSubscriptionQuotaExceededFault')
    EventSubscriptionsList = Shapes::ListShape.new(name: 'EventSubscriptionsList')
    EventSubscriptionsMessage = Shapes::StructureShape.new(name: 'EventSubscriptionsMessage')
    EventsMessage = Shapes::StructureShape.new(name: 'EventsMessage')
    ExportTask = Shapes::StructureShape.new(name: 'ExportTask')
    ExportTaskAlreadyExistsFault = Shapes::StructureShape.new(name: 'ExportTaskAlreadyExistsFault')
    ExportTaskNotFoundFault = Shapes::StructureShape.new(name: 'ExportTaskNotFoundFault')
    ExportTasksList = Shapes::ListShape.new(name: 'ExportTasksList')
    ExportTasksMessage = Shapes::StructureShape.new(name: 'ExportTasksMessage')
    FailoverDBClusterMessage = Shapes::StructureShape.new(name: 'FailoverDBClusterMessage')
    FailoverDBClusterResult = Shapes::StructureShape.new(name: 'FailoverDBClusterResult')
    FeatureNameList = Shapes::ListShape.new(name: 'FeatureNameList')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterList = Shapes::ListShape.new(name: 'FilterList')
    FilterValueList = Shapes::ListShape.new(name: 'FilterValueList')
    GlobalCluster = Shapes::StructureShape.new(name: 'GlobalCluster')
    GlobalClusterAlreadyExistsFault = Shapes::StructureShape.new(name: 'GlobalClusterAlreadyExistsFault')
    GlobalClusterList = Shapes::ListShape.new(name: 'GlobalClusterList')
    GlobalClusterMember = Shapes::StructureShape.new(name: 'GlobalClusterMember')
    GlobalClusterMemberList = Shapes::ListShape.new(name: 'GlobalClusterMemberList')
    GlobalClusterNotFoundFault = Shapes::StructureShape.new(name: 'GlobalClusterNotFoundFault')
    GlobalClusterQuotaExceededFault = Shapes::StructureShape.new(name: 'GlobalClusterQuotaExceededFault')
    GlobalClustersMessage = Shapes::StructureShape.new(name: 'GlobalClustersMessage')
    IAMAuthMode = Shapes::StringShape.new(name: 'IAMAuthMode')
    IPRange = Shapes::StructureShape.new(name: 'IPRange')
    IPRangeList = Shapes::ListShape.new(name: 'IPRangeList')
    IamRoleMissingPermissionsFault = Shapes::StructureShape.new(name: 'IamRoleMissingPermissionsFault')
    IamRoleNotFoundFault = Shapes::StructureShape.new(name: 'IamRoleNotFoundFault')
    ImportInstallationMediaMessage = Shapes::StructureShape.new(name: 'ImportInstallationMediaMessage')
    InstallationMedia = Shapes::StructureShape.new(name: 'InstallationMedia')
    InstallationMediaAlreadyExistsFault = Shapes::StructureShape.new(name: 'InstallationMediaAlreadyExistsFault')
    InstallationMediaFailureCause = Shapes::StructureShape.new(name: 'InstallationMediaFailureCause')
    InstallationMediaList = Shapes::ListShape.new(name: 'InstallationMediaList')
    InstallationMediaMessage = Shapes::StructureShape.new(name: 'InstallationMediaMessage')
    InstallationMediaNotFoundFault = Shapes::StructureShape.new(name: 'InstallationMediaNotFoundFault')
    InstanceQuotaExceededFault = Shapes::StructureShape.new(name: 'InstanceQuotaExceededFault')
    InsufficientDBClusterCapacityFault = Shapes::StructureShape.new(name: 'InsufficientDBClusterCapacityFault')
    InsufficientDBInstanceCapacityFault = Shapes::StructureShape.new(name: 'InsufficientDBInstanceCapacityFault')
    InsufficientStorageClusterCapacityFault = Shapes::StructureShape.new(name: 'InsufficientStorageClusterCapacityFault')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    IntegerOptional = Shapes::IntegerShape.new(name: 'IntegerOptional')
    InvalidDBClusterCapacityFault = Shapes::StructureShape.new(name: 'InvalidDBClusterCapacityFault')
    InvalidDBClusterEndpointStateFault = Shapes::StructureShape.new(name: 'InvalidDBClusterEndpointStateFault')
    InvalidDBClusterSnapshotStateFault = Shapes::StructureShape.new(name: 'InvalidDBClusterSnapshotStateFault')
    InvalidDBClusterStateFault = Shapes::StructureShape.new(name: 'InvalidDBClusterStateFault')
    InvalidDBInstanceAutomatedBackupStateFault = Shapes::StructureShape.new(name: 'InvalidDBInstanceAutomatedBackupStateFault')
    InvalidDBInstanceStateFault = Shapes::StructureShape.new(name: 'InvalidDBInstanceStateFault')
    InvalidDBParameterGroupStateFault = Shapes::StructureShape.new(name: 'InvalidDBParameterGroupStateFault')
    InvalidDBProxyStateFault = Shapes::StructureShape.new(name: 'InvalidDBProxyStateFault')
    InvalidDBSecurityGroupStateFault = Shapes::StructureShape.new(name: 'InvalidDBSecurityGroupStateFault')
    InvalidDBSnapshotStateFault = Shapes::StructureShape.new(name: 'InvalidDBSnapshotStateFault')
    InvalidDBSubnetGroupFault = Shapes::StructureShape.new(name: 'InvalidDBSubnetGroupFault')
    InvalidDBSubnetGroupStateFault = Shapes::StructureShape.new(name: 'InvalidDBSubnetGroupStateFault')
    InvalidDBSubnetStateFault = Shapes::StructureShape.new(name: 'InvalidDBSubnetStateFault')
    InvalidEventSubscriptionStateFault = Shapes::StructureShape.new(name: 'InvalidEventSubscriptionStateFault')
    InvalidExportOnlyFault = Shapes::StructureShape.new(name: 'InvalidExportOnlyFault')
    InvalidExportSourceStateFault = Shapes::StructureShape.new(name: 'InvalidExportSourceStateFault')
    InvalidExportTaskStateFault = Shapes::StructureShape.new(name: 'InvalidExportTaskStateFault')
    InvalidGlobalClusterStateFault = Shapes::StructureShape.new(name: 'InvalidGlobalClusterStateFault')
    InvalidOptionGroupStateFault = Shapes::StructureShape.new(name: 'InvalidOptionGroupStateFault')
    InvalidRestoreFault = Shapes::StructureShape.new(name: 'InvalidRestoreFault')
    InvalidS3BucketFault = Shapes::StructureShape.new(name: 'InvalidS3BucketFault')
    InvalidSubnet = Shapes::StructureShape.new(name: 'InvalidSubnet')
    InvalidVPCNetworkStateFault = Shapes::StructureShape.new(name: 'InvalidVPCNetworkStateFault')
    KMSKeyNotAccessibleFault = Shapes::StructureShape.new(name: 'KMSKeyNotAccessibleFault')
    KeyList = Shapes::ListShape.new(name: 'KeyList')
    ListTagsForResourceMessage = Shapes::StructureShape.new(name: 'ListTagsForResourceMessage')
    LogTypeList = Shapes::ListShape.new(name: 'LogTypeList')
    Long = Shapes::IntegerShape.new(name: 'Long')
    LongOptional = Shapes::IntegerShape.new(name: 'LongOptional')
    MaxRecords = Shapes::IntegerShape.new(name: 'MaxRecords')
    MinimumEngineVersionPerAllowedValue = Shapes::StructureShape.new(name: 'MinimumEngineVersionPerAllowedValue')
    MinimumEngineVersionPerAllowedValueList = Shapes::ListShape.new(name: 'MinimumEngineVersionPerAllowedValueList')
    ModifyCertificatesMessage = Shapes::StructureShape.new(name: 'ModifyCertificatesMessage')
    ModifyCertificatesResult = Shapes::StructureShape.new(name: 'ModifyCertificatesResult')
    ModifyCurrentDBClusterCapacityMessage = Shapes::StructureShape.new(name: 'ModifyCurrentDBClusterCapacityMessage')
    ModifyDBClusterEndpointMessage = Shapes::StructureShape.new(name: 'ModifyDBClusterEndpointMessage')
    ModifyDBClusterMessage = Shapes::StructureShape.new(name: 'ModifyDBClusterMessage')
    ModifyDBClusterParameterGroupMessage = Shapes::StructureShape.new(name: 'ModifyDBClusterParameterGroupMessage')
    ModifyDBClusterResult = Shapes::StructureShape.new(name: 'ModifyDBClusterResult')
    ModifyDBClusterSnapshotAttributeMessage = Shapes::StructureShape.new(name: 'ModifyDBClusterSnapshotAttributeMessage')
    ModifyDBClusterSnapshotAttributeResult = Shapes::StructureShape.new(name: 'ModifyDBClusterSnapshotAttributeResult')
    ModifyDBInstanceMessage = Shapes::StructureShape.new(name: 'ModifyDBInstanceMessage')
    ModifyDBInstanceResult = Shapes::StructureShape.new(name: 'ModifyDBInstanceResult')
    ModifyDBParameterGroupMessage = Shapes::StructureShape.new(name: 'ModifyDBParameterGroupMessage')
    ModifyDBProxyRequest = Shapes::StructureShape.new(name: 'ModifyDBProxyRequest')
    ModifyDBProxyResponse = Shapes::StructureShape.new(name: 'ModifyDBProxyResponse')
    ModifyDBProxyTargetGroupRequest = Shapes::StructureShape.new(name: 'ModifyDBProxyTargetGroupRequest')
    ModifyDBProxyTargetGroupResponse = Shapes::StructureShape.new(name: 'ModifyDBProxyTargetGroupResponse')
    ModifyDBSnapshotAttributeMessage = Shapes::StructureShape.new(name: 'ModifyDBSnapshotAttributeMessage')
    ModifyDBSnapshotAttributeResult = Shapes::StructureShape.new(name: 'ModifyDBSnapshotAttributeResult')
    ModifyDBSnapshotMessage = Shapes::StructureShape.new(name: 'ModifyDBSnapshotMessage')
    ModifyDBSnapshotResult = Shapes::StructureShape.new(name: 'ModifyDBSnapshotResult')
    ModifyDBSubnetGroupMessage = Shapes::StructureShape.new(name: 'ModifyDBSubnetGroupMessage')
    ModifyDBSubnetGroupResult = Shapes::StructureShape.new(name: 'ModifyDBSubnetGroupResult')
    ModifyEventSubscriptionMessage = Shapes::StructureShape.new(name: 'ModifyEventSubscriptionMessage')
    ModifyEventSubscriptionResult = Shapes::StructureShape.new(name: 'ModifyEventSubscriptionResult')
    ModifyGlobalClusterMessage = Shapes::StructureShape.new(name: 'ModifyGlobalClusterMessage')
    ModifyGlobalClusterResult = Shapes::StructureShape.new(name: 'ModifyGlobalClusterResult')
    ModifyOptionGroupMessage = Shapes::StructureShape.new(name: 'ModifyOptionGroupMessage')
    ModifyOptionGroupResult = Shapes::StructureShape.new(name: 'ModifyOptionGroupResult')
    Option = Shapes::StructureShape.new(name: 'Option')
    OptionConfiguration = Shapes::StructureShape.new(name: 'OptionConfiguration')
    OptionConfigurationList = Shapes::ListShape.new(name: 'OptionConfigurationList')
    OptionGroup = Shapes::StructureShape.new(name: 'OptionGroup')
    OptionGroupAlreadyExistsFault = Shapes::StructureShape.new(name: 'OptionGroupAlreadyExistsFault')
    OptionGroupMembership = Shapes::StructureShape.new(name: 'OptionGroupMembership')
    OptionGroupMembershipList = Shapes::ListShape.new(name: 'OptionGroupMembershipList')
    OptionGroupNotFoundFault = Shapes::StructureShape.new(name: 'OptionGroupNotFoundFault')
    OptionGroupOption = Shapes::StructureShape.new(name: 'OptionGroupOption')
    OptionGroupOptionSetting = Shapes::StructureShape.new(name: 'OptionGroupOptionSetting')
    OptionGroupOptionSettingsList = Shapes::ListShape.new(name: 'OptionGroupOptionSettingsList')
    OptionGroupOptionVersionsList = Shapes::ListShape.new(name: 'OptionGroupOptionVersionsList')
    OptionGroupOptionsList = Shapes::ListShape.new(name: 'OptionGroupOptionsList')
    OptionGroupOptionsMessage = Shapes::StructureShape.new(name: 'OptionGroupOptionsMessage')
    OptionGroupQuotaExceededFault = Shapes::StructureShape.new(name: 'OptionGroupQuotaExceededFault')
    OptionGroups = Shapes::StructureShape.new(name: 'OptionGroups')
    OptionGroupsList = Shapes::ListShape.new(name: 'OptionGroupsList')
    OptionNamesList = Shapes::ListShape.new(name: 'OptionNamesList')
    OptionSetting = Shapes::StructureShape.new(name: 'OptionSetting')
    OptionSettingConfigurationList = Shapes::ListShape.new(name: 'OptionSettingConfigurationList')
    OptionSettingsList = Shapes::ListShape.new(name: 'OptionSettingsList')
    OptionVersion = Shapes::StructureShape.new(name: 'OptionVersion')
    OptionsConflictsWith = Shapes::ListShape.new(name: 'OptionsConflictsWith')
    OptionsDependedOn = Shapes::ListShape.new(name: 'OptionsDependedOn')
    OptionsList = Shapes::ListShape.new(name: 'OptionsList')
    OrderableDBInstanceOption = Shapes::StructureShape.new(name: 'OrderableDBInstanceOption')
    OrderableDBInstanceOptionsList = Shapes::ListShape.new(name: 'OrderableDBInstanceOptionsList')
    OrderableDBInstanceOptionsMessage = Shapes::StructureShape.new(name: 'OrderableDBInstanceOptionsMessage')
    Parameter = Shapes::StructureShape.new(name: 'Parameter')
    ParametersList = Shapes::ListShape.new(name: 'ParametersList')
    PendingCloudwatchLogsExports = Shapes::StructureShape.new(name: 'PendingCloudwatchLogsExports')
    PendingMaintenanceAction = Shapes::StructureShape.new(name: 'PendingMaintenanceAction')
    PendingMaintenanceActionDetails = Shapes::ListShape.new(name: 'PendingMaintenanceActionDetails')
    PendingMaintenanceActions = Shapes::ListShape.new(name: 'PendingMaintenanceActions')
    PendingMaintenanceActionsMessage = Shapes::StructureShape.new(name: 'PendingMaintenanceActionsMessage')
    PendingModifiedValues = Shapes::StructureShape.new(name: 'PendingModifiedValues')
    PointInTimeRestoreNotEnabledFault = Shapes::StructureShape.new(name: 'PointInTimeRestoreNotEnabledFault')
    ProcessorFeature = Shapes::StructureShape.new(name: 'ProcessorFeature')
    ProcessorFeatureList = Shapes::ListShape.new(name: 'ProcessorFeatureList')
    PromoteReadReplicaDBClusterMessage = Shapes::StructureShape.new(name: 'PromoteReadReplicaDBClusterMessage')
    PromoteReadReplicaDBClusterResult = Shapes::StructureShape.new(name: 'PromoteReadReplicaDBClusterResult')
    PromoteReadReplicaMessage = Shapes::StructureShape.new(name: 'PromoteReadReplicaMessage')
    PromoteReadReplicaResult = Shapes::StructureShape.new(name: 'PromoteReadReplicaResult')
    ProvisionedIopsNotAvailableInAZFault = Shapes::StructureShape.new(name: 'ProvisionedIopsNotAvailableInAZFault')
    PurchaseReservedDBInstancesOfferingMessage = Shapes::StructureShape.new(name: 'PurchaseReservedDBInstancesOfferingMessage')
    PurchaseReservedDBInstancesOfferingResult = Shapes::StructureShape.new(name: 'PurchaseReservedDBInstancesOfferingResult')
    Range = Shapes::StructureShape.new(name: 'Range')
    RangeList = Shapes::ListShape.new(name: 'RangeList')
    ReadReplicaDBClusterIdentifierList = Shapes::ListShape.new(name: 'ReadReplicaDBClusterIdentifierList')
    ReadReplicaDBInstanceIdentifierList = Shapes::ListShape.new(name: 'ReadReplicaDBInstanceIdentifierList')
    ReadReplicaIdentifierList = Shapes::ListShape.new(name: 'ReadReplicaIdentifierList')
    ReadersArnList = Shapes::ListShape.new(name: 'ReadersArnList')
    RebootDBInstanceMessage = Shapes::StructureShape.new(name: 'RebootDBInstanceMessage')
    RebootDBInstanceResult = Shapes::StructureShape.new(name: 'RebootDBInstanceResult')
    RecurringCharge = Shapes::StructureShape.new(name: 'RecurringCharge')
    RecurringChargeList = Shapes::ListShape.new(name: 'RecurringChargeList')
    RegisterDBProxyTargetsRequest = Shapes::StructureShape.new(name: 'RegisterDBProxyTargetsRequest')
    RegisterDBProxyTargetsResponse = Shapes::StructureShape.new(name: 'RegisterDBProxyTargetsResponse')
    RemoveFromGlobalClusterMessage = Shapes::StructureShape.new(name: 'RemoveFromGlobalClusterMessage')
    RemoveFromGlobalClusterResult = Shapes::StructureShape.new(name: 'RemoveFromGlobalClusterResult')
    RemoveRoleFromDBClusterMessage = Shapes::StructureShape.new(name: 'RemoveRoleFromDBClusterMessage')
    RemoveRoleFromDBInstanceMessage = Shapes::StructureShape.new(name: 'RemoveRoleFromDBInstanceMessage')
    RemoveSourceIdentifierFromSubscriptionMessage = Shapes::StructureShape.new(name: 'RemoveSourceIdentifierFromSubscriptionMessage')
    RemoveSourceIdentifierFromSubscriptionResult = Shapes::StructureShape.new(name: 'RemoveSourceIdentifierFromSubscriptionResult')
    RemoveTagsFromResourceMessage = Shapes::StructureShape.new(name: 'RemoveTagsFromResourceMessage')
    ReservedDBInstance = Shapes::StructureShape.new(name: 'ReservedDBInstance')
    ReservedDBInstanceAlreadyExistsFault = Shapes::StructureShape.new(name: 'ReservedDBInstanceAlreadyExistsFault')
    ReservedDBInstanceList = Shapes::ListShape.new(name: 'ReservedDBInstanceList')
    ReservedDBInstanceMessage = Shapes::StructureShape.new(name: 'ReservedDBInstanceMessage')
    ReservedDBInstanceNotFoundFault = Shapes::StructureShape.new(name: 'ReservedDBInstanceNotFoundFault')
    ReservedDBInstanceQuotaExceededFault = Shapes::StructureShape.new(name: 'ReservedDBInstanceQuotaExceededFault')
    ReservedDBInstancesOffering = Shapes::StructureShape.new(name: 'ReservedDBInstancesOffering')
    ReservedDBInstancesOfferingList = Shapes::ListShape.new(name: 'ReservedDBInstancesOfferingList')
    ReservedDBInstancesOfferingMessage = Shapes::StructureShape.new(name: 'ReservedDBInstancesOfferingMessage')
    ReservedDBInstancesOfferingNotFoundFault = Shapes::StructureShape.new(name: 'ReservedDBInstancesOfferingNotFoundFault')
    ResetDBClusterParameterGroupMessage = Shapes::StructureShape.new(name: 'ResetDBClusterParameterGroupMessage')
    ResetDBParameterGroupMessage = Shapes::StructureShape.new(name: 'ResetDBParameterGroupMessage')
    ResourceNotFoundFault = Shapes::StructureShape.new(name: 'ResourceNotFoundFault')
    ResourcePendingMaintenanceActions = Shapes::StructureShape.new(name: 'ResourcePendingMaintenanceActions')
    RestoreDBClusterFromS3Message = Shapes::StructureShape.new(name: 'RestoreDBClusterFromS3Message')
    RestoreDBClusterFromS3Result = Shapes::StructureShape.new(name: 'RestoreDBClusterFromS3Result')
    RestoreDBClusterFromSnapshotMessage = Shapes::StructureShape.new(name: 'RestoreDBClusterFromSnapshotMessage')
    RestoreDBClusterFromSnapshotResult = Shapes::StructureShape.new(name: 'RestoreDBClusterFromSnapshotResult')
    RestoreDBClusterToPointInTimeMessage = Shapes::StructureShape.new(name: 'RestoreDBClusterToPointInTimeMessage')
    RestoreDBClusterToPointInTimeResult = Shapes::StructureShape.new(name: 'RestoreDBClusterToPointInTimeResult')
    RestoreDBInstanceFromDBSnapshotMessage = Shapes::StructureShape.new(name: 'RestoreDBInstanceFromDBSnapshotMessage')
    RestoreDBInstanceFromDBSnapshotResult = Shapes::StructureShape.new(name: 'RestoreDBInstanceFromDBSnapshotResult')
    RestoreDBInstanceFromS3Message = Shapes::StructureShape.new(name: 'RestoreDBInstanceFromS3Message')
    RestoreDBInstanceFromS3Result = Shapes::StructureShape.new(name: 'RestoreDBInstanceFromS3Result')
    RestoreDBInstanceToPointInTimeMessage = Shapes::StructureShape.new(name: 'RestoreDBInstanceToPointInTimeMessage')
    RestoreDBInstanceToPointInTimeResult = Shapes::StructureShape.new(name: 'RestoreDBInstanceToPointInTimeResult')
    RestoreWindow = Shapes::StructureShape.new(name: 'RestoreWindow')
    RevokeDBSecurityGroupIngressMessage = Shapes::StructureShape.new(name: 'RevokeDBSecurityGroupIngressMessage')
    RevokeDBSecurityGroupIngressResult = Shapes::StructureShape.new(name: 'RevokeDBSecurityGroupIngressResult')
    SNSInvalidTopicFault = Shapes::StructureShape.new(name: 'SNSInvalidTopicFault')
    SNSNoAuthorizationFault = Shapes::StructureShape.new(name: 'SNSNoAuthorizationFault')
    SNSTopicArnNotFoundFault = Shapes::StructureShape.new(name: 'SNSTopicArnNotFoundFault')
    ScalingConfiguration = Shapes::StructureShape.new(name: 'ScalingConfiguration')
    ScalingConfigurationInfo = Shapes::StructureShape.new(name: 'ScalingConfigurationInfo')
    SharedSnapshotQuotaExceededFault = Shapes::StructureShape.new(name: 'SharedSnapshotQuotaExceededFault')
    SnapshotQuotaExceededFault = Shapes::StructureShape.new(name: 'SnapshotQuotaExceededFault')
    SourceIdsList = Shapes::ListShape.new(name: 'SourceIdsList')
    SourceNotFoundFault = Shapes::StructureShape.new(name: 'SourceNotFoundFault')
    SourceRegion = Shapes::StructureShape.new(name: 'SourceRegion')
    SourceRegionList = Shapes::ListShape.new(name: 'SourceRegionList')
    SourceRegionMessage = Shapes::StructureShape.new(name: 'SourceRegionMessage')
    SourceType = Shapes::StringShape.new(name: 'SourceType')
    StartActivityStreamRequest = Shapes::StructureShape.new(name: 'StartActivityStreamRequest')
    StartActivityStreamResponse = Shapes::StructureShape.new(name: 'StartActivityStreamResponse')
    StartDBClusterMessage = Shapes::StructureShape.new(name: 'StartDBClusterMessage')
    StartDBClusterResult = Shapes::StructureShape.new(name: 'StartDBClusterResult')
    StartDBInstanceMessage = Shapes::StructureShape.new(name: 'StartDBInstanceMessage')
    StartDBInstanceResult = Shapes::StructureShape.new(name: 'StartDBInstanceResult')
    StartExportTaskMessage = Shapes::StructureShape.new(name: 'StartExportTaskMessage')
    StopActivityStreamRequest = Shapes::StructureShape.new(name: 'StopActivityStreamRequest')
    StopActivityStreamResponse = Shapes::StructureShape.new(name: 'StopActivityStreamResponse')
    StopDBClusterMessage = Shapes::StructureShape.new(name: 'StopDBClusterMessage')
    StopDBClusterResult = Shapes::StructureShape.new(name: 'StopDBClusterResult')
    StopDBInstanceMessage = Shapes::StructureShape.new(name: 'StopDBInstanceMessage')
    StopDBInstanceResult = Shapes::StructureShape.new(name: 'StopDBInstanceResult')
    StorageQuotaExceededFault = Shapes::StructureShape.new(name: 'StorageQuotaExceededFault')
    StorageTypeNotSupportedFault = Shapes::StructureShape.new(name: 'StorageTypeNotSupportedFault')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    StringSensitive = Shapes::StringShape.new(name: 'StringSensitive')
    Subnet = Shapes::StructureShape.new(name: 'Subnet')
    SubnetAlreadyInUse = Shapes::StructureShape.new(name: 'SubnetAlreadyInUse')
    SubnetIdentifierList = Shapes::ListShape.new(name: 'SubnetIdentifierList')
    SubnetList = Shapes::ListShape.new(name: 'SubnetList')
    SubscriptionAlreadyExistFault = Shapes::StructureShape.new(name: 'SubscriptionAlreadyExistFault')
    SubscriptionCategoryNotFoundFault = Shapes::StructureShape.new(name: 'SubscriptionCategoryNotFoundFault')
    SubscriptionNotFoundFault = Shapes::StructureShape.new(name: 'SubscriptionNotFoundFault')
    SupportedCharacterSetsList = Shapes::ListShape.new(name: 'SupportedCharacterSetsList')
    SupportedTimezonesList = Shapes::ListShape.new(name: 'SupportedTimezonesList')
    TStamp = Shapes::TimestampShape.new(name: 'TStamp')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagListMessage = Shapes::StructureShape.new(name: 'TagListMessage')
    TargetGroupList = Shapes::ListShape.new(name: 'TargetGroupList')
    TargetHealth = Shapes::StructureShape.new(name: 'TargetHealth')
    TargetHealthReason = Shapes::StringShape.new(name: 'TargetHealthReason')
    TargetList = Shapes::ListShape.new(name: 'TargetList')
    TargetState = Shapes::StringShape.new(name: 'TargetState')
    TargetType = Shapes::StringShape.new(name: 'TargetType')
    Timezone = Shapes::StructureShape.new(name: 'Timezone')
    UpgradeTarget = Shapes::StructureShape.new(name: 'UpgradeTarget')
    UserAuthConfig = Shapes::StructureShape.new(name: 'UserAuthConfig')
    UserAuthConfigInfo = Shapes::StructureShape.new(name: 'UserAuthConfigInfo')
    UserAuthConfigInfoList = Shapes::ListShape.new(name: 'UserAuthConfigInfoList')
    UserAuthConfigList = Shapes::ListShape.new(name: 'UserAuthConfigList')
    ValidDBInstanceModificationsMessage = Shapes::StructureShape.new(name: 'ValidDBInstanceModificationsMessage')
    ValidStorageOptions = Shapes::StructureShape.new(name: 'ValidStorageOptions')
    ValidStorageOptionsList = Shapes::ListShape.new(name: 'ValidStorageOptionsList')
    ValidUpgradeTargetList = Shapes::ListShape.new(name: 'ValidUpgradeTargetList')
    VpcSecurityGroupIdList = Shapes::ListShape.new(name: 'VpcSecurityGroupIdList')
    VpcSecurityGroupMembership = Shapes::StructureShape.new(name: 'VpcSecurityGroupMembership')
    VpcSecurityGroupMembershipList = Shapes::ListShape.new(name: 'VpcSecurityGroupMembershipList')
    VpnDetails = Shapes::StructureShape.new(name: 'VpnDetails')

    AccountAttributesMessage.add_member(:account_quotas, Shapes::ShapeRef.new(shape: AccountQuotaList, location_name: "AccountQuotas"))
    AccountAttributesMessage.struct_class = Types::AccountAttributesMessage

    AccountQuota.add_member(:account_quota_name, Shapes::ShapeRef.new(shape: String, location_name: "AccountQuotaName"))
    AccountQuota.add_member(:used, Shapes::ShapeRef.new(shape: Long, location_name: "Used"))
    AccountQuota.add_member(:max, Shapes::ShapeRef.new(shape: Long, location_name: "Max"))
    AccountQuota.struct_class = Types::AccountQuota

    AccountQuotaList.member = Shapes::ShapeRef.new(shape: AccountQuota, location_name: "AccountQuota")

    AddRoleToDBClusterMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterIdentifier"))
    AddRoleToDBClusterMessage.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RoleArn"))
    AddRoleToDBClusterMessage.add_member(:feature_name, Shapes::ShapeRef.new(shape: String, location_name: "FeatureName"))
    AddRoleToDBClusterMessage.struct_class = Types::AddRoleToDBClusterMessage

    AddRoleToDBInstanceMessage.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBInstanceIdentifier"))
    AddRoleToDBInstanceMessage.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RoleArn"))
    AddRoleToDBInstanceMessage.add_member(:feature_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "FeatureName"))
    AddRoleToDBInstanceMessage.struct_class = Types::AddRoleToDBInstanceMessage

    AddSourceIdentifierToSubscriptionMessage.add_member(:subscription_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SubscriptionName"))
    AddSourceIdentifierToSubscriptionMessage.add_member(:source_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SourceIdentifier"))
    AddSourceIdentifierToSubscriptionMessage.struct_class = Types::AddSourceIdentifierToSubscriptionMessage

    AddSourceIdentifierToSubscriptionResult.add_member(:event_subscription, Shapes::ShapeRef.new(shape: EventSubscription, location_name: "EventSubscription"))
    AddSourceIdentifierToSubscriptionResult.struct_class = Types::AddSourceIdentifierToSubscriptionResult

    AddTagsToResourceMessage.add_member(:resource_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceName"))
    AddTagsToResourceMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    AddTagsToResourceMessage.struct_class = Types::AddTagsToResourceMessage

    ApplyPendingMaintenanceActionMessage.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceIdentifier"))
    ApplyPendingMaintenanceActionMessage.add_member(:apply_action, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ApplyAction"))
    ApplyPendingMaintenanceActionMessage.add_member(:opt_in_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "OptInType"))
    ApplyPendingMaintenanceActionMessage.struct_class = Types::ApplyPendingMaintenanceActionMessage

    ApplyPendingMaintenanceActionResult.add_member(:resource_pending_maintenance_actions, Shapes::ShapeRef.new(shape: ResourcePendingMaintenanceActions, location_name: "ResourcePendingMaintenanceActions"))
    ApplyPendingMaintenanceActionResult.struct_class = Types::ApplyPendingMaintenanceActionResult

    AttributeValueList.member = Shapes::ShapeRef.new(shape: String, location_name: "AttributeValue")

    AuthorizationAlreadyExistsFault.struct_class = Types::AuthorizationAlreadyExistsFault

    AuthorizationNotFoundFault.struct_class = Types::AuthorizationNotFoundFault

    AuthorizationQuotaExceededFault.struct_class = Types::AuthorizationQuotaExceededFault

    AuthorizeDBSecurityGroupIngressMessage.add_member(:db_security_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBSecurityGroupName"))
    AuthorizeDBSecurityGroupIngressMessage.add_member(:cidrip, Shapes::ShapeRef.new(shape: String, location_name: "CIDRIP"))
    AuthorizeDBSecurityGroupIngressMessage.add_member(:ec2_security_group_name, Shapes::ShapeRef.new(shape: String, location_name: "EC2SecurityGroupName"))
    AuthorizeDBSecurityGroupIngressMessage.add_member(:ec2_security_group_id, Shapes::ShapeRef.new(shape: String, location_name: "EC2SecurityGroupId"))
    AuthorizeDBSecurityGroupIngressMessage.add_member(:ec2_security_group_owner_id, Shapes::ShapeRef.new(shape: String, location_name: "EC2SecurityGroupOwnerId"))
    AuthorizeDBSecurityGroupIngressMessage.struct_class = Types::AuthorizeDBSecurityGroupIngressMessage

    AuthorizeDBSecurityGroupIngressResult.add_member(:db_security_group, Shapes::ShapeRef.new(shape: DBSecurityGroup, location_name: "DBSecurityGroup"))
    AuthorizeDBSecurityGroupIngressResult.struct_class = Types::AuthorizeDBSecurityGroupIngressResult

    AvailabilityZone.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    AvailabilityZone.struct_class = Types::AvailabilityZone

    AvailabilityZoneList.member = Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "AvailabilityZone")

    AvailabilityZones.member = Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone")

    AvailableProcessorFeature.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    AvailableProcessorFeature.add_member(:default_value, Shapes::ShapeRef.new(shape: String, location_name: "DefaultValue"))
    AvailableProcessorFeature.add_member(:allowed_values, Shapes::ShapeRef.new(shape: String, location_name: "AllowedValues"))
    AvailableProcessorFeature.struct_class = Types::AvailableProcessorFeature

    AvailableProcessorFeatureList.member = Shapes::ShapeRef.new(shape: AvailableProcessorFeature, location_name: "AvailableProcessorFeature")

    BacktrackDBClusterMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterIdentifier"))
    BacktrackDBClusterMessage.add_member(:backtrack_to, Shapes::ShapeRef.new(shape: TStamp, required: true, location_name: "BacktrackTo"))
    BacktrackDBClusterMessage.add_member(:force, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "Force"))
    BacktrackDBClusterMessage.add_member(:use_earliest_time_on_point_in_time_unavailable, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "UseEarliestTimeOnPointInTimeUnavailable"))
    BacktrackDBClusterMessage.struct_class = Types::BacktrackDBClusterMessage

    BackupPolicyNotFoundFault.struct_class = Types::BackupPolicyNotFoundFault

    CancelExportTaskMessage.add_member(:export_task_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ExportTaskIdentifier"))
    CancelExportTaskMessage.struct_class = Types::CancelExportTaskMessage

    Certificate.add_member(:certificate_identifier, Shapes::ShapeRef.new(shape: String, location_name: "CertificateIdentifier"))
    Certificate.add_member(:certificate_type, Shapes::ShapeRef.new(shape: String, location_name: "CertificateType"))
    Certificate.add_member(:thumbprint, Shapes::ShapeRef.new(shape: String, location_name: "Thumbprint"))
    Certificate.add_member(:valid_from, Shapes::ShapeRef.new(shape: TStamp, location_name: "ValidFrom"))
    Certificate.add_member(:valid_till, Shapes::ShapeRef.new(shape: TStamp, location_name: "ValidTill"))
    Certificate.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: String, location_name: "CertificateArn"))
    Certificate.add_member(:customer_override, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CustomerOverride"))
    Certificate.add_member(:customer_override_valid_till, Shapes::ShapeRef.new(shape: TStamp, location_name: "CustomerOverrideValidTill"))
    Certificate.struct_class = Types::Certificate

    CertificateList.member = Shapes::ShapeRef.new(shape: Certificate, location_name: "Certificate")

    CertificateMessage.add_member(:certificates, Shapes::ShapeRef.new(shape: CertificateList, location_name: "Certificates"))
    CertificateMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    CertificateMessage.struct_class = Types::CertificateMessage

    CertificateNotFoundFault.struct_class = Types::CertificateNotFoundFault

    CharacterSet.add_member(:character_set_name, Shapes::ShapeRef.new(shape: String, location_name: "CharacterSetName"))
    CharacterSet.add_member(:character_set_description, Shapes::ShapeRef.new(shape: String, location_name: "CharacterSetDescription"))
    CharacterSet.struct_class = Types::CharacterSet

    CloudwatchLogsExportConfiguration.add_member(:enable_log_types, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "EnableLogTypes"))
    CloudwatchLogsExportConfiguration.add_member(:disable_log_types, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "DisableLogTypes"))
    CloudwatchLogsExportConfiguration.struct_class = Types::CloudwatchLogsExportConfiguration

    ConnectionPoolConfiguration.add_member(:max_connections_percent, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxConnectionsPercent"))
    ConnectionPoolConfiguration.add_member(:max_idle_connections_percent, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxIdleConnectionsPercent"))
    ConnectionPoolConfiguration.add_member(:connection_borrow_timeout, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "ConnectionBorrowTimeout"))
    ConnectionPoolConfiguration.add_member(:session_pinning_filters, Shapes::ShapeRef.new(shape: StringList, location_name: "SessionPinningFilters"))
    ConnectionPoolConfiguration.add_member(:init_query, Shapes::ShapeRef.new(shape: String, location_name: "InitQuery"))
    ConnectionPoolConfiguration.struct_class = Types::ConnectionPoolConfiguration

    ConnectionPoolConfigurationInfo.add_member(:max_connections_percent, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxConnectionsPercent"))
    ConnectionPoolConfigurationInfo.add_member(:max_idle_connections_percent, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxIdleConnectionsPercent"))
    ConnectionPoolConfigurationInfo.add_member(:connection_borrow_timeout, Shapes::ShapeRef.new(shape: Integer, location_name: "ConnectionBorrowTimeout"))
    ConnectionPoolConfigurationInfo.add_member(:session_pinning_filters, Shapes::ShapeRef.new(shape: StringList, location_name: "SessionPinningFilters"))
    ConnectionPoolConfigurationInfo.add_member(:init_query, Shapes::ShapeRef.new(shape: String, location_name: "InitQuery"))
    ConnectionPoolConfigurationInfo.struct_class = Types::ConnectionPoolConfigurationInfo

    CopyDBClusterParameterGroupMessage.add_member(:source_db_cluster_parameter_group_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SourceDBClusterParameterGroupIdentifier"))
    CopyDBClusterParameterGroupMessage.add_member(:target_db_cluster_parameter_group_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TargetDBClusterParameterGroupIdentifier"))
    CopyDBClusterParameterGroupMessage.add_member(:target_db_cluster_parameter_group_description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TargetDBClusterParameterGroupDescription"))
    CopyDBClusterParameterGroupMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CopyDBClusterParameterGroupMessage.struct_class = Types::CopyDBClusterParameterGroupMessage

    CopyDBClusterParameterGroupResult.add_member(:db_cluster_parameter_group, Shapes::ShapeRef.new(shape: DBClusterParameterGroup, location_name: "DBClusterParameterGroup"))
    CopyDBClusterParameterGroupResult.struct_class = Types::CopyDBClusterParameterGroupResult

    CopyDBClusterSnapshotMessage.add_member(:source_db_cluster_snapshot_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SourceDBClusterSnapshotIdentifier"))
    CopyDBClusterSnapshotMessage.add_member(:target_db_cluster_snapshot_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TargetDBClusterSnapshotIdentifier"))
    CopyDBClusterSnapshotMessage.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    CopyDBClusterSnapshotMessage.add_member(:pre_signed_url, Shapes::ShapeRef.new(shape: String, location_name: "PreSignedUrl"))
    CopyDBClusterSnapshotMessage.add_member(:copy_tags, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CopyTags"))
    CopyDBClusterSnapshotMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CopyDBClusterSnapshotMessage.add_member(:destination_region, Shapes::ShapeRef.new(shape: String, location_name: "DestinationRegion", metadata: {"documented"=>false}))
    CopyDBClusterSnapshotMessage.add_member(:source_region, Shapes::ShapeRef.new(shape: String, location_name: "SourceRegion"))
    CopyDBClusterSnapshotMessage.struct_class = Types::CopyDBClusterSnapshotMessage

    CopyDBClusterSnapshotResult.add_member(:db_cluster_snapshot, Shapes::ShapeRef.new(shape: DBClusterSnapshot, location_name: "DBClusterSnapshot"))
    CopyDBClusterSnapshotResult.struct_class = Types::CopyDBClusterSnapshotResult

    CopyDBParameterGroupMessage.add_member(:source_db_parameter_group_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SourceDBParameterGroupIdentifier"))
    CopyDBParameterGroupMessage.add_member(:target_db_parameter_group_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TargetDBParameterGroupIdentifier"))
    CopyDBParameterGroupMessage.add_member(:target_db_parameter_group_description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TargetDBParameterGroupDescription"))
    CopyDBParameterGroupMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CopyDBParameterGroupMessage.struct_class = Types::CopyDBParameterGroupMessage

    CopyDBParameterGroupResult.add_member(:db_parameter_group, Shapes::ShapeRef.new(shape: DBParameterGroup, location_name: "DBParameterGroup"))
    CopyDBParameterGroupResult.struct_class = Types::CopyDBParameterGroupResult

    CopyDBSnapshotMessage.add_member(:source_db_snapshot_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SourceDBSnapshotIdentifier"))
    CopyDBSnapshotMessage.add_member(:target_db_snapshot_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TargetDBSnapshotIdentifier"))
    CopyDBSnapshotMessage.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    CopyDBSnapshotMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CopyDBSnapshotMessage.add_member(:copy_tags, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CopyTags"))
    CopyDBSnapshotMessage.add_member(:pre_signed_url, Shapes::ShapeRef.new(shape: String, location_name: "PreSignedUrl"))
    CopyDBSnapshotMessage.add_member(:option_group_name, Shapes::ShapeRef.new(shape: String, location_name: "OptionGroupName"))
    CopyDBSnapshotMessage.add_member(:destination_region, Shapes::ShapeRef.new(shape: String, location_name: "DestinationRegion", metadata: {"documented"=>false}))
    CopyDBSnapshotMessage.add_member(:source_region, Shapes::ShapeRef.new(shape: String, location_name: "SourceRegion"))
    CopyDBSnapshotMessage.struct_class = Types::CopyDBSnapshotMessage

    CopyDBSnapshotResult.add_member(:db_snapshot, Shapes::ShapeRef.new(shape: DBSnapshot, location_name: "DBSnapshot"))
    CopyDBSnapshotResult.struct_class = Types::CopyDBSnapshotResult

    CopyOptionGroupMessage.add_member(:source_option_group_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SourceOptionGroupIdentifier"))
    CopyOptionGroupMessage.add_member(:target_option_group_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TargetOptionGroupIdentifier"))
    CopyOptionGroupMessage.add_member(:target_option_group_description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TargetOptionGroupDescription"))
    CopyOptionGroupMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CopyOptionGroupMessage.struct_class = Types::CopyOptionGroupMessage

    CopyOptionGroupResult.add_member(:option_group, Shapes::ShapeRef.new(shape: OptionGroup, location_name: "OptionGroup"))
    CopyOptionGroupResult.struct_class = Types::CopyOptionGroupResult

    CreateCustomAvailabilityZoneMessage.add_member(:custom_availability_zone_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "CustomAvailabilityZoneName"))
    CreateCustomAvailabilityZoneMessage.add_member(:existing_vpn_id, Shapes::ShapeRef.new(shape: String, location_name: "ExistingVpnId"))
    CreateCustomAvailabilityZoneMessage.add_member(:new_vpn_tunnel_name, Shapes::ShapeRef.new(shape: String, location_name: "NewVpnTunnelName"))
    CreateCustomAvailabilityZoneMessage.add_member(:vpn_tunnel_originator_ip, Shapes::ShapeRef.new(shape: String, location_name: "VpnTunnelOriginatorIP"))
    CreateCustomAvailabilityZoneMessage.struct_class = Types::CreateCustomAvailabilityZoneMessage

    CreateCustomAvailabilityZoneResult.add_member(:custom_availability_zone, Shapes::ShapeRef.new(shape: CustomAvailabilityZone, location_name: "CustomAvailabilityZone"))
    CreateCustomAvailabilityZoneResult.struct_class = Types::CreateCustomAvailabilityZoneResult

    CreateDBClusterEndpointMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterIdentifier"))
    CreateDBClusterEndpointMessage.add_member(:db_cluster_endpoint_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterEndpointIdentifier"))
    CreateDBClusterEndpointMessage.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "EndpointType"))
    CreateDBClusterEndpointMessage.add_member(:static_members, Shapes::ShapeRef.new(shape: StringList, location_name: "StaticMembers"))
    CreateDBClusterEndpointMessage.add_member(:excluded_members, Shapes::ShapeRef.new(shape: StringList, location_name: "ExcludedMembers"))
    CreateDBClusterEndpointMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDBClusterEndpointMessage.struct_class = Types::CreateDBClusterEndpointMessage

    CreateDBClusterMessage.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZones, location_name: "AvailabilityZones"))
    CreateDBClusterMessage.add_member(:backup_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "BackupRetentionPeriod"))
    CreateDBClusterMessage.add_member(:character_set_name, Shapes::ShapeRef.new(shape: String, location_name: "CharacterSetName"))
    CreateDBClusterMessage.add_member(:database_name, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    CreateDBClusterMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterIdentifier"))
    CreateDBClusterMessage.add_member(:db_cluster_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterParameterGroupName"))
    CreateDBClusterMessage.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: "VpcSecurityGroupIds"))
    CreateDBClusterMessage.add_member(:db_subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBSubnetGroupName"))
    CreateDBClusterMessage.add_member(:engine, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Engine"))
    CreateDBClusterMessage.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    CreateDBClusterMessage.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    CreateDBClusterMessage.add_member(:master_username, Shapes::ShapeRef.new(shape: String, location_name: "MasterUsername"))
    CreateDBClusterMessage.add_member(:master_user_password, Shapes::ShapeRef.new(shape: String, location_name: "MasterUserPassword"))
    CreateDBClusterMessage.add_member(:option_group_name, Shapes::ShapeRef.new(shape: String, location_name: "OptionGroupName"))
    CreateDBClusterMessage.add_member(:preferred_backup_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredBackupWindow"))
    CreateDBClusterMessage.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredMaintenanceWindow"))
    CreateDBClusterMessage.add_member(:replication_source_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationSourceIdentifier"))
    CreateDBClusterMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDBClusterMessage.add_member(:storage_encrypted, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "StorageEncrypted"))
    CreateDBClusterMessage.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    CreateDBClusterMessage.add_member(:pre_signed_url, Shapes::ShapeRef.new(shape: String, location_name: "PreSignedUrl"))
    CreateDBClusterMessage.add_member(:enable_iam_database_authentication, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableIAMDatabaseAuthentication"))
    CreateDBClusterMessage.add_member(:backtrack_window, Shapes::ShapeRef.new(shape: LongOptional, location_name: "BacktrackWindow"))
    CreateDBClusterMessage.add_member(:enable_cloudwatch_logs_exports, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "EnableCloudwatchLogsExports"))
    CreateDBClusterMessage.add_member(:engine_mode, Shapes::ShapeRef.new(shape: String, location_name: "EngineMode"))
    CreateDBClusterMessage.add_member(:scaling_configuration, Shapes::ShapeRef.new(shape: ScalingConfiguration, location_name: "ScalingConfiguration"))
    CreateDBClusterMessage.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DeletionProtection"))
    CreateDBClusterMessage.add_member(:global_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "GlobalClusterIdentifier"))
    CreateDBClusterMessage.add_member(:enable_http_endpoint, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableHttpEndpoint"))
    CreateDBClusterMessage.add_member(:copy_tags_to_snapshot, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CopyTagsToSnapshot"))
    CreateDBClusterMessage.add_member(:domain, Shapes::ShapeRef.new(shape: String, location_name: "Domain"))
    CreateDBClusterMessage.add_member(:domain_iam_role_name, Shapes::ShapeRef.new(shape: String, location_name: "DomainIAMRoleName"))
    CreateDBClusterMessage.add_member(:destination_region, Shapes::ShapeRef.new(shape: String, location_name: "DestinationRegion", metadata: {"documented"=>false}))
    CreateDBClusterMessage.add_member(:source_region, Shapes::ShapeRef.new(shape: String, location_name: "SourceRegion"))
    CreateDBClusterMessage.struct_class = Types::CreateDBClusterMessage

    CreateDBClusterParameterGroupMessage.add_member(:db_cluster_parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterParameterGroupName"))
    CreateDBClusterParameterGroupMessage.add_member(:db_parameter_group_family, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBParameterGroupFamily"))
    CreateDBClusterParameterGroupMessage.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Description"))
    CreateDBClusterParameterGroupMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDBClusterParameterGroupMessage.struct_class = Types::CreateDBClusterParameterGroupMessage

    CreateDBClusterParameterGroupResult.add_member(:db_cluster_parameter_group, Shapes::ShapeRef.new(shape: DBClusterParameterGroup, location_name: "DBClusterParameterGroup"))
    CreateDBClusterParameterGroupResult.struct_class = Types::CreateDBClusterParameterGroupResult

    CreateDBClusterResult.add_member(:db_cluster, Shapes::ShapeRef.new(shape: DBCluster, location_name: "DBCluster"))
    CreateDBClusterResult.struct_class = Types::CreateDBClusterResult

    CreateDBClusterSnapshotMessage.add_member(:db_cluster_snapshot_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterSnapshotIdentifier"))
    CreateDBClusterSnapshotMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterIdentifier"))
    CreateDBClusterSnapshotMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDBClusterSnapshotMessage.struct_class = Types::CreateDBClusterSnapshotMessage

    CreateDBClusterSnapshotResult.add_member(:db_cluster_snapshot, Shapes::ShapeRef.new(shape: DBClusterSnapshot, location_name: "DBClusterSnapshot"))
    CreateDBClusterSnapshotResult.struct_class = Types::CreateDBClusterSnapshotResult

    CreateDBInstanceMessage.add_member(:db_name, Shapes::ShapeRef.new(shape: String, location_name: "DBName"))
    CreateDBInstanceMessage.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBInstanceIdentifier"))
    CreateDBInstanceMessage.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "AllocatedStorage"))
    CreateDBInstanceMessage.add_member(:db_instance_class, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBInstanceClass"))
    CreateDBInstanceMessage.add_member(:engine, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Engine"))
    CreateDBInstanceMessage.add_member(:master_username, Shapes::ShapeRef.new(shape: String, location_name: "MasterUsername"))
    CreateDBInstanceMessage.add_member(:master_user_password, Shapes::ShapeRef.new(shape: String, location_name: "MasterUserPassword"))
    CreateDBInstanceMessage.add_member(:db_security_groups, Shapes::ShapeRef.new(shape: DBSecurityGroupNameList, location_name: "DBSecurityGroups"))
    CreateDBInstanceMessage.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: "VpcSecurityGroupIds"))
    CreateDBInstanceMessage.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone"))
    CreateDBInstanceMessage.add_member(:db_subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBSubnetGroupName"))
    CreateDBInstanceMessage.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredMaintenanceWindow"))
    CreateDBInstanceMessage.add_member(:db_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBParameterGroupName"))
    CreateDBInstanceMessage.add_member(:backup_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "BackupRetentionPeriod"))
    CreateDBInstanceMessage.add_member(:preferred_backup_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredBackupWindow"))
    CreateDBInstanceMessage.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    CreateDBInstanceMessage.add_member(:multi_az, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "MultiAZ"))
    CreateDBInstanceMessage.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    CreateDBInstanceMessage.add_member(:auto_minor_version_upgrade, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AutoMinorVersionUpgrade"))
    CreateDBInstanceMessage.add_member(:license_model, Shapes::ShapeRef.new(shape: String, location_name: "LicenseModel"))
    CreateDBInstanceMessage.add_member(:iops, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Iops"))
    CreateDBInstanceMessage.add_member(:option_group_name, Shapes::ShapeRef.new(shape: String, location_name: "OptionGroupName"))
    CreateDBInstanceMessage.add_member(:character_set_name, Shapes::ShapeRef.new(shape: String, location_name: "CharacterSetName"))
    CreateDBInstanceMessage.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "PubliclyAccessible"))
    CreateDBInstanceMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDBInstanceMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterIdentifier"))
    CreateDBInstanceMessage.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    CreateDBInstanceMessage.add_member(:tde_credential_arn, Shapes::ShapeRef.new(shape: String, location_name: "TdeCredentialArn"))
    CreateDBInstanceMessage.add_member(:tde_credential_password, Shapes::ShapeRef.new(shape: String, location_name: "TdeCredentialPassword"))
    CreateDBInstanceMessage.add_member(:storage_encrypted, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "StorageEncrypted"))
    CreateDBInstanceMessage.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    CreateDBInstanceMessage.add_member(:domain, Shapes::ShapeRef.new(shape: String, location_name: "Domain"))
    CreateDBInstanceMessage.add_member(:copy_tags_to_snapshot, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CopyTagsToSnapshot"))
    CreateDBInstanceMessage.add_member(:monitoring_interval, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MonitoringInterval"))
    CreateDBInstanceMessage.add_member(:monitoring_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "MonitoringRoleArn"))
    CreateDBInstanceMessage.add_member(:domain_iam_role_name, Shapes::ShapeRef.new(shape: String, location_name: "DomainIAMRoleName"))
    CreateDBInstanceMessage.add_member(:promotion_tier, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "PromotionTier"))
    CreateDBInstanceMessage.add_member(:timezone, Shapes::ShapeRef.new(shape: String, location_name: "Timezone"))
    CreateDBInstanceMessage.add_member(:enable_iam_database_authentication, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableIAMDatabaseAuthentication"))
    CreateDBInstanceMessage.add_member(:enable_performance_insights, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnablePerformanceInsights"))
    CreateDBInstanceMessage.add_member(:performance_insights_kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "PerformanceInsightsKMSKeyId"))
    CreateDBInstanceMessage.add_member(:performance_insights_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "PerformanceInsightsRetentionPeriod"))
    CreateDBInstanceMessage.add_member(:enable_cloudwatch_logs_exports, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "EnableCloudwatchLogsExports"))
    CreateDBInstanceMessage.add_member(:processor_features, Shapes::ShapeRef.new(shape: ProcessorFeatureList, location_name: "ProcessorFeatures"))
    CreateDBInstanceMessage.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DeletionProtection"))
    CreateDBInstanceMessage.add_member(:max_allocated_storage, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxAllocatedStorage"))
    CreateDBInstanceMessage.struct_class = Types::CreateDBInstanceMessage

    CreateDBInstanceReadReplicaMessage.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBInstanceIdentifier"))
    CreateDBInstanceReadReplicaMessage.add_member(:source_db_instance_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SourceDBInstanceIdentifier"))
    CreateDBInstanceReadReplicaMessage.add_member(:db_instance_class, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceClass"))
    CreateDBInstanceReadReplicaMessage.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone"))
    CreateDBInstanceReadReplicaMessage.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    CreateDBInstanceReadReplicaMessage.add_member(:multi_az, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "MultiAZ"))
    CreateDBInstanceReadReplicaMessage.add_member(:auto_minor_version_upgrade, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AutoMinorVersionUpgrade"))
    CreateDBInstanceReadReplicaMessage.add_member(:iops, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Iops"))
    CreateDBInstanceReadReplicaMessage.add_member(:option_group_name, Shapes::ShapeRef.new(shape: String, location_name: "OptionGroupName"))
    CreateDBInstanceReadReplicaMessage.add_member(:db_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBParameterGroupName"))
    CreateDBInstanceReadReplicaMessage.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "PubliclyAccessible"))
    CreateDBInstanceReadReplicaMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDBInstanceReadReplicaMessage.add_member(:db_subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBSubnetGroupName"))
    CreateDBInstanceReadReplicaMessage.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: "VpcSecurityGroupIds"))
    CreateDBInstanceReadReplicaMessage.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    CreateDBInstanceReadReplicaMessage.add_member(:copy_tags_to_snapshot, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CopyTagsToSnapshot"))
    CreateDBInstanceReadReplicaMessage.add_member(:monitoring_interval, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MonitoringInterval"))
    CreateDBInstanceReadReplicaMessage.add_member(:monitoring_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "MonitoringRoleArn"))
    CreateDBInstanceReadReplicaMessage.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    CreateDBInstanceReadReplicaMessage.add_member(:pre_signed_url, Shapes::ShapeRef.new(shape: String, location_name: "PreSignedUrl"))
    CreateDBInstanceReadReplicaMessage.add_member(:enable_iam_database_authentication, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableIAMDatabaseAuthentication"))
    CreateDBInstanceReadReplicaMessage.add_member(:enable_performance_insights, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnablePerformanceInsights"))
    CreateDBInstanceReadReplicaMessage.add_member(:performance_insights_kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "PerformanceInsightsKMSKeyId"))
    CreateDBInstanceReadReplicaMessage.add_member(:performance_insights_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "PerformanceInsightsRetentionPeriod"))
    CreateDBInstanceReadReplicaMessage.add_member(:enable_cloudwatch_logs_exports, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "EnableCloudwatchLogsExports"))
    CreateDBInstanceReadReplicaMessage.add_member(:processor_features, Shapes::ShapeRef.new(shape: ProcessorFeatureList, location_name: "ProcessorFeatures"))
    CreateDBInstanceReadReplicaMessage.add_member(:use_default_processor_features, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "UseDefaultProcessorFeatures"))
    CreateDBInstanceReadReplicaMessage.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DeletionProtection"))
    CreateDBInstanceReadReplicaMessage.add_member(:domain, Shapes::ShapeRef.new(shape: String, location_name: "Domain"))
    CreateDBInstanceReadReplicaMessage.add_member(:domain_iam_role_name, Shapes::ShapeRef.new(shape: String, location_name: "DomainIAMRoleName"))
    CreateDBInstanceReadReplicaMessage.add_member(:destination_region, Shapes::ShapeRef.new(shape: String, location_name: "DestinationRegion", metadata: {"documented"=>false}))
    CreateDBInstanceReadReplicaMessage.add_member(:source_region, Shapes::ShapeRef.new(shape: String, location_name: "SourceRegion"))
    CreateDBInstanceReadReplicaMessage.struct_class = Types::CreateDBInstanceReadReplicaMessage

    CreateDBInstanceReadReplicaResult.add_member(:db_instance, Shapes::ShapeRef.new(shape: DBInstance, location_name: "DBInstance"))
    CreateDBInstanceReadReplicaResult.struct_class = Types::CreateDBInstanceReadReplicaResult

    CreateDBInstanceResult.add_member(:db_instance, Shapes::ShapeRef.new(shape: DBInstance, location_name: "DBInstance"))
    CreateDBInstanceResult.struct_class = Types::CreateDBInstanceResult

    CreateDBParameterGroupMessage.add_member(:db_parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBParameterGroupName"))
    CreateDBParameterGroupMessage.add_member(:db_parameter_group_family, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBParameterGroupFamily"))
    CreateDBParameterGroupMessage.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Description"))
    CreateDBParameterGroupMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDBParameterGroupMessage.struct_class = Types::CreateDBParameterGroupMessage

    CreateDBParameterGroupResult.add_member(:db_parameter_group, Shapes::ShapeRef.new(shape: DBParameterGroup, location_name: "DBParameterGroup"))
    CreateDBParameterGroupResult.struct_class = Types::CreateDBParameterGroupResult

    CreateDBProxyRequest.add_member(:db_proxy_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBProxyName"))
    CreateDBProxyRequest.add_member(:engine_family, Shapes::ShapeRef.new(shape: EngineFamily, required: true, location_name: "EngineFamily"))
    CreateDBProxyRequest.add_member(:auth, Shapes::ShapeRef.new(shape: UserAuthConfigList, required: true, location_name: "Auth"))
    CreateDBProxyRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RoleArn"))
    CreateDBProxyRequest.add_member(:vpc_subnet_ids, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "VpcSubnetIds"))
    CreateDBProxyRequest.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "VpcSecurityGroupIds"))
    CreateDBProxyRequest.add_member(:require_tls, Shapes::ShapeRef.new(shape: Boolean, location_name: "RequireTLS"))
    CreateDBProxyRequest.add_member(:idle_client_timeout, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "IdleClientTimeout"))
    CreateDBProxyRequest.add_member(:debug_logging, Shapes::ShapeRef.new(shape: Boolean, location_name: "DebugLogging"))
    CreateDBProxyRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDBProxyRequest.struct_class = Types::CreateDBProxyRequest

    CreateDBProxyResponse.add_member(:db_proxy, Shapes::ShapeRef.new(shape: DBProxy, location_name: "DBProxy"))
    CreateDBProxyResponse.struct_class = Types::CreateDBProxyResponse

    CreateDBSecurityGroupMessage.add_member(:db_security_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBSecurityGroupName"))
    CreateDBSecurityGroupMessage.add_member(:db_security_group_description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBSecurityGroupDescription"))
    CreateDBSecurityGroupMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDBSecurityGroupMessage.struct_class = Types::CreateDBSecurityGroupMessage

    CreateDBSecurityGroupResult.add_member(:db_security_group, Shapes::ShapeRef.new(shape: DBSecurityGroup, location_name: "DBSecurityGroup"))
    CreateDBSecurityGroupResult.struct_class = Types::CreateDBSecurityGroupResult

    CreateDBSnapshotMessage.add_member(:db_snapshot_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBSnapshotIdentifier"))
    CreateDBSnapshotMessage.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBInstanceIdentifier"))
    CreateDBSnapshotMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDBSnapshotMessage.struct_class = Types::CreateDBSnapshotMessage

    CreateDBSnapshotResult.add_member(:db_snapshot, Shapes::ShapeRef.new(shape: DBSnapshot, location_name: "DBSnapshot"))
    CreateDBSnapshotResult.struct_class = Types::CreateDBSnapshotResult

    CreateDBSubnetGroupMessage.add_member(:db_subnet_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBSubnetGroupName"))
    CreateDBSubnetGroupMessage.add_member(:db_subnet_group_description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBSubnetGroupDescription"))
    CreateDBSubnetGroupMessage.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdentifierList, required: true, location_name: "SubnetIds"))
    CreateDBSubnetGroupMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDBSubnetGroupMessage.struct_class = Types::CreateDBSubnetGroupMessage

    CreateDBSubnetGroupResult.add_member(:db_subnet_group, Shapes::ShapeRef.new(shape: DBSubnetGroup, location_name: "DBSubnetGroup"))
    CreateDBSubnetGroupResult.struct_class = Types::CreateDBSubnetGroupResult

    CreateEventSubscriptionMessage.add_member(:subscription_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SubscriptionName"))
    CreateEventSubscriptionMessage.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SnsTopicArn"))
    CreateEventSubscriptionMessage.add_member(:source_type, Shapes::ShapeRef.new(shape: String, location_name: "SourceType"))
    CreateEventSubscriptionMessage.add_member(:event_categories, Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: "EventCategories"))
    CreateEventSubscriptionMessage.add_member(:source_ids, Shapes::ShapeRef.new(shape: SourceIdsList, location_name: "SourceIds"))
    CreateEventSubscriptionMessage.add_member(:enabled, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "Enabled"))
    CreateEventSubscriptionMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateEventSubscriptionMessage.struct_class = Types::CreateEventSubscriptionMessage

    CreateEventSubscriptionResult.add_member(:event_subscription, Shapes::ShapeRef.new(shape: EventSubscription, location_name: "EventSubscription"))
    CreateEventSubscriptionResult.struct_class = Types::CreateEventSubscriptionResult

    CreateGlobalClusterMessage.add_member(:global_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "GlobalClusterIdentifier"))
    CreateGlobalClusterMessage.add_member(:source_db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SourceDBClusterIdentifier"))
    CreateGlobalClusterMessage.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    CreateGlobalClusterMessage.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    CreateGlobalClusterMessage.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DeletionProtection"))
    CreateGlobalClusterMessage.add_member(:database_name, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    CreateGlobalClusterMessage.add_member(:storage_encrypted, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "StorageEncrypted"))
    CreateGlobalClusterMessage.struct_class = Types::CreateGlobalClusterMessage

    CreateGlobalClusterResult.add_member(:global_cluster, Shapes::ShapeRef.new(shape: GlobalCluster, location_name: "GlobalCluster"))
    CreateGlobalClusterResult.struct_class = Types::CreateGlobalClusterResult

    CreateOptionGroupMessage.add_member(:option_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "OptionGroupName"))
    CreateOptionGroupMessage.add_member(:engine_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "EngineName"))
    CreateOptionGroupMessage.add_member(:major_engine_version, Shapes::ShapeRef.new(shape: String, required: true, location_name: "MajorEngineVersion"))
    CreateOptionGroupMessage.add_member(:option_group_description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "OptionGroupDescription"))
    CreateOptionGroupMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateOptionGroupMessage.struct_class = Types::CreateOptionGroupMessage

    CreateOptionGroupResult.add_member(:option_group, Shapes::ShapeRef.new(shape: OptionGroup, location_name: "OptionGroup"))
    CreateOptionGroupResult.struct_class = Types::CreateOptionGroupResult

    CustomAvailabilityZone.add_member(:custom_availability_zone_id, Shapes::ShapeRef.new(shape: String, location_name: "CustomAvailabilityZoneId"))
    CustomAvailabilityZone.add_member(:custom_availability_zone_name, Shapes::ShapeRef.new(shape: String, location_name: "CustomAvailabilityZoneName"))
    CustomAvailabilityZone.add_member(:custom_availability_zone_status, Shapes::ShapeRef.new(shape: String, location_name: "CustomAvailabilityZoneStatus"))
    CustomAvailabilityZone.add_member(:vpn_details, Shapes::ShapeRef.new(shape: VpnDetails, location_name: "VpnDetails"))
    CustomAvailabilityZone.struct_class = Types::CustomAvailabilityZone

    CustomAvailabilityZoneAlreadyExistsFault.struct_class = Types::CustomAvailabilityZoneAlreadyExistsFault

    CustomAvailabilityZoneList.member = Shapes::ShapeRef.new(shape: CustomAvailabilityZone, location_name: "CustomAvailabilityZone")

    CustomAvailabilityZoneMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    CustomAvailabilityZoneMessage.add_member(:custom_availability_zones, Shapes::ShapeRef.new(shape: CustomAvailabilityZoneList, location_name: "CustomAvailabilityZones"))
    CustomAvailabilityZoneMessage.struct_class = Types::CustomAvailabilityZoneMessage

    CustomAvailabilityZoneNotFoundFault.struct_class = Types::CustomAvailabilityZoneNotFoundFault

    CustomAvailabilityZoneQuotaExceededFault.struct_class = Types::CustomAvailabilityZoneQuotaExceededFault

    DBCluster.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "AllocatedStorage"))
    DBCluster.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZones, location_name: "AvailabilityZones"))
    DBCluster.add_member(:backup_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "BackupRetentionPeriod"))
    DBCluster.add_member(:character_set_name, Shapes::ShapeRef.new(shape: String, location_name: "CharacterSetName"))
    DBCluster.add_member(:database_name, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    DBCluster.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterIdentifier"))
    DBCluster.add_member(:db_cluster_parameter_group, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterParameterGroup"))
    DBCluster.add_member(:db_subnet_group, Shapes::ShapeRef.new(shape: String, location_name: "DBSubnetGroup"))
    DBCluster.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    DBCluster.add_member(:percent_progress, Shapes::ShapeRef.new(shape: String, location_name: "PercentProgress"))
    DBCluster.add_member(:earliest_restorable_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "EarliestRestorableTime"))
    DBCluster.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "Endpoint"))
    DBCluster.add_member(:reader_endpoint, Shapes::ShapeRef.new(shape: String, location_name: "ReaderEndpoint"))
    DBCluster.add_member(:custom_endpoints, Shapes::ShapeRef.new(shape: StringList, location_name: "CustomEndpoints"))
    DBCluster.add_member(:multi_az, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "MultiAZ"))
    DBCluster.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    DBCluster.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    DBCluster.add_member(:latest_restorable_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "LatestRestorableTime"))
    DBCluster.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    DBCluster.add_member(:master_username, Shapes::ShapeRef.new(shape: String, location_name: "MasterUsername"))
    DBCluster.add_member(:db_cluster_option_group_memberships, Shapes::ShapeRef.new(shape: DBClusterOptionGroupMemberships, location_name: "DBClusterOptionGroupMemberships"))
    DBCluster.add_member(:preferred_backup_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredBackupWindow"))
    DBCluster.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredMaintenanceWindow"))
    DBCluster.add_member(:replication_source_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationSourceIdentifier"))
    DBCluster.add_member(:read_replica_identifiers, Shapes::ShapeRef.new(shape: ReadReplicaIdentifierList, location_name: "ReadReplicaIdentifiers"))
    DBCluster.add_member(:db_cluster_members, Shapes::ShapeRef.new(shape: DBClusterMemberList, location_name: "DBClusterMembers"))
    DBCluster.add_member(:vpc_security_groups, Shapes::ShapeRef.new(shape: VpcSecurityGroupMembershipList, location_name: "VpcSecurityGroups"))
    DBCluster.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: String, location_name: "HostedZoneId"))
    DBCluster.add_member(:storage_encrypted, Shapes::ShapeRef.new(shape: Boolean, location_name: "StorageEncrypted"))
    DBCluster.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    DBCluster.add_member(:db_cluster_resource_id, Shapes::ShapeRef.new(shape: String, location_name: "DbClusterResourceId"))
    DBCluster.add_member(:db_cluster_arn, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterArn"))
    DBCluster.add_member(:associated_roles, Shapes::ShapeRef.new(shape: DBClusterRoles, location_name: "AssociatedRoles"))
    DBCluster.add_member(:iam_database_authentication_enabled, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "IAMDatabaseAuthenticationEnabled"))
    DBCluster.add_member(:clone_group_id, Shapes::ShapeRef.new(shape: String, location_name: "CloneGroupId"))
    DBCluster.add_member(:cluster_create_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "ClusterCreateTime"))
    DBCluster.add_member(:earliest_backtrack_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "EarliestBacktrackTime"))
    DBCluster.add_member(:backtrack_window, Shapes::ShapeRef.new(shape: LongOptional, location_name: "BacktrackWindow"))
    DBCluster.add_member(:backtrack_consumed_change_records, Shapes::ShapeRef.new(shape: LongOptional, location_name: "BacktrackConsumedChangeRecords"))
    DBCluster.add_member(:enabled_cloudwatch_logs_exports, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "EnabledCloudwatchLogsExports"))
    DBCluster.add_member(:capacity, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Capacity"))
    DBCluster.add_member(:engine_mode, Shapes::ShapeRef.new(shape: String, location_name: "EngineMode"))
    DBCluster.add_member(:scaling_configuration_info, Shapes::ShapeRef.new(shape: ScalingConfigurationInfo, location_name: "ScalingConfigurationInfo"))
    DBCluster.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DeletionProtection"))
    DBCluster.add_member(:http_endpoint_enabled, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "HttpEndpointEnabled"))
    DBCluster.add_member(:activity_stream_mode, Shapes::ShapeRef.new(shape: ActivityStreamMode, location_name: "ActivityStreamMode"))
    DBCluster.add_member(:activity_stream_status, Shapes::ShapeRef.new(shape: ActivityStreamStatus, location_name: "ActivityStreamStatus"))
    DBCluster.add_member(:activity_stream_kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "ActivityStreamKmsKeyId"))
    DBCluster.add_member(:activity_stream_kinesis_stream_name, Shapes::ShapeRef.new(shape: String, location_name: "ActivityStreamKinesisStreamName"))
    DBCluster.add_member(:copy_tags_to_snapshot, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CopyTagsToSnapshot"))
    DBCluster.add_member(:cross_account_clone, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CrossAccountClone"))
    DBCluster.add_member(:domain_memberships, Shapes::ShapeRef.new(shape: DomainMembershipList, location_name: "DomainMemberships"))
    DBCluster.struct_class = Types::DBCluster

    DBClusterAlreadyExistsFault.struct_class = Types::DBClusterAlreadyExistsFault

    DBClusterBacktrack.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterIdentifier"))
    DBClusterBacktrack.add_member(:backtrack_identifier, Shapes::ShapeRef.new(shape: String, location_name: "BacktrackIdentifier"))
    DBClusterBacktrack.add_member(:backtrack_to, Shapes::ShapeRef.new(shape: TStamp, location_name: "BacktrackTo"))
    DBClusterBacktrack.add_member(:backtracked_from, Shapes::ShapeRef.new(shape: TStamp, location_name: "BacktrackedFrom"))
    DBClusterBacktrack.add_member(:backtrack_request_creation_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "BacktrackRequestCreationTime"))
    DBClusterBacktrack.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    DBClusterBacktrack.struct_class = Types::DBClusterBacktrack

    DBClusterBacktrackList.member = Shapes::ShapeRef.new(shape: DBClusterBacktrack, location_name: "DBClusterBacktrack")

    DBClusterBacktrackMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DBClusterBacktrackMessage.add_member(:db_cluster_backtracks, Shapes::ShapeRef.new(shape: DBClusterBacktrackList, location_name: "DBClusterBacktracks"))
    DBClusterBacktrackMessage.struct_class = Types::DBClusterBacktrackMessage

    DBClusterBacktrackNotFoundFault.struct_class = Types::DBClusterBacktrackNotFoundFault

    DBClusterCapacityInfo.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterIdentifier"))
    DBClusterCapacityInfo.add_member(:pending_capacity, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "PendingCapacity"))
    DBClusterCapacityInfo.add_member(:current_capacity, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "CurrentCapacity"))
    DBClusterCapacityInfo.add_member(:seconds_before_timeout, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "SecondsBeforeTimeout"))
    DBClusterCapacityInfo.add_member(:timeout_action, Shapes::ShapeRef.new(shape: String, location_name: "TimeoutAction"))
    DBClusterCapacityInfo.struct_class = Types::DBClusterCapacityInfo

    DBClusterEndpoint.add_member(:db_cluster_endpoint_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterEndpointIdentifier"))
    DBClusterEndpoint.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterIdentifier"))
    DBClusterEndpoint.add_member(:db_cluster_endpoint_resource_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterEndpointResourceIdentifier"))
    DBClusterEndpoint.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "Endpoint"))
    DBClusterEndpoint.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    DBClusterEndpoint.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: String, location_name: "EndpointType"))
    DBClusterEndpoint.add_member(:custom_endpoint_type, Shapes::ShapeRef.new(shape: String, location_name: "CustomEndpointType"))
    DBClusterEndpoint.add_member(:static_members, Shapes::ShapeRef.new(shape: StringList, location_name: "StaticMembers"))
    DBClusterEndpoint.add_member(:excluded_members, Shapes::ShapeRef.new(shape: StringList, location_name: "ExcludedMembers"))
    DBClusterEndpoint.add_member(:db_cluster_endpoint_arn, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterEndpointArn"))
    DBClusterEndpoint.struct_class = Types::DBClusterEndpoint

    DBClusterEndpointAlreadyExistsFault.struct_class = Types::DBClusterEndpointAlreadyExistsFault

    DBClusterEndpointList.member = Shapes::ShapeRef.new(shape: DBClusterEndpoint, location_name: "DBClusterEndpointList")

    DBClusterEndpointMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DBClusterEndpointMessage.add_member(:db_cluster_endpoints, Shapes::ShapeRef.new(shape: DBClusterEndpointList, location_name: "DBClusterEndpoints"))
    DBClusterEndpointMessage.struct_class = Types::DBClusterEndpointMessage

    DBClusterEndpointNotFoundFault.struct_class = Types::DBClusterEndpointNotFoundFault

    DBClusterEndpointQuotaExceededFault.struct_class = Types::DBClusterEndpointQuotaExceededFault

    DBClusterList.member = Shapes::ShapeRef.new(shape: DBCluster, location_name: "DBCluster")

    DBClusterMember.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceIdentifier"))
    DBClusterMember.add_member(:is_cluster_writer, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsClusterWriter"))
    DBClusterMember.add_member(:db_cluster_parameter_group_status, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterParameterGroupStatus"))
    DBClusterMember.add_member(:promotion_tier, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "PromotionTier"))
    DBClusterMember.struct_class = Types::DBClusterMember

    DBClusterMemberList.member = Shapes::ShapeRef.new(shape: DBClusterMember, location_name: "DBClusterMember")

    DBClusterMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DBClusterMessage.add_member(:db_clusters, Shapes::ShapeRef.new(shape: DBClusterList, location_name: "DBClusters"))
    DBClusterMessage.struct_class = Types::DBClusterMessage

    DBClusterNotFoundFault.struct_class = Types::DBClusterNotFoundFault

    DBClusterOptionGroupMemberships.member = Shapes::ShapeRef.new(shape: DBClusterOptionGroupStatus, location_name: "DBClusterOptionGroup")

    DBClusterOptionGroupStatus.add_member(:db_cluster_option_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterOptionGroupName"))
    DBClusterOptionGroupStatus.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    DBClusterOptionGroupStatus.struct_class = Types::DBClusterOptionGroupStatus

    DBClusterParameterGroup.add_member(:db_cluster_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterParameterGroupName"))
    DBClusterParameterGroup.add_member(:db_parameter_group_family, Shapes::ShapeRef.new(shape: String, location_name: "DBParameterGroupFamily"))
    DBClusterParameterGroup.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    DBClusterParameterGroup.add_member(:db_cluster_parameter_group_arn, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterParameterGroupArn"))
    DBClusterParameterGroup.struct_class = Types::DBClusterParameterGroup

    DBClusterParameterGroupDetails.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersList, location_name: "Parameters"))
    DBClusterParameterGroupDetails.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DBClusterParameterGroupDetails.struct_class = Types::DBClusterParameterGroupDetails

    DBClusterParameterGroupList.member = Shapes::ShapeRef.new(shape: DBClusterParameterGroup, location_name: "DBClusterParameterGroup")

    DBClusterParameterGroupNameMessage.add_member(:db_cluster_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterParameterGroupName"))
    DBClusterParameterGroupNameMessage.struct_class = Types::DBClusterParameterGroupNameMessage

    DBClusterParameterGroupNotFoundFault.struct_class = Types::DBClusterParameterGroupNotFoundFault

    DBClusterParameterGroupsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DBClusterParameterGroupsMessage.add_member(:db_cluster_parameter_groups, Shapes::ShapeRef.new(shape: DBClusterParameterGroupList, location_name: "DBClusterParameterGroups"))
    DBClusterParameterGroupsMessage.struct_class = Types::DBClusterParameterGroupsMessage

    DBClusterQuotaExceededFault.struct_class = Types::DBClusterQuotaExceededFault

    DBClusterRole.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, location_name: "RoleArn"))
    DBClusterRole.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    DBClusterRole.add_member(:feature_name, Shapes::ShapeRef.new(shape: String, location_name: "FeatureName"))
    DBClusterRole.struct_class = Types::DBClusterRole

    DBClusterRoleAlreadyExistsFault.struct_class = Types::DBClusterRoleAlreadyExistsFault

    DBClusterRoleNotFoundFault.struct_class = Types::DBClusterRoleNotFoundFault

    DBClusterRoleQuotaExceededFault.struct_class = Types::DBClusterRoleQuotaExceededFault

    DBClusterRoles.member = Shapes::ShapeRef.new(shape: DBClusterRole, location_name: "DBClusterRole")

    DBClusterSnapshot.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZones, location_name: "AvailabilityZones"))
    DBClusterSnapshot.add_member(:db_cluster_snapshot_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterSnapshotIdentifier"))
    DBClusterSnapshot.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterIdentifier"))
    DBClusterSnapshot.add_member(:snapshot_create_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "SnapshotCreateTime"))
    DBClusterSnapshot.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    DBClusterSnapshot.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: Integer, location_name: "AllocatedStorage"))
    DBClusterSnapshot.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    DBClusterSnapshot.add_member(:port, Shapes::ShapeRef.new(shape: Integer, location_name: "Port"))
    DBClusterSnapshot.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcId"))
    DBClusterSnapshot.add_member(:cluster_create_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "ClusterCreateTime"))
    DBClusterSnapshot.add_member(:master_username, Shapes::ShapeRef.new(shape: String, location_name: "MasterUsername"))
    DBClusterSnapshot.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    DBClusterSnapshot.add_member(:license_model, Shapes::ShapeRef.new(shape: String, location_name: "LicenseModel"))
    DBClusterSnapshot.add_member(:snapshot_type, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotType"))
    DBClusterSnapshot.add_member(:percent_progress, Shapes::ShapeRef.new(shape: Integer, location_name: "PercentProgress"))
    DBClusterSnapshot.add_member(:storage_encrypted, Shapes::ShapeRef.new(shape: Boolean, location_name: "StorageEncrypted"))
    DBClusterSnapshot.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    DBClusterSnapshot.add_member(:db_cluster_snapshot_arn, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterSnapshotArn"))
    DBClusterSnapshot.add_member(:source_db_cluster_snapshot_arn, Shapes::ShapeRef.new(shape: String, location_name: "SourceDBClusterSnapshotArn"))
    DBClusterSnapshot.add_member(:iam_database_authentication_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "IAMDatabaseAuthenticationEnabled"))
    DBClusterSnapshot.struct_class = Types::DBClusterSnapshot

    DBClusterSnapshotAlreadyExistsFault.struct_class = Types::DBClusterSnapshotAlreadyExistsFault

    DBClusterSnapshotAttribute.add_member(:attribute_name, Shapes::ShapeRef.new(shape: String, location_name: "AttributeName"))
    DBClusterSnapshotAttribute.add_member(:attribute_values, Shapes::ShapeRef.new(shape: AttributeValueList, location_name: "AttributeValues"))
    DBClusterSnapshotAttribute.struct_class = Types::DBClusterSnapshotAttribute

    DBClusterSnapshotAttributeList.member = Shapes::ShapeRef.new(shape: DBClusterSnapshotAttribute, location_name: "DBClusterSnapshotAttribute")

    DBClusterSnapshotAttributesResult.add_member(:db_cluster_snapshot_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterSnapshotIdentifier"))
    DBClusterSnapshotAttributesResult.add_member(:db_cluster_snapshot_attributes, Shapes::ShapeRef.new(shape: DBClusterSnapshotAttributeList, location_name: "DBClusterSnapshotAttributes"))
    DBClusterSnapshotAttributesResult.struct_class = Types::DBClusterSnapshotAttributesResult

    DBClusterSnapshotList.member = Shapes::ShapeRef.new(shape: DBClusterSnapshot, location_name: "DBClusterSnapshot")

    DBClusterSnapshotMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DBClusterSnapshotMessage.add_member(:db_cluster_snapshots, Shapes::ShapeRef.new(shape: DBClusterSnapshotList, location_name: "DBClusterSnapshots"))
    DBClusterSnapshotMessage.struct_class = Types::DBClusterSnapshotMessage

    DBClusterSnapshotNotFoundFault.struct_class = Types::DBClusterSnapshotNotFoundFault

    DBEngineVersion.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    DBEngineVersion.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    DBEngineVersion.add_member(:db_parameter_group_family, Shapes::ShapeRef.new(shape: String, location_name: "DBParameterGroupFamily"))
    DBEngineVersion.add_member(:db_engine_description, Shapes::ShapeRef.new(shape: String, location_name: "DBEngineDescription"))
    DBEngineVersion.add_member(:db_engine_version_description, Shapes::ShapeRef.new(shape: String, location_name: "DBEngineVersionDescription"))
    DBEngineVersion.add_member(:default_character_set, Shapes::ShapeRef.new(shape: CharacterSet, location_name: "DefaultCharacterSet"))
    DBEngineVersion.add_member(:supported_character_sets, Shapes::ShapeRef.new(shape: SupportedCharacterSetsList, location_name: "SupportedCharacterSets"))
    DBEngineVersion.add_member(:valid_upgrade_target, Shapes::ShapeRef.new(shape: ValidUpgradeTargetList, location_name: "ValidUpgradeTarget"))
    DBEngineVersion.add_member(:supported_timezones, Shapes::ShapeRef.new(shape: SupportedTimezonesList, location_name: "SupportedTimezones"))
    DBEngineVersion.add_member(:exportable_log_types, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "ExportableLogTypes"))
    DBEngineVersion.add_member(:supports_log_exports_to_cloudwatch_logs, Shapes::ShapeRef.new(shape: Boolean, location_name: "SupportsLogExportsToCloudwatchLogs"))
    DBEngineVersion.add_member(:supports_read_replica, Shapes::ShapeRef.new(shape: Boolean, location_name: "SupportsReadReplica"))
    DBEngineVersion.add_member(:supported_engine_modes, Shapes::ShapeRef.new(shape: EngineModeList, location_name: "SupportedEngineModes"))
    DBEngineVersion.add_member(:supported_feature_names, Shapes::ShapeRef.new(shape: FeatureNameList, location_name: "SupportedFeatureNames"))
    DBEngineVersion.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    DBEngineVersion.struct_class = Types::DBEngineVersion

    DBEngineVersionList.member = Shapes::ShapeRef.new(shape: DBEngineVersion, location_name: "DBEngineVersion")

    DBEngineVersionMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DBEngineVersionMessage.add_member(:db_engine_versions, Shapes::ShapeRef.new(shape: DBEngineVersionList, location_name: "DBEngineVersions"))
    DBEngineVersionMessage.struct_class = Types::DBEngineVersionMessage

    DBInstance.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceIdentifier"))
    DBInstance.add_member(:db_instance_class, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceClass"))
    DBInstance.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    DBInstance.add_member(:db_instance_status, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceStatus"))
    DBInstance.add_member(:master_username, Shapes::ShapeRef.new(shape: String, location_name: "MasterUsername"))
    DBInstance.add_member(:db_name, Shapes::ShapeRef.new(shape: String, location_name: "DBName"))
    DBInstance.add_member(:endpoint, Shapes::ShapeRef.new(shape: Endpoint, location_name: "Endpoint"))
    DBInstance.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: Integer, location_name: "AllocatedStorage"))
    DBInstance.add_member(:instance_create_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "InstanceCreateTime"))
    DBInstance.add_member(:preferred_backup_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredBackupWindow"))
    DBInstance.add_member(:backup_retention_period, Shapes::ShapeRef.new(shape: Integer, location_name: "BackupRetentionPeriod"))
    DBInstance.add_member(:db_security_groups, Shapes::ShapeRef.new(shape: DBSecurityGroupMembershipList, location_name: "DBSecurityGroups"))
    DBInstance.add_member(:vpc_security_groups, Shapes::ShapeRef.new(shape: VpcSecurityGroupMembershipList, location_name: "VpcSecurityGroups"))
    DBInstance.add_member(:db_parameter_groups, Shapes::ShapeRef.new(shape: DBParameterGroupStatusList, location_name: "DBParameterGroups"))
    DBInstance.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone"))
    DBInstance.add_member(:db_subnet_group, Shapes::ShapeRef.new(shape: DBSubnetGroup, location_name: "DBSubnetGroup"))
    DBInstance.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredMaintenanceWindow"))
    DBInstance.add_member(:pending_modified_values, Shapes::ShapeRef.new(shape: PendingModifiedValues, location_name: "PendingModifiedValues"))
    DBInstance.add_member(:latest_restorable_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "LatestRestorableTime"))
    DBInstance.add_member(:multi_az, Shapes::ShapeRef.new(shape: Boolean, location_name: "MultiAZ"))
    DBInstance.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    DBInstance.add_member(:auto_minor_version_upgrade, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoMinorVersionUpgrade"))
    DBInstance.add_member(:read_replica_source_db_instance_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ReadReplicaSourceDBInstanceIdentifier"))
    DBInstance.add_member(:read_replica_db_instance_identifiers, Shapes::ShapeRef.new(shape: ReadReplicaDBInstanceIdentifierList, location_name: "ReadReplicaDBInstanceIdentifiers"))
    DBInstance.add_member(:read_replica_db_cluster_identifiers, Shapes::ShapeRef.new(shape: ReadReplicaDBClusterIdentifierList, location_name: "ReadReplicaDBClusterIdentifiers"))
    DBInstance.add_member(:license_model, Shapes::ShapeRef.new(shape: String, location_name: "LicenseModel"))
    DBInstance.add_member(:iops, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Iops"))
    DBInstance.add_member(:option_group_memberships, Shapes::ShapeRef.new(shape: OptionGroupMembershipList, location_name: "OptionGroupMemberships"))
    DBInstance.add_member(:character_set_name, Shapes::ShapeRef.new(shape: String, location_name: "CharacterSetName"))
    DBInstance.add_member(:secondary_availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "SecondaryAvailabilityZone"))
    DBInstance.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: Boolean, location_name: "PubliclyAccessible"))
    DBInstance.add_member(:status_infos, Shapes::ShapeRef.new(shape: DBInstanceStatusInfoList, location_name: "StatusInfos"))
    DBInstance.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    DBInstance.add_member(:tde_credential_arn, Shapes::ShapeRef.new(shape: String, location_name: "TdeCredentialArn"))
    DBInstance.add_member(:db_instance_port, Shapes::ShapeRef.new(shape: Integer, location_name: "DbInstancePort"))
    DBInstance.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterIdentifier"))
    DBInstance.add_member(:storage_encrypted, Shapes::ShapeRef.new(shape: Boolean, location_name: "StorageEncrypted"))
    DBInstance.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    DBInstance.add_member(:dbi_resource_id, Shapes::ShapeRef.new(shape: String, location_name: "DbiResourceId"))
    DBInstance.add_member(:ca_certificate_identifier, Shapes::ShapeRef.new(shape: String, location_name: "CACertificateIdentifier"))
    DBInstance.add_member(:domain_memberships, Shapes::ShapeRef.new(shape: DomainMembershipList, location_name: "DomainMemberships"))
    DBInstance.add_member(:copy_tags_to_snapshot, Shapes::ShapeRef.new(shape: Boolean, location_name: "CopyTagsToSnapshot"))
    DBInstance.add_member(:monitoring_interval, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MonitoringInterval"))
    DBInstance.add_member(:enhanced_monitoring_resource_arn, Shapes::ShapeRef.new(shape: String, location_name: "EnhancedMonitoringResourceArn"))
    DBInstance.add_member(:monitoring_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "MonitoringRoleArn"))
    DBInstance.add_member(:promotion_tier, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "PromotionTier"))
    DBInstance.add_member(:db_instance_arn, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceArn"))
    DBInstance.add_member(:timezone, Shapes::ShapeRef.new(shape: String, location_name: "Timezone"))
    DBInstance.add_member(:iam_database_authentication_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "IAMDatabaseAuthenticationEnabled"))
    DBInstance.add_member(:performance_insights_enabled, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "PerformanceInsightsEnabled"))
    DBInstance.add_member(:performance_insights_kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "PerformanceInsightsKMSKeyId"))
    DBInstance.add_member(:performance_insights_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "PerformanceInsightsRetentionPeriod"))
    DBInstance.add_member(:enabled_cloudwatch_logs_exports, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "EnabledCloudwatchLogsExports"))
    DBInstance.add_member(:processor_features, Shapes::ShapeRef.new(shape: ProcessorFeatureList, location_name: "ProcessorFeatures"))
    DBInstance.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: Boolean, location_name: "DeletionProtection"))
    DBInstance.add_member(:associated_roles, Shapes::ShapeRef.new(shape: DBInstanceRoles, location_name: "AssociatedRoles"))
    DBInstance.add_member(:listener_endpoint, Shapes::ShapeRef.new(shape: Endpoint, location_name: "ListenerEndpoint"))
    DBInstance.add_member(:max_allocated_storage, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxAllocatedStorage"))
    DBInstance.struct_class = Types::DBInstance

    DBInstanceAlreadyExistsFault.struct_class = Types::DBInstanceAlreadyExistsFault

    DBInstanceAutomatedBackup.add_member(:db_instance_arn, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceArn"))
    DBInstanceAutomatedBackup.add_member(:dbi_resource_id, Shapes::ShapeRef.new(shape: String, location_name: "DbiResourceId"))
    DBInstanceAutomatedBackup.add_member(:region, Shapes::ShapeRef.new(shape: String, location_name: "Region"))
    DBInstanceAutomatedBackup.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceIdentifier"))
    DBInstanceAutomatedBackup.add_member(:restore_window, Shapes::ShapeRef.new(shape: RestoreWindow, location_name: "RestoreWindow"))
    DBInstanceAutomatedBackup.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: Integer, location_name: "AllocatedStorage"))
    DBInstanceAutomatedBackup.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    DBInstanceAutomatedBackup.add_member(:port, Shapes::ShapeRef.new(shape: Integer, location_name: "Port"))
    DBInstanceAutomatedBackup.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone"))
    DBInstanceAutomatedBackup.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcId"))
    DBInstanceAutomatedBackup.add_member(:instance_create_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "InstanceCreateTime"))
    DBInstanceAutomatedBackup.add_member(:master_username, Shapes::ShapeRef.new(shape: String, location_name: "MasterUsername"))
    DBInstanceAutomatedBackup.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    DBInstanceAutomatedBackup.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    DBInstanceAutomatedBackup.add_member(:license_model, Shapes::ShapeRef.new(shape: String, location_name: "LicenseModel"))
    DBInstanceAutomatedBackup.add_member(:iops, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Iops"))
    DBInstanceAutomatedBackup.add_member(:option_group_name, Shapes::ShapeRef.new(shape: String, location_name: "OptionGroupName"))
    DBInstanceAutomatedBackup.add_member(:tde_credential_arn, Shapes::ShapeRef.new(shape: String, location_name: "TdeCredentialArn"))
    DBInstanceAutomatedBackup.add_member(:encrypted, Shapes::ShapeRef.new(shape: Boolean, location_name: "Encrypted"))
    DBInstanceAutomatedBackup.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    DBInstanceAutomatedBackup.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    DBInstanceAutomatedBackup.add_member(:timezone, Shapes::ShapeRef.new(shape: String, location_name: "Timezone"))
    DBInstanceAutomatedBackup.add_member(:iam_database_authentication_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "IAMDatabaseAuthenticationEnabled"))
    DBInstanceAutomatedBackup.struct_class = Types::DBInstanceAutomatedBackup

    DBInstanceAutomatedBackupList.member = Shapes::ShapeRef.new(shape: DBInstanceAutomatedBackup, location_name: "DBInstanceAutomatedBackup")

    DBInstanceAutomatedBackupMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DBInstanceAutomatedBackupMessage.add_member(:db_instance_automated_backups, Shapes::ShapeRef.new(shape: DBInstanceAutomatedBackupList, location_name: "DBInstanceAutomatedBackups"))
    DBInstanceAutomatedBackupMessage.struct_class = Types::DBInstanceAutomatedBackupMessage

    DBInstanceAutomatedBackupNotFoundFault.struct_class = Types::DBInstanceAutomatedBackupNotFoundFault

    DBInstanceAutomatedBackupQuotaExceededFault.struct_class = Types::DBInstanceAutomatedBackupQuotaExceededFault

    DBInstanceList.member = Shapes::ShapeRef.new(shape: DBInstance, location_name: "DBInstance")

    DBInstanceMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DBInstanceMessage.add_member(:db_instances, Shapes::ShapeRef.new(shape: DBInstanceList, location_name: "DBInstances"))
    DBInstanceMessage.struct_class = Types::DBInstanceMessage

    DBInstanceNotFoundFault.struct_class = Types::DBInstanceNotFoundFault

    DBInstanceRole.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, location_name: "RoleArn"))
    DBInstanceRole.add_member(:feature_name, Shapes::ShapeRef.new(shape: String, location_name: "FeatureName"))
    DBInstanceRole.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    DBInstanceRole.struct_class = Types::DBInstanceRole

    DBInstanceRoleAlreadyExistsFault.struct_class = Types::DBInstanceRoleAlreadyExistsFault

    DBInstanceRoleNotFoundFault.struct_class = Types::DBInstanceRoleNotFoundFault

    DBInstanceRoleQuotaExceededFault.struct_class = Types::DBInstanceRoleQuotaExceededFault

    DBInstanceRoles.member = Shapes::ShapeRef.new(shape: DBInstanceRole, location_name: "DBInstanceRole")

    DBInstanceStatusInfo.add_member(:status_type, Shapes::ShapeRef.new(shape: String, location_name: "StatusType"))
    DBInstanceStatusInfo.add_member(:normal, Shapes::ShapeRef.new(shape: Boolean, location_name: "Normal"))
    DBInstanceStatusInfo.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    DBInstanceStatusInfo.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    DBInstanceStatusInfo.struct_class = Types::DBInstanceStatusInfo

    DBInstanceStatusInfoList.member = Shapes::ShapeRef.new(shape: DBInstanceStatusInfo, location_name: "DBInstanceStatusInfo")

    DBLogFileNotFoundFault.struct_class = Types::DBLogFileNotFoundFault

    DBParameterGroup.add_member(:db_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBParameterGroupName"))
    DBParameterGroup.add_member(:db_parameter_group_family, Shapes::ShapeRef.new(shape: String, location_name: "DBParameterGroupFamily"))
    DBParameterGroup.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    DBParameterGroup.add_member(:db_parameter_group_arn, Shapes::ShapeRef.new(shape: String, location_name: "DBParameterGroupArn"))
    DBParameterGroup.struct_class = Types::DBParameterGroup

    DBParameterGroupAlreadyExistsFault.struct_class = Types::DBParameterGroupAlreadyExistsFault

    DBParameterGroupDetails.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersList, location_name: "Parameters"))
    DBParameterGroupDetails.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DBParameterGroupDetails.struct_class = Types::DBParameterGroupDetails

    DBParameterGroupList.member = Shapes::ShapeRef.new(shape: DBParameterGroup, location_name: "DBParameterGroup")

    DBParameterGroupNameMessage.add_member(:db_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBParameterGroupName"))
    DBParameterGroupNameMessage.struct_class = Types::DBParameterGroupNameMessage

    DBParameterGroupNotFoundFault.struct_class = Types::DBParameterGroupNotFoundFault

    DBParameterGroupQuotaExceededFault.struct_class = Types::DBParameterGroupQuotaExceededFault

    DBParameterGroupStatus.add_member(:db_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBParameterGroupName"))
    DBParameterGroupStatus.add_member(:parameter_apply_status, Shapes::ShapeRef.new(shape: String, location_name: "ParameterApplyStatus"))
    DBParameterGroupStatus.struct_class = Types::DBParameterGroupStatus

    DBParameterGroupStatusList.member = Shapes::ShapeRef.new(shape: DBParameterGroupStatus, location_name: "DBParameterGroup")

    DBParameterGroupsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DBParameterGroupsMessage.add_member(:db_parameter_groups, Shapes::ShapeRef.new(shape: DBParameterGroupList, location_name: "DBParameterGroups"))
    DBParameterGroupsMessage.struct_class = Types::DBParameterGroupsMessage

    DBProxy.add_member(:db_proxy_name, Shapes::ShapeRef.new(shape: String, location_name: "DBProxyName"))
    DBProxy.add_member(:db_proxy_arn, Shapes::ShapeRef.new(shape: String, location_name: "DBProxyArn"))
    DBProxy.add_member(:status, Shapes::ShapeRef.new(shape: DBProxyStatus, location_name: "Status"))
    DBProxy.add_member(:engine_family, Shapes::ShapeRef.new(shape: String, location_name: "EngineFamily"))
    DBProxy.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "VpcSecurityGroupIds"))
    DBProxy.add_member(:vpc_subnet_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "VpcSubnetIds"))
    DBProxy.add_member(:auth, Shapes::ShapeRef.new(shape: UserAuthConfigInfoList, location_name: "Auth"))
    DBProxy.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, location_name: "RoleArn"))
    DBProxy.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "Endpoint"))
    DBProxy.add_member(:require_tls, Shapes::ShapeRef.new(shape: Boolean, location_name: "RequireTLS"))
    DBProxy.add_member(:idle_client_timeout, Shapes::ShapeRef.new(shape: Integer, location_name: "IdleClientTimeout"))
    DBProxy.add_member(:debug_logging, Shapes::ShapeRef.new(shape: Boolean, location_name: "DebugLogging"))
    DBProxy.add_member(:created_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "CreatedDate"))
    DBProxy.add_member(:updated_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "UpdatedDate"))
    DBProxy.struct_class = Types::DBProxy

    DBProxyAlreadyExistsFault.struct_class = Types::DBProxyAlreadyExistsFault

    DBProxyList.member = Shapes::ShapeRef.new(shape: DBProxy)

    DBProxyNotFoundFault.struct_class = Types::DBProxyNotFoundFault

    DBProxyQuotaExceededFault.struct_class = Types::DBProxyQuotaExceededFault

    DBProxyTarget.add_member(:target_arn, Shapes::ShapeRef.new(shape: String, location_name: "TargetArn"))
    DBProxyTarget.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "Endpoint"))
    DBProxyTarget.add_member(:tracked_cluster_id, Shapes::ShapeRef.new(shape: String, location_name: "TrackedClusterId"))
    DBProxyTarget.add_member(:rds_resource_id, Shapes::ShapeRef.new(shape: String, location_name: "RdsResourceId"))
    DBProxyTarget.add_member(:port, Shapes::ShapeRef.new(shape: Integer, location_name: "Port"))
    DBProxyTarget.add_member(:type, Shapes::ShapeRef.new(shape: TargetType, location_name: "Type"))
    DBProxyTarget.add_member(:target_health, Shapes::ShapeRef.new(shape: TargetHealth, location_name: "TargetHealth"))
    DBProxyTarget.struct_class = Types::DBProxyTarget

    DBProxyTargetAlreadyRegisteredFault.struct_class = Types::DBProxyTargetAlreadyRegisteredFault

    DBProxyTargetGroup.add_member(:db_proxy_name, Shapes::ShapeRef.new(shape: String, location_name: "DBProxyName"))
    DBProxyTargetGroup.add_member(:target_group_name, Shapes::ShapeRef.new(shape: String, location_name: "TargetGroupName"))
    DBProxyTargetGroup.add_member(:target_group_arn, Shapes::ShapeRef.new(shape: String, location_name: "TargetGroupArn"))
    DBProxyTargetGroup.add_member(:is_default, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsDefault"))
    DBProxyTargetGroup.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    DBProxyTargetGroup.add_member(:connection_pool_config, Shapes::ShapeRef.new(shape: ConnectionPoolConfigurationInfo, location_name: "ConnectionPoolConfig"))
    DBProxyTargetGroup.add_member(:created_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "CreatedDate"))
    DBProxyTargetGroup.add_member(:updated_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "UpdatedDate"))
    DBProxyTargetGroup.struct_class = Types::DBProxyTargetGroup

    DBProxyTargetGroupNotFoundFault.struct_class = Types::DBProxyTargetGroupNotFoundFault

    DBProxyTargetNotFoundFault.struct_class = Types::DBProxyTargetNotFoundFault

    DBSecurityGroup.add_member(:owner_id, Shapes::ShapeRef.new(shape: String, location_name: "OwnerId"))
    DBSecurityGroup.add_member(:db_security_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBSecurityGroupName"))
    DBSecurityGroup.add_member(:db_security_group_description, Shapes::ShapeRef.new(shape: String, location_name: "DBSecurityGroupDescription"))
    DBSecurityGroup.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcId"))
    DBSecurityGroup.add_member(:ec2_security_groups, Shapes::ShapeRef.new(shape: EC2SecurityGroupList, location_name: "EC2SecurityGroups"))
    DBSecurityGroup.add_member(:ip_ranges, Shapes::ShapeRef.new(shape: IPRangeList, location_name: "IPRanges"))
    DBSecurityGroup.add_member(:db_security_group_arn, Shapes::ShapeRef.new(shape: String, location_name: "DBSecurityGroupArn"))
    DBSecurityGroup.struct_class = Types::DBSecurityGroup

    DBSecurityGroupAlreadyExistsFault.struct_class = Types::DBSecurityGroupAlreadyExistsFault

    DBSecurityGroupMembership.add_member(:db_security_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBSecurityGroupName"))
    DBSecurityGroupMembership.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    DBSecurityGroupMembership.struct_class = Types::DBSecurityGroupMembership

    DBSecurityGroupMembershipList.member = Shapes::ShapeRef.new(shape: DBSecurityGroupMembership, location_name: "DBSecurityGroup")

    DBSecurityGroupMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DBSecurityGroupMessage.add_member(:db_security_groups, Shapes::ShapeRef.new(shape: DBSecurityGroups, location_name: "DBSecurityGroups"))
    DBSecurityGroupMessage.struct_class = Types::DBSecurityGroupMessage

    DBSecurityGroupNameList.member = Shapes::ShapeRef.new(shape: String, location_name: "DBSecurityGroupName")

    DBSecurityGroupNotFoundFault.struct_class = Types::DBSecurityGroupNotFoundFault

    DBSecurityGroupNotSupportedFault.struct_class = Types::DBSecurityGroupNotSupportedFault

    DBSecurityGroupQuotaExceededFault.struct_class = Types::DBSecurityGroupQuotaExceededFault

    DBSecurityGroups.member = Shapes::ShapeRef.new(shape: DBSecurityGroup, location_name: "DBSecurityGroup")

    DBSnapshot.add_member(:db_snapshot_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBSnapshotIdentifier"))
    DBSnapshot.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceIdentifier"))
    DBSnapshot.add_member(:snapshot_create_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "SnapshotCreateTime"))
    DBSnapshot.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    DBSnapshot.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: Integer, location_name: "AllocatedStorage"))
    DBSnapshot.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    DBSnapshot.add_member(:port, Shapes::ShapeRef.new(shape: Integer, location_name: "Port"))
    DBSnapshot.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone"))
    DBSnapshot.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcId"))
    DBSnapshot.add_member(:instance_create_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "InstanceCreateTime"))
    DBSnapshot.add_member(:master_username, Shapes::ShapeRef.new(shape: String, location_name: "MasterUsername"))
    DBSnapshot.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    DBSnapshot.add_member(:license_model, Shapes::ShapeRef.new(shape: String, location_name: "LicenseModel"))
    DBSnapshot.add_member(:snapshot_type, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotType"))
    DBSnapshot.add_member(:iops, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Iops"))
    DBSnapshot.add_member(:option_group_name, Shapes::ShapeRef.new(shape: String, location_name: "OptionGroupName"))
    DBSnapshot.add_member(:percent_progress, Shapes::ShapeRef.new(shape: Integer, location_name: "PercentProgress"))
    DBSnapshot.add_member(:source_region, Shapes::ShapeRef.new(shape: String, location_name: "SourceRegion"))
    DBSnapshot.add_member(:source_db_snapshot_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SourceDBSnapshotIdentifier"))
    DBSnapshot.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    DBSnapshot.add_member(:tde_credential_arn, Shapes::ShapeRef.new(shape: String, location_name: "TdeCredentialArn"))
    DBSnapshot.add_member(:encrypted, Shapes::ShapeRef.new(shape: Boolean, location_name: "Encrypted"))
    DBSnapshot.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    DBSnapshot.add_member(:db_snapshot_arn, Shapes::ShapeRef.new(shape: String, location_name: "DBSnapshotArn"))
    DBSnapshot.add_member(:timezone, Shapes::ShapeRef.new(shape: String, location_name: "Timezone"))
    DBSnapshot.add_member(:iam_database_authentication_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "IAMDatabaseAuthenticationEnabled"))
    DBSnapshot.add_member(:processor_features, Shapes::ShapeRef.new(shape: ProcessorFeatureList, location_name: "ProcessorFeatures"))
    DBSnapshot.add_member(:dbi_resource_id, Shapes::ShapeRef.new(shape: String, location_name: "DbiResourceId"))
    DBSnapshot.struct_class = Types::DBSnapshot

    DBSnapshotAlreadyExistsFault.struct_class = Types::DBSnapshotAlreadyExistsFault

    DBSnapshotAttribute.add_member(:attribute_name, Shapes::ShapeRef.new(shape: String, location_name: "AttributeName"))
    DBSnapshotAttribute.add_member(:attribute_values, Shapes::ShapeRef.new(shape: AttributeValueList, location_name: "AttributeValues"))
    DBSnapshotAttribute.struct_class = Types::DBSnapshotAttribute

    DBSnapshotAttributeList.member = Shapes::ShapeRef.new(shape: DBSnapshotAttribute, location_name: "DBSnapshotAttribute")

    DBSnapshotAttributesResult.add_member(:db_snapshot_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBSnapshotIdentifier"))
    DBSnapshotAttributesResult.add_member(:db_snapshot_attributes, Shapes::ShapeRef.new(shape: DBSnapshotAttributeList, location_name: "DBSnapshotAttributes"))
    DBSnapshotAttributesResult.struct_class = Types::DBSnapshotAttributesResult

    DBSnapshotList.member = Shapes::ShapeRef.new(shape: DBSnapshot, location_name: "DBSnapshot")

    DBSnapshotMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DBSnapshotMessage.add_member(:db_snapshots, Shapes::ShapeRef.new(shape: DBSnapshotList, location_name: "DBSnapshots"))
    DBSnapshotMessage.struct_class = Types::DBSnapshotMessage

    DBSnapshotNotFoundFault.struct_class = Types::DBSnapshotNotFoundFault

    DBSubnetGroup.add_member(:db_subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBSubnetGroupName"))
    DBSubnetGroup.add_member(:db_subnet_group_description, Shapes::ShapeRef.new(shape: String, location_name: "DBSubnetGroupDescription"))
    DBSubnetGroup.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcId"))
    DBSubnetGroup.add_member(:subnet_group_status, Shapes::ShapeRef.new(shape: String, location_name: "SubnetGroupStatus"))
    DBSubnetGroup.add_member(:subnets, Shapes::ShapeRef.new(shape: SubnetList, location_name: "Subnets"))
    DBSubnetGroup.add_member(:db_subnet_group_arn, Shapes::ShapeRef.new(shape: String, location_name: "DBSubnetGroupArn"))
    DBSubnetGroup.struct_class = Types::DBSubnetGroup

    DBSubnetGroupAlreadyExistsFault.struct_class = Types::DBSubnetGroupAlreadyExistsFault

    DBSubnetGroupDoesNotCoverEnoughAZs.struct_class = Types::DBSubnetGroupDoesNotCoverEnoughAZs

    DBSubnetGroupMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DBSubnetGroupMessage.add_member(:db_subnet_groups, Shapes::ShapeRef.new(shape: DBSubnetGroups, location_name: "DBSubnetGroups"))
    DBSubnetGroupMessage.struct_class = Types::DBSubnetGroupMessage

    DBSubnetGroupNotAllowedFault.struct_class = Types::DBSubnetGroupNotAllowedFault

    DBSubnetGroupNotFoundFault.struct_class = Types::DBSubnetGroupNotFoundFault

    DBSubnetGroupQuotaExceededFault.struct_class = Types::DBSubnetGroupQuotaExceededFault

    DBSubnetGroups.member = Shapes::ShapeRef.new(shape: DBSubnetGroup, location_name: "DBSubnetGroup")

    DBSubnetQuotaExceededFault.struct_class = Types::DBSubnetQuotaExceededFault

    DBUpgradeDependencyFailureFault.struct_class = Types::DBUpgradeDependencyFailureFault

    DeleteCustomAvailabilityZoneMessage.add_member(:custom_availability_zone_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "CustomAvailabilityZoneId"))
    DeleteCustomAvailabilityZoneMessage.struct_class = Types::DeleteCustomAvailabilityZoneMessage

    DeleteCustomAvailabilityZoneResult.add_member(:custom_availability_zone, Shapes::ShapeRef.new(shape: CustomAvailabilityZone, location_name: "CustomAvailabilityZone"))
    DeleteCustomAvailabilityZoneResult.struct_class = Types::DeleteCustomAvailabilityZoneResult

    DeleteDBClusterEndpointMessage.add_member(:db_cluster_endpoint_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterEndpointIdentifier"))
    DeleteDBClusterEndpointMessage.struct_class = Types::DeleteDBClusterEndpointMessage

    DeleteDBClusterMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterIdentifier"))
    DeleteDBClusterMessage.add_member(:skip_final_snapshot, Shapes::ShapeRef.new(shape: Boolean, location_name: "SkipFinalSnapshot"))
    DeleteDBClusterMessage.add_member(:final_db_snapshot_identifier, Shapes::ShapeRef.new(shape: String, location_name: "FinalDBSnapshotIdentifier"))
    DeleteDBClusterMessage.struct_class = Types::DeleteDBClusterMessage

    DeleteDBClusterParameterGroupMessage.add_member(:db_cluster_parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterParameterGroupName"))
    DeleteDBClusterParameterGroupMessage.struct_class = Types::DeleteDBClusterParameterGroupMessage

    DeleteDBClusterResult.add_member(:db_cluster, Shapes::ShapeRef.new(shape: DBCluster, location_name: "DBCluster"))
    DeleteDBClusterResult.struct_class = Types::DeleteDBClusterResult

    DeleteDBClusterSnapshotMessage.add_member(:db_cluster_snapshot_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterSnapshotIdentifier"))
    DeleteDBClusterSnapshotMessage.struct_class = Types::DeleteDBClusterSnapshotMessage

    DeleteDBClusterSnapshotResult.add_member(:db_cluster_snapshot, Shapes::ShapeRef.new(shape: DBClusterSnapshot, location_name: "DBClusterSnapshot"))
    DeleteDBClusterSnapshotResult.struct_class = Types::DeleteDBClusterSnapshotResult

    DeleteDBInstanceAutomatedBackupMessage.add_member(:dbi_resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DbiResourceId"))
    DeleteDBInstanceAutomatedBackupMessage.struct_class = Types::DeleteDBInstanceAutomatedBackupMessage

    DeleteDBInstanceAutomatedBackupResult.add_member(:db_instance_automated_backup, Shapes::ShapeRef.new(shape: DBInstanceAutomatedBackup, location_name: "DBInstanceAutomatedBackup"))
    DeleteDBInstanceAutomatedBackupResult.struct_class = Types::DeleteDBInstanceAutomatedBackupResult

    DeleteDBInstanceMessage.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBInstanceIdentifier"))
    DeleteDBInstanceMessage.add_member(:skip_final_snapshot, Shapes::ShapeRef.new(shape: Boolean, location_name: "SkipFinalSnapshot"))
    DeleteDBInstanceMessage.add_member(:final_db_snapshot_identifier, Shapes::ShapeRef.new(shape: String, location_name: "FinalDBSnapshotIdentifier"))
    DeleteDBInstanceMessage.add_member(:delete_automated_backups, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DeleteAutomatedBackups"))
    DeleteDBInstanceMessage.struct_class = Types::DeleteDBInstanceMessage

    DeleteDBInstanceResult.add_member(:db_instance, Shapes::ShapeRef.new(shape: DBInstance, location_name: "DBInstance"))
    DeleteDBInstanceResult.struct_class = Types::DeleteDBInstanceResult

    DeleteDBParameterGroupMessage.add_member(:db_parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBParameterGroupName"))
    DeleteDBParameterGroupMessage.struct_class = Types::DeleteDBParameterGroupMessage

    DeleteDBProxyRequest.add_member(:db_proxy_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBProxyName"))
    DeleteDBProxyRequest.struct_class = Types::DeleteDBProxyRequest

    DeleteDBProxyResponse.add_member(:db_proxy, Shapes::ShapeRef.new(shape: DBProxy, location_name: "DBProxy"))
    DeleteDBProxyResponse.struct_class = Types::DeleteDBProxyResponse

    DeleteDBSecurityGroupMessage.add_member(:db_security_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBSecurityGroupName"))
    DeleteDBSecurityGroupMessage.struct_class = Types::DeleteDBSecurityGroupMessage

    DeleteDBSnapshotMessage.add_member(:db_snapshot_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBSnapshotIdentifier"))
    DeleteDBSnapshotMessage.struct_class = Types::DeleteDBSnapshotMessage

    DeleteDBSnapshotResult.add_member(:db_snapshot, Shapes::ShapeRef.new(shape: DBSnapshot, location_name: "DBSnapshot"))
    DeleteDBSnapshotResult.struct_class = Types::DeleteDBSnapshotResult

    DeleteDBSubnetGroupMessage.add_member(:db_subnet_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBSubnetGroupName"))
    DeleteDBSubnetGroupMessage.struct_class = Types::DeleteDBSubnetGroupMessage

    DeleteEventSubscriptionMessage.add_member(:subscription_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SubscriptionName"))
    DeleteEventSubscriptionMessage.struct_class = Types::DeleteEventSubscriptionMessage

    DeleteEventSubscriptionResult.add_member(:event_subscription, Shapes::ShapeRef.new(shape: EventSubscription, location_name: "EventSubscription"))
    DeleteEventSubscriptionResult.struct_class = Types::DeleteEventSubscriptionResult

    DeleteGlobalClusterMessage.add_member(:global_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "GlobalClusterIdentifier"))
    DeleteGlobalClusterMessage.struct_class = Types::DeleteGlobalClusterMessage

    DeleteGlobalClusterResult.add_member(:global_cluster, Shapes::ShapeRef.new(shape: GlobalCluster, location_name: "GlobalCluster"))
    DeleteGlobalClusterResult.struct_class = Types::DeleteGlobalClusterResult

    DeleteInstallationMediaMessage.add_member(:installation_media_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "InstallationMediaId"))
    DeleteInstallationMediaMessage.struct_class = Types::DeleteInstallationMediaMessage

    DeleteOptionGroupMessage.add_member(:option_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "OptionGroupName"))
    DeleteOptionGroupMessage.struct_class = Types::DeleteOptionGroupMessage

    DeregisterDBProxyTargetsRequest.add_member(:db_proxy_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBProxyName"))
    DeregisterDBProxyTargetsRequest.add_member(:target_group_name, Shapes::ShapeRef.new(shape: String, location_name: "TargetGroupName"))
    DeregisterDBProxyTargetsRequest.add_member(:db_instance_identifiers, Shapes::ShapeRef.new(shape: StringList, location_name: "DBInstanceIdentifiers"))
    DeregisterDBProxyTargetsRequest.add_member(:db_cluster_identifiers, Shapes::ShapeRef.new(shape: StringList, location_name: "DBClusterIdentifiers"))
    DeregisterDBProxyTargetsRequest.struct_class = Types::DeregisterDBProxyTargetsRequest

    DeregisterDBProxyTargetsResponse.struct_class = Types::DeregisterDBProxyTargetsResponse

    DescribeAccountAttributesMessage.struct_class = Types::DescribeAccountAttributesMessage

    DescribeCertificatesMessage.add_member(:certificate_identifier, Shapes::ShapeRef.new(shape: String, location_name: "CertificateIdentifier"))
    DescribeCertificatesMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeCertificatesMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeCertificatesMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeCertificatesMessage.struct_class = Types::DescribeCertificatesMessage

    DescribeCustomAvailabilityZonesMessage.add_member(:custom_availability_zone_id, Shapes::ShapeRef.new(shape: String, location_name: "CustomAvailabilityZoneId"))
    DescribeCustomAvailabilityZonesMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeCustomAvailabilityZonesMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeCustomAvailabilityZonesMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeCustomAvailabilityZonesMessage.struct_class = Types::DescribeCustomAvailabilityZonesMessage

    DescribeDBClusterBacktracksMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterIdentifier"))
    DescribeDBClusterBacktracksMessage.add_member(:backtrack_identifier, Shapes::ShapeRef.new(shape: String, location_name: "BacktrackIdentifier"))
    DescribeDBClusterBacktracksMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDBClusterBacktracksMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeDBClusterBacktracksMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBClusterBacktracksMessage.struct_class = Types::DescribeDBClusterBacktracksMessage

    DescribeDBClusterEndpointsMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterIdentifier"))
    DescribeDBClusterEndpointsMessage.add_member(:db_cluster_endpoint_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterEndpointIdentifier"))
    DescribeDBClusterEndpointsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDBClusterEndpointsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeDBClusterEndpointsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBClusterEndpointsMessage.struct_class = Types::DescribeDBClusterEndpointsMessage

    DescribeDBClusterParameterGroupsMessage.add_member(:db_cluster_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterParameterGroupName"))
    DescribeDBClusterParameterGroupsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDBClusterParameterGroupsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeDBClusterParameterGroupsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBClusterParameterGroupsMessage.struct_class = Types::DescribeDBClusterParameterGroupsMessage

    DescribeDBClusterParametersMessage.add_member(:db_cluster_parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterParameterGroupName"))
    DescribeDBClusterParametersMessage.add_member(:source, Shapes::ShapeRef.new(shape: String, location_name: "Source"))
    DescribeDBClusterParametersMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDBClusterParametersMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeDBClusterParametersMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBClusterParametersMessage.struct_class = Types::DescribeDBClusterParametersMessage

    DescribeDBClusterSnapshotAttributesMessage.add_member(:db_cluster_snapshot_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterSnapshotIdentifier"))
    DescribeDBClusterSnapshotAttributesMessage.struct_class = Types::DescribeDBClusterSnapshotAttributesMessage

    DescribeDBClusterSnapshotAttributesResult.add_member(:db_cluster_snapshot_attributes_result, Shapes::ShapeRef.new(shape: DBClusterSnapshotAttributesResult, location_name: "DBClusterSnapshotAttributesResult"))
    DescribeDBClusterSnapshotAttributesResult.struct_class = Types::DescribeDBClusterSnapshotAttributesResult

    DescribeDBClusterSnapshotsMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterIdentifier"))
    DescribeDBClusterSnapshotsMessage.add_member(:db_cluster_snapshot_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterSnapshotIdentifier"))
    DescribeDBClusterSnapshotsMessage.add_member(:snapshot_type, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotType"))
    DescribeDBClusterSnapshotsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDBClusterSnapshotsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeDBClusterSnapshotsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBClusterSnapshotsMessage.add_member(:include_shared, Shapes::ShapeRef.new(shape: Boolean, location_name: "IncludeShared"))
    DescribeDBClusterSnapshotsMessage.add_member(:include_public, Shapes::ShapeRef.new(shape: Boolean, location_name: "IncludePublic"))
    DescribeDBClusterSnapshotsMessage.struct_class = Types::DescribeDBClusterSnapshotsMessage

    DescribeDBClustersMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterIdentifier"))
    DescribeDBClustersMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDBClustersMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeDBClustersMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBClustersMessage.add_member(:include_shared, Shapes::ShapeRef.new(shape: Boolean, location_name: "IncludeShared"))
    DescribeDBClustersMessage.struct_class = Types::DescribeDBClustersMessage

    DescribeDBEngineVersionsMessage.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    DescribeDBEngineVersionsMessage.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    DescribeDBEngineVersionsMessage.add_member(:db_parameter_group_family, Shapes::ShapeRef.new(shape: String, location_name: "DBParameterGroupFamily"))
    DescribeDBEngineVersionsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDBEngineVersionsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeDBEngineVersionsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBEngineVersionsMessage.add_member(:default_only, Shapes::ShapeRef.new(shape: Boolean, location_name: "DefaultOnly"))
    DescribeDBEngineVersionsMessage.add_member(:list_supported_character_sets, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ListSupportedCharacterSets"))
    DescribeDBEngineVersionsMessage.add_member(:list_supported_timezones, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ListSupportedTimezones"))
    DescribeDBEngineVersionsMessage.add_member(:include_all, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "IncludeAll"))
    DescribeDBEngineVersionsMessage.struct_class = Types::DescribeDBEngineVersionsMessage

    DescribeDBInstanceAutomatedBackupsMessage.add_member(:dbi_resource_id, Shapes::ShapeRef.new(shape: String, location_name: "DbiResourceId"))
    DescribeDBInstanceAutomatedBackupsMessage.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceIdentifier"))
    DescribeDBInstanceAutomatedBackupsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDBInstanceAutomatedBackupsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeDBInstanceAutomatedBackupsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBInstanceAutomatedBackupsMessage.struct_class = Types::DescribeDBInstanceAutomatedBackupsMessage

    DescribeDBInstancesMessage.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceIdentifier"))
    DescribeDBInstancesMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDBInstancesMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeDBInstancesMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBInstancesMessage.struct_class = Types::DescribeDBInstancesMessage

    DescribeDBLogFilesDetails.add_member(:log_file_name, Shapes::ShapeRef.new(shape: String, location_name: "LogFileName"))
    DescribeDBLogFilesDetails.add_member(:last_written, Shapes::ShapeRef.new(shape: Long, location_name: "LastWritten"))
    DescribeDBLogFilesDetails.add_member(:size, Shapes::ShapeRef.new(shape: Long, location_name: "Size"))
    DescribeDBLogFilesDetails.struct_class = Types::DescribeDBLogFilesDetails

    DescribeDBLogFilesList.member = Shapes::ShapeRef.new(shape: DescribeDBLogFilesDetails, location_name: "DescribeDBLogFilesDetails")

    DescribeDBLogFilesMessage.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBInstanceIdentifier"))
    DescribeDBLogFilesMessage.add_member(:filename_contains, Shapes::ShapeRef.new(shape: String, location_name: "FilenameContains"))
    DescribeDBLogFilesMessage.add_member(:file_last_written, Shapes::ShapeRef.new(shape: Long, location_name: "FileLastWritten"))
    DescribeDBLogFilesMessage.add_member(:file_size, Shapes::ShapeRef.new(shape: Long, location_name: "FileSize"))
    DescribeDBLogFilesMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDBLogFilesMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeDBLogFilesMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBLogFilesMessage.struct_class = Types::DescribeDBLogFilesMessage

    DescribeDBLogFilesResponse.add_member(:describe_db_log_files, Shapes::ShapeRef.new(shape: DescribeDBLogFilesList, location_name: "DescribeDBLogFiles"))
    DescribeDBLogFilesResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBLogFilesResponse.struct_class = Types::DescribeDBLogFilesResponse

    DescribeDBParameterGroupsMessage.add_member(:db_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBParameterGroupName"))
    DescribeDBParameterGroupsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDBParameterGroupsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeDBParameterGroupsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBParameterGroupsMessage.struct_class = Types::DescribeDBParameterGroupsMessage

    DescribeDBParametersMessage.add_member(:db_parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBParameterGroupName"))
    DescribeDBParametersMessage.add_member(:source, Shapes::ShapeRef.new(shape: String, location_name: "Source"))
    DescribeDBParametersMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDBParametersMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeDBParametersMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBParametersMessage.struct_class = Types::DescribeDBParametersMessage

    DescribeDBProxiesRequest.add_member(:db_proxy_name, Shapes::ShapeRef.new(shape: String, location_name: "DBProxyName"))
    DescribeDBProxiesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDBProxiesRequest.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBProxiesRequest.add_member(:max_records, Shapes::ShapeRef.new(shape: MaxRecords, location_name: "MaxRecords"))
    DescribeDBProxiesRequest.struct_class = Types::DescribeDBProxiesRequest

    DescribeDBProxiesResponse.add_member(:db_proxies, Shapes::ShapeRef.new(shape: DBProxyList, location_name: "DBProxies"))
    DescribeDBProxiesResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBProxiesResponse.struct_class = Types::DescribeDBProxiesResponse

    DescribeDBProxyTargetGroupsRequest.add_member(:db_proxy_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBProxyName"))
    DescribeDBProxyTargetGroupsRequest.add_member(:target_group_name, Shapes::ShapeRef.new(shape: String, location_name: "TargetGroupName"))
    DescribeDBProxyTargetGroupsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDBProxyTargetGroupsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBProxyTargetGroupsRequest.add_member(:max_records, Shapes::ShapeRef.new(shape: MaxRecords, location_name: "MaxRecords"))
    DescribeDBProxyTargetGroupsRequest.struct_class = Types::DescribeDBProxyTargetGroupsRequest

    DescribeDBProxyTargetGroupsResponse.add_member(:target_groups, Shapes::ShapeRef.new(shape: TargetGroupList, location_name: "TargetGroups"))
    DescribeDBProxyTargetGroupsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBProxyTargetGroupsResponse.struct_class = Types::DescribeDBProxyTargetGroupsResponse

    DescribeDBProxyTargetsRequest.add_member(:db_proxy_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBProxyName"))
    DescribeDBProxyTargetsRequest.add_member(:target_group_name, Shapes::ShapeRef.new(shape: String, location_name: "TargetGroupName"))
    DescribeDBProxyTargetsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDBProxyTargetsRequest.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBProxyTargetsRequest.add_member(:max_records, Shapes::ShapeRef.new(shape: MaxRecords, location_name: "MaxRecords"))
    DescribeDBProxyTargetsRequest.struct_class = Types::DescribeDBProxyTargetsRequest

    DescribeDBProxyTargetsResponse.add_member(:targets, Shapes::ShapeRef.new(shape: TargetList, location_name: "Targets"))
    DescribeDBProxyTargetsResponse.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBProxyTargetsResponse.struct_class = Types::DescribeDBProxyTargetsResponse

    DescribeDBSecurityGroupsMessage.add_member(:db_security_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBSecurityGroupName"))
    DescribeDBSecurityGroupsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDBSecurityGroupsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeDBSecurityGroupsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBSecurityGroupsMessage.struct_class = Types::DescribeDBSecurityGroupsMessage

    DescribeDBSnapshotAttributesMessage.add_member(:db_snapshot_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBSnapshotIdentifier"))
    DescribeDBSnapshotAttributesMessage.struct_class = Types::DescribeDBSnapshotAttributesMessage

    DescribeDBSnapshotAttributesResult.add_member(:db_snapshot_attributes_result, Shapes::ShapeRef.new(shape: DBSnapshotAttributesResult, location_name: "DBSnapshotAttributesResult"))
    DescribeDBSnapshotAttributesResult.struct_class = Types::DescribeDBSnapshotAttributesResult

    DescribeDBSnapshotsMessage.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceIdentifier"))
    DescribeDBSnapshotsMessage.add_member(:db_snapshot_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBSnapshotIdentifier"))
    DescribeDBSnapshotsMessage.add_member(:snapshot_type, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotType"))
    DescribeDBSnapshotsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDBSnapshotsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeDBSnapshotsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBSnapshotsMessage.add_member(:include_shared, Shapes::ShapeRef.new(shape: Boolean, location_name: "IncludeShared"))
    DescribeDBSnapshotsMessage.add_member(:include_public, Shapes::ShapeRef.new(shape: Boolean, location_name: "IncludePublic"))
    DescribeDBSnapshotsMessage.add_member(:dbi_resource_id, Shapes::ShapeRef.new(shape: String, location_name: "DbiResourceId"))
    DescribeDBSnapshotsMessage.struct_class = Types::DescribeDBSnapshotsMessage

    DescribeDBSubnetGroupsMessage.add_member(:db_subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBSubnetGroupName"))
    DescribeDBSubnetGroupsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDBSubnetGroupsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeDBSubnetGroupsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBSubnetGroupsMessage.struct_class = Types::DescribeDBSubnetGroupsMessage

    DescribeEngineDefaultClusterParametersMessage.add_member(:db_parameter_group_family, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBParameterGroupFamily"))
    DescribeEngineDefaultClusterParametersMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeEngineDefaultClusterParametersMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeEngineDefaultClusterParametersMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEngineDefaultClusterParametersMessage.struct_class = Types::DescribeEngineDefaultClusterParametersMessage

    DescribeEngineDefaultClusterParametersResult.add_member(:engine_defaults, Shapes::ShapeRef.new(shape: EngineDefaults, location_name: "EngineDefaults"))
    DescribeEngineDefaultClusterParametersResult.struct_class = Types::DescribeEngineDefaultClusterParametersResult

    DescribeEngineDefaultParametersMessage.add_member(:db_parameter_group_family, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBParameterGroupFamily"))
    DescribeEngineDefaultParametersMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeEngineDefaultParametersMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeEngineDefaultParametersMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEngineDefaultParametersMessage.struct_class = Types::DescribeEngineDefaultParametersMessage

    DescribeEngineDefaultParametersResult.add_member(:engine_defaults, Shapes::ShapeRef.new(shape: EngineDefaults, location_name: "EngineDefaults"))
    DescribeEngineDefaultParametersResult.struct_class = Types::DescribeEngineDefaultParametersResult

    DescribeEventCategoriesMessage.add_member(:source_type, Shapes::ShapeRef.new(shape: String, location_name: "SourceType"))
    DescribeEventCategoriesMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeEventCategoriesMessage.struct_class = Types::DescribeEventCategoriesMessage

    DescribeEventSubscriptionsMessage.add_member(:subscription_name, Shapes::ShapeRef.new(shape: String, location_name: "SubscriptionName"))
    DescribeEventSubscriptionsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeEventSubscriptionsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeEventSubscriptionsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEventSubscriptionsMessage.struct_class = Types::DescribeEventSubscriptionsMessage

    DescribeEventsMessage.add_member(:source_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SourceIdentifier"))
    DescribeEventsMessage.add_member(:source_type, Shapes::ShapeRef.new(shape: SourceType, location_name: "SourceType"))
    DescribeEventsMessage.add_member(:start_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "StartTime"))
    DescribeEventsMessage.add_member(:end_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "EndTime"))
    DescribeEventsMessage.add_member(:duration, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Duration"))
    DescribeEventsMessage.add_member(:event_categories, Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: "EventCategories"))
    DescribeEventsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeEventsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeEventsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEventsMessage.struct_class = Types::DescribeEventsMessage

    DescribeExportTasksMessage.add_member(:export_task_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ExportTaskIdentifier"))
    DescribeExportTasksMessage.add_member(:source_arn, Shapes::ShapeRef.new(shape: String, location_name: "SourceArn"))
    DescribeExportTasksMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeExportTasksMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeExportTasksMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: MaxRecords, location_name: "MaxRecords"))
    DescribeExportTasksMessage.struct_class = Types::DescribeExportTasksMessage

    DescribeGlobalClustersMessage.add_member(:global_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "GlobalClusterIdentifier"))
    DescribeGlobalClustersMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeGlobalClustersMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeGlobalClustersMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeGlobalClustersMessage.struct_class = Types::DescribeGlobalClustersMessage

    DescribeInstallationMediaMessage.add_member(:installation_media_id, Shapes::ShapeRef.new(shape: String, location_name: "InstallationMediaId"))
    DescribeInstallationMediaMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeInstallationMediaMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeInstallationMediaMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeInstallationMediaMessage.struct_class = Types::DescribeInstallationMediaMessage

    DescribeOptionGroupOptionsMessage.add_member(:engine_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "EngineName"))
    DescribeOptionGroupOptionsMessage.add_member(:major_engine_version, Shapes::ShapeRef.new(shape: String, location_name: "MajorEngineVersion"))
    DescribeOptionGroupOptionsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeOptionGroupOptionsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeOptionGroupOptionsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeOptionGroupOptionsMessage.struct_class = Types::DescribeOptionGroupOptionsMessage

    DescribeOptionGroupsMessage.add_member(:option_group_name, Shapes::ShapeRef.new(shape: String, location_name: "OptionGroupName"))
    DescribeOptionGroupsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeOptionGroupsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeOptionGroupsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeOptionGroupsMessage.add_member(:engine_name, Shapes::ShapeRef.new(shape: String, location_name: "EngineName"))
    DescribeOptionGroupsMessage.add_member(:major_engine_version, Shapes::ShapeRef.new(shape: String, location_name: "MajorEngineVersion"))
    DescribeOptionGroupsMessage.struct_class = Types::DescribeOptionGroupsMessage

    DescribeOrderableDBInstanceOptionsMessage.add_member(:engine, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Engine"))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:db_instance_class, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceClass"))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:license_model, Shapes::ShapeRef.new(shape: String, location_name: "LicenseModel"))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:availability_zone_group, Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZoneGroup"))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:vpc, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "Vpc"))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeOrderableDBInstanceOptionsMessage.struct_class = Types::DescribeOrderableDBInstanceOptionsMessage

    DescribePendingMaintenanceActionsMessage.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ResourceIdentifier"))
    DescribePendingMaintenanceActionsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribePendingMaintenanceActionsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribePendingMaintenanceActionsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribePendingMaintenanceActionsMessage.struct_class = Types::DescribePendingMaintenanceActionsMessage

    DescribeReservedDBInstancesMessage.add_member(:reserved_db_instance_id, Shapes::ShapeRef.new(shape: String, location_name: "ReservedDBInstanceId"))
    DescribeReservedDBInstancesMessage.add_member(:reserved_db_instances_offering_id, Shapes::ShapeRef.new(shape: String, location_name: "ReservedDBInstancesOfferingId"))
    DescribeReservedDBInstancesMessage.add_member(:db_instance_class, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceClass"))
    DescribeReservedDBInstancesMessage.add_member(:duration, Shapes::ShapeRef.new(shape: String, location_name: "Duration"))
    DescribeReservedDBInstancesMessage.add_member(:product_description, Shapes::ShapeRef.new(shape: String, location_name: "ProductDescription"))
    DescribeReservedDBInstancesMessage.add_member(:offering_type, Shapes::ShapeRef.new(shape: String, location_name: "OfferingType"))
    DescribeReservedDBInstancesMessage.add_member(:multi_az, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "MultiAZ"))
    DescribeReservedDBInstancesMessage.add_member(:lease_id, Shapes::ShapeRef.new(shape: String, location_name: "LeaseId"))
    DescribeReservedDBInstancesMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeReservedDBInstancesMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeReservedDBInstancesMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReservedDBInstancesMessage.struct_class = Types::DescribeReservedDBInstancesMessage

    DescribeReservedDBInstancesOfferingsMessage.add_member(:reserved_db_instances_offering_id, Shapes::ShapeRef.new(shape: String, location_name: "ReservedDBInstancesOfferingId"))
    DescribeReservedDBInstancesOfferingsMessage.add_member(:db_instance_class, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceClass"))
    DescribeReservedDBInstancesOfferingsMessage.add_member(:duration, Shapes::ShapeRef.new(shape: String, location_name: "Duration"))
    DescribeReservedDBInstancesOfferingsMessage.add_member(:product_description, Shapes::ShapeRef.new(shape: String, location_name: "ProductDescription"))
    DescribeReservedDBInstancesOfferingsMessage.add_member(:offering_type, Shapes::ShapeRef.new(shape: String, location_name: "OfferingType"))
    DescribeReservedDBInstancesOfferingsMessage.add_member(:multi_az, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "MultiAZ"))
    DescribeReservedDBInstancesOfferingsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeReservedDBInstancesOfferingsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeReservedDBInstancesOfferingsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeReservedDBInstancesOfferingsMessage.struct_class = Types::DescribeReservedDBInstancesOfferingsMessage

    DescribeSourceRegionsMessage.add_member(:region_name, Shapes::ShapeRef.new(shape: String, location_name: "RegionName"))
    DescribeSourceRegionsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeSourceRegionsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeSourceRegionsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeSourceRegionsMessage.struct_class = Types::DescribeSourceRegionsMessage

    DescribeValidDBInstanceModificationsMessage.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBInstanceIdentifier"))
    DescribeValidDBInstanceModificationsMessage.struct_class = Types::DescribeValidDBInstanceModificationsMessage

    DescribeValidDBInstanceModificationsResult.add_member(:valid_db_instance_modifications_message, Shapes::ShapeRef.new(shape: ValidDBInstanceModificationsMessage, location_name: "ValidDBInstanceModificationsMessage"))
    DescribeValidDBInstanceModificationsResult.struct_class = Types::DescribeValidDBInstanceModificationsResult

    DomainMembership.add_member(:domain, Shapes::ShapeRef.new(shape: String, location_name: "Domain"))
    DomainMembership.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    DomainMembership.add_member(:fqdn, Shapes::ShapeRef.new(shape: String, location_name: "FQDN"))
    DomainMembership.add_member(:iam_role_name, Shapes::ShapeRef.new(shape: String, location_name: "IAMRoleName"))
    DomainMembership.struct_class = Types::DomainMembership

    DomainMembershipList.member = Shapes::ShapeRef.new(shape: DomainMembership, location_name: "DomainMembership")

    DomainNotFoundFault.struct_class = Types::DomainNotFoundFault

    DoubleRange.add_member(:from, Shapes::ShapeRef.new(shape: Double, location_name: "From"))
    DoubleRange.add_member(:to, Shapes::ShapeRef.new(shape: Double, location_name: "To"))
    DoubleRange.struct_class = Types::DoubleRange

    DoubleRangeList.member = Shapes::ShapeRef.new(shape: DoubleRange, location_name: "DoubleRange")

    DownloadDBLogFilePortionDetails.add_member(:log_file_data, Shapes::ShapeRef.new(shape: String, location_name: "LogFileData"))
    DownloadDBLogFilePortionDetails.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DownloadDBLogFilePortionDetails.add_member(:additional_data_pending, Shapes::ShapeRef.new(shape: Boolean, location_name: "AdditionalDataPending"))
    DownloadDBLogFilePortionDetails.struct_class = Types::DownloadDBLogFilePortionDetails

    DownloadDBLogFilePortionMessage.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBInstanceIdentifier"))
    DownloadDBLogFilePortionMessage.add_member(:log_file_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "LogFileName"))
    DownloadDBLogFilePortionMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DownloadDBLogFilePortionMessage.add_member(:number_of_lines, Shapes::ShapeRef.new(shape: Integer, location_name: "NumberOfLines"))
    DownloadDBLogFilePortionMessage.struct_class = Types::DownloadDBLogFilePortionMessage

    EC2SecurityGroup.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    EC2SecurityGroup.add_member(:ec2_security_group_name, Shapes::ShapeRef.new(shape: String, location_name: "EC2SecurityGroupName"))
    EC2SecurityGroup.add_member(:ec2_security_group_id, Shapes::ShapeRef.new(shape: String, location_name: "EC2SecurityGroupId"))
    EC2SecurityGroup.add_member(:ec2_security_group_owner_id, Shapes::ShapeRef.new(shape: String, location_name: "EC2SecurityGroupOwnerId"))
    EC2SecurityGroup.struct_class = Types::EC2SecurityGroup

    EC2SecurityGroupList.member = Shapes::ShapeRef.new(shape: EC2SecurityGroup, location_name: "EC2SecurityGroup")

    Endpoint.add_member(:address, Shapes::ShapeRef.new(shape: String, location_name: "Address"))
    Endpoint.add_member(:port, Shapes::ShapeRef.new(shape: Integer, location_name: "Port"))
    Endpoint.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: String, location_name: "HostedZoneId"))
    Endpoint.struct_class = Types::Endpoint

    EngineDefaults.add_member(:db_parameter_group_family, Shapes::ShapeRef.new(shape: String, location_name: "DBParameterGroupFamily"))
    EngineDefaults.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    EngineDefaults.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersList, location_name: "Parameters"))
    EngineDefaults.struct_class = Types::EngineDefaults

    EngineModeList.member = Shapes::ShapeRef.new(shape: String)

    Event.add_member(:source_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SourceIdentifier"))
    Event.add_member(:source_type, Shapes::ShapeRef.new(shape: SourceType, location_name: "SourceType"))
    Event.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    Event.add_member(:event_categories, Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: "EventCategories"))
    Event.add_member(:date, Shapes::ShapeRef.new(shape: TStamp, location_name: "Date"))
    Event.add_member(:source_arn, Shapes::ShapeRef.new(shape: String, location_name: "SourceArn"))
    Event.struct_class = Types::Event

    EventCategoriesList.member = Shapes::ShapeRef.new(shape: String, location_name: "EventCategory")

    EventCategoriesMap.add_member(:source_type, Shapes::ShapeRef.new(shape: String, location_name: "SourceType"))
    EventCategoriesMap.add_member(:event_categories, Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: "EventCategories"))
    EventCategoriesMap.struct_class = Types::EventCategoriesMap

    EventCategoriesMapList.member = Shapes::ShapeRef.new(shape: EventCategoriesMap, location_name: "EventCategoriesMap")

    EventCategoriesMessage.add_member(:event_categories_map_list, Shapes::ShapeRef.new(shape: EventCategoriesMapList, location_name: "EventCategoriesMapList"))
    EventCategoriesMessage.struct_class = Types::EventCategoriesMessage

    EventList.member = Shapes::ShapeRef.new(shape: Event, location_name: "Event")

    EventSubscription.add_member(:customer_aws_id, Shapes::ShapeRef.new(shape: String, location_name: "CustomerAwsId"))
    EventSubscription.add_member(:cust_subscription_id, Shapes::ShapeRef.new(shape: String, location_name: "CustSubscriptionId"))
    EventSubscription.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: String, location_name: "SnsTopicArn"))
    EventSubscription.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    EventSubscription.add_member(:subscription_creation_time, Shapes::ShapeRef.new(shape: String, location_name: "SubscriptionCreationTime"))
    EventSubscription.add_member(:source_type, Shapes::ShapeRef.new(shape: String, location_name: "SourceType"))
    EventSubscription.add_member(:source_ids_list, Shapes::ShapeRef.new(shape: SourceIdsList, location_name: "SourceIdsList"))
    EventSubscription.add_member(:event_categories_list, Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: "EventCategoriesList"))
    EventSubscription.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    EventSubscription.add_member(:event_subscription_arn, Shapes::ShapeRef.new(shape: String, location_name: "EventSubscriptionArn"))
    EventSubscription.struct_class = Types::EventSubscription

    EventSubscriptionQuotaExceededFault.struct_class = Types::EventSubscriptionQuotaExceededFault

    EventSubscriptionsList.member = Shapes::ShapeRef.new(shape: EventSubscription, location_name: "EventSubscription")

    EventSubscriptionsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    EventSubscriptionsMessage.add_member(:event_subscriptions_list, Shapes::ShapeRef.new(shape: EventSubscriptionsList, location_name: "EventSubscriptionsList"))
    EventSubscriptionsMessage.struct_class = Types::EventSubscriptionsMessage

    EventsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    EventsMessage.add_member(:events, Shapes::ShapeRef.new(shape: EventList, location_name: "Events"))
    EventsMessage.struct_class = Types::EventsMessage

    ExportTask.add_member(:export_task_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ExportTaskIdentifier"))
    ExportTask.add_member(:source_arn, Shapes::ShapeRef.new(shape: String, location_name: "SourceArn"))
    ExportTask.add_member(:export_only, Shapes::ShapeRef.new(shape: StringList, location_name: "ExportOnly"))
    ExportTask.add_member(:snapshot_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "SnapshotTime"))
    ExportTask.add_member(:task_start_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "TaskStartTime"))
    ExportTask.add_member(:task_end_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "TaskEndTime"))
    ExportTask.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: String, location_name: "S3Bucket"))
    ExportTask.add_member(:s3_prefix, Shapes::ShapeRef.new(shape: String, location_name: "S3Prefix"))
    ExportTask.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "IamRoleArn"))
    ExportTask.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    ExportTask.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    ExportTask.add_member(:percent_progress, Shapes::ShapeRef.new(shape: Integer, location_name: "PercentProgress"))
    ExportTask.add_member(:total_extracted_data_in_gb, Shapes::ShapeRef.new(shape: Integer, location_name: "TotalExtractedDataInGB"))
    ExportTask.add_member(:failure_cause, Shapes::ShapeRef.new(shape: String, location_name: "FailureCause"))
    ExportTask.add_member(:warning_message, Shapes::ShapeRef.new(shape: String, location_name: "WarningMessage"))
    ExportTask.struct_class = Types::ExportTask

    ExportTaskAlreadyExistsFault.struct_class = Types::ExportTaskAlreadyExistsFault

    ExportTaskNotFoundFault.struct_class = Types::ExportTaskNotFoundFault

    ExportTasksList.member = Shapes::ShapeRef.new(shape: ExportTask, location_name: "ExportTask")

    ExportTasksMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    ExportTasksMessage.add_member(:export_tasks, Shapes::ShapeRef.new(shape: ExportTasksList, location_name: "ExportTasks"))
    ExportTasksMessage.struct_class = Types::ExportTasksMessage

    FailoverDBClusterMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterIdentifier"))
    FailoverDBClusterMessage.add_member(:target_db_instance_identifier, Shapes::ShapeRef.new(shape: String, location_name: "TargetDBInstanceIdentifier"))
    FailoverDBClusterMessage.struct_class = Types::FailoverDBClusterMessage

    FailoverDBClusterResult.add_member(:db_cluster, Shapes::ShapeRef.new(shape: DBCluster, location_name: "DBCluster"))
    FailoverDBClusterResult.struct_class = Types::FailoverDBClusterResult

    FeatureNameList.member = Shapes::ShapeRef.new(shape: String)

    Filter.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    Filter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValueList, required: true, location_name: "Values"))
    Filter.struct_class = Types::Filter

    FilterList.member = Shapes::ShapeRef.new(shape: Filter, location_name: "Filter")

    FilterValueList.member = Shapes::ShapeRef.new(shape: String, location_name: "Value")

    GlobalCluster.add_member(:global_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "GlobalClusterIdentifier"))
    GlobalCluster.add_member(:global_cluster_resource_id, Shapes::ShapeRef.new(shape: String, location_name: "GlobalClusterResourceId"))
    GlobalCluster.add_member(:global_cluster_arn, Shapes::ShapeRef.new(shape: String, location_name: "GlobalClusterArn"))
    GlobalCluster.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    GlobalCluster.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    GlobalCluster.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    GlobalCluster.add_member(:database_name, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    GlobalCluster.add_member(:storage_encrypted, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "StorageEncrypted"))
    GlobalCluster.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DeletionProtection"))
    GlobalCluster.add_member(:global_cluster_members, Shapes::ShapeRef.new(shape: GlobalClusterMemberList, location_name: "GlobalClusterMembers"))
    GlobalCluster.struct_class = Types::GlobalCluster

    GlobalClusterAlreadyExistsFault.struct_class = Types::GlobalClusterAlreadyExistsFault

    GlobalClusterList.member = Shapes::ShapeRef.new(shape: GlobalCluster, location_name: "GlobalClusterMember")

    GlobalClusterMember.add_member(:db_cluster_arn, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterArn"))
    GlobalClusterMember.add_member(:readers, Shapes::ShapeRef.new(shape: ReadersArnList, location_name: "Readers"))
    GlobalClusterMember.add_member(:is_writer, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsWriter"))
    GlobalClusterMember.struct_class = Types::GlobalClusterMember

    GlobalClusterMemberList.member = Shapes::ShapeRef.new(shape: GlobalClusterMember, location_name: "GlobalClusterMember")

    GlobalClusterNotFoundFault.struct_class = Types::GlobalClusterNotFoundFault

    GlobalClusterQuotaExceededFault.struct_class = Types::GlobalClusterQuotaExceededFault

    GlobalClustersMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    GlobalClustersMessage.add_member(:global_clusters, Shapes::ShapeRef.new(shape: GlobalClusterList, location_name: "GlobalClusters"))
    GlobalClustersMessage.struct_class = Types::GlobalClustersMessage

    IPRange.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    IPRange.add_member(:cidrip, Shapes::ShapeRef.new(shape: String, location_name: "CIDRIP"))
    IPRange.struct_class = Types::IPRange

    IPRangeList.member = Shapes::ShapeRef.new(shape: IPRange, location_name: "IPRange")

    IamRoleMissingPermissionsFault.struct_class = Types::IamRoleMissingPermissionsFault

    IamRoleNotFoundFault.struct_class = Types::IamRoleNotFoundFault

    ImportInstallationMediaMessage.add_member(:custom_availability_zone_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "CustomAvailabilityZoneId"))
    ImportInstallationMediaMessage.add_member(:engine, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Engine"))
    ImportInstallationMediaMessage.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, required: true, location_name: "EngineVersion"))
    ImportInstallationMediaMessage.add_member(:engine_installation_media_path, Shapes::ShapeRef.new(shape: String, required: true, location_name: "EngineInstallationMediaPath"))
    ImportInstallationMediaMessage.add_member(:os_installation_media_path, Shapes::ShapeRef.new(shape: String, required: true, location_name: "OSInstallationMediaPath"))
    ImportInstallationMediaMessage.struct_class = Types::ImportInstallationMediaMessage

    InstallationMedia.add_member(:installation_media_id, Shapes::ShapeRef.new(shape: String, location_name: "InstallationMediaId"))
    InstallationMedia.add_member(:custom_availability_zone_id, Shapes::ShapeRef.new(shape: String, location_name: "CustomAvailabilityZoneId"))
    InstallationMedia.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    InstallationMedia.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    InstallationMedia.add_member(:engine_installation_media_path, Shapes::ShapeRef.new(shape: String, location_name: "EngineInstallationMediaPath"))
    InstallationMedia.add_member(:os_installation_media_path, Shapes::ShapeRef.new(shape: String, location_name: "OSInstallationMediaPath"))
    InstallationMedia.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    InstallationMedia.add_member(:failure_cause, Shapes::ShapeRef.new(shape: InstallationMediaFailureCause, location_name: "FailureCause"))
    InstallationMedia.struct_class = Types::InstallationMedia

    InstallationMediaAlreadyExistsFault.struct_class = Types::InstallationMediaAlreadyExistsFault

    InstallationMediaFailureCause.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InstallationMediaFailureCause.struct_class = Types::InstallationMediaFailureCause

    InstallationMediaList.member = Shapes::ShapeRef.new(shape: InstallationMedia, location_name: "InstallationMedia")

    InstallationMediaMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    InstallationMediaMessage.add_member(:installation_media, Shapes::ShapeRef.new(shape: InstallationMediaList, location_name: "InstallationMedia"))
    InstallationMediaMessage.struct_class = Types::InstallationMediaMessage

    InstallationMediaNotFoundFault.struct_class = Types::InstallationMediaNotFoundFault

    InstanceQuotaExceededFault.struct_class = Types::InstanceQuotaExceededFault

    InsufficientDBClusterCapacityFault.struct_class = Types::InsufficientDBClusterCapacityFault

    InsufficientDBInstanceCapacityFault.struct_class = Types::InsufficientDBInstanceCapacityFault

    InsufficientStorageClusterCapacityFault.struct_class = Types::InsufficientStorageClusterCapacityFault

    InvalidDBClusterCapacityFault.struct_class = Types::InvalidDBClusterCapacityFault

    InvalidDBClusterEndpointStateFault.struct_class = Types::InvalidDBClusterEndpointStateFault

    InvalidDBClusterSnapshotStateFault.struct_class = Types::InvalidDBClusterSnapshotStateFault

    InvalidDBClusterStateFault.struct_class = Types::InvalidDBClusterStateFault

    InvalidDBInstanceAutomatedBackupStateFault.struct_class = Types::InvalidDBInstanceAutomatedBackupStateFault

    InvalidDBInstanceStateFault.struct_class = Types::InvalidDBInstanceStateFault

    InvalidDBParameterGroupStateFault.struct_class = Types::InvalidDBParameterGroupStateFault

    InvalidDBProxyStateFault.struct_class = Types::InvalidDBProxyStateFault

    InvalidDBSecurityGroupStateFault.struct_class = Types::InvalidDBSecurityGroupStateFault

    InvalidDBSnapshotStateFault.struct_class = Types::InvalidDBSnapshotStateFault

    InvalidDBSubnetGroupFault.struct_class = Types::InvalidDBSubnetGroupFault

    InvalidDBSubnetGroupStateFault.struct_class = Types::InvalidDBSubnetGroupStateFault

    InvalidDBSubnetStateFault.struct_class = Types::InvalidDBSubnetStateFault

    InvalidEventSubscriptionStateFault.struct_class = Types::InvalidEventSubscriptionStateFault

    InvalidExportOnlyFault.struct_class = Types::InvalidExportOnlyFault

    InvalidExportSourceStateFault.struct_class = Types::InvalidExportSourceStateFault

    InvalidExportTaskStateFault.struct_class = Types::InvalidExportTaskStateFault

    InvalidGlobalClusterStateFault.struct_class = Types::InvalidGlobalClusterStateFault

    InvalidOptionGroupStateFault.struct_class = Types::InvalidOptionGroupStateFault

    InvalidRestoreFault.struct_class = Types::InvalidRestoreFault

    InvalidS3BucketFault.struct_class = Types::InvalidS3BucketFault

    InvalidSubnet.struct_class = Types::InvalidSubnet

    InvalidVPCNetworkStateFault.struct_class = Types::InvalidVPCNetworkStateFault

    KMSKeyNotAccessibleFault.struct_class = Types::KMSKeyNotAccessibleFault

    KeyList.member = Shapes::ShapeRef.new(shape: String)

    ListTagsForResourceMessage.add_member(:resource_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceName"))
    ListTagsForResourceMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    ListTagsForResourceMessage.struct_class = Types::ListTagsForResourceMessage

    LogTypeList.member = Shapes::ShapeRef.new(shape: String)

    MinimumEngineVersionPerAllowedValue.add_member(:allowed_value, Shapes::ShapeRef.new(shape: String, location_name: "AllowedValue"))
    MinimumEngineVersionPerAllowedValue.add_member(:minimum_engine_version, Shapes::ShapeRef.new(shape: String, location_name: "MinimumEngineVersion"))
    MinimumEngineVersionPerAllowedValue.struct_class = Types::MinimumEngineVersionPerAllowedValue

    MinimumEngineVersionPerAllowedValueList.member = Shapes::ShapeRef.new(shape: MinimumEngineVersionPerAllowedValue, location_name: "MinimumEngineVersionPerAllowedValue")

    ModifyCertificatesMessage.add_member(:certificate_identifier, Shapes::ShapeRef.new(shape: String, location_name: "CertificateIdentifier"))
    ModifyCertificatesMessage.add_member(:remove_customer_override, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "RemoveCustomerOverride"))
    ModifyCertificatesMessage.struct_class = Types::ModifyCertificatesMessage

    ModifyCertificatesResult.add_member(:certificate, Shapes::ShapeRef.new(shape: Certificate, location_name: "Certificate"))
    ModifyCertificatesResult.struct_class = Types::ModifyCertificatesResult

    ModifyCurrentDBClusterCapacityMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterIdentifier"))
    ModifyCurrentDBClusterCapacityMessage.add_member(:capacity, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Capacity"))
    ModifyCurrentDBClusterCapacityMessage.add_member(:seconds_before_timeout, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "SecondsBeforeTimeout"))
    ModifyCurrentDBClusterCapacityMessage.add_member(:timeout_action, Shapes::ShapeRef.new(shape: String, location_name: "TimeoutAction"))
    ModifyCurrentDBClusterCapacityMessage.struct_class = Types::ModifyCurrentDBClusterCapacityMessage

    ModifyDBClusterEndpointMessage.add_member(:db_cluster_endpoint_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterEndpointIdentifier"))
    ModifyDBClusterEndpointMessage.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: String, location_name: "EndpointType"))
    ModifyDBClusterEndpointMessage.add_member(:static_members, Shapes::ShapeRef.new(shape: StringList, location_name: "StaticMembers"))
    ModifyDBClusterEndpointMessage.add_member(:excluded_members, Shapes::ShapeRef.new(shape: StringList, location_name: "ExcludedMembers"))
    ModifyDBClusterEndpointMessage.struct_class = Types::ModifyDBClusterEndpointMessage

    ModifyDBClusterMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterIdentifier"))
    ModifyDBClusterMessage.add_member(:new_db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "NewDBClusterIdentifier"))
    ModifyDBClusterMessage.add_member(:apply_immediately, Shapes::ShapeRef.new(shape: Boolean, location_name: "ApplyImmediately"))
    ModifyDBClusterMessage.add_member(:backup_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "BackupRetentionPeriod"))
    ModifyDBClusterMessage.add_member(:db_cluster_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterParameterGroupName"))
    ModifyDBClusterMessage.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: "VpcSecurityGroupIds"))
    ModifyDBClusterMessage.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    ModifyDBClusterMessage.add_member(:master_user_password, Shapes::ShapeRef.new(shape: String, location_name: "MasterUserPassword"))
    ModifyDBClusterMessage.add_member(:option_group_name, Shapes::ShapeRef.new(shape: String, location_name: "OptionGroupName"))
    ModifyDBClusterMessage.add_member(:preferred_backup_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredBackupWindow"))
    ModifyDBClusterMessage.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredMaintenanceWindow"))
    ModifyDBClusterMessage.add_member(:enable_iam_database_authentication, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableIAMDatabaseAuthentication"))
    ModifyDBClusterMessage.add_member(:backtrack_window, Shapes::ShapeRef.new(shape: LongOptional, location_name: "BacktrackWindow"))
    ModifyDBClusterMessage.add_member(:cloudwatch_logs_export_configuration, Shapes::ShapeRef.new(shape: CloudwatchLogsExportConfiguration, location_name: "CloudwatchLogsExportConfiguration"))
    ModifyDBClusterMessage.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    ModifyDBClusterMessage.add_member(:allow_major_version_upgrade, Shapes::ShapeRef.new(shape: Boolean, location_name: "AllowMajorVersionUpgrade"))
    ModifyDBClusterMessage.add_member(:db_instance_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceParameterGroupName"))
    ModifyDBClusterMessage.add_member(:domain, Shapes::ShapeRef.new(shape: String, location_name: "Domain"))
    ModifyDBClusterMessage.add_member(:domain_iam_role_name, Shapes::ShapeRef.new(shape: String, location_name: "DomainIAMRoleName"))
    ModifyDBClusterMessage.add_member(:scaling_configuration, Shapes::ShapeRef.new(shape: ScalingConfiguration, location_name: "ScalingConfiguration"))
    ModifyDBClusterMessage.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DeletionProtection"))
    ModifyDBClusterMessage.add_member(:enable_http_endpoint, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableHttpEndpoint"))
    ModifyDBClusterMessage.add_member(:copy_tags_to_snapshot, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CopyTagsToSnapshot"))
    ModifyDBClusterMessage.struct_class = Types::ModifyDBClusterMessage

    ModifyDBClusterParameterGroupMessage.add_member(:db_cluster_parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterParameterGroupName"))
    ModifyDBClusterParameterGroupMessage.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersList, required: true, location_name: "Parameters"))
    ModifyDBClusterParameterGroupMessage.struct_class = Types::ModifyDBClusterParameterGroupMessage

    ModifyDBClusterResult.add_member(:db_cluster, Shapes::ShapeRef.new(shape: DBCluster, location_name: "DBCluster"))
    ModifyDBClusterResult.struct_class = Types::ModifyDBClusterResult

    ModifyDBClusterSnapshotAttributeMessage.add_member(:db_cluster_snapshot_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterSnapshotIdentifier"))
    ModifyDBClusterSnapshotAttributeMessage.add_member(:attribute_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "AttributeName"))
    ModifyDBClusterSnapshotAttributeMessage.add_member(:values_to_add, Shapes::ShapeRef.new(shape: AttributeValueList, location_name: "ValuesToAdd"))
    ModifyDBClusterSnapshotAttributeMessage.add_member(:values_to_remove, Shapes::ShapeRef.new(shape: AttributeValueList, location_name: "ValuesToRemove"))
    ModifyDBClusterSnapshotAttributeMessage.struct_class = Types::ModifyDBClusterSnapshotAttributeMessage

    ModifyDBClusterSnapshotAttributeResult.add_member(:db_cluster_snapshot_attributes_result, Shapes::ShapeRef.new(shape: DBClusterSnapshotAttributesResult, location_name: "DBClusterSnapshotAttributesResult"))
    ModifyDBClusterSnapshotAttributeResult.struct_class = Types::ModifyDBClusterSnapshotAttributeResult

    ModifyDBInstanceMessage.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBInstanceIdentifier"))
    ModifyDBInstanceMessage.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "AllocatedStorage"))
    ModifyDBInstanceMessage.add_member(:db_instance_class, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceClass"))
    ModifyDBInstanceMessage.add_member(:db_subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBSubnetGroupName"))
    ModifyDBInstanceMessage.add_member(:db_security_groups, Shapes::ShapeRef.new(shape: DBSecurityGroupNameList, location_name: "DBSecurityGroups"))
    ModifyDBInstanceMessage.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: "VpcSecurityGroupIds"))
    ModifyDBInstanceMessage.add_member(:apply_immediately, Shapes::ShapeRef.new(shape: Boolean, location_name: "ApplyImmediately"))
    ModifyDBInstanceMessage.add_member(:master_user_password, Shapes::ShapeRef.new(shape: String, location_name: "MasterUserPassword"))
    ModifyDBInstanceMessage.add_member(:db_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBParameterGroupName"))
    ModifyDBInstanceMessage.add_member(:backup_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "BackupRetentionPeriod"))
    ModifyDBInstanceMessage.add_member(:preferred_backup_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredBackupWindow"))
    ModifyDBInstanceMessage.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredMaintenanceWindow"))
    ModifyDBInstanceMessage.add_member(:multi_az, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "MultiAZ"))
    ModifyDBInstanceMessage.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    ModifyDBInstanceMessage.add_member(:allow_major_version_upgrade, Shapes::ShapeRef.new(shape: Boolean, location_name: "AllowMajorVersionUpgrade"))
    ModifyDBInstanceMessage.add_member(:auto_minor_version_upgrade, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AutoMinorVersionUpgrade"))
    ModifyDBInstanceMessage.add_member(:license_model, Shapes::ShapeRef.new(shape: String, location_name: "LicenseModel"))
    ModifyDBInstanceMessage.add_member(:iops, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Iops"))
    ModifyDBInstanceMessage.add_member(:option_group_name, Shapes::ShapeRef.new(shape: String, location_name: "OptionGroupName"))
    ModifyDBInstanceMessage.add_member(:new_db_instance_identifier, Shapes::ShapeRef.new(shape: String, location_name: "NewDBInstanceIdentifier"))
    ModifyDBInstanceMessage.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    ModifyDBInstanceMessage.add_member(:tde_credential_arn, Shapes::ShapeRef.new(shape: String, location_name: "TdeCredentialArn"))
    ModifyDBInstanceMessage.add_member(:tde_credential_password, Shapes::ShapeRef.new(shape: String, location_name: "TdeCredentialPassword"))
    ModifyDBInstanceMessage.add_member(:ca_certificate_identifier, Shapes::ShapeRef.new(shape: String, location_name: "CACertificateIdentifier"))
    ModifyDBInstanceMessage.add_member(:domain, Shapes::ShapeRef.new(shape: String, location_name: "Domain"))
    ModifyDBInstanceMessage.add_member(:copy_tags_to_snapshot, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CopyTagsToSnapshot"))
    ModifyDBInstanceMessage.add_member(:monitoring_interval, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MonitoringInterval"))
    ModifyDBInstanceMessage.add_member(:db_port_number, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "DBPortNumber"))
    ModifyDBInstanceMessage.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "PubliclyAccessible"))
    ModifyDBInstanceMessage.add_member(:monitoring_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "MonitoringRoleArn"))
    ModifyDBInstanceMessage.add_member(:domain_iam_role_name, Shapes::ShapeRef.new(shape: String, location_name: "DomainIAMRoleName"))
    ModifyDBInstanceMessage.add_member(:promotion_tier, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "PromotionTier"))
    ModifyDBInstanceMessage.add_member(:enable_iam_database_authentication, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableIAMDatabaseAuthentication"))
    ModifyDBInstanceMessage.add_member(:enable_performance_insights, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnablePerformanceInsights"))
    ModifyDBInstanceMessage.add_member(:performance_insights_kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "PerformanceInsightsKMSKeyId"))
    ModifyDBInstanceMessage.add_member(:performance_insights_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "PerformanceInsightsRetentionPeriod"))
    ModifyDBInstanceMessage.add_member(:cloudwatch_logs_export_configuration, Shapes::ShapeRef.new(shape: CloudwatchLogsExportConfiguration, location_name: "CloudwatchLogsExportConfiguration"))
    ModifyDBInstanceMessage.add_member(:processor_features, Shapes::ShapeRef.new(shape: ProcessorFeatureList, location_name: "ProcessorFeatures"))
    ModifyDBInstanceMessage.add_member(:use_default_processor_features, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "UseDefaultProcessorFeatures"))
    ModifyDBInstanceMessage.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DeletionProtection"))
    ModifyDBInstanceMessage.add_member(:max_allocated_storage, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxAllocatedStorage"))
    ModifyDBInstanceMessage.add_member(:certificate_rotation_restart, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CertificateRotationRestart"))
    ModifyDBInstanceMessage.struct_class = Types::ModifyDBInstanceMessage

    ModifyDBInstanceResult.add_member(:db_instance, Shapes::ShapeRef.new(shape: DBInstance, location_name: "DBInstance"))
    ModifyDBInstanceResult.struct_class = Types::ModifyDBInstanceResult

    ModifyDBParameterGroupMessage.add_member(:db_parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBParameterGroupName"))
    ModifyDBParameterGroupMessage.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersList, required: true, location_name: "Parameters"))
    ModifyDBParameterGroupMessage.struct_class = Types::ModifyDBParameterGroupMessage

    ModifyDBProxyRequest.add_member(:db_proxy_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBProxyName"))
    ModifyDBProxyRequest.add_member(:new_db_proxy_name, Shapes::ShapeRef.new(shape: String, location_name: "NewDBProxyName"))
    ModifyDBProxyRequest.add_member(:auth, Shapes::ShapeRef.new(shape: UserAuthConfigList, location_name: "Auth"))
    ModifyDBProxyRequest.add_member(:require_tls, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "RequireTLS"))
    ModifyDBProxyRequest.add_member(:idle_client_timeout, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "IdleClientTimeout"))
    ModifyDBProxyRequest.add_member(:debug_logging, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DebugLogging"))
    ModifyDBProxyRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, location_name: "RoleArn"))
    ModifyDBProxyRequest.add_member(:security_groups, Shapes::ShapeRef.new(shape: StringList, location_name: "SecurityGroups"))
    ModifyDBProxyRequest.struct_class = Types::ModifyDBProxyRequest

    ModifyDBProxyResponse.add_member(:db_proxy, Shapes::ShapeRef.new(shape: DBProxy, location_name: "DBProxy"))
    ModifyDBProxyResponse.struct_class = Types::ModifyDBProxyResponse

    ModifyDBProxyTargetGroupRequest.add_member(:target_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TargetGroupName"))
    ModifyDBProxyTargetGroupRequest.add_member(:db_proxy_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBProxyName"))
    ModifyDBProxyTargetGroupRequest.add_member(:connection_pool_config, Shapes::ShapeRef.new(shape: ConnectionPoolConfiguration, location_name: "ConnectionPoolConfig"))
    ModifyDBProxyTargetGroupRequest.add_member(:new_name, Shapes::ShapeRef.new(shape: String, location_name: "NewName"))
    ModifyDBProxyTargetGroupRequest.struct_class = Types::ModifyDBProxyTargetGroupRequest

    ModifyDBProxyTargetGroupResponse.add_member(:db_proxy_target_group, Shapes::ShapeRef.new(shape: DBProxyTargetGroup, location_name: "DBProxyTargetGroup"))
    ModifyDBProxyTargetGroupResponse.struct_class = Types::ModifyDBProxyTargetGroupResponse

    ModifyDBSnapshotAttributeMessage.add_member(:db_snapshot_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBSnapshotIdentifier"))
    ModifyDBSnapshotAttributeMessage.add_member(:attribute_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "AttributeName"))
    ModifyDBSnapshotAttributeMessage.add_member(:values_to_add, Shapes::ShapeRef.new(shape: AttributeValueList, location_name: "ValuesToAdd"))
    ModifyDBSnapshotAttributeMessage.add_member(:values_to_remove, Shapes::ShapeRef.new(shape: AttributeValueList, location_name: "ValuesToRemove"))
    ModifyDBSnapshotAttributeMessage.struct_class = Types::ModifyDBSnapshotAttributeMessage

    ModifyDBSnapshotAttributeResult.add_member(:db_snapshot_attributes_result, Shapes::ShapeRef.new(shape: DBSnapshotAttributesResult, location_name: "DBSnapshotAttributesResult"))
    ModifyDBSnapshotAttributeResult.struct_class = Types::ModifyDBSnapshotAttributeResult

    ModifyDBSnapshotMessage.add_member(:db_snapshot_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBSnapshotIdentifier"))
    ModifyDBSnapshotMessage.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    ModifyDBSnapshotMessage.add_member(:option_group_name, Shapes::ShapeRef.new(shape: String, location_name: "OptionGroupName"))
    ModifyDBSnapshotMessage.struct_class = Types::ModifyDBSnapshotMessage

    ModifyDBSnapshotResult.add_member(:db_snapshot, Shapes::ShapeRef.new(shape: DBSnapshot, location_name: "DBSnapshot"))
    ModifyDBSnapshotResult.struct_class = Types::ModifyDBSnapshotResult

    ModifyDBSubnetGroupMessage.add_member(:db_subnet_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBSubnetGroupName"))
    ModifyDBSubnetGroupMessage.add_member(:db_subnet_group_description, Shapes::ShapeRef.new(shape: String, location_name: "DBSubnetGroupDescription"))
    ModifyDBSubnetGroupMessage.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdentifierList, required: true, location_name: "SubnetIds"))
    ModifyDBSubnetGroupMessage.struct_class = Types::ModifyDBSubnetGroupMessage

    ModifyDBSubnetGroupResult.add_member(:db_subnet_group, Shapes::ShapeRef.new(shape: DBSubnetGroup, location_name: "DBSubnetGroup"))
    ModifyDBSubnetGroupResult.struct_class = Types::ModifyDBSubnetGroupResult

    ModifyEventSubscriptionMessage.add_member(:subscription_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SubscriptionName"))
    ModifyEventSubscriptionMessage.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: String, location_name: "SnsTopicArn"))
    ModifyEventSubscriptionMessage.add_member(:source_type, Shapes::ShapeRef.new(shape: String, location_name: "SourceType"))
    ModifyEventSubscriptionMessage.add_member(:event_categories, Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: "EventCategories"))
    ModifyEventSubscriptionMessage.add_member(:enabled, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "Enabled"))
    ModifyEventSubscriptionMessage.struct_class = Types::ModifyEventSubscriptionMessage

    ModifyEventSubscriptionResult.add_member(:event_subscription, Shapes::ShapeRef.new(shape: EventSubscription, location_name: "EventSubscription"))
    ModifyEventSubscriptionResult.struct_class = Types::ModifyEventSubscriptionResult

    ModifyGlobalClusterMessage.add_member(:global_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "GlobalClusterIdentifier"))
    ModifyGlobalClusterMessage.add_member(:new_global_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "NewGlobalClusterIdentifier"))
    ModifyGlobalClusterMessage.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DeletionProtection"))
    ModifyGlobalClusterMessage.struct_class = Types::ModifyGlobalClusterMessage

    ModifyGlobalClusterResult.add_member(:global_cluster, Shapes::ShapeRef.new(shape: GlobalCluster, location_name: "GlobalCluster"))
    ModifyGlobalClusterResult.struct_class = Types::ModifyGlobalClusterResult

    ModifyOptionGroupMessage.add_member(:option_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "OptionGroupName"))
    ModifyOptionGroupMessage.add_member(:options_to_include, Shapes::ShapeRef.new(shape: OptionConfigurationList, location_name: "OptionsToInclude"))
    ModifyOptionGroupMessage.add_member(:options_to_remove, Shapes::ShapeRef.new(shape: OptionNamesList, location_name: "OptionsToRemove"))
    ModifyOptionGroupMessage.add_member(:apply_immediately, Shapes::ShapeRef.new(shape: Boolean, location_name: "ApplyImmediately"))
    ModifyOptionGroupMessage.struct_class = Types::ModifyOptionGroupMessage

    ModifyOptionGroupResult.add_member(:option_group, Shapes::ShapeRef.new(shape: OptionGroup, location_name: "OptionGroup"))
    ModifyOptionGroupResult.struct_class = Types::ModifyOptionGroupResult

    Option.add_member(:option_name, Shapes::ShapeRef.new(shape: String, location_name: "OptionName"))
    Option.add_member(:option_description, Shapes::ShapeRef.new(shape: String, location_name: "OptionDescription"))
    Option.add_member(:persistent, Shapes::ShapeRef.new(shape: Boolean, location_name: "Persistent"))
    Option.add_member(:permanent, Shapes::ShapeRef.new(shape: Boolean, location_name: "Permanent"))
    Option.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    Option.add_member(:option_version, Shapes::ShapeRef.new(shape: String, location_name: "OptionVersion"))
    Option.add_member(:option_settings, Shapes::ShapeRef.new(shape: OptionSettingConfigurationList, location_name: "OptionSettings"))
    Option.add_member(:db_security_group_memberships, Shapes::ShapeRef.new(shape: DBSecurityGroupMembershipList, location_name: "DBSecurityGroupMemberships"))
    Option.add_member(:vpc_security_group_memberships, Shapes::ShapeRef.new(shape: VpcSecurityGroupMembershipList, location_name: "VpcSecurityGroupMemberships"))
    Option.struct_class = Types::Option

    OptionConfiguration.add_member(:option_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "OptionName"))
    OptionConfiguration.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    OptionConfiguration.add_member(:option_version, Shapes::ShapeRef.new(shape: String, location_name: "OptionVersion"))
    OptionConfiguration.add_member(:db_security_group_memberships, Shapes::ShapeRef.new(shape: DBSecurityGroupNameList, location_name: "DBSecurityGroupMemberships"))
    OptionConfiguration.add_member(:vpc_security_group_memberships, Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: "VpcSecurityGroupMemberships"))
    OptionConfiguration.add_member(:option_settings, Shapes::ShapeRef.new(shape: OptionSettingsList, location_name: "OptionSettings"))
    OptionConfiguration.struct_class = Types::OptionConfiguration

    OptionConfigurationList.member = Shapes::ShapeRef.new(shape: OptionConfiguration, location_name: "OptionConfiguration")

    OptionGroup.add_member(:option_group_name, Shapes::ShapeRef.new(shape: String, location_name: "OptionGroupName"))
    OptionGroup.add_member(:option_group_description, Shapes::ShapeRef.new(shape: String, location_name: "OptionGroupDescription"))
    OptionGroup.add_member(:engine_name, Shapes::ShapeRef.new(shape: String, location_name: "EngineName"))
    OptionGroup.add_member(:major_engine_version, Shapes::ShapeRef.new(shape: String, location_name: "MajorEngineVersion"))
    OptionGroup.add_member(:options, Shapes::ShapeRef.new(shape: OptionsList, location_name: "Options"))
    OptionGroup.add_member(:allows_vpc_and_non_vpc_instance_memberships, Shapes::ShapeRef.new(shape: Boolean, location_name: "AllowsVpcAndNonVpcInstanceMemberships"))
    OptionGroup.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcId"))
    OptionGroup.add_member(:option_group_arn, Shapes::ShapeRef.new(shape: String, location_name: "OptionGroupArn"))
    OptionGroup.struct_class = Types::OptionGroup

    OptionGroupAlreadyExistsFault.struct_class = Types::OptionGroupAlreadyExistsFault

    OptionGroupMembership.add_member(:option_group_name, Shapes::ShapeRef.new(shape: String, location_name: "OptionGroupName"))
    OptionGroupMembership.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    OptionGroupMembership.struct_class = Types::OptionGroupMembership

    OptionGroupMembershipList.member = Shapes::ShapeRef.new(shape: OptionGroupMembership, location_name: "OptionGroupMembership")

    OptionGroupNotFoundFault.struct_class = Types::OptionGroupNotFoundFault

    OptionGroupOption.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    OptionGroupOption.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    OptionGroupOption.add_member(:engine_name, Shapes::ShapeRef.new(shape: String, location_name: "EngineName"))
    OptionGroupOption.add_member(:major_engine_version, Shapes::ShapeRef.new(shape: String, location_name: "MajorEngineVersion"))
    OptionGroupOption.add_member(:minimum_required_minor_engine_version, Shapes::ShapeRef.new(shape: String, location_name: "MinimumRequiredMinorEngineVersion"))
    OptionGroupOption.add_member(:port_required, Shapes::ShapeRef.new(shape: Boolean, location_name: "PortRequired"))
    OptionGroupOption.add_member(:default_port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "DefaultPort"))
    OptionGroupOption.add_member(:options_depended_on, Shapes::ShapeRef.new(shape: OptionsDependedOn, location_name: "OptionsDependedOn"))
    OptionGroupOption.add_member(:options_conflicts_with, Shapes::ShapeRef.new(shape: OptionsConflictsWith, location_name: "OptionsConflictsWith"))
    OptionGroupOption.add_member(:persistent, Shapes::ShapeRef.new(shape: Boolean, location_name: "Persistent"))
    OptionGroupOption.add_member(:permanent, Shapes::ShapeRef.new(shape: Boolean, location_name: "Permanent"))
    OptionGroupOption.add_member(:requires_auto_minor_engine_version_upgrade, Shapes::ShapeRef.new(shape: Boolean, location_name: "RequiresAutoMinorEngineVersionUpgrade"))
    OptionGroupOption.add_member(:vpc_only, Shapes::ShapeRef.new(shape: Boolean, location_name: "VpcOnly"))
    OptionGroupOption.add_member(:supports_option_version_downgrade, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "SupportsOptionVersionDowngrade"))
    OptionGroupOption.add_member(:option_group_option_settings, Shapes::ShapeRef.new(shape: OptionGroupOptionSettingsList, location_name: "OptionGroupOptionSettings"))
    OptionGroupOption.add_member(:option_group_option_versions, Shapes::ShapeRef.new(shape: OptionGroupOptionVersionsList, location_name: "OptionGroupOptionVersions"))
    OptionGroupOption.struct_class = Types::OptionGroupOption

    OptionGroupOptionSetting.add_member(:setting_name, Shapes::ShapeRef.new(shape: String, location_name: "SettingName"))
    OptionGroupOptionSetting.add_member(:setting_description, Shapes::ShapeRef.new(shape: String, location_name: "SettingDescription"))
    OptionGroupOptionSetting.add_member(:default_value, Shapes::ShapeRef.new(shape: String, location_name: "DefaultValue"))
    OptionGroupOptionSetting.add_member(:apply_type, Shapes::ShapeRef.new(shape: String, location_name: "ApplyType"))
    OptionGroupOptionSetting.add_member(:allowed_values, Shapes::ShapeRef.new(shape: String, location_name: "AllowedValues"))
    OptionGroupOptionSetting.add_member(:is_modifiable, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsModifiable"))
    OptionGroupOptionSetting.add_member(:is_required, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsRequired"))
    OptionGroupOptionSetting.add_member(:minimum_engine_version_per_allowed_value, Shapes::ShapeRef.new(shape: MinimumEngineVersionPerAllowedValueList, location_name: "MinimumEngineVersionPerAllowedValue"))
    OptionGroupOptionSetting.struct_class = Types::OptionGroupOptionSetting

    OptionGroupOptionSettingsList.member = Shapes::ShapeRef.new(shape: OptionGroupOptionSetting, location_name: "OptionGroupOptionSetting")

    OptionGroupOptionVersionsList.member = Shapes::ShapeRef.new(shape: OptionVersion, location_name: "OptionVersion")

    OptionGroupOptionsList.member = Shapes::ShapeRef.new(shape: OptionGroupOption, location_name: "OptionGroupOption")

    OptionGroupOptionsMessage.add_member(:option_group_options, Shapes::ShapeRef.new(shape: OptionGroupOptionsList, location_name: "OptionGroupOptions"))
    OptionGroupOptionsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    OptionGroupOptionsMessage.struct_class = Types::OptionGroupOptionsMessage

    OptionGroupQuotaExceededFault.struct_class = Types::OptionGroupQuotaExceededFault

    OptionGroups.add_member(:option_groups_list, Shapes::ShapeRef.new(shape: OptionGroupsList, location_name: "OptionGroupsList"))
    OptionGroups.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    OptionGroups.struct_class = Types::OptionGroups

    OptionGroupsList.member = Shapes::ShapeRef.new(shape: OptionGroup, location_name: "OptionGroup")

    OptionNamesList.member = Shapes::ShapeRef.new(shape: String)

    OptionSetting.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    OptionSetting.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    OptionSetting.add_member(:default_value, Shapes::ShapeRef.new(shape: String, location_name: "DefaultValue"))
    OptionSetting.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    OptionSetting.add_member(:apply_type, Shapes::ShapeRef.new(shape: String, location_name: "ApplyType"))
    OptionSetting.add_member(:data_type, Shapes::ShapeRef.new(shape: String, location_name: "DataType"))
    OptionSetting.add_member(:allowed_values, Shapes::ShapeRef.new(shape: String, location_name: "AllowedValues"))
    OptionSetting.add_member(:is_modifiable, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsModifiable"))
    OptionSetting.add_member(:is_collection, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsCollection"))
    OptionSetting.struct_class = Types::OptionSetting

    OptionSettingConfigurationList.member = Shapes::ShapeRef.new(shape: OptionSetting, location_name: "OptionSetting")

    OptionSettingsList.member = Shapes::ShapeRef.new(shape: OptionSetting, location_name: "OptionSetting")

    OptionVersion.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "Version"))
    OptionVersion.add_member(:is_default, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsDefault"))
    OptionVersion.struct_class = Types::OptionVersion

    OptionsConflictsWith.member = Shapes::ShapeRef.new(shape: String, location_name: "OptionConflictName")

    OptionsDependedOn.member = Shapes::ShapeRef.new(shape: String, location_name: "OptionName")

    OptionsList.member = Shapes::ShapeRef.new(shape: Option, location_name: "Option")

    OrderableDBInstanceOption.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    OrderableDBInstanceOption.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    OrderableDBInstanceOption.add_member(:db_instance_class, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceClass"))
    OrderableDBInstanceOption.add_member(:license_model, Shapes::ShapeRef.new(shape: String, location_name: "LicenseModel"))
    OrderableDBInstanceOption.add_member(:availability_zone_group, Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZoneGroup"))
    OrderableDBInstanceOption.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZoneList, location_name: "AvailabilityZones"))
    OrderableDBInstanceOption.add_member(:multi_az_capable, Shapes::ShapeRef.new(shape: Boolean, location_name: "MultiAZCapable"))
    OrderableDBInstanceOption.add_member(:read_replica_capable, Shapes::ShapeRef.new(shape: Boolean, location_name: "ReadReplicaCapable"))
    OrderableDBInstanceOption.add_member(:vpc, Shapes::ShapeRef.new(shape: Boolean, location_name: "Vpc"))
    OrderableDBInstanceOption.add_member(:supports_storage_encryption, Shapes::ShapeRef.new(shape: Boolean, location_name: "SupportsStorageEncryption"))
    OrderableDBInstanceOption.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    OrderableDBInstanceOption.add_member(:supports_iops, Shapes::ShapeRef.new(shape: Boolean, location_name: "SupportsIops"))
    OrderableDBInstanceOption.add_member(:supports_enhanced_monitoring, Shapes::ShapeRef.new(shape: Boolean, location_name: "SupportsEnhancedMonitoring"))
    OrderableDBInstanceOption.add_member(:supports_iam_database_authentication, Shapes::ShapeRef.new(shape: Boolean, location_name: "SupportsIAMDatabaseAuthentication"))
    OrderableDBInstanceOption.add_member(:supports_performance_insights, Shapes::ShapeRef.new(shape: Boolean, location_name: "SupportsPerformanceInsights"))
    OrderableDBInstanceOption.add_member(:min_storage_size, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MinStorageSize"))
    OrderableDBInstanceOption.add_member(:max_storage_size, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxStorageSize"))
    OrderableDBInstanceOption.add_member(:min_iops_per_db_instance, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MinIopsPerDbInstance"))
    OrderableDBInstanceOption.add_member(:max_iops_per_db_instance, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxIopsPerDbInstance"))
    OrderableDBInstanceOption.add_member(:min_iops_per_gib, Shapes::ShapeRef.new(shape: DoubleOptional, location_name: "MinIopsPerGib"))
    OrderableDBInstanceOption.add_member(:max_iops_per_gib, Shapes::ShapeRef.new(shape: DoubleOptional, location_name: "MaxIopsPerGib"))
    OrderableDBInstanceOption.add_member(:available_processor_features, Shapes::ShapeRef.new(shape: AvailableProcessorFeatureList, location_name: "AvailableProcessorFeatures"))
    OrderableDBInstanceOption.add_member(:supported_engine_modes, Shapes::ShapeRef.new(shape: EngineModeList, location_name: "SupportedEngineModes"))
    OrderableDBInstanceOption.add_member(:supports_storage_autoscaling, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "SupportsStorageAutoscaling"))
    OrderableDBInstanceOption.add_member(:supports_kerberos_authentication, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "SupportsKerberosAuthentication"))
    OrderableDBInstanceOption.struct_class = Types::OrderableDBInstanceOption

    OrderableDBInstanceOptionsList.member = Shapes::ShapeRef.new(shape: OrderableDBInstanceOption, location_name: "OrderableDBInstanceOption")

    OrderableDBInstanceOptionsMessage.add_member(:orderable_db_instance_options, Shapes::ShapeRef.new(shape: OrderableDBInstanceOptionsList, location_name: "OrderableDBInstanceOptions"))
    OrderableDBInstanceOptionsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    OrderableDBInstanceOptionsMessage.struct_class = Types::OrderableDBInstanceOptionsMessage

    Parameter.add_member(:parameter_name, Shapes::ShapeRef.new(shape: String, location_name: "ParameterName"))
    Parameter.add_member(:parameter_value, Shapes::ShapeRef.new(shape: String, location_name: "ParameterValue"))
    Parameter.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    Parameter.add_member(:source, Shapes::ShapeRef.new(shape: String, location_name: "Source"))
    Parameter.add_member(:apply_type, Shapes::ShapeRef.new(shape: String, location_name: "ApplyType"))
    Parameter.add_member(:data_type, Shapes::ShapeRef.new(shape: String, location_name: "DataType"))
    Parameter.add_member(:allowed_values, Shapes::ShapeRef.new(shape: String, location_name: "AllowedValues"))
    Parameter.add_member(:is_modifiable, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsModifiable"))
    Parameter.add_member(:minimum_engine_version, Shapes::ShapeRef.new(shape: String, location_name: "MinimumEngineVersion"))
    Parameter.add_member(:apply_method, Shapes::ShapeRef.new(shape: ApplyMethod, location_name: "ApplyMethod"))
    Parameter.add_member(:supported_engine_modes, Shapes::ShapeRef.new(shape: EngineModeList, location_name: "SupportedEngineModes"))
    Parameter.struct_class = Types::Parameter

    ParametersList.member = Shapes::ShapeRef.new(shape: Parameter, location_name: "Parameter")

    PendingCloudwatchLogsExports.add_member(:log_types_to_enable, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "LogTypesToEnable"))
    PendingCloudwatchLogsExports.add_member(:log_types_to_disable, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "LogTypesToDisable"))
    PendingCloudwatchLogsExports.struct_class = Types::PendingCloudwatchLogsExports

    PendingMaintenanceAction.add_member(:action, Shapes::ShapeRef.new(shape: String, location_name: "Action"))
    PendingMaintenanceAction.add_member(:auto_applied_after_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "AutoAppliedAfterDate"))
    PendingMaintenanceAction.add_member(:forced_apply_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "ForcedApplyDate"))
    PendingMaintenanceAction.add_member(:opt_in_status, Shapes::ShapeRef.new(shape: String, location_name: "OptInStatus"))
    PendingMaintenanceAction.add_member(:current_apply_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "CurrentApplyDate"))
    PendingMaintenanceAction.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    PendingMaintenanceAction.struct_class = Types::PendingMaintenanceAction

    PendingMaintenanceActionDetails.member = Shapes::ShapeRef.new(shape: PendingMaintenanceAction, location_name: "PendingMaintenanceAction")

    PendingMaintenanceActions.member = Shapes::ShapeRef.new(shape: ResourcePendingMaintenanceActions, location_name: "ResourcePendingMaintenanceActions")

    PendingMaintenanceActionsMessage.add_member(:pending_maintenance_actions, Shapes::ShapeRef.new(shape: PendingMaintenanceActions, location_name: "PendingMaintenanceActions"))
    PendingMaintenanceActionsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    PendingMaintenanceActionsMessage.struct_class = Types::PendingMaintenanceActionsMessage

    PendingModifiedValues.add_member(:db_instance_class, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceClass"))
    PendingModifiedValues.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "AllocatedStorage"))
    PendingModifiedValues.add_member(:master_user_password, Shapes::ShapeRef.new(shape: String, location_name: "MasterUserPassword"))
    PendingModifiedValues.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    PendingModifiedValues.add_member(:backup_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "BackupRetentionPeriod"))
    PendingModifiedValues.add_member(:multi_az, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "MultiAZ"))
    PendingModifiedValues.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    PendingModifiedValues.add_member(:license_model, Shapes::ShapeRef.new(shape: String, location_name: "LicenseModel"))
    PendingModifiedValues.add_member(:iops, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Iops"))
    PendingModifiedValues.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceIdentifier"))
    PendingModifiedValues.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    PendingModifiedValues.add_member(:ca_certificate_identifier, Shapes::ShapeRef.new(shape: String, location_name: "CACertificateIdentifier"))
    PendingModifiedValues.add_member(:db_subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBSubnetGroupName"))
    PendingModifiedValues.add_member(:pending_cloudwatch_logs_exports, Shapes::ShapeRef.new(shape: PendingCloudwatchLogsExports, location_name: "PendingCloudwatchLogsExports"))
    PendingModifiedValues.add_member(:processor_features, Shapes::ShapeRef.new(shape: ProcessorFeatureList, location_name: "ProcessorFeatures"))
    PendingModifiedValues.struct_class = Types::PendingModifiedValues

    PointInTimeRestoreNotEnabledFault.struct_class = Types::PointInTimeRestoreNotEnabledFault

    ProcessorFeature.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    ProcessorFeature.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    ProcessorFeature.struct_class = Types::ProcessorFeature

    ProcessorFeatureList.member = Shapes::ShapeRef.new(shape: ProcessorFeature, location_name: "ProcessorFeature")

    PromoteReadReplicaDBClusterMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterIdentifier"))
    PromoteReadReplicaDBClusterMessage.struct_class = Types::PromoteReadReplicaDBClusterMessage

    PromoteReadReplicaDBClusterResult.add_member(:db_cluster, Shapes::ShapeRef.new(shape: DBCluster, location_name: "DBCluster"))
    PromoteReadReplicaDBClusterResult.struct_class = Types::PromoteReadReplicaDBClusterResult

    PromoteReadReplicaMessage.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBInstanceIdentifier"))
    PromoteReadReplicaMessage.add_member(:backup_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "BackupRetentionPeriod"))
    PromoteReadReplicaMessage.add_member(:preferred_backup_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredBackupWindow"))
    PromoteReadReplicaMessage.struct_class = Types::PromoteReadReplicaMessage

    PromoteReadReplicaResult.add_member(:db_instance, Shapes::ShapeRef.new(shape: DBInstance, location_name: "DBInstance"))
    PromoteReadReplicaResult.struct_class = Types::PromoteReadReplicaResult

    ProvisionedIopsNotAvailableInAZFault.struct_class = Types::ProvisionedIopsNotAvailableInAZFault

    PurchaseReservedDBInstancesOfferingMessage.add_member(:reserved_db_instances_offering_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReservedDBInstancesOfferingId"))
    PurchaseReservedDBInstancesOfferingMessage.add_member(:reserved_db_instance_id, Shapes::ShapeRef.new(shape: String, location_name: "ReservedDBInstanceId"))
    PurchaseReservedDBInstancesOfferingMessage.add_member(:db_instance_count, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "DBInstanceCount"))
    PurchaseReservedDBInstancesOfferingMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    PurchaseReservedDBInstancesOfferingMessage.struct_class = Types::PurchaseReservedDBInstancesOfferingMessage

    PurchaseReservedDBInstancesOfferingResult.add_member(:reserved_db_instance, Shapes::ShapeRef.new(shape: ReservedDBInstance, location_name: "ReservedDBInstance"))
    PurchaseReservedDBInstancesOfferingResult.struct_class = Types::PurchaseReservedDBInstancesOfferingResult

    Range.add_member(:from, Shapes::ShapeRef.new(shape: Integer, location_name: "From"))
    Range.add_member(:to, Shapes::ShapeRef.new(shape: Integer, location_name: "To"))
    Range.add_member(:step, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Step"))
    Range.struct_class = Types::Range

    RangeList.member = Shapes::ShapeRef.new(shape: Range, location_name: "Range")

    ReadReplicaDBClusterIdentifierList.member = Shapes::ShapeRef.new(shape: String, location_name: "ReadReplicaDBClusterIdentifier")

    ReadReplicaDBInstanceIdentifierList.member = Shapes::ShapeRef.new(shape: String, location_name: "ReadReplicaDBInstanceIdentifier")

    ReadReplicaIdentifierList.member = Shapes::ShapeRef.new(shape: String, location_name: "ReadReplicaIdentifier")

    ReadersArnList.member = Shapes::ShapeRef.new(shape: String)

    RebootDBInstanceMessage.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBInstanceIdentifier"))
    RebootDBInstanceMessage.add_member(:force_failover, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ForceFailover"))
    RebootDBInstanceMessage.struct_class = Types::RebootDBInstanceMessage

    RebootDBInstanceResult.add_member(:db_instance, Shapes::ShapeRef.new(shape: DBInstance, location_name: "DBInstance"))
    RebootDBInstanceResult.struct_class = Types::RebootDBInstanceResult

    RecurringCharge.add_member(:recurring_charge_amount, Shapes::ShapeRef.new(shape: Double, location_name: "RecurringChargeAmount"))
    RecurringCharge.add_member(:recurring_charge_frequency, Shapes::ShapeRef.new(shape: String, location_name: "RecurringChargeFrequency"))
    RecurringCharge.struct_class = Types::RecurringCharge

    RecurringChargeList.member = Shapes::ShapeRef.new(shape: RecurringCharge, location_name: "RecurringCharge")

    RegisterDBProxyTargetsRequest.add_member(:db_proxy_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBProxyName"))
    RegisterDBProxyTargetsRequest.add_member(:target_group_name, Shapes::ShapeRef.new(shape: String, location_name: "TargetGroupName"))
    RegisterDBProxyTargetsRequest.add_member(:db_instance_identifiers, Shapes::ShapeRef.new(shape: StringList, location_name: "DBInstanceIdentifiers"))
    RegisterDBProxyTargetsRequest.add_member(:db_cluster_identifiers, Shapes::ShapeRef.new(shape: StringList, location_name: "DBClusterIdentifiers"))
    RegisterDBProxyTargetsRequest.struct_class = Types::RegisterDBProxyTargetsRequest

    RegisterDBProxyTargetsResponse.add_member(:db_proxy_targets, Shapes::ShapeRef.new(shape: TargetList, location_name: "DBProxyTargets"))
    RegisterDBProxyTargetsResponse.struct_class = Types::RegisterDBProxyTargetsResponse

    RemoveFromGlobalClusterMessage.add_member(:global_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "GlobalClusterIdentifier"))
    RemoveFromGlobalClusterMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DbClusterIdentifier"))
    RemoveFromGlobalClusterMessage.struct_class = Types::RemoveFromGlobalClusterMessage

    RemoveFromGlobalClusterResult.add_member(:global_cluster, Shapes::ShapeRef.new(shape: GlobalCluster, location_name: "GlobalCluster"))
    RemoveFromGlobalClusterResult.struct_class = Types::RemoveFromGlobalClusterResult

    RemoveRoleFromDBClusterMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterIdentifier"))
    RemoveRoleFromDBClusterMessage.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RoleArn"))
    RemoveRoleFromDBClusterMessage.add_member(:feature_name, Shapes::ShapeRef.new(shape: String, location_name: "FeatureName"))
    RemoveRoleFromDBClusterMessage.struct_class = Types::RemoveRoleFromDBClusterMessage

    RemoveRoleFromDBInstanceMessage.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBInstanceIdentifier"))
    RemoveRoleFromDBInstanceMessage.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RoleArn"))
    RemoveRoleFromDBInstanceMessage.add_member(:feature_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "FeatureName"))
    RemoveRoleFromDBInstanceMessage.struct_class = Types::RemoveRoleFromDBInstanceMessage

    RemoveSourceIdentifierFromSubscriptionMessage.add_member(:subscription_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SubscriptionName"))
    RemoveSourceIdentifierFromSubscriptionMessage.add_member(:source_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SourceIdentifier"))
    RemoveSourceIdentifierFromSubscriptionMessage.struct_class = Types::RemoveSourceIdentifierFromSubscriptionMessage

    RemoveSourceIdentifierFromSubscriptionResult.add_member(:event_subscription, Shapes::ShapeRef.new(shape: EventSubscription, location_name: "EventSubscription"))
    RemoveSourceIdentifierFromSubscriptionResult.struct_class = Types::RemoveSourceIdentifierFromSubscriptionResult

    RemoveTagsFromResourceMessage.add_member(:resource_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceName"))
    RemoveTagsFromResourceMessage.add_member(:tag_keys, Shapes::ShapeRef.new(shape: KeyList, required: true, location_name: "TagKeys"))
    RemoveTagsFromResourceMessage.struct_class = Types::RemoveTagsFromResourceMessage

    ReservedDBInstance.add_member(:reserved_db_instance_id, Shapes::ShapeRef.new(shape: String, location_name: "ReservedDBInstanceId"))
    ReservedDBInstance.add_member(:reserved_db_instances_offering_id, Shapes::ShapeRef.new(shape: String, location_name: "ReservedDBInstancesOfferingId"))
    ReservedDBInstance.add_member(:db_instance_class, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceClass"))
    ReservedDBInstance.add_member(:start_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "StartTime"))
    ReservedDBInstance.add_member(:duration, Shapes::ShapeRef.new(shape: Integer, location_name: "Duration"))
    ReservedDBInstance.add_member(:fixed_price, Shapes::ShapeRef.new(shape: Double, location_name: "FixedPrice"))
    ReservedDBInstance.add_member(:usage_price, Shapes::ShapeRef.new(shape: Double, location_name: "UsagePrice"))
    ReservedDBInstance.add_member(:currency_code, Shapes::ShapeRef.new(shape: String, location_name: "CurrencyCode"))
    ReservedDBInstance.add_member(:db_instance_count, Shapes::ShapeRef.new(shape: Integer, location_name: "DBInstanceCount"))
    ReservedDBInstance.add_member(:product_description, Shapes::ShapeRef.new(shape: String, location_name: "ProductDescription"))
    ReservedDBInstance.add_member(:offering_type, Shapes::ShapeRef.new(shape: String, location_name: "OfferingType"))
    ReservedDBInstance.add_member(:multi_az, Shapes::ShapeRef.new(shape: Boolean, location_name: "MultiAZ"))
    ReservedDBInstance.add_member(:state, Shapes::ShapeRef.new(shape: String, location_name: "State"))
    ReservedDBInstance.add_member(:recurring_charges, Shapes::ShapeRef.new(shape: RecurringChargeList, location_name: "RecurringCharges"))
    ReservedDBInstance.add_member(:reserved_db_instance_arn, Shapes::ShapeRef.new(shape: String, location_name: "ReservedDBInstanceArn"))
    ReservedDBInstance.add_member(:lease_id, Shapes::ShapeRef.new(shape: String, location_name: "LeaseId"))
    ReservedDBInstance.struct_class = Types::ReservedDBInstance

    ReservedDBInstanceAlreadyExistsFault.struct_class = Types::ReservedDBInstanceAlreadyExistsFault

    ReservedDBInstanceList.member = Shapes::ShapeRef.new(shape: ReservedDBInstance, location_name: "ReservedDBInstance")

    ReservedDBInstanceMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    ReservedDBInstanceMessage.add_member(:reserved_db_instances, Shapes::ShapeRef.new(shape: ReservedDBInstanceList, location_name: "ReservedDBInstances"))
    ReservedDBInstanceMessage.struct_class = Types::ReservedDBInstanceMessage

    ReservedDBInstanceNotFoundFault.struct_class = Types::ReservedDBInstanceNotFoundFault

    ReservedDBInstanceQuotaExceededFault.struct_class = Types::ReservedDBInstanceQuotaExceededFault

    ReservedDBInstancesOffering.add_member(:reserved_db_instances_offering_id, Shapes::ShapeRef.new(shape: String, location_name: "ReservedDBInstancesOfferingId"))
    ReservedDBInstancesOffering.add_member(:db_instance_class, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceClass"))
    ReservedDBInstancesOffering.add_member(:duration, Shapes::ShapeRef.new(shape: Integer, location_name: "Duration"))
    ReservedDBInstancesOffering.add_member(:fixed_price, Shapes::ShapeRef.new(shape: Double, location_name: "FixedPrice"))
    ReservedDBInstancesOffering.add_member(:usage_price, Shapes::ShapeRef.new(shape: Double, location_name: "UsagePrice"))
    ReservedDBInstancesOffering.add_member(:currency_code, Shapes::ShapeRef.new(shape: String, location_name: "CurrencyCode"))
    ReservedDBInstancesOffering.add_member(:product_description, Shapes::ShapeRef.new(shape: String, location_name: "ProductDescription"))
    ReservedDBInstancesOffering.add_member(:offering_type, Shapes::ShapeRef.new(shape: String, location_name: "OfferingType"))
    ReservedDBInstancesOffering.add_member(:multi_az, Shapes::ShapeRef.new(shape: Boolean, location_name: "MultiAZ"))
    ReservedDBInstancesOffering.add_member(:recurring_charges, Shapes::ShapeRef.new(shape: RecurringChargeList, location_name: "RecurringCharges"))
    ReservedDBInstancesOffering.struct_class = Types::ReservedDBInstancesOffering

    ReservedDBInstancesOfferingList.member = Shapes::ShapeRef.new(shape: ReservedDBInstancesOffering, location_name: "ReservedDBInstancesOffering")

    ReservedDBInstancesOfferingMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    ReservedDBInstancesOfferingMessage.add_member(:reserved_db_instances_offerings, Shapes::ShapeRef.new(shape: ReservedDBInstancesOfferingList, location_name: "ReservedDBInstancesOfferings"))
    ReservedDBInstancesOfferingMessage.struct_class = Types::ReservedDBInstancesOfferingMessage

    ReservedDBInstancesOfferingNotFoundFault.struct_class = Types::ReservedDBInstancesOfferingNotFoundFault

    ResetDBClusterParameterGroupMessage.add_member(:db_cluster_parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterParameterGroupName"))
    ResetDBClusterParameterGroupMessage.add_member(:reset_all_parameters, Shapes::ShapeRef.new(shape: Boolean, location_name: "ResetAllParameters"))
    ResetDBClusterParameterGroupMessage.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersList, location_name: "Parameters"))
    ResetDBClusterParameterGroupMessage.struct_class = Types::ResetDBClusterParameterGroupMessage

    ResetDBParameterGroupMessage.add_member(:db_parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBParameterGroupName"))
    ResetDBParameterGroupMessage.add_member(:reset_all_parameters, Shapes::ShapeRef.new(shape: Boolean, location_name: "ResetAllParameters"))
    ResetDBParameterGroupMessage.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersList, location_name: "Parameters"))
    ResetDBParameterGroupMessage.struct_class = Types::ResetDBParameterGroupMessage

    ResourceNotFoundFault.struct_class = Types::ResourceNotFoundFault

    ResourcePendingMaintenanceActions.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ResourceIdentifier"))
    ResourcePendingMaintenanceActions.add_member(:pending_maintenance_action_details, Shapes::ShapeRef.new(shape: PendingMaintenanceActionDetails, location_name: "PendingMaintenanceActionDetails"))
    ResourcePendingMaintenanceActions.struct_class = Types::ResourcePendingMaintenanceActions

    RestoreDBClusterFromS3Message.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZones, location_name: "AvailabilityZones"))
    RestoreDBClusterFromS3Message.add_member(:backup_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "BackupRetentionPeriod"))
    RestoreDBClusterFromS3Message.add_member(:character_set_name, Shapes::ShapeRef.new(shape: String, location_name: "CharacterSetName"))
    RestoreDBClusterFromS3Message.add_member(:database_name, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    RestoreDBClusterFromS3Message.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterIdentifier"))
    RestoreDBClusterFromS3Message.add_member(:db_cluster_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterParameterGroupName"))
    RestoreDBClusterFromS3Message.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: "VpcSecurityGroupIds"))
    RestoreDBClusterFromS3Message.add_member(:db_subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBSubnetGroupName"))
    RestoreDBClusterFromS3Message.add_member(:engine, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Engine"))
    RestoreDBClusterFromS3Message.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    RestoreDBClusterFromS3Message.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    RestoreDBClusterFromS3Message.add_member(:master_username, Shapes::ShapeRef.new(shape: String, required: true, location_name: "MasterUsername"))
    RestoreDBClusterFromS3Message.add_member(:master_user_password, Shapes::ShapeRef.new(shape: String, required: true, location_name: "MasterUserPassword"))
    RestoreDBClusterFromS3Message.add_member(:option_group_name, Shapes::ShapeRef.new(shape: String, location_name: "OptionGroupName"))
    RestoreDBClusterFromS3Message.add_member(:preferred_backup_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredBackupWindow"))
    RestoreDBClusterFromS3Message.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredMaintenanceWindow"))
    RestoreDBClusterFromS3Message.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    RestoreDBClusterFromS3Message.add_member(:storage_encrypted, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "StorageEncrypted"))
    RestoreDBClusterFromS3Message.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    RestoreDBClusterFromS3Message.add_member(:enable_iam_database_authentication, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableIAMDatabaseAuthentication"))
    RestoreDBClusterFromS3Message.add_member(:source_engine, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SourceEngine"))
    RestoreDBClusterFromS3Message.add_member(:source_engine_version, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SourceEngineVersion"))
    RestoreDBClusterFromS3Message.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "S3BucketName"))
    RestoreDBClusterFromS3Message.add_member(:s3_prefix, Shapes::ShapeRef.new(shape: String, location_name: "S3Prefix"))
    RestoreDBClusterFromS3Message.add_member(:s3_ingestion_role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "S3IngestionRoleArn"))
    RestoreDBClusterFromS3Message.add_member(:backtrack_window, Shapes::ShapeRef.new(shape: LongOptional, location_name: "BacktrackWindow"))
    RestoreDBClusterFromS3Message.add_member(:enable_cloudwatch_logs_exports, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "EnableCloudwatchLogsExports"))
    RestoreDBClusterFromS3Message.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DeletionProtection"))
    RestoreDBClusterFromS3Message.add_member(:copy_tags_to_snapshot, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CopyTagsToSnapshot"))
    RestoreDBClusterFromS3Message.add_member(:domain, Shapes::ShapeRef.new(shape: String, location_name: "Domain"))
    RestoreDBClusterFromS3Message.add_member(:domain_iam_role_name, Shapes::ShapeRef.new(shape: String, location_name: "DomainIAMRoleName"))
    RestoreDBClusterFromS3Message.struct_class = Types::RestoreDBClusterFromS3Message

    RestoreDBClusterFromS3Result.add_member(:db_cluster, Shapes::ShapeRef.new(shape: DBCluster, location_name: "DBCluster"))
    RestoreDBClusterFromS3Result.struct_class = Types::RestoreDBClusterFromS3Result

    RestoreDBClusterFromSnapshotMessage.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZones, location_name: "AvailabilityZones"))
    RestoreDBClusterFromSnapshotMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterIdentifier"))
    RestoreDBClusterFromSnapshotMessage.add_member(:snapshot_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SnapshotIdentifier"))
    RestoreDBClusterFromSnapshotMessage.add_member(:engine, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Engine"))
    RestoreDBClusterFromSnapshotMessage.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    RestoreDBClusterFromSnapshotMessage.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    RestoreDBClusterFromSnapshotMessage.add_member(:db_subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBSubnetGroupName"))
    RestoreDBClusterFromSnapshotMessage.add_member(:database_name, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    RestoreDBClusterFromSnapshotMessage.add_member(:option_group_name, Shapes::ShapeRef.new(shape: String, location_name: "OptionGroupName"))
    RestoreDBClusterFromSnapshotMessage.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: "VpcSecurityGroupIds"))
    RestoreDBClusterFromSnapshotMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    RestoreDBClusterFromSnapshotMessage.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    RestoreDBClusterFromSnapshotMessage.add_member(:enable_iam_database_authentication, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableIAMDatabaseAuthentication"))
    RestoreDBClusterFromSnapshotMessage.add_member(:backtrack_window, Shapes::ShapeRef.new(shape: LongOptional, location_name: "BacktrackWindow"))
    RestoreDBClusterFromSnapshotMessage.add_member(:enable_cloudwatch_logs_exports, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "EnableCloudwatchLogsExports"))
    RestoreDBClusterFromSnapshotMessage.add_member(:engine_mode, Shapes::ShapeRef.new(shape: String, location_name: "EngineMode"))
    RestoreDBClusterFromSnapshotMessage.add_member(:scaling_configuration, Shapes::ShapeRef.new(shape: ScalingConfiguration, location_name: "ScalingConfiguration"))
    RestoreDBClusterFromSnapshotMessage.add_member(:db_cluster_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterParameterGroupName"))
    RestoreDBClusterFromSnapshotMessage.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DeletionProtection"))
    RestoreDBClusterFromSnapshotMessage.add_member(:copy_tags_to_snapshot, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CopyTagsToSnapshot"))
    RestoreDBClusterFromSnapshotMessage.add_member(:domain, Shapes::ShapeRef.new(shape: String, location_name: "Domain"))
    RestoreDBClusterFromSnapshotMessage.add_member(:domain_iam_role_name, Shapes::ShapeRef.new(shape: String, location_name: "DomainIAMRoleName"))
    RestoreDBClusterFromSnapshotMessage.struct_class = Types::RestoreDBClusterFromSnapshotMessage

    RestoreDBClusterFromSnapshotResult.add_member(:db_cluster, Shapes::ShapeRef.new(shape: DBCluster, location_name: "DBCluster"))
    RestoreDBClusterFromSnapshotResult.struct_class = Types::RestoreDBClusterFromSnapshotResult

    RestoreDBClusterToPointInTimeMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterIdentifier"))
    RestoreDBClusterToPointInTimeMessage.add_member(:restore_type, Shapes::ShapeRef.new(shape: String, location_name: "RestoreType"))
    RestoreDBClusterToPointInTimeMessage.add_member(:source_db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SourceDBClusterIdentifier"))
    RestoreDBClusterToPointInTimeMessage.add_member(:restore_to_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "RestoreToTime"))
    RestoreDBClusterToPointInTimeMessage.add_member(:use_latest_restorable_time, Shapes::ShapeRef.new(shape: Boolean, location_name: "UseLatestRestorableTime"))
    RestoreDBClusterToPointInTimeMessage.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    RestoreDBClusterToPointInTimeMessage.add_member(:db_subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBSubnetGroupName"))
    RestoreDBClusterToPointInTimeMessage.add_member(:option_group_name, Shapes::ShapeRef.new(shape: String, location_name: "OptionGroupName"))
    RestoreDBClusterToPointInTimeMessage.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: "VpcSecurityGroupIds"))
    RestoreDBClusterToPointInTimeMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    RestoreDBClusterToPointInTimeMessage.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    RestoreDBClusterToPointInTimeMessage.add_member(:enable_iam_database_authentication, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableIAMDatabaseAuthentication"))
    RestoreDBClusterToPointInTimeMessage.add_member(:backtrack_window, Shapes::ShapeRef.new(shape: LongOptional, location_name: "BacktrackWindow"))
    RestoreDBClusterToPointInTimeMessage.add_member(:enable_cloudwatch_logs_exports, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "EnableCloudwatchLogsExports"))
    RestoreDBClusterToPointInTimeMessage.add_member(:db_cluster_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterParameterGroupName"))
    RestoreDBClusterToPointInTimeMessage.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DeletionProtection"))
    RestoreDBClusterToPointInTimeMessage.add_member(:copy_tags_to_snapshot, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CopyTagsToSnapshot"))
    RestoreDBClusterToPointInTimeMessage.add_member(:domain, Shapes::ShapeRef.new(shape: String, location_name: "Domain"))
    RestoreDBClusterToPointInTimeMessage.add_member(:domain_iam_role_name, Shapes::ShapeRef.new(shape: String, location_name: "DomainIAMRoleName"))
    RestoreDBClusterToPointInTimeMessage.struct_class = Types::RestoreDBClusterToPointInTimeMessage

    RestoreDBClusterToPointInTimeResult.add_member(:db_cluster, Shapes::ShapeRef.new(shape: DBCluster, location_name: "DBCluster"))
    RestoreDBClusterToPointInTimeResult.struct_class = Types::RestoreDBClusterToPointInTimeResult

    RestoreDBInstanceFromDBSnapshotMessage.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBInstanceIdentifier"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:db_snapshot_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBSnapshotIdentifier"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:db_instance_class, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceClass"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:db_subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBSubnetGroupName"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:multi_az, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "MultiAZ"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "PubliclyAccessible"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:auto_minor_version_upgrade, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AutoMinorVersionUpgrade"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:license_model, Shapes::ShapeRef.new(shape: String, location_name: "LicenseModel"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:db_name, Shapes::ShapeRef.new(shape: String, location_name: "DBName"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:iops, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Iops"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:option_group_name, Shapes::ShapeRef.new(shape: String, location_name: "OptionGroupName"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:tde_credential_arn, Shapes::ShapeRef.new(shape: String, location_name: "TdeCredentialArn"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:tde_credential_password, Shapes::ShapeRef.new(shape: String, location_name: "TdeCredentialPassword"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: "VpcSecurityGroupIds"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:domain, Shapes::ShapeRef.new(shape: String, location_name: "Domain"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:copy_tags_to_snapshot, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CopyTagsToSnapshot"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:domain_iam_role_name, Shapes::ShapeRef.new(shape: String, location_name: "DomainIAMRoleName"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:enable_iam_database_authentication, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableIAMDatabaseAuthentication"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:enable_cloudwatch_logs_exports, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "EnableCloudwatchLogsExports"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:processor_features, Shapes::ShapeRef.new(shape: ProcessorFeatureList, location_name: "ProcessorFeatures"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:use_default_processor_features, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "UseDefaultProcessorFeatures"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:db_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBParameterGroupName"))
    RestoreDBInstanceFromDBSnapshotMessage.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DeletionProtection"))
    RestoreDBInstanceFromDBSnapshotMessage.struct_class = Types::RestoreDBInstanceFromDBSnapshotMessage

    RestoreDBInstanceFromDBSnapshotResult.add_member(:db_instance, Shapes::ShapeRef.new(shape: DBInstance, location_name: "DBInstance"))
    RestoreDBInstanceFromDBSnapshotResult.struct_class = Types::RestoreDBInstanceFromDBSnapshotResult

    RestoreDBInstanceFromS3Message.add_member(:db_name, Shapes::ShapeRef.new(shape: String, location_name: "DBName"))
    RestoreDBInstanceFromS3Message.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBInstanceIdentifier"))
    RestoreDBInstanceFromS3Message.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "AllocatedStorage"))
    RestoreDBInstanceFromS3Message.add_member(:db_instance_class, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBInstanceClass"))
    RestoreDBInstanceFromS3Message.add_member(:engine, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Engine"))
    RestoreDBInstanceFromS3Message.add_member(:master_username, Shapes::ShapeRef.new(shape: String, location_name: "MasterUsername"))
    RestoreDBInstanceFromS3Message.add_member(:master_user_password, Shapes::ShapeRef.new(shape: String, location_name: "MasterUserPassword"))
    RestoreDBInstanceFromS3Message.add_member(:db_security_groups, Shapes::ShapeRef.new(shape: DBSecurityGroupNameList, location_name: "DBSecurityGroups"))
    RestoreDBInstanceFromS3Message.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: "VpcSecurityGroupIds"))
    RestoreDBInstanceFromS3Message.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone"))
    RestoreDBInstanceFromS3Message.add_member(:db_subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBSubnetGroupName"))
    RestoreDBInstanceFromS3Message.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredMaintenanceWindow"))
    RestoreDBInstanceFromS3Message.add_member(:db_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBParameterGroupName"))
    RestoreDBInstanceFromS3Message.add_member(:backup_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "BackupRetentionPeriod"))
    RestoreDBInstanceFromS3Message.add_member(:preferred_backup_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredBackupWindow"))
    RestoreDBInstanceFromS3Message.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    RestoreDBInstanceFromS3Message.add_member(:multi_az, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "MultiAZ"))
    RestoreDBInstanceFromS3Message.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    RestoreDBInstanceFromS3Message.add_member(:auto_minor_version_upgrade, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AutoMinorVersionUpgrade"))
    RestoreDBInstanceFromS3Message.add_member(:license_model, Shapes::ShapeRef.new(shape: String, location_name: "LicenseModel"))
    RestoreDBInstanceFromS3Message.add_member(:iops, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Iops"))
    RestoreDBInstanceFromS3Message.add_member(:option_group_name, Shapes::ShapeRef.new(shape: String, location_name: "OptionGroupName"))
    RestoreDBInstanceFromS3Message.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "PubliclyAccessible"))
    RestoreDBInstanceFromS3Message.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    RestoreDBInstanceFromS3Message.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    RestoreDBInstanceFromS3Message.add_member(:storage_encrypted, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "StorageEncrypted"))
    RestoreDBInstanceFromS3Message.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    RestoreDBInstanceFromS3Message.add_member(:copy_tags_to_snapshot, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CopyTagsToSnapshot"))
    RestoreDBInstanceFromS3Message.add_member(:monitoring_interval, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MonitoringInterval"))
    RestoreDBInstanceFromS3Message.add_member(:monitoring_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "MonitoringRoleArn"))
    RestoreDBInstanceFromS3Message.add_member(:enable_iam_database_authentication, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableIAMDatabaseAuthentication"))
    RestoreDBInstanceFromS3Message.add_member(:source_engine, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SourceEngine"))
    RestoreDBInstanceFromS3Message.add_member(:source_engine_version, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SourceEngineVersion"))
    RestoreDBInstanceFromS3Message.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "S3BucketName"))
    RestoreDBInstanceFromS3Message.add_member(:s3_prefix, Shapes::ShapeRef.new(shape: String, location_name: "S3Prefix"))
    RestoreDBInstanceFromS3Message.add_member(:s3_ingestion_role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "S3IngestionRoleArn"))
    RestoreDBInstanceFromS3Message.add_member(:enable_performance_insights, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnablePerformanceInsights"))
    RestoreDBInstanceFromS3Message.add_member(:performance_insights_kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "PerformanceInsightsKMSKeyId"))
    RestoreDBInstanceFromS3Message.add_member(:performance_insights_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "PerformanceInsightsRetentionPeriod"))
    RestoreDBInstanceFromS3Message.add_member(:enable_cloudwatch_logs_exports, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "EnableCloudwatchLogsExports"))
    RestoreDBInstanceFromS3Message.add_member(:processor_features, Shapes::ShapeRef.new(shape: ProcessorFeatureList, location_name: "ProcessorFeatures"))
    RestoreDBInstanceFromS3Message.add_member(:use_default_processor_features, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "UseDefaultProcessorFeatures"))
    RestoreDBInstanceFromS3Message.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DeletionProtection"))
    RestoreDBInstanceFromS3Message.struct_class = Types::RestoreDBInstanceFromS3Message

    RestoreDBInstanceFromS3Result.add_member(:db_instance, Shapes::ShapeRef.new(shape: DBInstance, location_name: "DBInstance"))
    RestoreDBInstanceFromS3Result.struct_class = Types::RestoreDBInstanceFromS3Result

    RestoreDBInstanceToPointInTimeMessage.add_member(:source_db_instance_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SourceDBInstanceIdentifier"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:target_db_instance_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TargetDBInstanceIdentifier"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:restore_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "RestoreTime"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:use_latest_restorable_time, Shapes::ShapeRef.new(shape: Boolean, location_name: "UseLatestRestorableTime"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:db_instance_class, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceClass"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:db_subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBSubnetGroupName"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:multi_az, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "MultiAZ"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "PubliclyAccessible"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:auto_minor_version_upgrade, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AutoMinorVersionUpgrade"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:license_model, Shapes::ShapeRef.new(shape: String, location_name: "LicenseModel"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:db_name, Shapes::ShapeRef.new(shape: String, location_name: "DBName"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:iops, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Iops"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:option_group_name, Shapes::ShapeRef.new(shape: String, location_name: "OptionGroupName"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:copy_tags_to_snapshot, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CopyTagsToSnapshot"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:tde_credential_arn, Shapes::ShapeRef.new(shape: String, location_name: "TdeCredentialArn"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:tde_credential_password, Shapes::ShapeRef.new(shape: String, location_name: "TdeCredentialPassword"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: "VpcSecurityGroupIds"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:domain, Shapes::ShapeRef.new(shape: String, location_name: "Domain"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:domain_iam_role_name, Shapes::ShapeRef.new(shape: String, location_name: "DomainIAMRoleName"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:enable_iam_database_authentication, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableIAMDatabaseAuthentication"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:enable_cloudwatch_logs_exports, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "EnableCloudwatchLogsExports"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:processor_features, Shapes::ShapeRef.new(shape: ProcessorFeatureList, location_name: "ProcessorFeatures"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:use_default_processor_features, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "UseDefaultProcessorFeatures"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:db_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBParameterGroupName"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DeletionProtection"))
    RestoreDBInstanceToPointInTimeMessage.add_member(:source_dbi_resource_id, Shapes::ShapeRef.new(shape: String, location_name: "SourceDbiResourceId"))
    RestoreDBInstanceToPointInTimeMessage.struct_class = Types::RestoreDBInstanceToPointInTimeMessage

    RestoreDBInstanceToPointInTimeResult.add_member(:db_instance, Shapes::ShapeRef.new(shape: DBInstance, location_name: "DBInstance"))
    RestoreDBInstanceToPointInTimeResult.struct_class = Types::RestoreDBInstanceToPointInTimeResult

    RestoreWindow.add_member(:earliest_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "EarliestTime"))
    RestoreWindow.add_member(:latest_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "LatestTime"))
    RestoreWindow.struct_class = Types::RestoreWindow

    RevokeDBSecurityGroupIngressMessage.add_member(:db_security_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBSecurityGroupName"))
    RevokeDBSecurityGroupIngressMessage.add_member(:cidrip, Shapes::ShapeRef.new(shape: String, location_name: "CIDRIP"))
    RevokeDBSecurityGroupIngressMessage.add_member(:ec2_security_group_name, Shapes::ShapeRef.new(shape: String, location_name: "EC2SecurityGroupName"))
    RevokeDBSecurityGroupIngressMessage.add_member(:ec2_security_group_id, Shapes::ShapeRef.new(shape: String, location_name: "EC2SecurityGroupId"))
    RevokeDBSecurityGroupIngressMessage.add_member(:ec2_security_group_owner_id, Shapes::ShapeRef.new(shape: String, location_name: "EC2SecurityGroupOwnerId"))
    RevokeDBSecurityGroupIngressMessage.struct_class = Types::RevokeDBSecurityGroupIngressMessage

    RevokeDBSecurityGroupIngressResult.add_member(:db_security_group, Shapes::ShapeRef.new(shape: DBSecurityGroup, location_name: "DBSecurityGroup"))
    RevokeDBSecurityGroupIngressResult.struct_class = Types::RevokeDBSecurityGroupIngressResult

    SNSInvalidTopicFault.struct_class = Types::SNSInvalidTopicFault

    SNSNoAuthorizationFault.struct_class = Types::SNSNoAuthorizationFault

    SNSTopicArnNotFoundFault.struct_class = Types::SNSTopicArnNotFoundFault

    ScalingConfiguration.add_member(:min_capacity, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MinCapacity"))
    ScalingConfiguration.add_member(:max_capacity, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxCapacity"))
    ScalingConfiguration.add_member(:auto_pause, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AutoPause"))
    ScalingConfiguration.add_member(:seconds_until_auto_pause, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "SecondsUntilAutoPause"))
    ScalingConfiguration.add_member(:timeout_action, Shapes::ShapeRef.new(shape: String, location_name: "TimeoutAction"))
    ScalingConfiguration.struct_class = Types::ScalingConfiguration

    ScalingConfigurationInfo.add_member(:min_capacity, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MinCapacity"))
    ScalingConfigurationInfo.add_member(:max_capacity, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxCapacity"))
    ScalingConfigurationInfo.add_member(:auto_pause, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AutoPause"))
    ScalingConfigurationInfo.add_member(:seconds_until_auto_pause, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "SecondsUntilAutoPause"))
    ScalingConfigurationInfo.add_member(:timeout_action, Shapes::ShapeRef.new(shape: String, location_name: "TimeoutAction"))
    ScalingConfigurationInfo.struct_class = Types::ScalingConfigurationInfo

    SharedSnapshotQuotaExceededFault.struct_class = Types::SharedSnapshotQuotaExceededFault

    SnapshotQuotaExceededFault.struct_class = Types::SnapshotQuotaExceededFault

    SourceIdsList.member = Shapes::ShapeRef.new(shape: String, location_name: "SourceId")

    SourceNotFoundFault.struct_class = Types::SourceNotFoundFault

    SourceRegion.add_member(:region_name, Shapes::ShapeRef.new(shape: String, location_name: "RegionName"))
    SourceRegion.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "Endpoint"))
    SourceRegion.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    SourceRegion.struct_class = Types::SourceRegion

    SourceRegionList.member = Shapes::ShapeRef.new(shape: SourceRegion, location_name: "SourceRegion")

    SourceRegionMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    SourceRegionMessage.add_member(:source_regions, Shapes::ShapeRef.new(shape: SourceRegionList, location_name: "SourceRegions"))
    SourceRegionMessage.struct_class = Types::SourceRegionMessage

    StartActivityStreamRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceArn"))
    StartActivityStreamRequest.add_member(:mode, Shapes::ShapeRef.new(shape: ActivityStreamMode, required: true, location_name: "Mode"))
    StartActivityStreamRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "KmsKeyId"))
    StartActivityStreamRequest.add_member(:apply_immediately, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ApplyImmediately"))
    StartActivityStreamRequest.struct_class = Types::StartActivityStreamRequest

    StartActivityStreamResponse.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    StartActivityStreamResponse.add_member(:kinesis_stream_name, Shapes::ShapeRef.new(shape: String, location_name: "KinesisStreamName"))
    StartActivityStreamResponse.add_member(:status, Shapes::ShapeRef.new(shape: ActivityStreamStatus, location_name: "Status"))
    StartActivityStreamResponse.add_member(:mode, Shapes::ShapeRef.new(shape: ActivityStreamMode, location_name: "Mode"))
    StartActivityStreamResponse.add_member(:apply_immediately, Shapes::ShapeRef.new(shape: Boolean, location_name: "ApplyImmediately"))
    StartActivityStreamResponse.struct_class = Types::StartActivityStreamResponse

    StartDBClusterMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterIdentifier"))
    StartDBClusterMessage.struct_class = Types::StartDBClusterMessage

    StartDBClusterResult.add_member(:db_cluster, Shapes::ShapeRef.new(shape: DBCluster, location_name: "DBCluster"))
    StartDBClusterResult.struct_class = Types::StartDBClusterResult

    StartDBInstanceMessage.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBInstanceIdentifier"))
    StartDBInstanceMessage.struct_class = Types::StartDBInstanceMessage

    StartDBInstanceResult.add_member(:db_instance, Shapes::ShapeRef.new(shape: DBInstance, location_name: "DBInstance"))
    StartDBInstanceResult.struct_class = Types::StartDBInstanceResult

    StartExportTaskMessage.add_member(:export_task_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ExportTaskIdentifier"))
    StartExportTaskMessage.add_member(:source_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SourceArn"))
    StartExportTaskMessage.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "S3BucketName"))
    StartExportTaskMessage.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "IamRoleArn"))
    StartExportTaskMessage.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "KmsKeyId"))
    StartExportTaskMessage.add_member(:s3_prefix, Shapes::ShapeRef.new(shape: String, location_name: "S3Prefix"))
    StartExportTaskMessage.add_member(:export_only, Shapes::ShapeRef.new(shape: StringList, location_name: "ExportOnly"))
    StartExportTaskMessage.struct_class = Types::StartExportTaskMessage

    StopActivityStreamRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceArn"))
    StopActivityStreamRequest.add_member(:apply_immediately, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ApplyImmediately"))
    StopActivityStreamRequest.struct_class = Types::StopActivityStreamRequest

    StopActivityStreamResponse.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    StopActivityStreamResponse.add_member(:kinesis_stream_name, Shapes::ShapeRef.new(shape: String, location_name: "KinesisStreamName"))
    StopActivityStreamResponse.add_member(:status, Shapes::ShapeRef.new(shape: ActivityStreamStatus, location_name: "Status"))
    StopActivityStreamResponse.struct_class = Types::StopActivityStreamResponse

    StopDBClusterMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterIdentifier"))
    StopDBClusterMessage.struct_class = Types::StopDBClusterMessage

    StopDBClusterResult.add_member(:db_cluster, Shapes::ShapeRef.new(shape: DBCluster, location_name: "DBCluster"))
    StopDBClusterResult.struct_class = Types::StopDBClusterResult

    StopDBInstanceMessage.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBInstanceIdentifier"))
    StopDBInstanceMessage.add_member(:db_snapshot_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBSnapshotIdentifier"))
    StopDBInstanceMessage.struct_class = Types::StopDBInstanceMessage

    StopDBInstanceResult.add_member(:db_instance, Shapes::ShapeRef.new(shape: DBInstance, location_name: "DBInstance"))
    StopDBInstanceResult.struct_class = Types::StopDBInstanceResult

    StorageQuotaExceededFault.struct_class = Types::StorageQuotaExceededFault

    StorageTypeNotSupportedFault.struct_class = Types::StorageTypeNotSupportedFault

    StringList.member = Shapes::ShapeRef.new(shape: String)

    Subnet.add_member(:subnet_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SubnetIdentifier"))
    Subnet.add_member(:subnet_availability_zone, Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "SubnetAvailabilityZone"))
    Subnet.add_member(:subnet_status, Shapes::ShapeRef.new(shape: String, location_name: "SubnetStatus"))
    Subnet.struct_class = Types::Subnet

    SubnetAlreadyInUse.struct_class = Types::SubnetAlreadyInUse

    SubnetIdentifierList.member = Shapes::ShapeRef.new(shape: String, location_name: "SubnetIdentifier")

    SubnetList.member = Shapes::ShapeRef.new(shape: Subnet, location_name: "Subnet")

    SubscriptionAlreadyExistFault.struct_class = Types::SubscriptionAlreadyExistFault

    SubscriptionCategoryNotFoundFault.struct_class = Types::SubscriptionCategoryNotFoundFault

    SubscriptionNotFoundFault.struct_class = Types::SubscriptionNotFoundFault

    SupportedCharacterSetsList.member = Shapes::ShapeRef.new(shape: CharacterSet, location_name: "CharacterSet")

    SupportedTimezonesList.member = Shapes::ShapeRef.new(shape: Timezone, location_name: "Timezone")

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: String, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagList.member = Shapes::ShapeRef.new(shape: Tag, location_name: "Tag")

    TagListMessage.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    TagListMessage.struct_class = Types::TagListMessage

    TargetGroupList.member = Shapes::ShapeRef.new(shape: DBProxyTargetGroup)

    TargetHealth.add_member(:state, Shapes::ShapeRef.new(shape: TargetState, location_name: "State"))
    TargetHealth.add_member(:reason, Shapes::ShapeRef.new(shape: TargetHealthReason, location_name: "Reason"))
    TargetHealth.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    TargetHealth.struct_class = Types::TargetHealth

    TargetList.member = Shapes::ShapeRef.new(shape: DBProxyTarget)

    Timezone.add_member(:timezone_name, Shapes::ShapeRef.new(shape: String, location_name: "TimezoneName"))
    Timezone.struct_class = Types::Timezone

    UpgradeTarget.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    UpgradeTarget.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    UpgradeTarget.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    UpgradeTarget.add_member(:auto_upgrade, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoUpgrade"))
    UpgradeTarget.add_member(:is_major_version_upgrade, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsMajorVersionUpgrade"))
    UpgradeTarget.struct_class = Types::UpgradeTarget

    UserAuthConfig.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    UserAuthConfig.add_member(:user_name, Shapes::ShapeRef.new(shape: String, location_name: "UserName"))
    UserAuthConfig.add_member(:auth_scheme, Shapes::ShapeRef.new(shape: AuthScheme, location_name: "AuthScheme"))
    UserAuthConfig.add_member(:secret_arn, Shapes::ShapeRef.new(shape: String, location_name: "SecretArn"))
    UserAuthConfig.add_member(:iam_auth, Shapes::ShapeRef.new(shape: IAMAuthMode, location_name: "IAMAuth"))
    UserAuthConfig.struct_class = Types::UserAuthConfig

    UserAuthConfigInfo.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    UserAuthConfigInfo.add_member(:user_name, Shapes::ShapeRef.new(shape: String, location_name: "UserName"))
    UserAuthConfigInfo.add_member(:auth_scheme, Shapes::ShapeRef.new(shape: AuthScheme, location_name: "AuthScheme"))
    UserAuthConfigInfo.add_member(:secret_arn, Shapes::ShapeRef.new(shape: String, location_name: "SecretArn"))
    UserAuthConfigInfo.add_member(:iam_auth, Shapes::ShapeRef.new(shape: IAMAuthMode, location_name: "IAMAuth"))
    UserAuthConfigInfo.struct_class = Types::UserAuthConfigInfo

    UserAuthConfigInfoList.member = Shapes::ShapeRef.new(shape: UserAuthConfigInfo)

    UserAuthConfigList.member = Shapes::ShapeRef.new(shape: UserAuthConfig)

    ValidDBInstanceModificationsMessage.add_member(:storage, Shapes::ShapeRef.new(shape: ValidStorageOptionsList, location_name: "Storage"))
    ValidDBInstanceModificationsMessage.add_member(:valid_processor_features, Shapes::ShapeRef.new(shape: AvailableProcessorFeatureList, location_name: "ValidProcessorFeatures"))
    ValidDBInstanceModificationsMessage.struct_class = Types::ValidDBInstanceModificationsMessage

    ValidStorageOptions.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    ValidStorageOptions.add_member(:storage_size, Shapes::ShapeRef.new(shape: RangeList, location_name: "StorageSize"))
    ValidStorageOptions.add_member(:provisioned_iops, Shapes::ShapeRef.new(shape: RangeList, location_name: "ProvisionedIops"))
    ValidStorageOptions.add_member(:iops_to_storage_ratio, Shapes::ShapeRef.new(shape: DoubleRangeList, location_name: "IopsToStorageRatio"))
    ValidStorageOptions.add_member(:supports_storage_autoscaling, Shapes::ShapeRef.new(shape: Boolean, location_name: "SupportsStorageAutoscaling"))
    ValidStorageOptions.struct_class = Types::ValidStorageOptions

    ValidStorageOptionsList.member = Shapes::ShapeRef.new(shape: ValidStorageOptions, location_name: "ValidStorageOptions")

    ValidUpgradeTargetList.member = Shapes::ShapeRef.new(shape: UpgradeTarget, location_name: "UpgradeTarget")

    VpcSecurityGroupIdList.member = Shapes::ShapeRef.new(shape: String, location_name: "VpcSecurityGroupId")

    VpcSecurityGroupMembership.add_member(:vpc_security_group_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcSecurityGroupId"))
    VpcSecurityGroupMembership.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    VpcSecurityGroupMembership.struct_class = Types::VpcSecurityGroupMembership

    VpcSecurityGroupMembershipList.member = Shapes::ShapeRef.new(shape: VpcSecurityGroupMembership, location_name: "VpcSecurityGroupMembership")

    VpnDetails.add_member(:vpn_id, Shapes::ShapeRef.new(shape: String, location_name: "VpnId"))
    VpnDetails.add_member(:vpn_tunnel_originator_ip, Shapes::ShapeRef.new(shape: String, location_name: "VpnTunnelOriginatorIP"))
    VpnDetails.add_member(:vpn_gateway_ip, Shapes::ShapeRef.new(shape: String, location_name: "VpnGatewayIp"))
    VpnDetails.add_member(:vpn_psk, Shapes::ShapeRef.new(shape: StringSensitive, location_name: "VpnPSK"))
    VpnDetails.add_member(:vpn_name, Shapes::ShapeRef.new(shape: String, location_name: "VpnName"))
    VpnDetails.add_member(:vpn_state, Shapes::ShapeRef.new(shape: String, location_name: "VpnState"))
    VpnDetails.struct_class = Types::VpnDetails


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2014-10-31"

      api.metadata = {
        "apiVersion" => "2014-10-31",
        "endpointPrefix" => "rds",
        "protocol" => "query",
        "serviceAbbreviation" => "Amazon RDS",
        "serviceFullName" => "Amazon Relational Database Service",
        "serviceId" => "RDS",
        "signatureVersion" => "v4",
        "uid" => "rds-2014-10-31",
        "xmlNamespace" => "http://rds.amazonaws.com/doc/2014-10-31/",
      }

      api.add_operation(:add_role_to_db_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddRoleToDBCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddRoleToDBClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterRoleAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterRoleQuotaExceededFault)
      end)

      api.add_operation(:add_role_to_db_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddRoleToDBInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddRoleToDBInstanceMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceRoleAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceRoleQuotaExceededFault)
      end)

      api.add_operation(:add_source_identifier_to_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddSourceIdentifierToSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddSourceIdentifierToSubscriptionMessage)
        o.output = Shapes::ShapeRef.new(shape: AddSourceIdentifierToSubscriptionResult)
        o.errors << Shapes::ShapeRef.new(shape: SubscriptionNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SourceNotFoundFault)
      end)

      api.add_operation(:add_tags_to_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddTagsToResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddTagsToResourceMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBProxyNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBProxyTargetGroupNotFoundFault)
      end)

      api.add_operation(:apply_pending_maintenance_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ApplyPendingMaintenanceAction"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ApplyPendingMaintenanceActionMessage)
        o.output = Shapes::ShapeRef.new(shape: ApplyPendingMaintenanceActionResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
      end)

      api.add_operation(:authorize_db_security_group_ingress, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AuthorizeDBSecurityGroupIngress"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AuthorizeDBSecurityGroupIngressMessage)
        o.output = Shapes::ShapeRef.new(shape: AuthorizeDBSecurityGroupIngressResult)
        o.errors << Shapes::ShapeRef.new(shape: DBSecurityGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBSecurityGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationQuotaExceededFault)
      end)

      api.add_operation(:backtrack_db_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BacktrackDBCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BacktrackDBClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: DBClusterBacktrack)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
      end)

      api.add_operation(:cancel_export_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelExportTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelExportTaskMessage)
        o.output = Shapes::ShapeRef.new(shape: ExportTask)
        o.errors << Shapes::ShapeRef.new(shape: ExportTaskNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidExportTaskStateFault)
      end)

      api.add_operation(:copy_db_cluster_parameter_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CopyDBClusterParameterGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CopyDBClusterParameterGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: CopyDBClusterParameterGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupAlreadyExistsFault)
      end)

      api.add_operation(:copy_db_cluster_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CopyDBClusterSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CopyDBClusterSnapshotMessage)
        o.output = Shapes::ShapeRef.new(shape: CopyDBClusterSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterSnapshotAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterSnapshotStateFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
      end)

      api.add_operation(:copy_db_parameter_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CopyDBParameterGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CopyDBParameterGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: CopyDBParameterGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupQuotaExceededFault)
      end)

      api.add_operation(:copy_db_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CopyDBSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CopyDBSnapshotMessage)
        o.output = Shapes::ShapeRef.new(shape: CopyDBSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: DBSnapshotAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBSnapshotStateFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
      end)

      api.add_operation(:copy_option_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CopyOptionGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CopyOptionGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: CopyOptionGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: OptionGroupAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: OptionGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: OptionGroupQuotaExceededFault)
      end)

      api.add_operation(:create_custom_availability_zone, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCustomAvailabilityZone"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateCustomAvailabilityZoneMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateCustomAvailabilityZoneResult)
        o.errors << Shapes::ShapeRef.new(shape: CustomAvailabilityZoneAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: CustomAvailabilityZoneQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
      end)

      api.add_operation(:create_db_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDBCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDBClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateDBClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientStorageClusterCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBSubnetGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupDoesNotCoverEnoughAZs)
        o.errors << Shapes::ShapeRef.new(shape: GlobalClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGlobalClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DomainNotFoundFault)
      end)

      api.add_operation(:create_db_cluster_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDBClusterEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDBClusterEndpointMessage)
        o.output = Shapes::ShapeRef.new(shape: DBClusterEndpoint)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterEndpointQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterEndpointAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
      end)

      api.add_operation(:create_db_cluster_parameter_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDBClusterParameterGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDBClusterParameterGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateDBClusterParameterGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupAlreadyExistsFault)
      end)

      api.add_operation(:create_db_cluster_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDBClusterSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDBClusterSnapshotMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateDBClusterSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterSnapshotAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterSnapshotStateFault)
      end)

      api.add_operation(:create_db_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDBInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDBInstanceMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateDBInstanceResult)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientDBInstanceCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSecurityGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InstanceQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupDoesNotCoverEnoughAZs)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedIopsNotAvailableInAZFault)
        o.errors << Shapes::ShapeRef.new(shape: OptionGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageTypeNotSupportedFault)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: DomainNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: BackupPolicyNotFoundFault)
      end)

      api.add_operation(:create_db_instance_read_replica, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDBInstanceReadReplica"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDBInstanceReadReplicaMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateDBInstanceReadReplicaResult)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientDBInstanceCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSecurityGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InstanceQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupDoesNotCoverEnoughAZs)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedIopsNotAvailableInAZFault)
        o.errors << Shapes::ShapeRef.new(shape: OptionGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupNotAllowedFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBSubnetGroupFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageTypeNotSupportedFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: DomainNotFoundFault)
      end)

      api.add_operation(:create_db_parameter_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDBParameterGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDBParameterGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateDBParameterGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupAlreadyExistsFault)
      end)

      api.add_operation(:create_db_proxy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDBProxy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDBProxyRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDBProxyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
        o.errors << Shapes::ShapeRef.new(shape: DBProxyAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: DBProxyQuotaExceededFault)
      end)

      api.add_operation(:create_db_security_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDBSecurityGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDBSecurityGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateDBSecurityGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: DBSecurityGroupAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSecurityGroupQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSecurityGroupNotSupportedFault)
      end)

      api.add_operation(:create_db_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDBSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDBSnapshotMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateDBSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: DBSnapshotAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotQuotaExceededFault)
      end)

      api.add_operation(:create_db_subnet_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDBSubnetGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDBSubnetGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateDBSubnetGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupDoesNotCoverEnoughAZs)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
      end)

      api.add_operation(:create_event_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEventSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateEventSubscriptionMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateEventSubscriptionResult)
        o.errors << Shapes::ShapeRef.new(shape: EventSubscriptionQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: SubscriptionAlreadyExistFault)
        o.errors << Shapes::ShapeRef.new(shape: SNSInvalidTopicFault)
        o.errors << Shapes::ShapeRef.new(shape: SNSNoAuthorizationFault)
        o.errors << Shapes::ShapeRef.new(shape: SNSTopicArnNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SubscriptionCategoryNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SourceNotFoundFault)
      end)

      api.add_operation(:create_global_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGlobalCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateGlobalClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateGlobalClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: GlobalClusterAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: GlobalClusterQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
      end)

      api.add_operation(:create_option_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateOptionGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateOptionGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateOptionGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: OptionGroupAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: OptionGroupQuotaExceededFault)
      end)

      api.add_operation(:delete_custom_availability_zone, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCustomAvailabilityZone"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCustomAvailabilityZoneMessage)
        o.output = Shapes::ShapeRef.new(shape: DeleteCustomAvailabilityZoneResult)
        o.errors << Shapes::ShapeRef.new(shape: CustomAvailabilityZoneNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
      end)

      api.add_operation(:delete_db_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDBCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDBClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: DeleteDBClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterSnapshotAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterSnapshotStateFault)
      end)

      api.add_operation(:delete_db_cluster_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDBClusterEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDBClusterEndpointMessage)
        o.output = Shapes::ShapeRef.new(shape: DBClusterEndpoint)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterEndpointStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterEndpointNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
      end)

      api.add_operation(:delete_db_cluster_parameter_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDBClusterParameterGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDBClusterParameterGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBParameterGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
      end)

      api.add_operation(:delete_db_cluster_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDBClusterSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDBClusterSnapshotMessage)
        o.output = Shapes::ShapeRef.new(shape: DeleteDBClusterSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterSnapshotStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
      end)

      api.add_operation(:delete_db_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDBInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDBInstanceMessage)
        o.output = Shapes::ShapeRef.new(shape: DeleteDBInstanceResult)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSnapshotAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceAutomatedBackupQuotaExceededFault)
      end)

      api.add_operation(:delete_db_instance_automated_backup, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDBInstanceAutomatedBackup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDBInstanceAutomatedBackupMessage)
        o.output = Shapes::ShapeRef.new(shape: DeleteDBInstanceAutomatedBackupResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceAutomatedBackupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceAutomatedBackupNotFoundFault)
      end)

      api.add_operation(:delete_db_parameter_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDBParameterGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDBParameterGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBParameterGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
      end)

      api.add_operation(:delete_db_proxy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDBProxy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDBProxyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDBProxyResponse)
        o.errors << Shapes::ShapeRef.new(shape: DBProxyNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBProxyStateFault)
      end)

      api.add_operation(:delete_db_security_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDBSecurityGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDBSecurityGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBSecurityGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSecurityGroupNotFoundFault)
      end)

      api.add_operation(:delete_db_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDBSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDBSnapshotMessage)
        o.output = Shapes::ShapeRef.new(shape: DeleteDBSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBSnapshotStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSnapshotNotFoundFault)
      end)

      api.add_operation(:delete_db_subnet_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDBSubnetGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDBSubnetGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBSubnetGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBSubnetStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
      end)

      api.add_operation(:delete_event_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEventSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteEventSubscriptionMessage)
        o.output = Shapes::ShapeRef.new(shape: DeleteEventSubscriptionResult)
        o.errors << Shapes::ShapeRef.new(shape: SubscriptionNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEventSubscriptionStateFault)
      end)

      api.add_operation(:delete_global_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGlobalCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteGlobalClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: DeleteGlobalClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: GlobalClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGlobalClusterStateFault)
      end)

      api.add_operation(:delete_installation_media, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteInstallationMedia"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteInstallationMediaMessage)
        o.output = Shapes::ShapeRef.new(shape: InstallationMedia)
        o.errors << Shapes::ShapeRef.new(shape: InstallationMediaNotFoundFault)
      end)

      api.add_operation(:delete_option_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteOptionGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteOptionGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: OptionGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOptionGroupStateFault)
      end)

      api.add_operation(:deregister_db_proxy_targets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterDBProxyTargets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeregisterDBProxyTargetsRequest)
        o.output = Shapes::ShapeRef.new(shape: DeregisterDBProxyTargetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: DBProxyTargetNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBProxyTargetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBProxyNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBProxyStateFault)
      end)

      api.add_operation(:describe_account_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAccountAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAccountAttributesMessage)
        o.output = Shapes::ShapeRef.new(shape: AccountAttributesMessage)
      end)

      api.add_operation(:describe_certificates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCertificates"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeCertificatesMessage)
        o.output = Shapes::ShapeRef.new(shape: CertificateMessage)
        o.errors << Shapes::ShapeRef.new(shape: CertificateNotFoundFault)
      end)

      api.add_operation(:describe_custom_availability_zones, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCustomAvailabilityZones"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeCustomAvailabilityZonesMessage)
        o.output = Shapes::ShapeRef.new(shape: CustomAvailabilityZoneMessage)
        o.errors << Shapes::ShapeRef.new(shape: CustomAvailabilityZoneNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_db_cluster_backtracks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBClusterBacktracks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBClusterBacktracksMessage)
        o.output = Shapes::ShapeRef.new(shape: DBClusterBacktrackMessage)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterBacktrackNotFoundFault)
      end)

      api.add_operation(:describe_db_cluster_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBClusterEndpoints"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBClusterEndpointsMessage)
        o.output = Shapes::ShapeRef.new(shape: DBClusterEndpointMessage)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
      end)

      api.add_operation(:describe_db_cluster_parameter_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBClusterParameterGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBClusterParameterGroupsMessage)
        o.output = Shapes::ShapeRef.new(shape: DBClusterParameterGroupsMessage)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
      end)

      api.add_operation(:describe_db_cluster_parameters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBClusterParameters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBClusterParametersMessage)
        o.output = Shapes::ShapeRef.new(shape: DBClusterParameterGroupDetails)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
      end)

      api.add_operation(:describe_db_cluster_snapshot_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBClusterSnapshotAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBClusterSnapshotAttributesMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeDBClusterSnapshotAttributesResult)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
      end)

      api.add_operation(:describe_db_cluster_snapshots, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBClusterSnapshots"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBClusterSnapshotsMessage)
        o.output = Shapes::ShapeRef.new(shape: DBClusterSnapshotMessage)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
      end)

      api.add_operation(:describe_db_clusters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBClusters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBClustersMessage)
        o.output = Shapes::ShapeRef.new(shape: DBClusterMessage)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_db_engine_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBEngineVersions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBEngineVersionsMessage)
        o.output = Shapes::ShapeRef.new(shape: DBEngineVersionMessage)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_db_instance_automated_backups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBInstanceAutomatedBackups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBInstanceAutomatedBackupsMessage)
        o.output = Shapes::ShapeRef.new(shape: DBInstanceAutomatedBackupMessage)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceAutomatedBackupNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_db_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBInstancesMessage)
        o.output = Shapes::ShapeRef.new(shape: DBInstanceMessage)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_db_log_files, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBLogFiles"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBLogFilesMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeDBLogFilesResponse)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_db_parameter_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBParameterGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBParameterGroupsMessage)
        o.output = Shapes::ShapeRef.new(shape: DBParameterGroupsMessage)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_db_parameters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBParameters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBParametersMessage)
        o.output = Shapes::ShapeRef.new(shape: DBParameterGroupDetails)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_db_proxies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBProxies"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBProxiesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDBProxiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: DBProxyNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_db_proxy_target_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBProxyTargetGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBProxyTargetGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDBProxyTargetGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: DBProxyNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBProxyTargetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBProxyStateFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_db_proxy_targets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBProxyTargets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBProxyTargetsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDBProxyTargetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: DBProxyNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBProxyTargetNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBProxyTargetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBProxyStateFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_db_security_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBSecurityGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBSecurityGroupsMessage)
        o.output = Shapes::ShapeRef.new(shape: DBSecurityGroupMessage)
        o.errors << Shapes::ShapeRef.new(shape: DBSecurityGroupNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_db_snapshot_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBSnapshotAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBSnapshotAttributesMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeDBSnapshotAttributesResult)
        o.errors << Shapes::ShapeRef.new(shape: DBSnapshotNotFoundFault)
      end)

      api.add_operation(:describe_db_snapshots, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBSnapshots"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBSnapshotsMessage)
        o.output = Shapes::ShapeRef.new(shape: DBSnapshotMessage)
        o.errors << Shapes::ShapeRef.new(shape: DBSnapshotNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_db_subnet_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBSubnetGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBSubnetGroupsMessage)
        o.output = Shapes::ShapeRef.new(shape: DBSubnetGroupMessage)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_engine_default_cluster_parameters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEngineDefaultClusterParameters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEngineDefaultClusterParametersMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeEngineDefaultClusterParametersResult)
      end)

      api.add_operation(:describe_engine_default_parameters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEngineDefaultParameters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEngineDefaultParametersMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeEngineDefaultParametersResult)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "engine_defaults.marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_event_categories, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEventCategories"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEventCategoriesMessage)
        o.output = Shapes::ShapeRef.new(shape: EventCategoriesMessage)
      end)

      api.add_operation(:describe_event_subscriptions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEventSubscriptions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEventSubscriptionsMessage)
        o.output = Shapes::ShapeRef.new(shape: EventSubscriptionsMessage)
        o.errors << Shapes::ShapeRef.new(shape: SubscriptionNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEvents"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEventsMessage)
        o.output = Shapes::ShapeRef.new(shape: EventsMessage)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_export_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeExportTasks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeExportTasksMessage)
        o.output = Shapes::ShapeRef.new(shape: ExportTasksMessage)
        o.errors << Shapes::ShapeRef.new(shape: ExportTaskNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_global_clusters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeGlobalClusters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeGlobalClustersMessage)
        o.output = Shapes::ShapeRef.new(shape: GlobalClustersMessage)
        o.errors << Shapes::ShapeRef.new(shape: GlobalClusterNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_installation_media, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInstallationMedia"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeInstallationMediaMessage)
        o.output = Shapes::ShapeRef.new(shape: InstallationMediaMessage)
        o.errors << Shapes::ShapeRef.new(shape: InstallationMediaNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_option_group_options, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeOptionGroupOptions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeOptionGroupOptionsMessage)
        o.output = Shapes::ShapeRef.new(shape: OptionGroupOptionsMessage)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_option_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeOptionGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeOptionGroupsMessage)
        o.output = Shapes::ShapeRef.new(shape: OptionGroups)
        o.errors << Shapes::ShapeRef.new(shape: OptionGroupNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_orderable_db_instance_options, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeOrderableDBInstanceOptions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeOrderableDBInstanceOptionsMessage)
        o.output = Shapes::ShapeRef.new(shape: OrderableDBInstanceOptionsMessage)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_pending_maintenance_actions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePendingMaintenanceActions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribePendingMaintenanceActionsMessage)
        o.output = Shapes::ShapeRef.new(shape: PendingMaintenanceActionsMessage)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
      end)

      api.add_operation(:describe_reserved_db_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeReservedDBInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeReservedDBInstancesMessage)
        o.output = Shapes::ShapeRef.new(shape: ReservedDBInstanceMessage)
        o.errors << Shapes::ShapeRef.new(shape: ReservedDBInstanceNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_reserved_db_instances_offerings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeReservedDBInstancesOfferings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeReservedDBInstancesOfferingsMessage)
        o.output = Shapes::ShapeRef.new(shape: ReservedDBInstancesOfferingMessage)
        o.errors << Shapes::ShapeRef.new(shape: ReservedDBInstancesOfferingNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_source_regions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSourceRegions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeSourceRegionsMessage)
        o.output = Shapes::ShapeRef.new(shape: SourceRegionMessage)
      end)

      api.add_operation(:describe_valid_db_instance_modifications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeValidDBInstanceModifications"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeValidDBInstanceModificationsMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeValidDBInstanceModificationsResult)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
      end)

      api.add_operation(:download_db_log_file_portion, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DownloadDBLogFilePortion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DownloadDBLogFilePortionMessage)
        o.output = Shapes::ShapeRef.new(shape: DownloadDBLogFilePortionDetails)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBLogFileNotFoundFault)
        o[:pager] = Aws::Pager.new(
          more_results: "additional_data_pending",
          limit_key: "number_of_lines",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:failover_db_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "FailoverDBCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: FailoverDBClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: FailoverDBClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
      end)

      api.add_operation(:import_installation_media, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ImportInstallationMedia"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ImportInstallationMediaMessage)
        o.output = Shapes::ShapeRef.new(shape: InstallationMedia)
        o.errors << Shapes::ShapeRef.new(shape: CustomAvailabilityZoneNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InstallationMediaAlreadyExistsFault)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceMessage)
        o.output = Shapes::ShapeRef.new(shape: TagListMessage)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBProxyNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBProxyTargetGroupNotFoundFault)
      end)

      api.add_operation(:modify_certificates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyCertificates"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyCertificatesMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyCertificatesResult)
        o.errors << Shapes::ShapeRef.new(shape: CertificateNotFoundFault)
      end)

      api.add_operation(:modify_current_db_cluster_capacity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyCurrentDBClusterCapacity"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyCurrentDBClusterCapacityMessage)
        o.output = Shapes::ShapeRef.new(shape: DBClusterCapacityInfo)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterCapacityFault)
      end)

      api.add_operation(:modify_db_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyDBCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyDBClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyDBClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBSubnetGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBSecurityGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: DomainNotFoundFault)
      end)

      api.add_operation(:modify_db_cluster_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyDBClusterEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyDBClusterEndpointMessage)
        o.output = Shapes::ShapeRef.new(shape: DBClusterEndpoint)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterEndpointStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterEndpointNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
      end)

      api.add_operation(:modify_db_cluster_parameter_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyDBClusterParameterGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyDBClusterParameterGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: DBClusterParameterGroupNameMessage)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBParameterGroupStateFault)
      end)

      api.add_operation(:modify_db_cluster_snapshot_attribute, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyDBClusterSnapshotAttribute"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyDBClusterSnapshotAttributeMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyDBClusterSnapshotAttributeResult)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterSnapshotStateFault)
        o.errors << Shapes::ShapeRef.new(shape: SharedSnapshotQuotaExceededFault)
      end)

      api.add_operation(:modify_db_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyDBInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyDBInstanceMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyDBInstanceResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBSecurityGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSecurityGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientDBInstanceCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedIopsNotAvailableInAZFault)
        o.errors << Shapes::ShapeRef.new(shape: OptionGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBUpgradeDependencyFailureFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageTypeNotSupportedFault)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: CertificateNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DomainNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: BackupPolicyNotFoundFault)
      end)

      api.add_operation(:modify_db_parameter_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyDBParameterGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyDBParameterGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: DBParameterGroupNameMessage)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBParameterGroupStateFault)
      end)

      api.add_operation(:modify_db_proxy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyDBProxy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyDBProxyRequest)
        o.output = Shapes::ShapeRef.new(shape: ModifyDBProxyResponse)
        o.errors << Shapes::ShapeRef.new(shape: DBProxyNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBProxyAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBProxyStateFault)
      end)

      api.add_operation(:modify_db_proxy_target_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyDBProxyTargetGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyDBProxyTargetGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: ModifyDBProxyTargetGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: DBProxyNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBProxyTargetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBProxyStateFault)
      end)

      api.add_operation(:modify_db_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyDBSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyDBSnapshotMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyDBSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: DBSnapshotNotFoundFault)
      end)

      api.add_operation(:modify_db_snapshot_attribute, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyDBSnapshotAttribute"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyDBSnapshotAttributeMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyDBSnapshotAttributeResult)
        o.errors << Shapes::ShapeRef.new(shape: DBSnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBSnapshotStateFault)
        o.errors << Shapes::ShapeRef.new(shape: SharedSnapshotQuotaExceededFault)
      end)

      api.add_operation(:modify_db_subnet_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyDBSubnetGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyDBSubnetGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyDBSubnetGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: SubnetAlreadyInUse)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupDoesNotCoverEnoughAZs)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
      end)

      api.add_operation(:modify_event_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyEventSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyEventSubscriptionMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyEventSubscriptionResult)
        o.errors << Shapes::ShapeRef.new(shape: EventSubscriptionQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: SubscriptionNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SNSInvalidTopicFault)
        o.errors << Shapes::ShapeRef.new(shape: SNSNoAuthorizationFault)
        o.errors << Shapes::ShapeRef.new(shape: SNSTopicArnNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SubscriptionCategoryNotFoundFault)
      end)

      api.add_operation(:modify_global_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyGlobalCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyGlobalClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyGlobalClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: GlobalClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGlobalClusterStateFault)
      end)

      api.add_operation(:modify_option_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyOptionGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyOptionGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyOptionGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOptionGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: OptionGroupNotFoundFault)
      end)

      api.add_operation(:promote_read_replica, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PromoteReadReplica"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PromoteReadReplicaMessage)
        o.output = Shapes::ShapeRef.new(shape: PromoteReadReplicaResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
      end)

      api.add_operation(:promote_read_replica_db_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PromoteReadReplicaDBCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PromoteReadReplicaDBClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: PromoteReadReplicaDBClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
      end)

      api.add_operation(:purchase_reserved_db_instances_offering, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PurchaseReservedDBInstancesOffering"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PurchaseReservedDBInstancesOfferingMessage)
        o.output = Shapes::ShapeRef.new(shape: PurchaseReservedDBInstancesOfferingResult)
        o.errors << Shapes::ShapeRef.new(shape: ReservedDBInstancesOfferingNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ReservedDBInstanceAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: ReservedDBInstanceQuotaExceededFault)
      end)

      api.add_operation(:reboot_db_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RebootDBInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RebootDBInstanceMessage)
        o.output = Shapes::ShapeRef.new(shape: RebootDBInstanceResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
      end)

      api.add_operation(:register_db_proxy_targets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterDBProxyTargets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterDBProxyTargetsRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterDBProxyTargetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: DBProxyNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBProxyTargetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBProxyTargetAlreadyRegisteredFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBProxyStateFault)
      end)

      api.add_operation(:remove_from_global_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveFromGlobalCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveFromGlobalClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: RemoveFromGlobalClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: GlobalClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGlobalClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
      end)

      api.add_operation(:remove_role_from_db_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveRoleFromDBCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveRoleFromDBClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterRoleNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
      end)

      api.add_operation(:remove_role_from_db_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveRoleFromDBInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveRoleFromDBInstanceMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceRoleNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
      end)

      api.add_operation(:remove_source_identifier_from_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveSourceIdentifierFromSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveSourceIdentifierFromSubscriptionMessage)
        o.output = Shapes::ShapeRef.new(shape: RemoveSourceIdentifierFromSubscriptionResult)
        o.errors << Shapes::ShapeRef.new(shape: SubscriptionNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SourceNotFoundFault)
      end)

      api.add_operation(:remove_tags_from_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveTagsFromResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveTagsFromResourceMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBProxyNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBProxyTargetGroupNotFoundFault)
      end)

      api.add_operation(:reset_db_cluster_parameter_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResetDBClusterParameterGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ResetDBClusterParameterGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: DBClusterParameterGroupNameMessage)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBParameterGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
      end)

      api.add_operation(:reset_db_parameter_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResetDBParameterGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ResetDBParameterGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: DBParameterGroupNameMessage)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBParameterGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
      end)

      api.add_operation(:restore_db_cluster_from_s3, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RestoreDBClusterFromS3"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RestoreDBClusterFromS3Message)
        o.output = Shapes::ShapeRef.new(shape: RestoreDBClusterFromS3Result)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBSubnetGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3BucketFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DomainNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientStorageClusterCapacityFault)
      end)

      api.add_operation(:restore_db_cluster_from_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RestoreDBClusterFromSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RestoreDBClusterFromSnapshotMessage)
        o.output = Shapes::ShapeRef.new(shape: RestoreDBClusterFromSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientDBClusterCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientStorageClusterCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBSnapshotStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterSnapshotStateFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRestoreFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
        o.errors << Shapes::ShapeRef.new(shape: OptionGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: DomainNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterParameterGroupNotFoundFault)
      end)

      api.add_operation(:restore_db_cluster_to_point_in_time, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RestoreDBClusterToPointInTime"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RestoreDBClusterToPointInTimeMessage)
        o.output = Shapes::ShapeRef.new(shape: RestoreDBClusterToPointInTimeResult)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientDBClusterCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientStorageClusterCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterSnapshotStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBSnapshotStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRestoreFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: OptionGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: DomainNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterParameterGroupNotFoundFault)
      end)

      api.add_operation(:restore_db_instance_from_db_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RestoreDBInstanceFromDBSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RestoreDBInstanceFromDBSnapshotMessage)
        o.output = Shapes::ShapeRef.new(shape: RestoreDBInstanceFromDBSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InstanceQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientDBInstanceCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBSnapshotStateFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRestoreFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupDoesNotCoverEnoughAZs)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedIopsNotAvailableInAZFault)
        o.errors << Shapes::ShapeRef.new(shape: OptionGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageTypeNotSupportedFault)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSecurityGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DomainNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: BackupPolicyNotFoundFault)
      end)

      api.add_operation(:restore_db_instance_from_s3, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RestoreDBInstanceFromS3"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RestoreDBInstanceFromS3Message)
        o.output = Shapes::ShapeRef.new(shape: RestoreDBInstanceFromS3Result)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientDBInstanceCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSecurityGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InstanceQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupDoesNotCoverEnoughAZs)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3BucketFault)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedIopsNotAvailableInAZFault)
        o.errors << Shapes::ShapeRef.new(shape: OptionGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageTypeNotSupportedFault)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: BackupPolicyNotFoundFault)
      end)

      api.add_operation(:restore_db_instance_to_point_in_time, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RestoreDBInstanceToPointInTime"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RestoreDBInstanceToPointInTimeMessage)
        o.output = Shapes::ShapeRef.new(shape: RestoreDBInstanceToPointInTimeResult)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InstanceQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientDBInstanceCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: PointInTimeRestoreNotEnabledFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRestoreFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupDoesNotCoverEnoughAZs)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedIopsNotAvailableInAZFault)
        o.errors << Shapes::ShapeRef.new(shape: OptionGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageTypeNotSupportedFault)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSecurityGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DomainNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: BackupPolicyNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceAutomatedBackupNotFoundFault)
      end)

      api.add_operation(:revoke_db_security_group_ingress, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RevokeDBSecurityGroupIngress"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RevokeDBSecurityGroupIngressMessage)
        o.output = Shapes::ShapeRef.new(shape: RevokeDBSecurityGroupIngressResult)
        o.errors << Shapes::ShapeRef.new(shape: DBSecurityGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBSecurityGroupStateFault)
      end)

      api.add_operation(:start_activity_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartActivityStream"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartActivityStreamRequest)
        o.output = Shapes::ShapeRef.new(shape: StartActivityStreamResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
      end)

      api.add_operation(:start_db_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartDBCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartDBClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: StartDBClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
      end)

      api.add_operation(:start_db_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartDBInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartDBInstanceMessage)
        o.output = Shapes::ShapeRef.new(shape: StartDBInstanceResult)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientDBInstanceCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupDoesNotCoverEnoughAZs)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
      end)

      api.add_operation(:start_export_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartExportTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartExportTaskMessage)
        o.output = Shapes::ShapeRef.new(shape: ExportTask)
        o.errors << Shapes::ShapeRef.new(shape: DBSnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: ExportTaskAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3BucketFault)
        o.errors << Shapes::ShapeRef.new(shape: IamRoleNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: IamRoleMissingPermissionsFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidExportOnlyFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidExportSourceStateFault)
      end)

      api.add_operation(:stop_activity_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopActivityStream"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopActivityStreamRequest)
        o.output = Shapes::ShapeRef.new(shape: StopActivityStreamResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
      end)

      api.add_operation(:stop_db_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopDBCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopDBClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: StopDBClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
      end)

      api.add_operation(:stop_db_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopDBInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopDBInstanceMessage)
        o.output = Shapes::ShapeRef.new(shape: StopDBInstanceResult)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSnapshotAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
      end)
    end

  end
end
